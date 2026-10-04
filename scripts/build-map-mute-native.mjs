import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

export const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const source = 'source/amap-9.5.0.600013';
const patchDirectory = `${source}/native-patches`;
const lockFile = `${patchDirectory}/map-mute.lock.json`;
const hash = b => crypto.createHash('sha256').update(b).digest('hex');
const fail = message => { throw new Error(message); };
const align = (n, a) => Math.ceil(n / a) * a;
const integer = value => typeof value === 'string' ? Number.parseInt(value, 16) : value;
const run = (command, args) => {
  const result = spawnSync(command, args, { encoding: 'utf8', maxBuffer: 16 * 1024 * 1024 });
  if (result.status !== 0) fail(`${path.basename(command)} failed: ${result.error?.message || result.stderr}`);
  return result.stdout;
};

export function nativeToolchain(sdk) {
  const directory = path.join(sdk, 'ndk/27.0.12077973/toolchains/llvm/prebuilt/darwin-x86_64/bin');
  const files = Object.fromEntries(['clang', 'ld.lld', 'llvm-objcopy', 'llvm-nm', 'llvm-readelf'].map(name => [name, path.join(directory, name)]));
  files.ndkProperties = path.join(sdk, 'ndk/27.0.12077973/source.properties');
  for (const file of Object.values(files)) if (!fs.existsSync(file)) fail(`Missing native tool: ${file}`);
  return files;
}

function readLock(repository = root) {
  const lock = JSON.parse(fs.readFileSync(path.join(repository, lockFile), 'utf8'));
  if (lock.schema !== 1 || lock.version !== '9.5.0.600013' || lock.alignment !== 0x4000 || lock.payloadOffset !== 0x400) fail('Unexpected native patch schema/layout');
  if (lock.targets.length !== 2 || new Set(lock.targets.map(t => t.name)).size !== 2) fail('Expected exactly two declared map mute targets');
  for (const t of lock.targets) if (!['libhsl.so', 'libautonavi.so'].includes(t.name)) fail('Unexpected native patch target');
  return lock;
}

export function elfLayout(bytes) {
  if (bytes.subarray(0, 7).toString('hex') !== '7f454c46020101' || bytes.readUInt16LE(16) !== 3 || bytes.readUInt16LE(18) !== 183) fail('Expected ELF64 LE AArch64 ET_DYN');
  const offset = Number(bytes.readBigUInt64LE(32)), count = bytes.readUInt16LE(56), entrySize = bytes.readUInt16LE(54);
  if (entrySize !== 56 || count !== 9 || offset !== 64) fail('Unexpected input program header layout');
  const headers = Array.from({ length: count }, (_, i) => {
    const at = offset + i * entrySize;
    return { type: bytes.readUInt32LE(at), flags: bytes.readUInt32LE(at + 4),
      offset: Number(bytes.readBigUInt64LE(at + 8)), va: Number(bytes.readBigUInt64LE(at + 16)),
      physical: Number(bytes.readBigUInt64LE(at + 24)), fileSize: Number(bytes.readBigUInt64LE(at + 32)),
      memorySize: Number(bytes.readBigUInt64LE(at + 40)), alignment: Number(bytes.readBigUInt64LE(at + 48)) };
  });
  if (headers[0].type !== 6 || headers.filter(h => h.type === 1).length !== 3) fail('Input PHDR/LOAD inventory changed');
  return headers;
}

function vaToOffset(bytes, va, length = 4) {
  const header = elfLayout(bytes).find(h => h.type === 1 && va >= h.va && va + length <= h.va + h.fileSize);
  if (!header) fail(`Address not file backed: ${va.toString(16)}`);
  return header.offset + va - header.va;
}

function branch(pc, destination, link) {
  const delta = destination - pc;
  if (delta % 4 !== 0 || delta < -(2 ** 27) || delta >= 2 ** 27) fail('AArch64 branch out of range/alignment');
  const bytes = Buffer.alloc(4);
  bytes.writeUInt32LE(((link ? 0x94000000 : 0x14000000) | ((delta / 4) & 0x3ffffff)) >>> 0);
  return bytes;
}

function baseInput(target, repository) {
  const bytes = fs.readFileSync(path.join(repository, source, 'lib/arm64-v8a', target.name));
  if (hash(bytes) !== target.baseSha256) fail(`Native base identity mismatch: ${target.name}`);
  for (const patch of target.patches) {
    const at = vaToOffset(bytes, integer(patch.va));
    if (bytes.subarray(at, at + 4).toString('hex') !== patch.expected) fail(`Native preimage mismatch: ${target.name}@${patch.va}`);
  }
  return bytes;
}

function patchLayout(base, lock) {
  const headers = elfLayout(base);
  const newOffset = align(base.length, lock.alignment);
  // Respect full BSS size, not just the end of the file-backed segment.
  const newVa = align(Math.max(...headers.filter(h => h.type === 1).map(h => h.va + h.memorySize)), lock.alignment);
  if (headers.length + 1 > (lock.payloadOffset / 56)) fail('PHDR table overlaps payload');
  return { newOffset, newVa, codeVa: newVa + lock.payloadOffset, headers };
}

function compose(base, target, lock, payload) {
  const { newOffset, newVa, codeVa, headers } = patchLayout(base, lock);
  const bytes = Buffer.alloc(newOffset + lock.payloadOffset + payload.length);
  base.copy(bytes);
  // Keep all original segment semantics and ordering; append a non-writable RX LOAD.
  const tableSize = (headers.length + 1) * 56;
  headers[0] = { ...headers[0], offset: newOffset, va: newVa, physical: newVa, fileSize: tableSize, memorySize: tableSize };
  headers.push({ type: 1, flags: 5, offset: newOffset, va: newVa, physical: newVa,
    fileSize: lock.payloadOffset + payload.length, memorySize: lock.payloadOffset + payload.length, alignment: lock.alignment });
  headers.forEach((h, i) => {
    const at = newOffset + i * 56;
    bytes.writeUInt32LE(h.type, at); bytes.writeUInt32LE(h.flags, at + 4);
    ['offset', 'va', 'physical', 'fileSize', 'memorySize', 'alignment'].forEach((field, j) => bytes.writeBigUInt64LE(BigInt(h[field]), at + 8 + j * 8));
  });
  bytes.writeBigUInt64LE(BigInt(newOffset), 32);
  bytes.writeUInt16LE(headers.length, 56);
  payload.copy(bytes, newOffset + lock.payloadOffset);
  for (const p of target.patches) {
    const at = vaToOffset(base, integer(p.va));
    if (p.kind === 'bytes') Buffer.from(p.replacement, 'hex').copy(bytes, at);
    else {
      if (!Object.hasOwn(target.symbols, p.symbol)) fail('Unresolved native patch entry');
      branch(integer(p.va), codeVa + target.symbols[p.symbol], p.kind === 'bl').copy(bytes, at);
    }
  }
  return bytes;
}

function assertSources(target, repository) {
  const bytes = fs.readFileSync(path.join(repository, patchDirectory, target.assembly));
  if (hash(bytes) !== target.sourceSha256) fail(`Native assembly source lock mismatch: ${target.assembly}`);
}

// The APK verifier rebuilds the expected byte layout from the original library
// and declared payload. A receipt from the current build is never authorization.
export function verifyPatchedNative(name, candidate, repository = root) {
  const lock = readLock(repository), target = lock.targets.find(t => t.name === name);
  if (!target) return false;
  assertSources(target, repository);
  const base = baseInput(target, repository), layout = patchLayout(base, lock);
  if (!target.outputSha256 || hash(candidate) !== target.outputSha256) fail(`Patched native output identity mismatch: ${name}`);
  const payload = candidate.subarray(layout.newOffset + lock.payloadOffset);
  if (payload.length !== target.payloadSize || hash(payload) !== target.payloadSha256) fail(`Native payload mismatch: ${name}`);
  const expected = compose(base, target, lock, payload);
  if (!expected.equals(candidate)) fail(`Unexpected native changes outside declared patch: ${name}`);
  return true;
}

function compile(target, lock, directory, tools) {
  const base = baseInput(target, root), layout = patchLayout(base, lock);
  const sourceFile = path.join(root, patchDirectory, target.assembly);
  const prefix = path.join(directory, target.name);
  const object = `${prefix}.o`, linked = `${prefix}.elf`, payloadPath = `${prefix}.payload`;
  const script = `${prefix}.ld`;
  fs.writeFileSync(script, `SECTIONS { . = 0x${layout.codeVa.toString(16)}; .text : { *(.text.map_mute) } /DISCARD/ : { *(.comment) *(.note*) *(.eh_frame*) *(.llvm_addrsig) } }\n`);
  run(tools.clang, ['--target=aarch64-linux-android24', '-c', sourceFile, '-o', object]);
  run(tools['ld.lld'], ['-m', 'aarch64elf', '--no-relax', '--build-id=none', '-T', script,
    ...Object.entries(target.externals).map(([name, va]) => `--defsym=${name}=${va}`), object, '-o', linked]);
  if (!run(tools['llvm-readelf'], ['-r', linked]).includes('There are no relocations')) fail('Native payload has unresolved runtime relocations');
  run(tools['llvm-objcopy'], ['--only-section=.text', '-O', 'binary', linked, payloadPath]);
  const symbols = {};
  for (const line of run(tools['llvm-nm'], ['--defined-only', linked]).trim().split('\n')) {
    const match = line.match(/^([0-9a-f]+)\s+\S\s+(map_mute_\S+)$/);
    if (match) symbols[match[2]] = Number.parseInt(match[1], 16) - layout.codeVa;
  }
  const payload = fs.readFileSync(payloadPath);
  if (payload.length > lock.alignment - lock.payloadOffset) fail('Native payload exceeds declared segment budget');
  return { base, payload, symbols, sourceSha256: hash(fs.readFileSync(sourceFile)), layout };
}

export function buildNativePatches(directory, sdk, { freeze = false } = {}) {
  const absolute = path.resolve(directory);
  if (!absolute.startsWith(path.join(root, 'apk-work') + path.sep) && !absolute.startsWith(path.join(root, '.tmp') + path.sep)) fail('Native outputs must be in the ignored workspace');
  fs.mkdirSync(absolute, { recursive: true });
  const lock = readLock(), tools = nativeToolchain(sdk), report = { schema: 1, targets: [] };
  for (const target of lock.targets) {
    if (!freeze) assertSources(target, root);
    const built = compile(target, lock, absolute, tools);
    if (freeze) {
      target.sourceSha256 = built.sourceSha256;
      target.payloadSha256 = hash(built.payload);
      target.payloadSize = built.payload.length;
      target.symbols = built.symbols;
    } else if (target.payloadSha256 !== hash(built.payload) || target.payloadSize !== built.payload.length || JSON.stringify(target.symbols) !== JSON.stringify(built.symbols)) fail(`Native rebuild differs from locked payload: ${target.name}`);
    const output = compose(built.base, target, lock, built.payload);
    if (freeze) target.outputSha256 = hash(output);
    else if (hash(output) !== target.outputSha256) fail(`Native rebuild output differs: ${target.name}`);
    const destination = path.join(absolute, target.name);
    fs.writeFileSync(destination, output);
    report.targets.push({ name: target.name, baseSha256: target.baseSha256, outputSha256: hash(output),
      payloadSha256: hash(built.payload), payloadSize: built.payload.length, symbols: built.symbols,
      newOffset: built.layout.newOffset, newVa: built.layout.newVa, codeVa: built.layout.codeVa });
  }
  if (freeze) fs.writeFileSync(path.join(root, lockFile), JSON.stringify(lock, null, 2) + '\n');
  for (const target of report.targets) verifyPatchedNative(target.name, fs.readFileSync(path.join(absolute, target.name)));
  fs.writeFileSync(path.join(absolute, 'native-patch-report.json'), JSON.stringify(report, null, 2) + '\n');
  return report;
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  const [mode, directory, sdk, stage] = process.argv.slice(2);
  try {
    if (!['build', 'freeze'].includes(mode) || !directory || !sdk) fail('Usage: build-map-mute-native.mjs build|freeze OUTPUT SDK [DECODE]');
    const report = buildNativePatches(directory, sdk, { freeze: mode === 'freeze' });
    if (stage) {
      const absolute = path.resolve(stage);
      if (mode !== 'build' || !absolute.startsWith(path.join(root, 'apk-work') + path.sep)) fail('Native staging target must be an ignored build');
      for (const target of report.targets) {
        const destination = path.join(absolute, 'lib/arm64-v8a', target.name);
        if (hash(fs.readFileSync(destination)) !== target.baseSha256) fail('Native staging base changed');
        fs.copyFileSync(path.join(directory, target.name), destination);
      }
    }
    console.log(`Map mute native patches rebuilt and verified (${report.targets.map(t => t.name).join(', ')}).`);
  } catch (error) { console.error(error.message); process.exitCode = 1; }
}

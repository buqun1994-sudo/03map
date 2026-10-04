import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { discoverModuleGraph } from './validate-content-planner.mjs';
import { nativeToolchain } from './build-map-mute-native.mjs';

export const repoRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const digest = bytes => crypto.createHash('sha256').update(bytes).digest('hex');
const excludedDirectories = new Set(['build', '.gradle', '.kotlin', '.git', 'node_modules']);

export function filesUnder(directory) {
  if (!fs.existsSync(directory)) return [];
  return fs.readdirSync(directory, { withFileTypes: true }).sort((a, b) => a.name.localeCompare(b.name)).flatMap(entry => {
    const file = path.join(directory, entry.name);
    if (entry.isSymbolicLink()) throw new Error(`Unexpected symbolic link in build inputs: ${file}`);
    return entry.isDirectory() ? filesUnder(file) : entry.isFile() ? [file] : [];
  });
}

function sourceFiles(directory) {
  if (!fs.existsSync(directory)) return [];
  return fs.readdirSync(directory, { withFileTypes: true }).sort((a, b) => a.name.localeCompare(b.name)).flatMap(entry => {
    const file = path.join(directory, entry.name);
    if (entry.isSymbolicLink()) throw new Error(`Unexpected symbolic link in source: ${file}`);
    if (entry.isDirectory()) return excludedDirectories.has(entry.name) ? [] : sourceFiles(file);
    return entry.isFile() ? [file] : [];
  });
}

export function sourceFingerprint(root = repoRoot) {
  const inputs = [
    ...sourceFiles(path.join(root, 'source/amap-9.5.0.600013')),
    ...sourceFiles(path.join(root, 'ui-preview')).filter(file => {
      const relative = path.relative(path.join(root, 'ui-preview'), file);
      return /(?:^|\/)src\//.test(relative) || /(?:\.gradle\.kts|gradle\.properties|gradlew(?:\.bat)?|gradle-wrapper\.(?:jar|properties))$/.test(relative);
    }),
    ...sourceFiles(path.join(root, 'scripts')).filter(file => /\.(?:mjs|sh|java|pro|json|py)$/.test(file)),
  ];
  const files = [...new Set(inputs)].sort().map(file => ({ path: path.relative(root, file).split(path.sep).join('/'), sha256: digest(fs.readFileSync(file)) }));
  return { sha256: digest(JSON.stringify(files)), files };
}

export function checkSourceStructure(root = repoRoot) {
  const graph = discoverModuleGraph(root);
  for (const module of graph.modules) {
    for (const relative of module.sourceRoots) {
      if (!fs.existsSync(path.resolve(root, relative))) throw new Error(`Missing formal source path for ${module.name}: ${relative}`);
    }
    for (const name of module.javaClasses) {
      const source = path.join(root, 'source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content', name);
      if (!fs.existsSync(source)) throw new Error(`Incomplete formal Java allowlist: ${name}`);
    }
  }
  return graph.modules.map(module => module.name);
}

export function recordTiming(file, record) {
  fs.mkdirSync(path.dirname(file), { recursive: true });
  fs.appendFileSync(file, JSON.stringify(record) + '\n');
}

export function assertOwnedPath(target, owner) {
  const absolute = path.resolve(target), root = path.resolve(owner);
  if (absolute === root || !absolute.startsWith(root + path.sep)) throw new Error(`Refusing operation outside managed directory: ${absolute}`);
  let current = absolute;
  while (current !== root) {
    if (fs.existsSync(current) && fs.lstatSync(current).isSymbolicLink()) throw new Error(`Refusing symbolic link in managed path: ${current}`);
    current = path.dirname(current);
  }
  if (fs.existsSync(root) && fs.lstatSync(root).isSymbolicLink()) throw new Error(`Refusing symbolic link managed root: ${root}`);
  return absolute;
}

function alive(pid) {
  if (!Number.isSafeInteger(pid) || pid <= 0) return true;
  try { process.kill(pid, 0); return true; } catch (error) { return error.code !== 'ESRCH'; }
}

export function assertBuildLock(root = repoRoot) {
  const work = path.join(path.resolve(root), 'apk-work');
  const lock = assertOwnedPath(path.join(work, '.content-workflow-lock'), work);
  const owner = JSON.parse(fs.readFileSync(path.join(lock, 'owner.json'), 'utf8'));
  if (!Number.isSafeInteger(owner.pid) || owner.pid <= 0 || owner.token !== process.env.CONTENT_WORKFLOW_LOCK_TOKEN || !alive(owner.pid)) throw new Error('Missing live shared build owner');
  return owner;
}

export async function withBuildLock(root, callback) {
  const work = path.join(path.resolve(root), 'apk-work');
  fs.mkdirSync(work, { recursive: true });
  const lock = assertOwnedPath(path.join(work, '.content-workflow-lock'), work);
  const ownerFile = path.join(lock, 'owner.json');
  if (process.env.CONTENT_WORKFLOW_LOCK_TOKEN && fs.existsSync(ownerFile)) {
    const owner = JSON.parse(fs.readFileSync(ownerFile, 'utf8'));
    if (owner.token === process.env.CONTENT_WORKFLOW_LOCK_TOKEN && owner.pid !== process.pid && alive(owner.pid)) return callback();
  }
  const token = crypto.randomUUID();
  try { fs.mkdirSync(lock); } catch (error) {
    if (error.code !== 'EEXIST') throw error;
    let owner;
    try { owner = JSON.parse(fs.readFileSync(ownerFile, 'utf8')); } catch { throw new Error('Another build is acquiring the shared lock; retry after that task finishes'); }
    if (alive(owner.pid)) throw new Error(`Shared build output is in use by PID ${owner.pid}; finish that build before starting another`);
    const recovery = assertOwnedPath(path.join(work, '.content-workflow-lock-recovery'), work);
    try { fs.mkdirSync(recovery); } catch (recoveryError) {
      if (recoveryError.code === 'EEXIST') throw new Error('Shared build lock recovery is in progress or was interrupted; inspect the recovery directory before retrying');
      throw recoveryError;
    }
    try {
      const current = JSON.parse(fs.readFileSync(ownerFile, 'utf8'));
      if (alive(current.pid)) throw new Error(`Shared build output is in use by PID ${current.pid}; finish that build before starting another`);
      fs.rmSync(assertOwnedPath(lock, work), { recursive: true });
      // A new direct acquirer can win this gap; EEXIST then stops this recovery.
      fs.mkdirSync(lock);
    } finally { fs.rmSync(assertOwnedPath(recovery, work), { recursive: true }); }
  }
  fs.writeFileSync(ownerFile, JSON.stringify({ pid: process.pid, token, startedAt: new Date().toISOString() }) + '\n');
  const previous = process.env.CONTENT_WORKFLOW_LOCK_TOKEN;
  process.env.CONTENT_WORKFLOW_LOCK_TOKEN = token;
  try { return await callback(); } finally {
    if (previous === undefined) delete process.env.CONTENT_WORKFLOW_LOCK_TOKEN; else process.env.CONTENT_WORKFLOW_LOCK_TOKEN = previous;
    const owner = fs.existsSync(ownerFile) ? JSON.parse(fs.readFileSync(ownerFile, 'utf8')) : null;
    if (owner?.token === token) fs.rmSync(assertOwnedPath(lock, work), { recursive: true });
  }
}

/** Cache generated transforms by input/tool hashes; verify bytes on every hit. */
export class TransformCache {
  constructor(directory, enabled = true) {
    this.root = path.resolve(directory);
    this.enabled = enabled;
    this.pending = new Set();
    this.stats = {};
    fs.mkdirSync(this.root, { recursive: true });
  }
  prepare(kind, inputs) {
    if (!/^[a-z][a-z0-9-]*$/.test(kind)) throw new Error('Invalid cache namespace');
    const key = digest(JSON.stringify(inputs));
    const parent = assertOwnedPath(path.join(this.root, kind), this.root);
    fs.mkdirSync(parent, { recursive: true });
    const destination = assertOwnedPath(path.join(parent, key), this.root);
    this.stats[kind] ??= { hits: 0, misses: 0 };
    if (this.enabled && this.valid(destination, key)) {
      this.stats[kind].hits++;
      return { directory: path.join(destination, 'payload'), hit: true, commit() {}, cancel() {} };
    }
    this.stats[kind].misses++;
    const temporary = assertOwnedPath(fs.mkdtempSync(path.join(parent, '.pending-')), this.root);
    let directory = path.join(temporary, 'payload');
    fs.mkdirSync(directory);
    this.pending.add(temporary);
    return {
      get directory() { return directory; }, hit: false,
      commit: () => {
        fs.writeFileSync(path.join(temporary, 'manifest.json'), JSON.stringify({ schema: 1, key, files: this.manifest(directory) }) + '\n');
        if (fs.existsSync(destination)) fs.rmSync(assertOwnedPath(destination, this.root), { recursive: true });
        fs.renameSync(assertOwnedPath(temporary, this.root), assertOwnedPath(destination, this.root));
        directory = path.join(destination, 'payload');
        this.pending.delete(temporary);
      },
      cancel: () => {
        if (fs.existsSync(temporary)) fs.rmSync(assertOwnedPath(temporary, this.root), { recursive: true });
        this.pending.delete(temporary);
      },
    };
  }
  manifest(directory) {
    return filesUnder(directory).map(file => ({ path: path.relative(directory, file).split(path.sep).join('/'), sha256: digest(fs.readFileSync(file)) }));
  }
  valid(directory, key) {
    try {
      const metadata = JSON.parse(fs.readFileSync(path.join(directory, 'manifest.json'), 'utf8'));
      return metadata.schema === 1 && metadata.key === key && JSON.stringify(metadata.files) === JSON.stringify(this.manifest(path.join(directory, 'payload')));
    } catch { return false; }
  }
  cleanup() {
    for (const directory of this.pending) if (fs.existsSync(directory)) fs.rmSync(assertOwnedPath(directory, this.root), { recursive: true });
    this.pending.clear();
  }
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  const [mode, ...args] = process.argv.slice(2);
  try {
    if (mode === 'assert-lock') assertBuildLock();
    else if (mode === 'preflight') console.log(`Source structure verified: ${checkSourceStructure().join(', ')}`);
    else if (mode === 'fingerprint') fs.writeFileSync(args[0], JSON.stringify(sourceFingerprint(), null, 2) + '\n');
    else if (mode === 'cleanup' || mode === 'publish' || mode === 'build-report') {
      const build = assertOwnedPath(args[0], path.join(repoRoot, 'apk-work/9.5.0.600013'));
      if (!/^source-build\.[\w-]+$/.test(path.basename(build))) throw new Error('Expected managed source-build directory');
      if (mode === 'cleanup') {
        for (const file of args.slice(1)) {
          if (!['unsigned.apk', 'aligned-unsigned.apk', 'signed.apk.tmp'].includes(path.basename(file))) throw new Error('Refusing cleanup of non-intermediate build file');
          const absolute = assertOwnedPath(file, build);
          if (path.dirname(absolute) !== build) throw new Error('Expected direct build intermediate');
          fs.rmSync(absolute, { force: true });
        }
      } else if (mode === 'publish') {
        const input = assertOwnedPath(args[1], build), output = assertOwnedPath(args[2], build);
        if (input !== path.join(build, 'signed.apk.tmp') || output !== path.join(build, 'signed.apk')) throw new Error('Expected final signed candidate paths');
        fs.renameSync(input, output);
      } else {
        const before = JSON.parse(fs.readFileSync(path.join(build, 'source-before.json'), 'utf8'));
        const after = JSON.parse(fs.readFileSync(path.join(build, 'source-after.json'), 'utf8'));
        const timings = fs.readFileSync(path.join(build, 'timings.jsonl'), 'utf8').trim().split('\n').filter(Boolean).map(line => JSON.parse(line));
        const compose = JSON.parse(fs.readFileSync(path.join(build, 'compose-build.json'), 'utf8'));
        const apkSha256 = digest(fs.readFileSync(path.join(build, 'signed.apk')));
        const toolchain = JSON.parse(fs.readFileSync(path.join(build, 'toolchain-before.json'), 'utf8'));
        const toolchainAfter = JSON.parse(fs.readFileSync(path.join(build, 'toolchain-after.json'), 'utf8'));
        if (toolchain.sha256 !== toolchainAfter.sha256) throw new Error('Build toolchain changed during construction');
        fs.writeFileSync(path.join(build, 'build-report.json'), JSON.stringify({ schema: 1, sourceSha256: before.sha256,
          sourceStable: before.sha256 === after.sha256, apkSha256, exitCode: 0, toolchain,
          measuredStagesMs: timings.filter(item => item.scope !== 'compose').reduce((total, item) => total + item.elapsedMs, 0),
          timings, modules: compose.modules, cache: compose.cache }, null, 2) + '\n');
      }
    } else if (mode === 'stage') {
      const [report, label, command, ...commandArgs] = args;
      const startedAt = new Date().toISOString(), started = process.hrtime.bigint();
      const result = spawnSync(command, commandArgs, { stdio: 'inherit' });
      const elapsedMs = Number(process.hrtime.bigint() - started) / 1e6;
      recordTiming(report, { stage: label, startedAt, finishedAt: new Date().toISOString(), elapsedMs, exitCode: result.status, signal: result.signal, spawnError: result.error?.code });
      console.error(`[阶段] ${label}: ${(elapsedMs / 1000).toFixed(3)}s${result.status === 0 ? '' : ' FAILED'}`);
      if (result.error) throw result.error;
      process.exitCode = result.status ?? 1;
    } else if (mode === 'locked-build') {
      await withBuildLock(repoRoot, async () => {
        const result = spawnSync(args[0], args.slice(1), { stdio: 'inherit' });
        if (result.error) throw result.error;
        process.exitCode = result.status ?? 1;
      });
    } else if (mode === 'toolchain') {
      const [destination, javaHome, sdk, apktool, aapt, r8, zipalign, apksigner] = args;
      const files = { jdkRelease: path.join(javaHome, 'release'), sdkPlatform: path.join(sdk, 'platforms/android-35/android.jar'), apktool, aapt2: aapt, r8, zipalign, apksigner,
        ...Object.fromEntries(Object.entries(nativeToolchain(sdk)).map(([name, file]) => [`ndk:${name}`, file])) };
      const inputs = Object.fromEntries(Object.entries(files).map(([name, file]) => [name, digest(fs.readFileSync(file))]));
      const javaRelease = fs.readFileSync(files.jdkRelease, 'utf8');
      fs.writeFileSync(destination, JSON.stringify({ sha256: digest(JSON.stringify(inputs)), inputs, javaRelease }, null, 2) + '\n');
    } else if (mode === 'verify-toolchain') {
      const before = JSON.parse(fs.readFileSync(args[0], 'utf8'));
      const after = JSON.parse(fs.readFileSync(args[1], 'utf8'));
      if (before.sha256 !== after.sha256) throw new Error('Build toolchain changed during construction');
    } else if (mode === 'verify-source') {
      const before = JSON.parse(fs.readFileSync(args[0], 'utf8')), after = sourceFingerprint();
      fs.writeFileSync(args[1], JSON.stringify(after, null, 2) + '\n');
      if (before.sha256 !== after.sha256) throw new Error('Source changed during build; reject mixed-source candidate and rebuild from a stable snapshot');
      console.log(`Stable source fingerprint verified: ${after.sha256}`);
    } else throw new Error('Usage: content-workflow.mjs preflight | fingerprint FILE | stage REPORT LABEL COMMAND... | locked-build COMMAND... | verify-source BEFORE AFTER');
  } catch (error) { console.error(error.message); process.exitCode = 1; }
}

#!/usr/bin/env node
import { createHash } from 'node:crypto';
import { readFileSync, writeFileSync, mkdirSync, existsSync } from 'node:fs';
import { createRequire } from 'node:module';
import { dirname, resolve } from 'node:path';
import { fileURLToPath, pathToFileURL } from 'node:url';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const TOOL = 'tools/apple-authorize';
const ASSET = 'source/amap-9.5.0.600013/assets/content-apple-authorize';
const DEFAULT_COMPILER = resolve(ROOT, '.tmp/apple-auth-compiler/node_modules/esbuild');
const load = createRequire(import.meta.url);
const digest = value => createHash('sha256').update(value).digest('hex');

/** No network or credential access: transform two known public sources with a fixed compiler. */
export function buildAssetOutputs({ root = ROOT, compilerModule = DEFAULT_COMPILER } = {}) {
  const lock = JSON.parse(readFileSync(resolve(root, TOOL, 'lock.json'), 'utf8'));
  const compiler = load(resolve(compilerModule));
  if (compiler.version !== lock.compilerVersion || lock.compilerVersion !== '0.25.12') {
    throw new Error('Apple authorization compiler version differs from the fixed 0.25.12');
  }
  const banner = readFileSync(resolve(root, TOOL, 'random-uuid-compat.js'), 'utf8');
  if (digest(banner) !== lock.bannerSha256) throw new Error('Apple authorization UUID compatibility source differs from the lock');
  const outputs = new Map();
  const facts = [];
  for (const resource of lock.assets) {
    if (!/^(home|identityWidget)-[a-f0-9]+\.js$/.test(resource.name)) throw new Error('Unexpected Apple widget asset name');
    const source = readFileSync(resolve(root, TOOL, 'upstream', resource.name));
    if (digest(source) !== resource.upstreamSha256) throw new Error(`Apple widget upstream hash differs: ${resource.name}`);
    const code = compiler.transformSync(source.toString('utf8'), {
      ...lock.compilerOptions, banner, sourcefile: resource.name,
    }).code;
    if (digest(code) !== resource.outputSha256) throw new Error(`Apple widget transformed hash differs: ${resource.name}`);
    outputs.set(resource.name, Buffer.from(code));
    facts.push({
      url: resource.url,
      upstreamPath: `${TOOL}/upstream/${resource.name}`,
      upstreamSha256: resource.upstreamSha256,
      upstreamBytes: source.length,
      assetPath: `${ASSET}/${resource.name}`,
      assetSha256: resource.outputSha256,
      assetBytes: Buffer.byteLength(code),
    });
  }
  const provenance = {
    schemaVersion: 1,
    compiler: { name: 'esbuild', version: compiler.version, options: lock.compilerOptions },
    uuidCompatibility: { source: `${TOOL}/random-uuid-compat.js`, sha256: lock.bannerSha256, algorithm: 'RFC 4122 version 4, crypto.getRandomValues only, native implementation preserved' },
    sources: facts,
    scope: 'Only the exact two public Apple CDN scripts; official HTML, forms, cookies and authentication network remain unchanged',
  };
  outputs.set('provenance.json', Buffer.from(JSON.stringify(provenance, null, 2) + '\n'));
  return outputs;
}

export function prepareAppleAuthorizeAssets({ check = false, root = ROOT, compilerModule = DEFAULT_COMPILER } = {}) {
  const outputs = buildAssetOutputs({ root, compilerModule });
  if (!check) mkdirSync(resolve(root, ASSET), { recursive: true });
  for (const [name, expected] of outputs) {
    const target = resolve(root, ASSET, name);
    const existing = existsSync(target) ? readFileSync(target) : null;
    if (check) {
      if (!existing || !existing.equals(expected)) throw new Error(`Packaged Apple widget asset differs: ${name}`);
    } else if (!existing || !existing.equals(expected)) writeFileSync(target, expected);
  }
  return outputs;
}

if (process.argv[1] && pathToFileURL(resolve(process.argv[1])).href === import.meta.url) {
  try {
    let check = false, compilerModule = DEFAULT_COMPILER;
    for (let index = 2; index < process.argv.length; index++) {
      if (process.argv[index] === '--check') check = true;
      else if (process.argv[index] === '--compiler-module' && process.argv[index + 1]) compilerModule = resolve(process.argv[++index]);
      else throw new Error(`Unknown argument: ${process.argv[index]}`);
    }
    const outputs = prepareAppleAuthorizeAssets({ check, compilerModule });
    console.log(`Apple official authorization compatibility assets ${check ? 'verified' : 'prepared'}: 2 scripts, esbuild 0.25.12, target Chrome 66`);
    for (const [name, data] of outputs) console.log(`${digest(data)} ${name}`);
  } catch (error) {
    console.error(error.message);
    process.exitCode = 1;
  }
}

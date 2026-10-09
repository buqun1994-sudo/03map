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

/** Offline rebuild of the locked WOA module graph and IDMS widget code, with no credentials. */
export function buildAssetOutputs({ root = ROOT, compilerModule = DEFAULT_COMPILER } = {}) {
  const lock = JSON.parse(readFileSync(resolve(root, TOOL, 'lock.json'), 'utf8'));
  const compiler = load(resolve(compilerModule));
  if (compiler.version !== lock.compilerVersion || lock.compilerVersion !== '0.25.12') {
    throw new Error('Apple authorization compiler version differs from the fixed 0.25.12');
  }
  const uuid = readFileSync(resolve(root, TOOL, 'random-uuid-compat.js'), 'utf8');
  const runtime = readFileSync(resolve(root, TOOL, 'runtime-compat.js'), 'utf8');
  if (digest(uuid) !== lock.bannerSha256 || digest(runtime) !== lock.runtimeCompatibilitySha256) {
    throw new Error('Apple authorization runtime compatibility source differs from the lock');
  }
  const banner = uuid + runtime;
  const outputs = new Map();
  const facts = [];
  const names = new Set(lock.assets.map(resource => resource.name));
  if (names.size !== lock.assets.length) throw new Error('Duplicate Apple authorization asset name');
  for (const resource of lock.assets) {
    const url = new URL(resource.url);
    const widget = /^(home|identityWidget)-[a-f0-9]+\.js$/.test(resource.name);
    const woa = /^(polyfills-(modern|legacy)|index(-legacy)?|vendor(-legacy)?|idtoken-verifier\.esm(-legacy)?)\.[a-f0-9]+\.js$/.test(resource.name);
    if (url.protocol !== 'https:' || url.username || url.password || url.port || url.search || url.hash ||
        !((widget && url.hostname === 'appleid.cdn-apple.com' && url.pathname === `/appleauth/static/module-assets/${resource.name}`) ||
          (woa && url.hostname === 'authorize.music.apple.com' && url.pathname === `/assets/${resource.name}`))) {
      throw new Error('Unexpected Apple authorization asset URL or name');
    }
    const source = readFileSync(resolve(root, TOOL, 'upstream', resource.name));
    if (digest(source) !== resource.upstreamSha256) throw new Error(`Apple authorization upstream hash differs: ${resource.name}`);
    // The locked modern and SystemJS entries have only literal relative JS dependencies.
    // Assert closure before output; replacing an entry without its matching modules is invalid.
    const dependencies = [...source.toString('utf8').matchAll(/["']\.\/([a-zA-Z0-9_.-]+\.js)["']/g)].map(match => match[1]);
    for (const name of dependencies) if (!names.has(name)) throw new Error(`Apple authorization module graph is incomplete: ${name}`);
    const code = compiler.transformSync(source.toString('utf8'), {
      ...lock.compilerOptions, banner, sourcefile: resource.name,
    }).code;
    if (digest(code) !== resource.outputSha256) throw new Error(`Apple authorization transformed hash differs: ${resource.name}`);
    outputs.set(resource.name, Buffer.from(code));
    facts.push({
      url: resource.url,
      upstreamPath: `${TOOL}/upstream/${resource.name}`,
      upstreamSha256: resource.upstreamSha256,
      upstreamBytes: source.length,
      assetPath: `${ASSET}/${resource.name}`,
      assetSha256: resource.outputSha256,
      assetBytes: Buffer.byteLength(code),
      dependencies: [...new Set(dependencies)],
    });
  }
  const provenance = {
    schemaVersion: 2,
    compiler: { name: 'esbuild', version: compiler.version, options: lock.compilerOptions },
    uuidCompatibility: { source: `${TOOL}/random-uuid-compat.js`, sha256: lock.bannerSha256, algorithm: 'RFC 4122 version 4, crypto.getRandomValues only, native implementation preserved' },
    runtimeCompatibility: { source: `${TOOL}/runtime-compat.js`, sha256: lock.runtimeCompatibilitySha256, api: 'Object.fromEntries, native preserved, iterator closure and own property semantics' },
    sources: facts,
    scope: 'Locked WOA modern and legacy entry/module graph plus two IDMS widgets; official documents, forms, cookies and authentication stay online. Unknown script versions in these roots are rejected rather than remapped.',
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
      if (!existing || !existing.equals(expected)) throw new Error(`Packaged Apple authorization asset differs: ${name}`);
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
    console.log(`Apple official authorization compatibility assets ${check ? 'verified' : 'prepared'}: ${outputs.size - 1} scripts, esbuild 0.25.12, target Chrome 66`);
    for (const [name, data] of outputs) console.log(`${digest(data)} ${name}`);
  } catch (error) {
    console.error(error.message);
    process.exitCode = 1;
  }
}

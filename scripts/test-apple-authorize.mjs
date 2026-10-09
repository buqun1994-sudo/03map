#!/usr/bin/env node
import assert from 'node:assert/strict';
import { readFileSync, mkdtempSync, mkdirSync, copyFileSync, writeFileSync } from 'node:fs';
import { createHash } from 'node:crypto';
import { dirname, resolve } from 'node:path';
import { fileURLToPath } from 'node:url';
import { Script, createContext } from 'node:vm';
import test from 'node:test';
import { buildAssetOutputs, prepareAppleAuthorizeAssets } from './prepare-apple-authorize.mjs';

const ROOT = resolve(dirname(fileURLToPath(import.meta.url)), '..');
const tool = resolve(ROOT, 'tools/apple-authorize');
const banner = readFileSync(resolve(tool, 'random-uuid-compat.js'), 'utf8');
const runtime = readFileSync(resolve(tool, 'runtime-compat.js'), 'utf8');
const digest = value => createHash('sha256').update(value).digest('hex');

function install(context) { new Script(banner).runInContext(context); }

test('UUID v4 uses exactly 16 secure bytes and RFC version and variant bits', () => {
  let calls = 0;
  const context = createContext({ crypto: { getRandomValues(bytes) { assert.equal(bytes.length, 16); calls++; bytes.fill(255); return bytes; } } });
  install(context);
  const value = context.crypto.randomUUID();
  assert.equal(value, 'ffffffff-ffff-4fff-bfff-ffffffffffff');
  assert.match(value, /^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$/);
  assert.equal(calls, 1);
  const first = context.crypto.randomUUID;
  install(context);
  assert.equal(context.crypto.randomUUID, first);
});

test('existing native randomUUID is preserved and does not request replacement bytes', () => {
  const native = () => 'native';
  const context = createContext({ crypto: { randomUUID: native, getRandomValues() { assert.fail('native implementation must remain'); } } });
  install(context);
  assert.equal(context.crypto.randomUUID, native);
  assert.equal(context.crypto.randomUUID(), 'native');
});

test('missing secure random source does not invent a weaker UUID implementation', () => {
  const missingCrypto = createContext({});
  install(missingCrypto);
  assert.equal('crypto' in missingCrypto, false);
  const missingRandom = createContext({ crypto: {} });
  install(missingRandom);
  assert.equal('randomUUID' in missingRandom.crypto, false);
  assert.doesNotMatch(banner, /Math\.random/);
});

test('packaged sources and results reproduce the fixed official upstream and compiler hashes', () => {
  const lock = JSON.parse(readFileSync(resolve(tool, 'lock.json'), 'utf8'));
  const outputs = prepareAppleAuthorizeAssets({ check: true });
  for (const resource of lock.assets) {
    assert.equal(digest(outputs.get(resource.name)), resource.outputSha256);
    assert.ok(outputs.get(resource.name).toString('utf8').startsWith(banner.trimEnd()));
  }
});

test('Object.fromEntries accepts maps and symbol keys without prototype pollution, and preserves natives', () => {
  const context = createContext({});
  new Script('Object.fromEntries = undefined').runInContext(context);
  new Script(runtime).runInContext(context);
  const result = new Script(`(() => {
    const symbol = Symbol('entry');
    const value = Object.fromEntries(new Map([['__proto__', { polluted: true }], ['key', 2], [symbol, 3]]));
    return value.key === 2 && value[symbol] === 3 && value.__proto__.polluted === true &&
      Object.getPrototypeOf(value) === Object.prototype && !Object.prototype.polluted;
  })()`).runInContext(context);
  assert.equal(result, true);
  const installed = new Script('Object.fromEntries').runInContext(context);
  new Script(runtime).runInContext(context);
  assert.equal(new Script('Object.fromEntries').runInContext(context), installed);
  const nativeContext = createContext({});
  const native = new Script('Object.fromEntries').runInContext(nativeContext);
  new Script(runtime).runInContext(nativeContext);
  assert.equal(new Script('Object.fromEntries').runInContext(nativeContext), native);
});

test('Object.fromEntries closes an iterator on an invalid entry and rejects noniterables', () => {
  const context = createContext({});
  new Script('Object.fromEntries = undefined').runInContext(context);
  new Script(runtime).runInContext(context);
  assert.equal(new Script(`(() => {
    let closed = false;
    const entries = { [Symbol.iterator]() { return {
      next() { return { value: 7, done: false }; }, return() { closed = true; return { done: true }; }
    }; } };
    try { Object.fromEntries(entries); } catch (error) { return error instanceof TypeError && closed; }
    return false;
  })()`).runInContext(context), true);
  assert.throws(() => new Script('Object.fromEntries(null)').runInContext(context), /TypeError/);
});

test('official WOA polyfill executes allSettled on an engine missing that API', async () => {
  const context = createContext({});
  new Script('Promise.allSettled = undefined').runInContext(context);
  const source = readFileSync(resolve(tool, 'upstream/polyfills-modern.2a0ac662.js'), 'utf8');
  new Script(source).runInContext(context);
  const results = await new Script('Promise.allSettled([Promise.resolve(7), Promise.reject("denied")])').runInContext(context);
  assert.equal(results[0].status, 'fulfilled');
  assert.equal(results[0].value, 7);
  assert.equal(results[1].status, 'rejected');
  assert.equal(results[1].reason, 'denied');
});

test('locked WOA modern and legacy module dependencies are complete and widget runtime shim is present', () => {
  const lock = JSON.parse(readFileSync(resolve(tool, 'lock.json'), 'utf8'));
  const outputs = buildAssetOutputs();
  assert.equal(lock.assets.length, 10);
  for (const asset of lock.assets) assert.ok(outputs.get(asset.name).toString('utf8').includes(runtime.trimEnd()));
  const facts = JSON.parse(outputs.get('provenance.json')).sources;
  assert.deepEqual(facts.find(row => row.url.endsWith('/index.08057262.js')).dependencies,
    ['vendor.c5b156fd.js', 'idtoken-verifier.esm.61302cb6.js']);
  assert.deepEqual(facts.find(row => row.url.endsWith('/index-legacy.b2eb8295.js')).dependencies,
    ['vendor-legacy.9c0241d1.js', 'idtoken-verifier.esm-legacy.a1cbf4ce.js']);
});

test('changed public source is rejected before generating a replacement resource', () => {
  const tempBase = resolve(ROOT, '.tmp/apple-auth-compat');
  mkdirSync(tempBase, { recursive: true });
  const root = mkdtempSync(resolve(tempBase, 'hash-case-'));
  const target = resolve(root, 'tools/apple-authorize');
  mkdirSync(resolve(target, 'upstream'), { recursive: true });
  copyFileSync(resolve(tool, 'lock.json'), resolve(target, 'lock.json'));
  copyFileSync(resolve(tool, 'random-uuid-compat.js'), resolve(target, 'random-uuid-compat.js'));
  copyFileSync(resolve(tool, 'runtime-compat.js'), resolve(target, 'runtime-compat.js'));
  const lock = JSON.parse(readFileSync(resolve(tool, 'lock.json'), 'utf8'));
  for (const resource of lock.assets) copyFileSync(resolve(tool, 'upstream', resource.name), resolve(target, 'upstream', resource.name));
  writeFileSync(resolve(target, 'upstream', lock.assets[0].name), 'changed upstream');
  assert.throws(() => buildAssetOutputs({ root }), /upstream hash differs/);
});

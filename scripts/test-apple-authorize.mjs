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

test('changed public source is rejected before generating a replacement resource', () => {
  const tempBase = resolve(ROOT, '.tmp/apple-auth-compat');
  mkdirSync(tempBase, { recursive: true });
  const root = mkdtempSync(resolve(tempBase, 'hash-case-'));
  const target = resolve(root, 'tools/apple-authorize');
  mkdirSync(resolve(target, 'upstream'), { recursive: true });
  copyFileSync(resolve(tool, 'lock.json'), resolve(target, 'lock.json'));
  copyFileSync(resolve(tool, 'random-uuid-compat.js'), resolve(target, 'random-uuid-compat.js'));
  const lock = JSON.parse(readFileSync(resolve(tool, 'lock.json'), 'utf8'));
  for (const resource of lock.assets) copyFileSync(resolve(tool, 'upstream', resource.name), resolve(target, 'upstream', resource.name));
  writeFileSync(resolve(target, 'upstream', lock.assets[0].name), 'changed upstream');
  assert.throws(() => buildAssetOutputs({ root }), /upstream hash differs/);
});

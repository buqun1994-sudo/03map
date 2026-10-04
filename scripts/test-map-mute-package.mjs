import fs from 'node:fs';
import path from 'node:path';
import assert from 'node:assert/strict';
import { verifyPatchedNative, root } from './build-map-mute-native.mjs';

const directory = path.resolve(process.argv[2] || '');
let checks = 0;
for (const name of ['libhsl.so', 'libautonavi.so']) {
  const expected = fs.readFileSync(path.join(directory, name));
  assert.equal(verifyPatchedNative(name, expected), true); checks++;
  const original = fs.readFileSync(path.join(root, 'source/amap-9.5.0.600013/lib/arm64-v8a', name));
  assert.throws(() => verifyPatchedNative(name, original), /output identity/); checks++;
  // Mutations include old code, entry branch, mapped PHDR, appended code,
  // missing payload and undeclared extra content. None is exempt from identity.
  const phoff = Number(expected.readBigUInt64LE(32));
  const entry = name === 'libhsl.so' ? 0xcd84d4 : 0xa0cd64;
  for (const at of [0x1000, entry, phoff + 56, expected.length - 1]) {
    const changed = Buffer.from(expected); changed[at] ^= 1;
    assert.throws(() => verifyPatchedNative(name, changed), /identity/); checks++;
  }
  for (const changed of [expected.subarray(0, expected.length - 4), Buffer.concat([expected, Buffer.from([1])])]) {
    assert.throws(() => verifyPatchedNative(name, changed), /identity/); checks++;
  }
}
assert.equal(verifyPatchedNative('libCommon.so', Buffer.alloc(0)), false); checks++;
console.log(`${checks} native identity and tamper checks passed.`);

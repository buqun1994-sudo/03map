import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import assert from 'node:assert/strict';
import { spawn, spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { TransformCache, sourceFingerprint, checkSourceStructure, withBuildLock, assertOwnedPath, assertBuildLock } from './content-workflow.mjs';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const temporary = path.join(root, '.tmp');
fs.mkdirSync(temporary, { recursive: true });
const fixture = fs.mkdtempSync(path.join(temporary, 'content-workflow-test-'));
const write = (relative, content) => { const file = path.join(fixture, relative); fs.mkdirSync(path.dirname(file), { recursive: true }); fs.writeFileSync(file, content); return file; };
const results = [];
async function test(name, action) { await action(); results.push(name); console.log(`PASS ${name}`); }

await test('cache input/tool changes invalidate and corrupt bytes rebuild', () => {
  const cache = new TransformCache(path.join(fixture, 'cache'));
  const first = cache.prepare('relocation', { input: 'one', tool: 'v1' });
  assert.equal(first.hit, false);
  fs.writeFileSync(path.join(first.directory, 'program.jar'), 'correct');
  first.commit();
  const second = cache.prepare('relocation', { input: 'one', tool: 'v1' });
  assert.equal(second.hit, true);
  assert.equal(fs.readFileSync(path.join(second.directory, 'program.jar'), 'utf8'), 'correct');
  const differentTool = cache.prepare('relocation', { input: 'one', tool: 'v2' });
  assert.equal(differentTool.hit, false); differentTool.cancel();
  const differentInput = cache.prepare('relocation', { input: 'two', tool: 'v1' });
  assert.equal(differentInput.hit, false); differentInput.cancel();
  fs.writeFileSync(path.join(second.directory, 'program.jar'), 'corrupt');
  const rebuilt = cache.prepare('relocation', { input: 'one', tool: 'v1' });
  assert.equal(rebuilt.hit, false);
  fs.writeFileSync(path.join(rebuilt.directory, 'program.jar'), 'correct'); rebuilt.commit();
  fs.writeFileSync(path.join(rebuilt.directory, 'unexpected.txt'), 'extra');
  const extraFile = cache.prepare('relocation', { input: 'one', tool: 'v1' });
  assert.equal(extraFile.hit, false); extraFile.cancel();
  const disabled = new TransformCache(path.join(fixture, 'cache'), false);
  const cold = disabled.prepare('relocation', { input: 'one', tool: 'v1' });
  assert.equal(cold.hit, false); cold.cancel();
  cache.cleanup();
});
await test('cache refuses outside paths and symbolic links', () => {
  assert.throws(() => assertOwnedPath(path.join(fixture, '..', 'outside'), fixture));
  assert.throws(() => assertOwnedPath(fixture, fixture));
  const external = write('outside-cache.txt', 'do not overwrite');
  const cacheRoot = path.join(fixture, 'unsafe-cache'); fs.mkdirSync(cacheRoot);
  fs.symlinkSync(path.dirname(external), path.join(cacheRoot, 'relocation'));
  const cache = new TransformCache(cacheRoot);
  assert.throws(() => cache.prepare('relocation', { input: 'one' }), /symbolic link/);
  assert.equal(fs.readFileSync(external, 'utf8'), 'do not overwrite');
});
await test('fingerprint excludes generated output/docs and includes new formal sources', () => {
  write('source/amap-9.5.0.600013/smali/Owner.smali', 'source');
  write('ui-preview/app/src/main/Owner.kt', 'class Owner');
  write('ui-preview/app/build.gradle.kts', 'plugins {}');
  write('scripts/compose-runtime.pro', '-keep class Owner');
  const before = sourceFingerprint(fixture);
  write('ui-preview/app/build/generated.txt', 'generated');
  write('docs/README.md', 'documentation');
  assert.equal(sourceFingerprint(fixture).sha256, before.sha256);
  write('source/amap-9.5.0.600013/content-src/New.java', 'class New {}');
  assert.notEqual(sourceFingerprint(fixture).sha256, before.sha256);
});
await test('structure preflight fails missing module dependencies and Java allowlist before compilation', () => {
  write('ui-preview/settings.gradle.kts', 'include(":app", ":content-model")');
  write('ui-preview/content-model/build.gradle.kts', 'plugins {}');
  write('ui-preview/app/build.gradle.kts', 'dependencies { api(project(":missing")) }');
  assert.throws(() => checkSourceStructure(fixture), /not included in settings: missing/);
  write('ui-preview/app/build.gradle.kts', 'val formalClasses = listOf("MissingOwner")');
  assert.throws(() => checkSourceStructure(fixture), /Incomplete formal Java allowlist/);
  write('source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content/MissingOwner.java', 'class MissingOwner {}');
  assert.deepEqual(checkSourceStructure(fixture), ['app', 'content-model']);
});
await test('shared build lock rejects a second owner and releases after failure', async () => {
  const childScript = path.join(root, 'scripts/content-workflow.mjs');
  assert.throws(() => assertBuildLock(fixture));
  await withBuildLock(fixture, async () => {
    assert.ok(fs.existsSync(path.join(fixture, 'apk-work/.content-workflow-lock/owner.json')));
    assert.equal(assertBuildLock(fixture).pid, process.pid);
    const token = process.env.CONTENT_WORKFLOW_LOCK_TOKEN;
    process.env.CONTENT_WORKFLOW_LOCK_TOKEN = 'wrong-token';
    assert.throws(() => assertBuildLock(fixture), /Missing live shared build owner/);
    process.env.CONTENT_WORKFLOW_LOCK_TOKEN = token;
    await assert.rejects(withBuildLock(fixture, async () => {}), /in use/);
    const child = spawnSync(process.execPath, ['--input-type=module', '-e', `import {withBuildLock} from ${JSON.stringify('file://' + childScript)}; await withBuildLock(${JSON.stringify(fixture)},async()=>process.stdout.write('inherited'));`], { encoding: 'utf8' });
    assert.equal(child.status, 0, child.stderr);
    assert.equal(child.stdout, 'inherited');
  });
  assert.equal(fs.existsSync(path.join(fixture, 'apk-work/.content-workflow-lock')), false);
  await assert.rejects(withBuildLock(fixture, async () => { throw new Error('fixture failure'); }), /fixture failure/);
  assert.equal(fs.existsSync(path.join(fixture, 'apk-work/.content-workflow-lock')), false);
});
await test('concurrent dead-owner recovery never overlaps callbacks', async () => {
  const lock = path.join(fixture, 'apk-work/.content-workflow-lock');
  fs.mkdirSync(lock);
  const exited = spawnSync(process.execPath, ['-e', 'process.stdout.write(String(process.pid))'], { encoding: 'utf8' });
  assert.equal(exited.status, 0);
  fs.writeFileSync(path.join(lock, 'owner.json'), JSON.stringify({ pid: Number(exited.stdout), token: 'dead-fixture-owner' }));
  const events = path.join(fixture, 'lock-events.jsonl');
  const script = `import fs from 'node:fs'; import {withBuildLock} from ${JSON.stringify('file://' + path.join(root, 'scripts/content-workflow.mjs'))};
try { await withBuildLock(${JSON.stringify(fixture)}, async () => {
  fs.appendFileSync(${JSON.stringify(events)}, JSON.stringify({event:'enter',pid:process.pid})+'\\n');
  await new Promise(resolve=>setTimeout(resolve,150));
  fs.appendFileSync(${JSON.stringify(events)}, JSON.stringify({event:'exit',pid:process.pid})+'\\n');
}); } catch(error) { process.stderr.write(error.message); process.exitCode=1; }`;
  const children = await Promise.all(Array.from({ length: 6 }, () => new Promise((resolve, reject) => {
    const child = spawn(process.execPath, ['--input-type=module', '-e', script], { stdio: ['ignore', 'ignore', 'pipe'] });
    let stderr = '';
    child.stderr.on('data', chunk => { stderr += chunk; });
    child.on('error', reject); child.on('close', code => resolve({ code, stderr }));
  })));
  assert.ok(children.some(child => child.code === 0));
  for (const child of children.filter(item => item.code !== 0)) assert.match(child.stderr, /in use|acquiring|recovery/);
  let active = null;
  for (const event of fs.readFileSync(events, 'utf8').trim().split('\n').map(line => JSON.parse(line))) {
    if (event.event === 'enter') { assert.equal(active, null, 'Callbacks overlapped'); active = event.pid; }
    else { assert.equal(active, event.pid); active = null; }
  }
  assert.equal(active, null);
  assert.equal(fs.existsSync(lock), false);
  assert.equal(fs.existsSync(path.join(fixture, 'apk-work/.content-workflow-lock-recovery')), false);
});
await test('standalone Compose acquires the same lock and rejects a concurrent writer', async () => {
  const isolated = path.join(fixture, 'compose-cli');
  fs.mkdirSync(path.join(isolated, 'scripts'), { recursive: true });
  for (const name of ['build-compose-content.mjs', 'content-workflow.mjs', 'validate-content-planner.mjs']) fs.copyFileSync(path.join(root, 'scripts', name), path.join(isolated, 'scripts', name));
  const command = path.join(isolated, 'scripts/build-compose-content.mjs');
  const environment = { ...process.env }; delete environment.CONTENT_WORKFLOW_LOCK_TOKEN;
  const invalidStage = path.join(isolated, 'apk-work/9.5.0.600013/source-build.fixture');
  const standalone = spawnSync(process.execPath, [command, invalidStage], { encoding: 'utf8', env: environment });
  assert.equal(standalone.status, 1);
  assert.match(standalone.stderr, /Expected verified source-build staging directory/);
  assert.equal(fs.existsSync(path.join(isolated, 'apk-work/.content-workflow-lock')), false);
  await withBuildLock(isolated, async () => {
    const busy = spawnSync(process.execPath, [command, invalidStage], { encoding: 'utf8', env: environment });
    assert.equal(busy.status, 1);
    assert.match(busy.stderr, /in use by PID/);
  });
  const invalidToken = spawnSync(process.execPath, [command, invalidStage], { encoding: 'utf8', env: { ...environment, CONTENT_WORKFLOW_LOCK_TOKEN: 'unowned-token' } });
  assert.equal(invalidToken.status, 1);
  assert.equal(fs.existsSync(path.join(isolated, 'apk-work/9.5.0.600013/compose-cache')), false);
});
await test('stage reports monotonic duration and nonzero exit without recording command arguments', () => {
  const report = path.join(fixture, 'timings.jsonl');
  const secret = 'fixture-not-a-real-secret';
  const result = spawnSync(process.execPath, [path.join(root, 'scripts/content-workflow.mjs'), 'stage', report, 'fixture-failure', process.execPath, '-e', 'process.exit(7)', secret], { encoding: 'utf8' });
  assert.equal(result.status, 7);
  const text = fs.readFileSync(report, 'utf8'), timing = JSON.parse(text.trim());
  assert.equal(timing.exitCode, 7); assert.ok(timing.elapsedMs > 0);
  assert.equal(text.includes(secret), false);
});
fs.writeFileSync(path.join(fixture, 'test-summary.json'), JSON.stringify({ passed: results.length, tests: results }, null, 2) + '\n');
console.log(`${results.length} workflow tests passed; evidence: ${path.join(fixture, 'test-summary.json')}`);

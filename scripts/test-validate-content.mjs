#!/usr/bin/env node
import assert from 'node:assert/strict';
import fs from 'node:fs';
import os from 'node:os';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import * as workflow from './content-workflow.mjs';
import { parseArgs, discoverModuleGraph, changedGitPaths, planValidation, summarizeGradleOutput } from './validate-content-planner.mjs';
import { executeValidation, toolchainFingerprint } from './validate-content.mjs';

const FORMAL = 'source/amap-9.5.0.600013';
const temporaryRoots = new Set();
function fixture() {
  const root = fs.mkdtempSync(path.join(os.tmpdir(), 'content-validation-test.'));
  temporaryRoots.add(root);
  const write = (relative, content = '') => {
    const file = path.join(root, relative);
    fs.mkdirSync(path.dirname(file), { recursive: true });
    fs.writeFileSync(file, content);
  };
  const names = ['app', 'content-model', 'content-ui', 'content-runtime', 'map-host', 'consumer'];
  write('ui-preview/settings.gradle.kts', `// include(":excluded")\ninclude(${names.map((name) => `":${name}"`).join(', ')})\n`);
  const dependencies = { app: ['content-ui'], 'content-model': [], 'content-ui': ['content-model'], 'content-runtime': ['content-ui'], 'map-host': ['content-runtime'], consumer: ['map-host'] };
  for (const name of names) {
    const kind = { 'content-model': 'model', 'content-ui': 'ui', 'content-runtime': 'runtime', 'map-host': 'host' }[name];
    let text = `plugins { id("com.android.library"); id("org.jetbrains.kotlin.android") }\n`;
    text += `dependencies { ${dependencies[name].map((dependency) => `api(project(":${dependency}"))`).join('; ')} }\n`;
    text += '// implementation(project(":not-included"))\n';
    if (kind) {
      text += `sourceSets.getByName("main").java.srcDirs("../../${FORMAL}/content-compose/${kind}")\n`;
      write(`${FORMAL}/content-compose/${kind}/Example.kt`, 'package example\n');
    }
    if (name === 'content-runtime') {
      text += `val formalClasses = listOf("ContentPorts", "ContentState", "ContentStore")\n`;
      text += `sourceSets.getByName("main").java.srcDir("../../${FORMAL}/content-src")\n`;
      for (const java of ['ContentPorts', 'ContentState', 'ContentStore']) write(`${FORMAL}/content-src/com/autonavi/amapauto/content/${java}.java`, `class ${java} {}\n`);
    }
    if (name === 'map-host') {
      text += 'include("com/autonavi/amapauto/content/ContentRuntime.java")\n';
      write(`${FORMAL}/content-src/com/autonavi/amapauto/content/ContentRuntime.java`, 'class ContentRuntime {}\n');
    }
    write(`ui-preview/${name}/build.gradle.kts`, text);
  }
  write('.gitignore', 'apk-work/\n');
  write('scripts/example.mjs', 'export const value = 1;\n');
  return { root, write, names };
}
function git(root, ...args) {
  const result = spawnSync('git', args, { cwd: root, encoding: 'utf8' });
  assert.equal(result.status, 0, result.stderr);
  return result.stdout;
}
function fakeRunner(callback = () => {}) {
  const calls = [];
  const runner = async (command) => {
    calls.push(command);
    return await callback(command, calls) || { exitCode: 0, output: '' };
  };
  return { runner, calls };
}
const fakeGradle = (root, args) => ({ command: 'fixture-gradle', args, cwd: path.join(root, 'ui-preview') });
const options = (argv = []) => parseArgs(argv);
let testCount = 0;
async function test(name, callback) {
  try { await callback(); testCount++; console.log(`PASS ${name}`); }
  catch (error) { error.message = `${name}: ${error.message}`; throw error; }
}

try {
  await test('CLI defaults, repeats, explicit filters and invalid combinations', () => {
    assert.deepEqual(options(), { scope: 'auto', modules: [], tests: [], lint: false, plan: false, help: false });
    const parsed = options(['--module', ':content-ui', '--module=content-ui', '--tests', '*Ripple*', '--tests=*Theme*', '--lint', '--plan']);
    assert.deepEqual(parsed.modules, ['content-ui']);
    assert.deepEqual(parsed.tests, ['*Ripple*', '*Theme*']);
    assert.equal(parsed.lint, true);
    assert.equal(options(['--no-lint']).lint, false);
    for (const argv of [['--scope', 'bad'], ['--module'], ['--unknown'], ['--lint', '--no-lint'], ['--scope', 'docs', '--tests', 'A'], ['--plan=x'], ['--module', '../other']]) {
      assert.throws(() => options(argv));
    }
  });

  await test('Dynamic included modules, project dependencies and commented examples', () => {
    const { root, names, write } = fixture();
    write('ui-preview/settings.gradle.kts', `// include(":excluded")\ninclude(${names.map((name) => `":${name}"`).join(', ')})\n`);
    const graph = discoverModuleGraph(root);
    assert.deepEqual(graph.modules.map(({ name }) => name), names);
    assert.deepEqual(graph.modules.find(({ name }) => name === 'consumer').dependencies, ['map-host']);
    write('ui-preview/consumer/build.gradle.kts', 'dependencies { implementation(project(":missing")) }');
    assert.throws(() => discoverModuleGraph(root), /not included/);
    write('ui-preview/consumer/build.gradle.kts', 'dependencies { implementation(project(":content-model")) }');
    write('ui-preview/content-model/build.gradle.kts', 'dependencies { implementation(project(":consumer")) }');
    assert.throws(() => discoverModuleGraph(root), /Cyclic/);
  });

  await test('Model implementation and Port changes select all transitive consumers', () => {
    const { root, names } = fixture();
    assert.deepEqual(planValidation(root, options(), [`${FORMAL}/content-compose/model/Example.kt`]).modules, names);
    assert.deepEqual(planValidation(root, options(['--scope', 'model']), []).modules, names);
    assert.deepEqual(planValidation(root, options(), [`${FORMAL}/content-src/com/autonavi/amapauto/content/ContentPorts.java`]).modules,
      ['content-runtime', 'map-host', 'consumer']);
  });

  await test('UI test-only change remains UI while formal implementation includes consumers', () => {
    const { root } = fixture();
    assert.deepEqual(planValidation(root, options(), ['ui-preview/content-ui/src/test/java/ExampleTest.kt']).modules, ['content-ui']);
    assert.deepEqual(planValidation(root, options(), [`${FORMAL}/content-compose/ui/Example.kt`]).modules,
      ['app', 'content-ui', 'content-runtime', 'map-host', 'consumer']);
    assert.deepEqual(planValidation(root, options(), ['ui-preview/consumer/src/test/java/X.kt']).modules, ['consumer']);
  });

  await test('Build, dependency and Gradle changes cover every dynamically discovered module', () => {
    const { root, names } = fixture();
    for (const file of ['scripts/build-content-apk.sh', 'scripts/compose-runtime-deps.lock.json', 'scripts/content-workflow.mjs', 'ui-preview/settings.gradle.kts', 'ui-preview/content-ui/build.gradle.kts']) {
      assert.deepEqual(planValidation(root, options(), [file]).modules, names, file);
    }
    const plan = planValidation(root, options(['--scope', 'all', '--lint']), []);
    assert.deepEqual(plan.modules, names);
    assert.equal(plan.coverage.declaration, 'all-discovered-modules');
    assert(plan.compileTasks.includes(':content-model:compileDebugUnitTestKotlin'));
    assert(plan.testArgs.includes(':content-model:testDebugUnitTest'));
    assert(plan.lintTasks.includes(':consumer:lintDebug'));
  });

  await test('Explicit module filters override auto without claiming a full run', () => {
    const { root } = fixture();
    const selected = options(['--scope', 'all', '--module', 'content-ui', '--tests', '*Ripple*', '--tests', '*Theme*']);
    const plan = planValidation(root, selected, [`${FORMAL}/content-compose/model/Example.kt`]);
    assert.deepEqual(plan.modules, ['content-ui']);
    assert.equal(plan.coverage.tests, 'filtered');
    assert.equal(plan.coverage.declaration, 'selected-modules');
    assert.deepEqual(plan.testArgs, [':content-ui:testDebugUnitTest', '--tests', '*Ripple*', '--tests', '*Theme*']);
    assert.throws(() => planValidation(root, options(['--scope', 'all', '--tests', '*X*']), []), /exactly one/);
    assert.throws(() => planValidation(root, options(['--module', 'excluded']), []), /Unknown included module/);
    for (const args of [plan.gradleCompileArgs, plan.gradleTestArgs]) {
      assert(!args.some((arg) => /clean|rerun|incremental=false|no-daemon/.test(arg)));
    }
  });

  await test('Docs and unrelated probe changes need no module structure or Gradle', async () => {
    const { root, write } = fixture();
    write('ui-preview/settings.gradle.kts', 'include(":missing-wip-module")');
    const docsPlan = planValidation(root, options(), ['docs/plan.md', 'camera-probe/src/Probe.java']);
    assert.equal(docsPlan.modules.length, 0);
    assert.equal(docsPlan.gradleTestArgs.length, 0);
    const fake = fakeRunner();
    const result = await executeValidation({ root, options: options(['--scope', 'docs']), changedPaths: ['docs/plan.md'], runner: fake.runner,
      workflow: { ...workflow, checkSourceStructure() { throw new Error('Must not check docs WIP'); } }, logger() {} });
    assert.equal(result.exitCode, 0);
    assert.equal(result.report.valid, true);
    assert.equal(fake.calls.length, 1);
    assert.equal(fake.calls[0].command, 'git');
  });

  await test('Docs evidence survives unrelated product WIP but rejects changed static inputs', async () => {
    const { root, write } = fixture();
    write('docs/plan.md', 'initial\n');
    const irrelevant = fakeRunner(() => {
      write(`${FORMAL}/content-compose/model/Example.kt`, 'unrelated product WIP\n');
      return { exitCode: 0, output: '' };
    });
    const good = await executeValidation({ root, options: options(['--scope', 'docs']), changedPaths: ['docs/plan.md'], runner: irrelevant.runner, logger() {} });
    assert.equal(good.exitCode, 0);
    assert.equal(good.report.sourceStable, null);
    assert.equal(good.report.inputStable, true);
    assert.equal(good.report.fingerprintScope, 'static-check-inputs-only');
    const relevant = fakeRunner(() => {
      write('docs/plan.md', 'changed during static checks\n');
      return { exitCode: 0, output: '' };
    });
    const rejected = await executeValidation({ root, options: options(['--scope', 'docs']), changedPaths: ['docs/plan.md'], runner: relevant.runner, logger() {} });
    assert.equal(rejected.exitCode, 1);
    assert.equal(rejected.report.valid, false);
    assert.match(rejected.report.error, /Static check inputs changed/);
  });

  await test('Toolchain fingerprint stores public versions and hashes without local secrets', () => {
    const { root, write } = fixture();
    write('fixture-jdk/release', 'JAVA_VERSION="17.0.12"\nIMPLEMENTOR="Fixture"\nOS_ARCH="arm64"\n');
    write('fixture-sdk/platforms/android-35/android.jar', 'fixture Android platform bytes');
    write('ui-preview/gradle/wrapper/gradle-wrapper.properties', 'distributionUrl=https://example.invalid/gradle.zip\n');
    write('scripts/compose-runtime-deps.lock.json', '{"dependencies":[]}\n');
    write('.codex/local-context.properties', 'DO_NOT_RECORD=fixture-secret\n');
    const environment = { JAVA_HOME: path.join(root, 'fixture-jdk'), ANDROID_SDK_ROOT: path.join(root, 'fixture-sdk') };
    const first = toolchainFingerprint(root, environment);
    assert(first.publicJdkVersion.includes('JAVA_VERSION="17.0.12"'));
    assert.deepEqual(first.files.map(({ input }) => input), ['jdk-release', 'android-platform-35', 'gradle-wrapper-properties', 'compose-dependency-lock']);
    assert(!JSON.stringify(first).includes('fixture-secret'));
    write('fixture-sdk/platforms/android-35/android.jar', 'changed platform');
    assert.notEqual(toolchainFingerprint(root, environment).sha256, first.sha256);
    assert.throws(() => toolchainFingerprint(root, {}), /Missing/);
  });

  await test('Git discovery includes staged, unstaged, deleted and untracked paths', () => {
    const { root, write } = fixture();
    git(root, 'init', '-q');
    git(root, 'add', '.');
    git(root, '-c', 'user.name=Fixture', '-c', 'user.email=fixture@example.invalid', 'commit', '-qm', 'fixture');
    write('ui-preview/content-ui/src/test/java/New test.kt', '// untracked');
    write(`${FORMAL}/content-compose/model/Example.kt`, 'changed\n');
    git(root, 'add', `${FORMAL}/content-compose/model/Example.kt`);
    write(`${FORMAL}/content-compose/ui/Example.kt`, 'unstaged\n');
    git(root, 'rm', '-q', 'scripts/example.mjs');
    assert.deepEqual(changedGitPaths(root), [
      'scripts/example.mjs', `${FORMAL}/content-compose/model/Example.kt`, `${FORMAL}/content-compose/ui/Example.kt`,
      'ui-preview/content-ui/src/test/java/New test.kt',
    ].sort());
  });

  await test('Gradle summary separates fresh execution, task cache and failures', () => {
    const summary = summarizeGradleOutput(`> Task :content-model:compileDebugUnitTestKotlin UP-TO-DATE\n> Task :content-ui:testDebugUnitTest\n> Task :content-runtime:testDebugUnitTest FROM-CACHE\n> Task :map-host:testDebugUnitTest UP-TO-DATE\n> Task :app:compileDebugUnitTestJavaWithJavac NO-SOURCE\n> Task :app:lintDebug FAILED\nBUILD FAILED in 2s\n6 actionable tasks: 2 executed, 1 from cache, 3 up-to-date\n`);
    assert.deepEqual(summary.counts, { executed: 1, upToDate: 2, fromCache: 1, noSource: 1, skipped: 0, failed: 1 });
    assert.deepEqual(summary.tests.map(({ evidence }) => evidence), ['executed-this-run', 'reused', 'reused']);
    assert.equal(summary.reportedBuildResult, 'FAILED in 2s');
  });

  await test('Read-only plan validates structure without creating evidence or executing a runner', async () => {
    const { root } = fixture();
    const fake = fakeRunner();
    const result = await executeValidation({ root, options: options(['--scope', 'all', '--plan']), changedPaths: [], runner: fake.runner, logger() {} });
    assert.equal(result.planned, true);
    assert.equal(fake.calls.length, 0);
    assert.equal(fs.existsSync(path.join(root, 'apk-work')), false);
  });

  await test('Missing formal allowlist source fails before any commands with durable error evidence', async () => {
    const { root, write } = fixture();
    write('ui-preview/content-runtime/build.gradle.kts', 'val formalClasses = listOf("MissingFormal")\n');
    const fake = fakeRunner();
    const result = await executeValidation({ root, options: options(['--scope', 'all']), changedPaths: [], runner: fake.runner, logger() {} });
    assert.equal(result.exitCode, 1);
    assert.match(result.report.error, /MissingFormal/);
    assert.equal(fake.calls.length, 0);
    assert(fs.existsSync(path.join(result.evidence, 'plan.json')));
    assert(fs.existsSync(path.join(result.evidence, 'source-before.json')));
    assert(fs.existsSync(path.join(result.evidence, 'timings.jsonl')));
    assert.equal(JSON.parse(fs.readFileSync(path.join(result.evidence, 'report.json'))).valid, false);
  });

  await test('Compile failure never launches tests and stores actual phase exit', async () => {
    const { root } = fixture();
    const fake = fakeRunner((command) => command.command === 'fixture-gradle'
      ? { exitCode: 7, output: '> Task :content-ui:compileDebugUnitTestKotlin FAILED\n' } : null);
    const result = await executeValidation({ root, options: options(['--module', 'content-ui']), changedPaths: [], runner: fake.runner,
      commandForGradle: fakeGradle, logger() {} });
    assert.equal(result.exitCode, 1);
    assert.equal(result.report.valid, false);
    assert.equal(result.report.phases.at(-1).exitCode, 7);
    assert.equal(fake.calls.filter(({ command }) => command === 'fixture-gradle').length, 1);
    assert.equal(fs.existsSync(path.join(root, 'apk-work/.content-workflow-lock')), false);
  });

  await test('Stable source runs exactly compile then tests and preserves cache evidence', async () => {
    const { root } = fixture();
    const fake = fakeRunner((command) => {
      if (command.command !== 'fixture-gradle') return null;
      return { exitCode: 0, output: command.args.some((arg) => arg.endsWith(':testDebugUnitTest'))
        ? '> Task :content-ui:testDebugUnitTest UP-TO-DATE\nBUILD SUCCESSFUL in 1s\n1 actionable task: 1 up-to-date\n'
        : '> Task :content-ui:compileDebugUnitTestKotlin UP-TO-DATE\n> Task :content-ui:compileDebugUnitTestJavaWithJavac NO-SOURCE\n' };
    });
    const result = await executeValidation({ root, options: options(['--module', 'content-ui']), changedPaths: [], runner: fake.runner,
      commandForGradle: fakeGradle, logger() {} });
    assert.equal(result.exitCode, 0);
    assert.equal(fake.calls.filter(({ command }) => command === 'fixture-gradle').length, 2);
    assert.equal(result.report.sourceBefore, result.report.sourceAfter);
    assert.equal(result.report.testEvidence[0].evidence, 'reused');
    assert.equal(result.report.phases.at(-1).gradle.counts.executed, 0);
    assert(result.report.elapsedMs >= 0);
    assert.equal(result.report.valid, true);
  });

  await test('External source change during compile invalidates evidence and skips tests', async () => {
    const { root, write } = fixture();
    const fake = fakeRunner((command) => {
      if (command.command === 'fixture-gradle') write(`${FORMAL}/content-compose/model/Example.kt`, 'external edit\n');
      return { exitCode: 0, output: '> Task :content-ui:compileDebugUnitTestKotlin\n' };
    });
    const result = await executeValidation({ root, options: options(['--module', 'content-ui']), changedPaths: [], runner: fake.runner,
      commandForGradle: fakeGradle, logger() {} });
    assert.equal(result.exitCode, 1);
    assert.equal(result.report.sourceStable, false);
    assert.equal(result.report.valid, false);
    assert.match(result.report.error, /Source changed/);
    assert(result.report.changedDuringValidation.includes(`${FORMAL}/content-compose/model/Example.kt`));
    assert.equal(fake.calls.filter(({ command }) => command === 'fixture-gradle').length, 1);
  });

  await test('Live shared lock fails promptly without launching commands', async () => {
    const { root, write } = fixture();
    write('apk-work/.content-workflow-lock/owner.json', JSON.stringify({ pid: process.pid, token: 'test-owner' }));
    const fake = fakeRunner();
    const result = await executeValidation({ root, options: options(['--module', 'content-ui']), changedPaths: [], runner: fake.runner,
      commandForGradle: fakeGradle, logger() {} });
    assert.equal(result.exitCode, 1);
    assert.match(result.report.error, /PID/);
    assert.equal(fake.calls.length, 0);
  });

  await test('Package verification script contains no Gradle regression and preserves primary DEX owner', () => {
    const here = path.dirname(fileURLToPath(import.meta.url));
    const host = fs.readFileSync(path.join(here, 'test-content-host.sh'), 'utf8');
    assert(!/\.\/gradlew|testDebugUnitTest|lintDebug/.test(host));
    assert(host.includes('check-compose-package.mjs'));
    assert(host.includes('check-content-dex.mjs'));
    assert(host.includes('original.dex'));
    assert(host.includes('apkSha256'));
    assert(host.includes('ZIPALIGN'));
  });
  console.log(`Validation planner/execution tests passed: ${testCount}; no Gradle, APK build or device commands were executed.`);
} finally {
  for (const root of temporaryRoots) {
    const absolute = path.resolve(root), parent = path.resolve(os.tmpdir());
    if (!absolute.startsWith(parent + path.sep) || !path.basename(absolute).startsWith('content-validation-test.') || fs.lstatSync(absolute).isSymbolicLink()) {
      throw new Error(`Refusing cleanup of unowned test path: ${absolute}`);
    }
    fs.rmSync(absolute, { recursive: true });
  }
}

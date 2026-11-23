#!/usr/bin/env node
import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { spawn } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import * as sharedWorkflow from './content-workflow.mjs';
import { parseArgs, changedGitPaths, discoverModuleGraph, needsModuleGraph, planValidation, summarizeGradleOutput } from './validate-content-planner.mjs';

export const HELP = `用法：node scripts/validate-content.mjs [选项]

  --scope auto|docs|model|ui|runtime|host|all  默认 auto，依据 Git 已跟踪与未跟踪改动规划
  --module NAME                            可重复，显式精确选择模块，覆盖 scope/auto 推导
  --tests PATTERN                          可重复，最终必须仅选择一个模块；报告标明定向用例
  --lint / --no-lint                        是否追加所选模块 Lint；默认不追加
  --plan                                   只读输出 JSON 计划；不执行检查、不生成证据目录
  --help                                   显示帮助

默认保留 Gradle 缓存与 Kotlin 增量；先编译所选模块测试，再执行测试与可选 Lint。
model 与 auto 共享契约变更包含消费者；单独测试文件改动仅选择所属模块。
docs 仅执行静态检查；all 动态覆盖 settings 中全部模块（含 content-model）。
证据写入 apk-work/validation.*，分别记录本次执行、缓存复用和未执行任务。
本入口不构建或安装 APK，不将本机测试当作车机运行通过。
`;

function writeJson(file, value) { fs.writeFileSync(file, JSON.stringify(value, null, 2) + '\n'); }

export async function runCommand({ command, args, cwd, logFile, env = process.env, echo = true }) {
  const log = fs.createWriteStream(logFile);
  const chunks = [];
  const result = await new Promise((resolve) => {
    const child = spawn(command, args, { cwd, env, stdio: ['ignore', 'pipe', 'pipe'] });
    const output = (stream) => (chunk) => {
      chunks.push(chunk.toString('utf8'));
      log.write(chunk);
      if (echo) stream.write(chunk);
    };
    child.stdout?.on('data', output(process.stdout));
    child.stderr?.on('data', output(process.stderr));
    child.on('error', (error) => {
      const text = `Cannot start command: ${error.message}\n`;
      chunks.push(text);
      log.write(text);
    });
    child.on('close', (exitCode, signal) => resolve({ exitCode: exitCode ?? 1, signal, output: chunks.join('') }));
  });
  await new Promise((resolve, reject) => log.end((error) => error ? reject(error) : resolve()));
  return result;
}

export function toolchainFingerprint(root, environment = process.env) {
  const jdk = environment.JAVA_HOME, sdk = environment.ANDROID_SDK_ROOT;
  if (!jdk || !sdk) throw new Error('Missing JAVA_HOME/ANDROID_SDK_ROOT for toolchain evidence');
  const locations = [
    ['jdk-release', path.join(jdk, 'release')],
    ['android-platform-35', path.join(sdk, 'platforms/android-35/android.jar')],
    ['gradle-wrapper-properties', path.join(root, 'ui-preview/gradle/wrapper/gradle-wrapper.properties')],
    ['compose-dependency-lock', path.join(root, 'scripts/compose-runtime-deps.lock.json')],
  ];
  const wrapper = path.join(root, 'ui-preview/gradle/wrapper/gradle-wrapper.jar');
  if (fs.existsSync(wrapper)) locations.push(['gradle-wrapper-jar', wrapper]);
  const files = locations.map(([input, file]) => ({
    input, sha256: crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex'),
  }));
  const publicJdkVersion = fs.readFileSync(path.join(jdk, 'release'), 'utf8').split(/\r?\n/)
    .filter((line) => /^(?:JAVA_VERSION|JAVA_RUNTIME_VERSION|IMPLEMENTOR|OS_ARCH|OS_NAME|JVM_VARIANT)=/.test(line));
  const inputs = { files, publicJdkVersion };
  return { sha256: crypto.createHash('sha256').update(JSON.stringify(inputs)).digest('hex'), ...inputs };
}

function gradleCommand(root, args, toolchainFile, expectedToolchainFile = '') {
  const configuration = path.join(root, '.codex/local-context.properties');
  if (!fs.existsSync(configuration)) throw new Error('Missing .codex/local-context.properties for local Gradle execution');
  // Only execution loads local tools. Paths/filters are positional arguments;
  // the snapshot contains public versions and hashes, never local config values.
  const recorder = `import fs from 'node:fs'; import path from 'node:path'; import { pathToFileURL } from 'node:url';
const [root, output, previous] = process.argv.slice(1);
const { toolchainFingerprint } = await import(pathToFileURL(path.join(root, 'scripts/validate-content.mjs')));
const fingerprint = toolchainFingerprint(root);
fs.writeFileSync(output, JSON.stringify(fingerprint, null, 2) + '\\n');
if (previous && JSON.parse(fs.readFileSync(previous, 'utf8')).sha256 !== fingerprint.sha256) throw new Error('Toolchain changed during validation; reject evidence');`;
  const shell = 'set -euo pipefail\nsource "$1"\nvalidation_node="$2"\nvalidation_recorder="$3"\nvalidation_root="$4"\nvalidation_tools="$5"\nvalidation_previous="$6"\nshift 6\nexport JAVA_HOME="${JDK17_HOME:?Missing JDK17_HOME}"\nexport ANDROID_HOME="${ANDROID_SDK_ROOT:?Missing ANDROID_SDK_ROOT}"\nexport ANDROID_SDK_ROOT\n"$validation_node" --input-type=module -e "$validation_recorder" "$validation_root" "$validation_tools" "$validation_previous"\nexec ./gradlew "$@"';
  return { command: 'bash', args: ['-c', shell, 'validate-content', configuration, process.execPath, recorder, root, toolchainFile, expectedToolchainFile, ...args], cwd: path.join(root, 'ui-preview') };
}

export function staticInputFingerprint(root, plan) {
  const inputs = new Set(['AGENTS.md', '.gitignore', 'docs/README.md']);
  for (const file of plan?.changedPaths || []) {
    if (file.startsWith('docs/') || file.startsWith('.agents/') || /\.md$/.test(file) || file.startsWith('scripts/')) inputs.add(file);
  }
  for (const check of plan?.staticChecks || []) {
    for (const argument of check.args) if (argument.startsWith('scripts/')) inputs.add(argument);
  }
  // Validator self-tests import these modules; include that small dependency closure.
  if ([...inputs].some((file) => /scripts\/(?:test-)?validate-content/.test(file))) {
    for (const file of ['scripts/validate-content.mjs', 'scripts/validate-content-planner.mjs', 'scripts/content-workflow.mjs']) inputs.add(file);
  }
  const files = [...inputs].sort().map((file) => ({
    path: file,
    sha256: fs.existsSync(path.join(root, file)) ? crypto.createHash('sha256').update(fs.readFileSync(path.join(root, file))).digest('hex') : null,
  }));
  return { sha256: crypto.createHash('sha256').update(JSON.stringify(files)).digest('hex'), files };
}

function changedFingerprintPaths(before, after) {
  const old = new Map(before.files.map(({ path, sha256 }) => [path, sha256]));
  const current = new Map(after.files.map(({ path, sha256 }) => [path, sha256]));
  return [...new Set([...old.keys(), ...current.keys()])].filter((file) => old.get(file) !== current.get(file)).sort();
}

export async function executeValidation({
  root = sharedWorkflow.repoRoot,
  options = parseArgs([]),
  changedPaths,
  runner = runCommand,
  workflow = sharedWorkflow,
  commandForGradle = gradleCommand,
  logger = (message) => console.log(message),
} = {}) {
  if (options.help) { logger(HELP); return { exitCode: 0, help: true }; }
  const files = changedPaths || changedGitPaths(root);
  let plan, preflightError;
  try {
    const graph = needsModuleGraph(options, files) ? discoverModuleGraph(root) : { modules: [] };
    plan = planValidation(root, options, files, graph);
    if (plan.modules.length) {
      const checked = workflow.checkSourceStructure(root);
      if (checked.length !== graph.modules.length || graph.modules.some(({ name }) => !checked.includes(name))) {
        throw new Error('Source structure module inventory differs from validation plan');
      }
    }
  } catch (error) {
    preflightError = error;
  }
  if (options.plan) {
    if (preflightError) throw preflightError;
    logger(JSON.stringify(plan, null, 2));
    return { exitCode: 0, plan, planned: true };
  }

  fs.mkdirSync(path.join(root, 'apk-work'), { recursive: true });
  const evidence = fs.mkdtempSync(path.join(root, 'apk-work/validation.'));
  const startedAt = new Date().toISOString(), started = process.hrtime.bigint();
  const timings = path.join(evidence, 'timings.jsonl');
  const report = {
    schemaVersion: 1, evidenceDirectory: path.relative(root, evidence),
    startedAt, endedAt: null, elapsedMs: null, exitCode: null,
    valid: false, sourceStable: null, inputStable: null, sourceBefore: null, sourceAfter: null,
    fingerprintScope: plan?.modules.length ? 'canonical-source-and-build-inputs' : 'static-check-inputs-only',
    toolchain: null, toolchainStable: null,
    selectionFingerprint: plan ? crypto.createHash('sha256').update(JSON.stringify({ modules: plan.modules, compileTasks: plan.compileTasks, testArgs: plan.testArgs, lintTasks: plan.lintTasks, coverage: plan.coverage })).digest('hex') : null,
    reusePolicy: 'Only identical input fingerprint, toolchain fingerprint and validation selection may reuse evidence; Gradle independently validates its task cache against the current environment',
    plan: plan || null, phases: [], error: preflightError?.message || null,
    limitations: ['Canonical-source tests only; no APK build or vehicle execution', 'No old JUnit XML is counted as fresh execution', 'Static-only evidence does not validate canonical product source'],
  };
  let before;
  const fingerprint = () => plan?.modules.length || preflightError ? workflow.sourceFingerprint(root) : staticInputFingerprint(root, plan);
  const verifySource = (stage) => {
    const after = fingerprint();
    writeJson(path.join(evidence, 'source-after.json'), after);
    report.sourceAfter = after.sha256;
    report.inputStable = before.sha256 === after.sha256;
    report.sourceStable = plan?.modules.length ? report.inputStable : null;
    if (!report.inputStable) {
      report.changedDuringValidation = changedFingerprintPaths(before, after);
      throw new Error(`${plan?.modules.length ? 'Source' : 'Static check inputs'} changed during validation (${stage}); evidence is invalid. Run again from a stable snapshot.`);
    }
  };
  const phase = async (name, command, gradle = false) => {
    const start = process.hrtime.bigint();
    const record = { stage: name, startedAt: new Date().toISOString(), command: command.displayCommand || [command.command, ...command.args], log: `${name}.log` };
    let output = '';
    try {
      const result = await runner({ ...command, logFile: path.join(evidence, record.log) });
      output = result.output || '';
      record.exitCode = Number.isInteger(result.exitCode) ? result.exitCode : 1;
      record.signal = result.signal || null;
      // Injectable runners still persist their output as evidence.
      if (!fs.existsSync(path.join(evidence, record.log))) fs.writeFileSync(path.join(evidence, record.log), output);
      if (gradle) record.gradle = summarizeGradleOutput(output);
      if (record.exitCode !== 0) throw new Error(`${name} failed with exit ${record.exitCode}`);
    } catch (error) {
      record.exitCode ??= 1;
      record.error = error.message;
      throw error;
    } finally {
      record.endedAt = new Date().toISOString();
      record.elapsedMs = Number(process.hrtime.bigint() - start) / 1e6;
      report.phases.push(record);
      workflow.recordTiming(timings, record);
      writeJson(path.join(evidence, 'report.json'), report);
    }
  };

  try {
    writeJson(path.join(evidence, 'plan.json'), plan || { schemaVersion: 1, error: preflightError?.message, options, changedPaths: files });
    before = fingerprint();
    report.sourceBefore = before.sha256;
    writeJson(path.join(evidence, 'source-before.json'), before);
    if (preflightError) throw preflightError;
    const run = async () => {
      if (plan.modules.length) {
        verifySource('after acquiring shared lock');
        // The shared lock coordinates participating builds, never external editors.
        workflow.checkSourceStructure(root);
        const currentGraph = discoverModuleGraph(root).modules.map(({ name, dependencies }) => ({ name, dependencies }));
        if (JSON.stringify(currentGraph) !== JSON.stringify(plan.dependencyGraph)) throw new Error('Module graph changed after planning; create a new validation plan');
      }
      for (const [index, command] of plan.staticChecks.entries()) {
        await phase(`static-${index + 1}`, { ...command, command: command.command === 'node' ? process.execPath : command.command, cwd: root });
      }
      if (plan.modules.length) {
        const compileToolchain = path.join(evidence, 'toolchain-compile.json');
        const testToolchain = path.join(evidence, 'toolchain-tests.json');
        const compile = commandForGradle(root, plan.gradleCompileArgs, compileToolchain);
        await phase('compile-tests', { ...compile, displayCommand: ['./gradlew', ...plan.gradleCompileArgs] }, true);
        if (fs.existsSync(compileToolchain)) report.toolchain = JSON.parse(fs.readFileSync(compileToolchain, 'utf8'));
        else report.limitations.push('Injected runner did not capture a real toolchain; fixture evidence only');
        verifySource('test compilation');
        const tests = commandForGradle(root, plan.gradleTestArgs, testToolchain, compileToolchain);
        await phase('tests-and-lint', { ...tests, displayCommand: ['./gradlew', ...plan.gradleTestArgs] }, true);
        if (fs.existsSync(testToolchain)) {
          const after = JSON.parse(fs.readFileSync(testToolchain, 'utf8'));
          report.toolchainStable = report.toolchain?.sha256 === after.sha256;
          if (!report.toolchainStable) throw new Error('Toolchain changed during validation; evidence is invalid');
        }
        const executed = report.phases.at(-1).gradle;
        report.testEvidence = plan.modules.map((name) => executed.tests.find(({ task }) => task === `:${name}:testDebugUnitTest`) || {
          task: `:${name}:testDebugUnitTest`, outcome: 'UNREPORTED', evidence: 'not-observed',
        });
        const incomplete = report.testEvidence.filter(({ outcome }) => !['EXECUTED', 'UP-TO-DATE', 'FROM-CACHE'].includes(outcome));
        if (incomplete.length) {
          throw new Error(`Selected test tasks did not complete successfully: ${incomplete.map(({ task, outcome }) => `${task} ${outcome}`).join(', ')}`);
        }
      } else report.testEvidence = [];
    };
    if (plan.modules.length) await workflow.withBuildLock(root, run);
    else await run();
    verifySource('finalization');
    report.valid = true;
    report.exitCode = 0;
  } catch (error) {
    report.error = error.message;
    report.exitCode = 1;
    report.valid = false;
    if (before) {
      try { verifySource('failure'); }
      catch (sourceError) { report.sourceError = sourceError.message; }
    }
  } finally {
    report.endedAt = new Date().toISOString();
    report.elapsedMs = Number(process.hrtime.bigint() - started) / 1e6;
    workflow.recordTiming(timings, {
      stage: 'validation', startedAt, endedAt: report.endedAt, elapsedMs: report.elapsedMs,
      exitCode: report.exitCode, valid: report.valid, sourceStable: report.sourceStable,
    });
    writeJson(path.join(evidence, 'report.json'), report);
  }
  logger(`验证证据：${evidence}`);
  logger(report.exitCode === 0 ? `验证通过：${plan.coverage.tests}；模块 ${plan.modules.join(', ') || '无（静态检查）'}` : `验证失败：${report.error}`);
  return { exitCode: report.exitCode, evidence, plan, report };
}

if (process.argv[1] && path.resolve(process.argv[1]) === fileURLToPath(import.meta.url)) {
  try {
    const result = await executeValidation({ options: parseArgs(process.argv.slice(2)) });
    process.exitCode = result.exitCode;
  } catch (error) { console.error(error.message); process.exitCode = 1; }
}

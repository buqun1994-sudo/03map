import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
import { filesUnder, recordTiming, TransformCache, assertOwnedPath, withBuildLock, assertBuildLock } from './content-workflow.mjs';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
if (!process.env.CONTENT_WORKFLOW_LOCK_TOKEN) {
  await withBuildLock(root, () => {
    const child = spawnSync(process.execPath, process.argv.slice(1), { stdio: 'inherit' });
    if (child.error) throw child.error;
    process.exitCode = child.status ?? 1;
  });
  process.exit(process.exitCode ?? 0);
}
assertBuildLock(root);
const build = assertOwnedPath(process.argv[2] || '', path.join(root, 'apk-work/9.5.0.600013'));
if (!/^source-build\.[\w-]+$/.test(path.basename(build)) || !fs.existsSync(path.join(build, 'unsigned.apk'))) throw new Error('Expected verified source-build staging directory');
const javaHome = process.env.JAVA_HOME;
if (!javaHome || !process.env.ANDROID_SDK_ROOT || !process.env.AAPT2 || !process.env.CONTENT_R8_JAR) throw new Error('Missing JAVA_HOME / ANDROID_SDK_ROOT / AAPT2 / CONTENT_R8_JAR');
const java = path.join(javaHome, 'bin/java'), javac = path.join(javaHome, 'bin/javac');
const aapt = process.env.AAPT2, android = path.join(process.env.ANDROID_SDK_ROOT, 'platforms/android-35/android.jar'), r8 = process.env.CONTENT_R8_JAR;
for (const file of [java, javac, aapt, android, r8]) if (!fs.existsSync(file)) throw new Error(`Missing build tool: ${file}`);
const mkdir = directory => { fs.mkdirSync(directory, { recursive: true }); return directory; };
const sha = file => crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex');
const timings = path.join(build, 'timings.jsonl');
const phase = (stage, action) => {
  const startedAt = new Date().toISOString(), started = process.hrtime.bigint();
  let exitCode = 0;
  try { return action(); } catch (error) { exitCode = 1; throw error; } finally {
    const elapsedMs = Number(process.hrtime.bigint() - started) / 1e6;
    recordTiming(timings, { scope: 'compose', stage, startedAt, finishedAt: new Date().toISOString(), elapsedMs, exitCode });
    console.error(`[Compose] ${stage}: ${(elapsedMs / 1000).toFixed(3)}s${exitCode ? ' FAILED' : ''}`);
  }
};
let currentPhase = 'preflight';
const run = (command, args, options = {}) => {
  const started = process.hrtime.bigint();
  const result = spawnSync(command, args, { encoding: 'utf8', maxBuffer: 64 * 1024 * 1024, ...options });
  const elapsedMs = Number(process.hrtime.bigint() - started) / 1e6;
  if (!(command === 'unzip' && args[0] === '-Z1')) fs.appendFileSync(path.join(build, 'compose-commands.log'), `${command} ${args.join(' ')}\n${result.stdout || ''}${result.stderr || ''}\nexit: ${result.status}\nelapsed_ms: ${elapsedMs.toFixed(3)}\n`);
  recordTiming(path.join(build, 'compose-command-timings.jsonl'), { stage: currentPhase, executable: path.basename(command), elapsedMs, exitCode: result.status });
  if (result.error) throw result.error;
  if (result.status !== 0) throw new Error(`${command} failed (${result.status})\n${result.stdout || ''}\n${result.stderr || ''}`);
  return result.stdout;
};
const measured = (name, action) => phase(name, () => { currentPhase = name; return action(); });
const cache = new TransformCache(path.join(root, 'apk-work/9.5.0.600013/compose-cache'), process.env.CONTENT_BUILD_CACHE !== '0');

try {
  const exportPath = path.join(root, 'ui-preview/map-host/build/compose-export.json');
  const receiptPath = path.join(build, 'compose-deps-verified.json');
  const lockPath = path.join(root, 'scripts/compose-runtime-deps.lock.json');
  const exported = JSON.parse(fs.readFileSync(exportPath, 'utf8'));
  const artifacts = [...new Map(exported.dependencies.map(item => [item.file, item])).values()];
  const modules = exported.modules.map(item => ({ ...item, type: 'aar' }));
  const tools = exported.tools.map(item => item.file).join(path.delimiter);
  const hashes = new Map();
  measured('dependency-inputs', () => {
    // Standalone diagnosis remains fail-closed; the normal shell already did this preflight.
    if (!fs.existsSync(receiptPath)) run(process.execPath, [path.join(root, 'scripts/check-compose-deps.mjs'), '--receipt', receiptPath]);
    const receipt = JSON.parse(fs.readFileSync(receiptPath, 'utf8'));
    if (receipt.schema !== 1 || receipt.lockSha256 !== sha(lockPath) || receipt.exportSha256 !== sha(exportPath)) throw new Error('Dependency graph/lock changed after preflight');
    const verified = new Map([...receipt.dependencies, ...receipt.tools].map(item => [item.file, item.sha256]));
    for (const item of [...artifacts, ...exported.tools]) {
      const actual = sha(item.file);
      if (actual !== verified.get(item.file)) throw new Error(`Dependency bytes changed after preflight: ${item.name}`);
      hashes.set(item.file, actual);
    }
    for (const item of modules) hashes.set(item.file, sha(item.file));
  });
  const helperKey = { source: sha(path.join(root, 'scripts/ComposeBuildTools.java')), tools: exported.tools.map(item => hashes.get(item.file)), java: fs.readFileSync(path.join(javaHome, 'release'), 'utf8') };
  const helperEntry = cache.prepare('helper', helperKey);
  measured('helper-compile', () => {
    if (!helperEntry.hit) {
      run(javac, ['-cp', tools, '-d', helperEntry.directory, path.join(root, 'scripts/ComposeBuildTools.java')]);
      helperEntry.commit();
    }
  });
  const helper = args => run(java, ['-cp', helperEntry.directory + path.delimiter + tools, 'ComposeBuildTools', ...args]);
  let batchIndex = 0;
  const batch = jobs => {
    if (!jobs.length) return;
    if (jobs.some(job => job.some(argument => /[\t\r\n]/.test(argument)))) throw new Error('Batch tool arguments cannot contain tabs or newlines');
    const file = path.join(build, `compose-jobs-${batchIndex++}.tsv`);
    fs.writeFileSync(file, jobs.map(job => job.join('\t')).join('\n') + '\n');
    helper(['batch', file]);
  };
  const extracted = [];
  measured('artifact-extract', () => {
    const jobs = [], pending = [];
    for (const artifact of [...artifacts, ...modules]) {
      if (artifact.type === 'jar') { extracted.push({ artifact }); continue; }
      const entry = cache.prepare('aar', { sha256: hashes.get(artifact.file), helper: helperKey });
      if (!entry.hit) {
        const target = mkdir(path.join(entry.directory, 'archive'));
        run('unzip', ['-q', artifact.file, '-d', target]);
        jobs.push(['manifest', path.join(target, 'AndroidManifest.xml'), path.join(entry.directory, 'manifest-info.txt')]);
        pending.push(entry);
      }
      extracted.push({ artifact, entry });
    }
    batch(jobs);
    for (const entry of pending) entry.commit();
  });
  const archives = [], jars = [], proguard = [], serviceInputs = [];
  for (const item of extracted) {
    const { artifact, entry } = item;
    if (artifact.type === 'jar') { jars.push(artifact.file); serviceInputs.push(artifact.file); continue; }
    const target = path.join(entry.directory, 'archive');
    const classesJar = path.join(target, 'classes.jar');
    if (fs.existsSync(classesJar)) { jars.push(classesJar); serviceInputs.push(classesJar); }
    const nested = filesUnder(path.join(target, 'libs')).filter(file => file.endsWith('.jar'));
    jars.push(...nested); serviceInputs.push(...nested);
    const [pkg, minimum] = fs.readFileSync(path.join(entry.directory, 'manifest-info.txt'), 'utf8').trim().split('\n');
    if (artifact.group && (!/^\d+$/.test(minimum) || Number(minimum) > 21)) throw new Error(`Runtime library breaks minSdk21: ${artifact.group}:${artifact.name} minSdk ${minimum}`);
    const symbols = path.join(target, 'R.txt');
    if (pkg && fs.existsSync(symbols)) archives.push({ target, pkg, symbols, artifact });
    if (fs.existsSync(path.join(target, 'proguard.txt'))) proguard.push(path.join(target, 'proguard.txt'));
    const natives = filesUnder(path.join(target, 'jni'));
    if (natives.length && !(artifact.group === 'androidx.graphics' && artifact.name === 'graphics-path')) throw new Error(`Unexpected native dependency in ${artifact.name}; explicit ABI review required`);
  }
  const resources = mkdir(path.join(build, 'compose-resources'));
  const compiled = [], aaptKey = sha(aapt);
  measured('dependency-resources', () => {
    for (const { target, artifact } of archives) {
      if (!filesUnder(path.join(target, 'res')).length) continue;
      const entry = cache.prepare('resources', { aar: hashes.get(artifact.file), aapt2: aaptKey });
      if (!entry.hit) {
        run(aapt, ['compile', '--dir', path.join(target, 'res'), '-o', path.join(entry.directory, 'compiled.zip')]);
        entry.commit();
      }
      compiled.push(path.join(entry.directory, 'compiled.zip'));
    }
  });
  const stable = path.join(resources, 'stable-ids.txt'), formal = path.join(resources, 'formal.zip');
  measured('formal-resources', () => {
    helper(['stable', path.join(root, 'source/amap-9.5.0.600013/res/values/public.xml'), stable]);
    run(aapt, ['compile', '--dir', path.join(build, 'decode/res'), '-o', formal]);
  });
  const linked = path.join(resources, 'linked.apk'), symbolsDir = mkdir(path.join(resources, 'symbols'));
  measured('resource-link', () => {
    const args = ['link', '-I', android, '--manifest', path.join(build, 'decode/AndroidManifest.xml'),
      '--min-sdk-version', '21', '--target-sdk-version', '24', '--version-code', '26000001', '--version-name', '9.5.0.600013',
      '--auto-add-overlay', '--stable-ids', stable, '--output-text-symbols', path.join(symbolsDir, 'R.txt'), '-o', linked];
    for (const zip of [...compiled, formal]) args.push('-R', zip);
    run(aapt, args);
  });
  const mergedSymbols = path.join(symbolsDir, 'R.txt'), rSources = mkdir(path.join(build, 'compose-r-java'));
  const rClasses = mkdir(path.join(build, 'compose-r-classes')), rJar = path.join(build, 'compose-resources.jar');
  measured('resource-classes', () => {
    batch(archives.map(({ pkg, symbols }) => ['rjava', mergedSymbols, symbols, pkg, rSources]));
    run(javac, ['--release', '8', '-d', rClasses, ...filesUnder(rSources).filter(file => file.endsWith('.java'))]);
    run(path.join(javaHome, 'bin/jar'), ['cf', rJar, '-C', rClasses, '.']);
    jars.push(rJar);
  });
  const program = [];
  measured('bytecode-relocation', () => {
    const pending = [], entries = [];
    for (const jar of jars) {
      const entry = cache.prepare('relocation', { input: sha(jar), helper: helperKey });
      entries.push(entry);
      if (!entry.hit) pending.push({ entry, jar });
    }
    batch(pending.map(({ entry, jar }) => ['relocate', jar, path.join(entry.directory, 'program.jar')]));
    for (const { entry } of pending) entry.commit();
    for (const entry of entries) {
      const file = path.join(entry.directory, 'program.jar');
      if (fs.statSync(file).size !== 22) program.push(file);
    }
  });
  const rules = path.join(build, 'compose.pro');
  const consumerRules = proguard.map(file => fs.readFileSync(file, 'utf8').replaceAll('androidx.', 'com.icar03.compose.androidx.').replaceAll('com.icar03.compose.androidx.graphics.path.', 'androidx.graphics.path.').replaceAll('android.support.', 'com.icar03.compose.android.support.')).join('\n');
  const allowedWarnings = new Set(['android.view.RenderNode', 'android.view.DisplayListCanvas', 'android.view.HardwareCanvas']);
  for (const line of consumerRules.split('\n')) {
    const warning = /^\s*-dontwarn\s+(.+?)\s*$/.exec(line);
    if (warning && !allowedWarnings.has(warning[1])) throw new Error(`Unreviewed consumer missing-class suppression: ${warning[1]}`);
    if (/^\s*-ignorewarnings\b/.test(line)) throw new Error('Consumer may not disable missing-class verification');
  }
  fs.writeFileSync(rules, fs.readFileSync(path.join(root, 'scripts/compose-runtime.pro'), 'utf8') + '\n' + consumerRules);
  const oldDex = path.join(build, 'original.dex');
  const original = spawnSync('unzip', ['-p', path.join(build, 'unsigned.apk'), 'classes.dex'], { maxBuffer: 32 * 1024 * 1024 });
  if (original.status !== 0 || !original.stdout.subarray(0, 4).equals(Buffer.from('dex\n'))) throw new Error('APKTool original primary DEX extraction failed');
  fs.writeFileSync(oldDex, original.stdout);
  const source = path.join(root, 'source/amap-9.5.0.600013');
  const smali = fs.readdirSync(source, { withFileTypes: true }).filter(entry => entry.isDirectory() && /^smali(?:_classes\d+)?$/.test(entry.name)).flatMap(entry => filesUnder(path.join(source, entry.name))).filter(file => file.endsWith('.smali'));
  const oldLibraryEntry = cache.prepare('smali-abi', { helper: helperKey, sources: smali.map(file => [path.relative(source, file), sha(file)]) });
  measured('smali-abi', () => {
    if (!oldLibraryEntry.hit) { helper(['stubs', source, path.join(oldLibraryEntry.directory, 'original-library.jar')]); oldLibraryEntry.commit(); }
  });
  const dexDir = mkdir(path.join(build, 'dex'));
  measured('r8', () => run(java, ['-Xmx4g', '-cp', r8, 'com.android.tools.r8.R8', '--release', '--min-api', '21',
    '--lib', android, '--lib', path.join(oldLibraryEntry.directory, 'original-library.jar'), '--pg-conf', rules, '--output', dexDir, ...program]));
  const dexFiles = filesUnder(dexDir).filter(file => /classes(?:\d+)?\.dex$/.test(file)).sort((a, b) => Number(/classes(\d*)\.dex$/.exec(a)[1] || 1) - Number(/classes(\d*)\.dex$/.exec(b)[1] || 1));
  if (!dexFiles.length) throw new Error('R8 produced no DEX');
  const inject = mkdir(path.join(build, 'compose-inject'));
  measured('injection', () => {
    run('unzip', ['-q', linked, '-d', inject]);
    const lock = JSON.parse(fs.readFileSync(lockPath, 'utf8'));
    for (const native of lock.native) {
      const artifact = artifacts.find(item => `${item.group}:${item.name}:${item.version}:${item.type}` === native.artifact);
      if (!artifact) throw new Error('Locked native artifact missing');
      const destination = path.join(inject, native.destination); mkdir(path.dirname(destination));
      const bytes = spawnSync('unzip', ['-p', artifact.file, native.entry], { maxBuffer: 1024 * 1024 });
      if (bytes.status !== 0) throw new Error('Native extraction failed');
      fs.writeFileSync(destination, bytes.stdout);
    }
    for (const [index, dex] of dexFiles.entries()) fs.copyFileSync(dex, path.join(inject, `classes${index + 2}.dex`));
    const services = new Map(), expectedServices = new Map([
      ['META-INF/services/kotlinx.coroutines.internal.MainDispatcherFactory', 'kotlinx.coroutines.android.AndroidDispatcherFactory'],
      ['META-INF/services/kotlinx.coroutines.CoroutineExceptionHandler', 'kotlinx.coroutines.android.AndroidExceptionPreHandler'],
    ]);
    for (const jar of program) for (const name of run('unzip', ['-Z1', jar]).split('\n').filter(item => item.startsWith('META-INF/services/') && !item.endsWith('/'))) {
      const value = run('unzip', ['-p', jar, name]);
      services.set(name, [...(services.get(name) || []), ...value.split('\n').filter(line => line && !line.startsWith('#'))]);
    }
    for (const [name, values] of services) {
      if (!expectedServices.has(name) || values.some(value => value !== expectedServices.get(name))) throw new Error(`Unreviewed service metadata: ${name}`);
      const destination = path.join(inject, name); mkdir(path.dirname(destination)); fs.writeFileSync(destination, [...new Set(values)].join('\n') + '\n');
    }
    for (const name of expectedServices.keys()) if (!services.has(name)) throw new Error(`Required runtime service missing: ${name}`);
  });
  const injectedDices = dexFiles.map((_, index) => path.join(inject, `classes${index + 2}.dex`));
  measured('dex-check', () => console.log(run(process.execPath, [path.join(root, 'scripts/check-content-dex.mjs'), ...injectedDices]).trim()));
  measured('apk-update', () => run('zip', ['-q', '-X', path.join(build, 'unsigned.apk'), ...filesUnder(inject).map(file => path.relative(inject, file))], { cwd: inject }));
  measured('resource-check', () => console.log(run(process.execPath, [path.join(root, 'scripts/check-compose-resources.mjs'), mergedSymbols, stable]).trim()));
  fs.writeFileSync(path.join(build, 'compose-build.json'), JSON.stringify({ dependencies: artifacts.length, modules: exported.modules.map(item => item.name),
    dexFiles: injectedDices.map(file => path.basename(file)), resourceSymbols: mergedSymbols, relocation: 'com.icar03.compose.androidx', cache: cache.stats }, null, 2) + '\n');
  console.log(`Compose linked resources, isolated program and ${dexFiles.length} additional DEX files`);
  console.log(`Transform cache: ${JSON.stringify(cache.stats)}`);
} finally { cache.cleanup(); }

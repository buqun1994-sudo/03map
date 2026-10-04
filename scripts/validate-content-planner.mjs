import fs from 'node:fs';
import path from 'node:path';
import { spawnSync } from 'node:child_process';

export const SCOPES = ['auto', 'docs', 'model', 'ui', 'runtime', 'host', 'all'];
const FORMAL_ROOT = 'source/amap-9.5.0.600013';
const DOC_CHECKS = ['check-project-docs.mjs', 'check-skills.mjs', 'check-code-map.mjs'];
const VALIDATOR = /^scripts\/(?:validate-content(?:-planner)?|test-validate-content)\.mjs$/;
const CONTENT_BUILD_SCRIPT = /^scripts\/(?:build-content-apk\.sh|build-compose-content\.mjs|content-workflow\.mjs|ComposeBuildTools\.java|resolve-content-deps\.sh|test-content-host\.sh|(?:compose|content)-runtime(?:-deps\.lock)?\.(?:pro|json)|check-(?:compose|content)-(?:deps|resources|package|dex|assets)\.mjs)$/;

export function parseArgs(argv) {
  const options = { scope: 'auto', modules: [], tests: [], lint: false, plan: false, help: false };
  let lintOption;
  for (let index = 0; index < argv.length; index++) {
    const argument = argv[index];
    const equals = argument.indexOf('=');
    const flag = equals < 0 ? argument : argument.slice(0, equals);
    const inline = equals < 0 ? undefined : argument.slice(equals + 1);
    const value = () => {
      const result = inline === undefined ? argv[++index] : inline;
      if (!result || result.startsWith('--')) throw new Error(`${flag} requires a value`);
      return result;
    };
    if (['--scope', '--module', '--tests'].includes(flag)) {
      const selected = value();
      if (flag === '--scope') {
        if (!SCOPES.includes(selected)) throw new Error(`Unknown scope: ${selected}`);
        options.scope = selected;
      } else if (flag === '--module') options.modules.push(normalizeModuleName(selected));
      else options.tests.push(selected);
    } else {
      if (inline !== undefined) throw new Error(`${flag} does not take a value`);
      if (flag === '--lint' || flag === '--no-lint') {
        if (lintOption && lintOption !== flag) throw new Error('--lint and --no-lint cannot be combined');
        lintOption = flag;
        options.lint = flag === '--lint';
      } else if (flag === '--plan') options.plan = true;
      else if (flag === '--help' || flag === '-h') options.help = true;
      else throw new Error(`Unknown argument: ${argument}`);
    }
  }
  options.modules = [...new Set(options.modules)];
  options.tests = [...new Set(options.tests)];
  if (options.scope === 'docs' && (options.modules.length || options.tests.length || options.lint)) {
    throw new Error('--scope docs cannot be combined with modules, test filters or Lint');
  }
  return options;
}

function normalizeModuleName(name) {
  const normalized = name.replace(/^:/, '');
  if (!/^[A-Za-z0-9_-]+(?::[A-Za-z0-9_-]+)*$/.test(normalized)) throw new Error(`Invalid module: ${name}`);
  return normalized;
}

// Preserve quoted paths while excluding comments from the supported literal Gradle syntax.
export function withoutComments(text) {
  return text.replace(/(["'])(?:\\.|(?!\1)[^\\])*?\1|\/\*[\s\S]*?\*\/|\/\/[^\n]*/g, (match) =>
    match.startsWith('//') || match.startsWith('/*') ? match.replace(/[^\n]/g, ' ') : match);
}
function quotedStrings(text) {
  return [...text.matchAll(/(["'])((?:\\.|(?!\1)[^\\])*?)\1/g)].map((match) => match[2]);
}
function readText(file) {
  if (!fs.existsSync(file)) throw new Error(`Missing source/configuration file: ${file}`);
  return withoutComments(fs.readFileSync(file, 'utf8'));
}
function relativePath(root, file) { return path.relative(root, file).split(path.sep).join('/'); }
function containsPath(directory, file) { return file === directory || file.startsWith(`${directory}/`); }
function isDocumentation(file) {
  return file.startsWith('docs/') || file.startsWith('.agents/') || /(?:^|\/)AGENTS\.md$|\.md$/i.test(file)
    || file === '.codex/config.toml' || file === '.codex/local-context.properties.example' || file === '.gitignore';
}

export function needsModuleGraph(options, files) {
  if (options.modules.length) return true;
  if (options.scope === 'docs') return false;
  if (options.scope !== 'auto') return true;
  return files.some((file) => !isDocumentation(file) && (file.startsWith(`${FORMAL_ROOT}/`)
    || file.startsWith('ui-preview/') || CONTENT_BUILD_SCRIPT.test(file)));
}

export function discoverModuleGraph(root) {
  const settings = readText(path.join(root, 'ui-preview/settings.gradle.kts'));
  const names = [...settings.matchAll(/\binclude\s*\(([\s\S]*?)\)/g)]
    .flatMap((match) => quotedStrings(match[1]).map(normalizeModuleName));
  if (!names.length) throw new Error('No literal modules found in ui-preview/settings.gradle.kts');
  if (new Set(names).size !== names.length) throw new Error('Duplicate modules in settings.gradle.kts');
  const included = new Set(names);
  const overrides = new Map([...settings.matchAll(/\bproject\s*\(\s*["'](:[^"']+)["']\s*\)\s*\.projectDir\s*=\s*file\s*\(\s*["']([^"']+)["']\s*\)/g)]
    .map((match) => [normalizeModuleName(match[1]), match[2]]));
  const modules = names.map((name) => {
    const directory = path.resolve(root, 'ui-preview', overrides.get(name) || name.replaceAll(':', '/'));
    const relativeDirectory = relativePath(root, directory);
    if (relativeDirectory.startsWith('../') || path.isAbsolute(relativeDirectory)) throw new Error(`Module directory is outside repository: ${name}`);
    const gradleFile = path.join(directory, 'build.gradle.kts');
    const text = readText(gradleFile);
    const dependencies = [...new Set([...text.matchAll(/\bproject\s*\(\s*(?:path\s*=\s*)?["'](:[^"']+)["']\s*\)/g)]
      .map((match) => normalizeModuleName(match[1])))];
    for (const dependency of dependencies) {
      if (!included.has(dependency)) throw new Error(`${name} depends on module not included in settings: ${dependency}`);
    }
    const sourceRoots = [...new Set(quotedStrings(text).filter((value) => value.includes('source/') && !value.includes('$'))
      .map((value) => relativePath(root, path.resolve(directory, value))))];
    const formalList = /\bval\s+formalClasses\s*=\s*listOf\s*\(([\s\S]*?)\)/.exec(text);
    const javaClasses = formalList ? quotedStrings(formalList[1]).map((name) => `${name}.java`) : [];
    for (const match of text.matchAll(/\binclude\s*\(\s*["']([^"'$]+\.java)["']\s*\)/g)) {
      javaClasses.push(path.posix.basename(match[1]));
    }
    return {
      name, project: `:${name}`, directory: relativeDirectory,
      buildFile: relativePath(root, gradleFile), dependencies,
      sourceRoots, javaClasses: [...new Set(javaClasses)],
      kotlin: /(?:org\.jetbrains\.kotlin|kotlin\s*\(\s*["']android["'])/.test(text),
    };
  });
  const byName = new Map(modules.map((module) => [module.name, module]));
  const visiting = new Set(), visited = new Set();
  const visit = (name) => {
    if (visiting.has(name)) throw new Error(`Cyclic project dependencies at ${name}`);
    if (visited.has(name)) return;
    visiting.add(name);
    for (const dependency of byName.get(name).dependencies) visit(dependency);
    visiting.delete(name);
    visited.add(name);
  };
  for (const name of names) visit(name);
  return { modules, settingsFile: 'ui-preview/settings.gradle.kts' };
}

export function changedGitPaths(root) {
  const readGit = (args) => {
    const result = spawnSync('git', ['--no-optional-locks', ...args], { cwd: root, encoding: 'utf8', maxBuffer: 16 * 1024 * 1024 });
    if (result.status !== 0) throw new Error(`Cannot inspect Git changes (${result.status}): ${(result.stderr || result.error?.message || '').trim()}`);
    return result.stdout.split('\0').filter(Boolean);
  };
  // HEAD includes staged and unstaged changes; both rename owners must remain visible.
  return [...new Set([
    ...readGit(['diff', '--name-only', '--no-renames', '-z', 'HEAD', '--']),
    ...readGit(['ls-files', '--others', '--exclude-standard', '-z']),
  ])].sort();
}

function consumersOf(graph, names) {
  const selected = new Set(names);
  let changed;
  do {
    changed = false;
    for (const module of graph.modules) {
      if (!selected.has(module.name) && module.dependencies.some((dependency) => selected.has(dependency))) {
        selected.add(module.name);
        changed = true;
      }
    }
  } while (changed);
  return selected;
}
function moduleForScope(graph, scope) {
  const preferred = { model: 'content-model', ui: 'content-ui', runtime: 'content-runtime', host: 'map-host' }[scope];
  if (graph.modules.some((module) => module.name === preferred)) return preferred;
  const candidates = graph.modules.filter((module) => module.sourceRoots.some((directory) =>
    directory === `${FORMAL_ROOT}/content-compose/${scope}` || (scope === 'host' && directory === `${FORMAL_ROOT}/content-compose/host-res`)));
  if (candidates.length !== 1) throw new Error(`Cannot identify module for scope ${scope}`);
  return candidates[0].name;
}

export function planValidation(root, options, changedPaths, suppliedGraph) {
  const opts = { scope: 'auto', modules: [], tests: [], lint: false, ...options };
  if (!SCOPES.includes(opts.scope)) throw new Error(`Unknown scope: ${opts.scope}`);
  const files = [...new Set(changedPaths.map((file) => file.replaceAll('\\', '/')))].sort();
  const graph = suppliedGraph || (needsModuleGraph(opts, files) ? discoverModuleGraph(root) : { modules: [] });
  const allNames = graph.modules.map((module) => module.name);
  const known = new Set(allNames);
  const selected = new Set(), reasons = [], ignoredPaths = [];
  const add = (names, file, reason, expand = false) => {
    const affected = expand ? consumersOf(graph, names) : new Set(names);
    for (const name of affected) selected.add(name);
    reasons.push({ path: file, reason, modules: allNames.filter((name) => affected.has(name)) });
  };
  for (const name of opts.modules) if (!known.has(normalizeModuleName(name))) throw new Error(`Unknown included module: ${name}`);
  if (opts.modules.length) add(opts.modules.map(normalizeModuleName), null, 'Explicit module selection overrides auto/scope; consumers are intentionally not added');
  else if (opts.scope === 'all') add(allNames, null, 'All modules discovered from settings');
  else if (opts.scope !== 'auto' && opts.scope !== 'docs') {
    const name = moduleForScope(graph, opts.scope);
    add([name], null, `Explicit ${opts.scope} scope`, opts.scope === 'model');
  } else if (opts.scope === 'auto') {
    for (const file of files) {
      if (isDocumentation(file) || /^scripts\/check-(?:project-docs|skills|code-map)\.mjs$/.test(file) || VALIDATOR.test(file)) {
        reasons.push({ path: file, reason: 'Documentation/validator static checks only', modules: [] });
        continue;
      }
      if (CONTENT_BUILD_SCRIPT.test(file)) {
        add(allNames, file, 'Content build/packaging/dependency configuration');
        continue;
      }
      if (file.startsWith('ui-preview/') && (/\.(?:gradle(?:\.kts)?|properties)$/.test(file)
          || /^ui-preview\/(?:gradlew(?:\.bat)?|gradle\/)/.test(file))) {
        add(allNames, file, 'Gradle/module configuration affects the shared build graph');
        continue;
      }
      const local = graph.modules.find((module) => containsPath(module.directory, file));
      if (local) {
        const suffix = file.slice(local.directory.length + 1);
        const testsOnly = /^src\/(?:test|androidTest|testFixtures)(?:\/|$)/.test(suffix);
        add([local.name], file, testsOnly ? 'Module test source' : 'Module implementation and consumers', !testsOnly);
        continue;
      }
      if (file.startsWith(`${FORMAL_ROOT}/content-src/`)) {
        const owners = graph.modules.filter((module) => module.javaClasses.includes(path.posix.basename(file)));
        if (owners.length) add(owners.map((module) => module.name), file, 'Formal Java contract/implementation and consumers', true);
        else add([moduleForScope(graph, 'runtime')], file, 'Unmapped formal Java source; conservatively cover runtime consumers', true);
        continue;
      }
      const owners = graph.modules.filter((module) => module.sourceRoots.some((directory) =>
        !directory.endsWith('/content-src') && containsPath(directory, file)));
      if (owners.length) {
        add(owners.map((module) => module.name), file, 'Formal source/resource owner and consumers', true);
        continue;
      }
      if (file.startsWith(`${FORMAL_ROOT}/`)) {
        add(allNames, file, 'APK baseline/resource configuration');
        continue;
      }
      ignoredPaths.push(file);
    }
  }
  const modules = allNames.filter((name) => selected.has(name));
  if (opts.tests.length && modules.length !== 1) throw new Error('--tests requires exactly one selected module; use --module to select a single owner');
  const compileTasks = graph.modules.filter((module) => selected.has(module.name)).flatMap((module) => [
    ...(module.kotlin ? [`${module.project}:compileDebugUnitTestKotlin`] : []),
    `${module.project}:compileDebugUnitTestJavaWithJavac`,
  ]);
  const testArgs = modules.flatMap((name) => [`:${name}:testDebugUnitTest`, ...opts.tests.flatMap((filter) => ['--tests', filter])]);
  const lintTasks = opts.lint ? modules.map((name) => `:${name}:lintDebug`) : [];
  const staticChecks = [
    ...DOC_CHECKS.filter((name) => fs.existsSync(path.join(root, 'scripts', name)))
      .map((name) => ({ command: 'node', args: [`scripts/${name}`] })),
    ...files.filter((file) => file.startsWith('scripts/') && /\.mjs$/.test(file) && fs.existsSync(path.join(root, file)))
      .map((file) => ({ command: 'node', args: ['--check', file] })),
    ...files.filter((file) => file.startsWith('scripts/') && /\.sh$/.test(file) && fs.existsSync(path.join(root, file)))
      .map((file) => ({ command: 'bash', args: ['-n', file] })),
    ...(files.some((file) => VALIDATOR.test(file)) && fs.existsSync(path.join(root, 'scripts/test-validate-content.mjs'))
      ? [{ command: 'node', args: ['scripts/test-validate-content.mjs'] }] : []),
    { command: 'git', args: ['diff', '--check'] },
  ];
  return {
    schemaVersion: 1, scope: opts.scope, explicitModules: opts.modules,
    selectionMode: opts.modules.length ? 'explicit-modules' : opts.scope,
    modules, changedPaths: files,
    dependencyGraph: graph.modules.map(({ name, dependencies }) => ({ name, dependencies })),
    reasons, ignoredPaths, staticChecks, compileTasks, testArgs, lintTasks,
    gradleCompileArgs: compileTasks.length ? ['--offline', '--console=plain', ...compileTasks] : [],
    gradleTestArgs: testArgs.length ? ['--offline', '--console=plain', ...testArgs, ...lintTasks] : [],
    coverage: {
      declaration: opts.scope === 'all' && !opts.modules.length && !opts.tests.length ? 'all-discovered-modules' : !modules.length ? 'static-only' : 'selected-modules',
      tests: !modules.length ? 'none' : opts.tests.length ? 'filtered' : 'all-in-selected-modules',
      filters: opts.tests, lint: opts.lint && modules.length > 0,
    },
  };
}

export function summarizeGradleOutput(output) {
  const tasks = [];
  for (const line of output.split(/\r?\n/)) {
    const match = /^> Task (:\S+?)(?:\s+(UP-TO-DATE|FROM-CACHE|NO-SOURCE|SKIPPED|FAILED))?\s*$/.exec(line);
    if (match) tasks.push({ task: match[1], outcome: match[2] || 'EXECUTED' });
  }
  const unique = [...new Map(tasks.map((task) => [task.task, task])).values()];
  const counts = { executed: 0, upToDate: 0, fromCache: 0, noSource: 0, skipped: 0, failed: 0 };
  const keys = { EXECUTED: 'executed', 'UP-TO-DATE': 'upToDate', 'FROM-CACHE': 'fromCache', 'NO-SOURCE': 'noSource', SKIPPED: 'skipped', FAILED: 'failed' };
  for (const task of unique) counts[keys[task.outcome]]++;
  const actionable = [...output.matchAll(/(\d+) actionable tasks?:\s*([^\r\n]+)/g)].at(-1);
  const buildResult = [...output.matchAll(/BUILD (SUCCESSFUL|FAILED) in ([^\r\n]+)/g)].at(-1);
  return {
    counts, tasks: unique,
    reportedActionableSummary: actionable ? `${actionable[1]} actionable tasks: ${actionable[2]}` : null,
    reportedBuildResult: buildResult ? `${buildResult[1]} in ${buildResult[2]}` : null,
    tests: unique.filter(({ task }) => task.endsWith(':testDebugUnitTest')).map(({ task, outcome }) => ({
      task, outcome,
      evidence: outcome === 'EXECUTED' ? 'executed-this-run' : outcome === 'UP-TO-DATE' || outcome === 'FROM-CACHE' ? 'reused' : 'not-executed-successfully',
    })),
  };
}

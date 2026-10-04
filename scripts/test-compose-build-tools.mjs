#!/usr/bin/env node
// Run with JDK17_HOME (or JAVA_HOME) and the existing production ASM export; no Gradle needed.
import assert from 'node:assert/strict';
import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';
import { spawnSync } from 'node:child_process';
import { performance } from 'node:perf_hooks';
import { test, after } from 'node:test';

const repo = fs.realpathSync(path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..'));
const javaHome = process.env.JDK17_HOME || process.env.JAVA_HOME;
assert.ok(javaHome, 'Set JDK17_HOME or JAVA_HOME to an existing JDK 17; this test never reads signing configuration.');
const java = path.join(javaHome, 'bin/java');
const javac = path.join(javaHome, 'bin/javac');
assert.ok(fs.existsSync(java) && fs.existsSync(javac), 'The configured JDK must contain java and javac.');
const exported = JSON.parse(fs.readFileSync(path.join(repo, 'ui-preview/map-host/build/compose-export.json'), 'utf8'));
const tools = exported.tools.filter(tool => tool.group === 'org.ow2.asm').map(tool => tool.file);
assert.ok(exported.tools.some(tool => tool.name === 'asm') && exported.tools.some(tool => tool.name === 'asm-commons'), 'The production export must contain ASM and ASM Commons.');
for (const tool of tools) assert.ok(fs.existsSync(tool), `Missing exported ASM tool: ${tool}`);
const asmClasspath = tools.join(path.delimiter);
const tmpRoot = path.join(repo, '.tmp');
fs.mkdirSync(tmpRoot, { recursive: true });
assert.equal(fs.realpathSync(tmpRoot), tmpRoot, 'Test output must stay in the actual repository .tmp directory.');
const work = fs.mkdtempSync(path.join(tmpRoot, 'compose-build-tools-test-'));
assert.equal(path.dirname(fs.realpathSync(work)), tmpRoot, 'Unexpected test output boundary.');
// Keep the bounded, ignored fixture/report directory for review; there are no delete/move operations.
const started = performance.now();
const commands = [];
const results = [];
const at = (...parts) => path.join(work, ...parts);
const mkdir = (...parts) => { const target = at(...parts); fs.mkdirSync(target, { recursive: true }); return target; };
const write = (target, text) => { fs.mkdirSync(path.dirname(target), { recursive: true }); fs.writeFileSync(target, text, 'utf8'); return target; };
function run(command, args, expected = 0) {
  const start = performance.now();
  const result = spawnSync(command, args, { cwd: repo, encoding: 'utf8', timeout: 30_000, maxBuffer: 8 * 1024 * 1024 });
  commands.push({ program: path.basename(command), args, exit: result.status, elapsedMs: Math.round(performance.now() - start) });
  assert.ifError(result.error);
  if (expected === 0) assert.equal(result.status, 0, `${path.basename(command)} failed:\n${result.stdout}\n${result.stderr}`);
  else assert.notEqual(result.status, 0, 'Expected a nonzero exit status.');
  return result;
}
const currentClasses = mkdir('current helper classes');
const legacyClasses = mkdir('legacy helper classes');
const fixtureClasses = mkdir('fixture classes');
const legacySource = at('legacy source', 'ComposeBuildTools.java');
// Freeze the pre-batch oracle so committing this change cannot silently change the negative control.
write(legacySource, run('git', ['show', '73693ca:scripts/ComposeBuildTools.java']).stdout);
run(javac, ['-cp', asmClasspath, '-d', legacyClasses, legacySource]);
run(javac, ['-cp', asmClasspath, '-d', currentClasses, path.join(repo, 'scripts/ComposeBuildTools.java')]);
const fixtureSource = at('fixture source', 'BuildToolsFixture.java');
write(fixtureSource, `import java.nio.file.*;
import java.util.*;
import java.util.jar.*;
import org.objectweb.asm.*;

public final class BuildToolsFixture {
    private static void check(boolean value, String message) {
        if (!value) throw new AssertionError(message);
    }
    private static byte[] plain(String name) {
        ClassWriter writer = new ClassWriter(0);
        writer.visit(Opcodes.V1_8, Opcodes.ACC_PUBLIC | Opcodes.ACC_ABSTRACT, name, null, "java/lang/Object", null);
        writer.visitEnd();
        return writer.toByteArray();
    }
    private static void entry(JarOutputStream jar, String name, byte[] data) throws Exception {
        JarEntry entry = new JarEntry(name); entry.setTime(1234567890000L);
        jar.putNextEntry(entry); jar.write(data); jar.closeEntry();
    }
    private static void create(Path output) throws Exception {
        ClassWriter writer = new ClassWriter(0);
        writer.visit(Opcodes.V1_8, Opcodes.ACC_PUBLIC | Opcodes.ACC_ABSTRACT, "androidx/example/Widget", null, "java/lang/Object", null);
        writer.visitAnnotation("Landroidx/compose/ui/tooling/preview/Preview;", false).visitEnd();
        writer.visitAnnotation("Ljava/lang/Deprecated;", true).visitEnd();
        writer.visitField(Opcodes.ACC_PUBLIC | Opcodes.ACC_STATIC | Opcodes.ACC_FINAL, "ORIGIN", "Ljava/lang/String;", null, "androidx.example.Widget").visitEnd();
        writer.visitField(Opcodes.ACC_PUBLIC, "widgets", "[Landroidx/example/Widget;", null, null).visitEnd();
        MethodVisitor method = writer.visitMethod(Opcodes.ACC_PUBLIC | Opcodes.ACC_ABSTRACT, "map", "([Landroidx/example/Widget;Landroid/support/v4/Helper;)Landroidx/graphics/path/PathIterator;", null, null);
        method.visitAnnotation("Lorg/codehaus/mojo/animal_sniffer/IgnoreJRERequirement;", false).visitEnd(); method.visitEnd();
        writer.visitEnd();
        try (JarOutputStream jar = new JarOutputStream(Files.newOutputStream(output))) {
            entry(jar, "androidx/example/Widget.class", writer.toByteArray());
            entry(jar, "android/support/v4/Helper.class", plain("android/support/v4/Helper"));
            entry(jar, "androidx/graphics/path/PathIterator.class", plain("androidx/graphics/path/PathIterator"));
            entry(jar, "META-INF/services/androidx.example.Service", "androidx.example.Widget\\n".getBytes(java.nio.charset.StandardCharsets.UTF_8));
            entry(jar, "payload.txt", new byte[] { 1 });
            entry(jar, "META-INF/OLD.SF", new byte[] { 2 });
            entry(jar, "META-INF/OLD.RSA", new byte[] { 3 });
            entry(jar, "module-info.class", plain("module-info"));
            entry(jar, "META-INF/versions/9/androidx/example/Widget.class", plain("androidx/example/Widget"));
        }
    }
    private static byte[] bytes(JarFile jar, String name) throws Exception {
        return jar.getInputStream(Objects.requireNonNull(jar.getJarEntry(name), name)).readAllBytes();
    }
    private static Set<String> names(JarFile jar) {
        Set<String> names = new TreeSet<>();
        jar.stream().forEach(entry -> { check(entry.getTime() == 0L, "Nonconstant entry time: " + entry.getName()); names.add(entry.getName()); });
        return names;
    }
    private static void verifyRelocation(Path file) throws Exception {
        try (JarFile jar = new JarFile(file.toFile())) {
            check(names(jar).equals(new TreeSet<>(List.of(
                "com/icar03/compose/androidx/example/Widget.class",
                "com/icar03/compose/android/support/v4/Helper.class",
                "androidx/graphics/path/PathIterator.class",
                "META-INF/services/com.icar03.compose.androidx.example.Service"))), "Relocated entry set/filtering");
            check(new String(bytes(jar, "META-INF/services/com.icar03.compose.androidx.example.Service"), java.nio.charset.StandardCharsets.UTF_8).equals("com.icar03.compose.androidx.example.Widget\\n"), "Service name/body relocation");
            final Set<String> seen = new HashSet<>();
            new ClassReader(bytes(jar, "com/icar03/compose/androidx/example/Widget.class")).accept(new ClassVisitor(Opcodes.ASM9) {
                public void visit(int version, int access, String name, String signature, String parent, String[] interfaces) {
                    check(name.equals("com/icar03/compose/androidx/example/Widget"), "Class name relocation");
                }
                public AnnotationVisitor visitAnnotation(String descriptor, boolean visible) {
                    check(!descriptor.contains("tooling/preview"), "Preview annotation survived");
                    if (descriptor.equals("Ljava/lang/Deprecated;")) seen.add("annotation"); return null;
                }
                public FieldVisitor visitField(int access, String name, String descriptor, String signature, Object value) {
                    if (name.equals("ORIGIN")) { check(value.equals("com.icar03.compose.androidx.example.Widget"), "String literal relocation"); seen.add("origin"); }
                    if (name.equals("widgets")) { check(descriptor.equals("[Lcom/icar03/compose/androidx/example/Widget;"), "Array field relocation"); seen.add("field"); }
                    return null;
                }
                public MethodVisitor visitMethod(int access, String name, String descriptor, String signature, String[] exceptions) {
                    check(descriptor.equals("([Lcom/icar03/compose/androidx/example/Widget;Lcom/icar03/compose/android/support/v4/Helper;)Landroidx/graphics/path/PathIterator;"), "Method signature/JNI exception relocation");
                    seen.add("method");
                    return new MethodVisitor(Opcodes.ASM9) {
                        public AnnotationVisitor visitAnnotation(String descriptor, boolean visible) {
                            check(!descriptor.contains("IgnoreJRERequirement"), "Build-only method annotation survived"); return null;
                        }
                    };
                }
            }, 0);
            check(seen.equals(Set.of("annotation", "origin", "field", "method")), "Expected relocation evidence");
        }
    }
    private static void verifyStubs(Path file) throws Exception {
        try (JarFile jar = new JarFile(file.toFile())) {
            check(names(jar).equals(new TreeSet<>(List.of("fixture/Api.class", "fixture/Port.class", "fixture/Secondary.class"))), "Only direct Smali roots belong to the ABI library");
            final Map<String, String> fields = new TreeMap<>(); final Map<String, String> methods = new TreeMap<>();
            new ClassReader(bytes(jar, "fixture/Api.class")).accept(new ClassVisitor(Opcodes.ASM9) {
                public void visit(int version, int access, String name, String signature, String parent, String[] interfaces) {
                    check(version == Opcodes.V1_8 && access == (Opcodes.ACC_PUBLIC | Opcodes.ACC_ABSTRACT), "Class flags/version");
                    check(name.equals("fixture/Api") && parent.equals("java/lang/Object"), "Original class/super signature");
                    check(Arrays.equals(interfaces, new String[] { "java/lang/Runnable" }), "Original implements signature");
                }
                public FieldVisitor visitField(int access, String name, String descriptor, String signature, Object value) {
                    fields.put(name, access + ":" + descriptor); check(value == null, "Library-only fields must keep prior no-value semantics"); return null;
                }
                public MethodVisitor visitMethod(int access, String name, String descriptor, String signature, String[] exceptions) {
                    methods.put(name, access + ":" + descriptor);
                    return new MethodVisitor(Opcodes.ASM9) {
                        int instructions = 0;
                        public void visitInsn(int opcode) {
                            check(opcode == (instructions++ == 0 ? Opcodes.ACONST_NULL : Opcodes.ATHROW), "Library-only throwing method body");
                        }
                        public void visitMaxs(int stack, int locals) {
                            check(stack == 1 && locals == (name.equals("<init>") ? 5 : 1), "Original argument widths/local slots");
                        }
                        public void visitEnd() {
                            check(instructions == ((access & (Opcodes.ACC_ABSTRACT | Opcodes.ACC_NATIVE)) == 0 ? 2 : 0), "Abstract/native body semantics");
                        }
                    };
                }
            }, 0);
            check(fields.equals(Map.of(
                "NAME", (Opcodes.ACC_PUBLIC | Opcodes.ACC_STATIC | Opcodes.ACC_FINAL) + ":Ljava/lang/String;",
                "count", (Opcodes.ACC_PROTECTED | Opcodes.ACC_VOLATILE) + ":J",
                "alias", (Opcodes.ACC_PRIVATE | Opcodes.ACC_SYNTHETIC) + ":[Ljava/lang/String;")), "Original field flags and descriptors");
            check(methods.equals(Map.of(
                "<init>", Opcodes.ACC_PUBLIC + ":(JD)V",
                "map", (Opcodes.ACC_PROTECTED | Opcodes.ACC_ABSTRACT) + ":([ILandroidx/example/Widget;)Ljava/lang/String;",
                "consume", (Opcodes.ACC_PUBLIC | Opcodes.ACC_STATIC | Opcodes.ACC_VARARGS | Opcodes.ACC_NATIVE) + ":([Ljava/lang/String;)D",
                "package", "0:()V")), "Original method flags and descriptors");
            ClassReader port = new ClassReader(bytes(jar, "fixture/Port.class"));
            check(port.getAccess() == (Opcodes.ACC_PUBLIC | Opcodes.ACC_INTERFACE | Opcodes.ACC_ABSTRACT), "Original interface flags");
        }
    }
    private static void verifyR() throws Exception {
        check(Class.forName("fixture.resources.R$attr").getField("first").getInt(null) == 0x7f010010, "Global attr value");
        check(Class.forName("fixture.resources.R$string").getField("greeting").getInt(null) == 0x7f020030, "Global string value");
        Class<?> styleable = Class.forName("fixture.resources.R$styleable");
        check(Arrays.equals((int[]) styleable.getField("Panel").get(null), new int[] { 0x7f010010, 0x7f010020 }), "AAR styleable ordering with merged IDs");
        check(styleable.getField("Panel_first").getInt(null) == 0 && styleable.getField("Panel_second").getInt(null) == 1, "Inlined AAR indices stay unchanged");
    }
    public static void main(String[] args) throws Exception {
        switch (args[0]) {
            case "create": create(Paths.get(args[1])); break;
            case "relocation": verifyRelocation(Paths.get(args[1])); break;
            case "stubs": verifyStubs(Paths.get(args[1])); break;
            case "rjava": verifyR(); break;
            default: throw new IllegalArgumentException(args[0]);
        }
    }
}
`);
run(javac, ['-cp', asmClasspath, '-d', fixtureClasses, fixtureSource]);
const invoke = (classes, args, expected = 0) => run(java, ['-cp', [classes, asmClasspath].join(path.delimiter), 'ComposeBuildTools', ...args], expected);
const current = (...args) => invoke(currentClasses, args);
const legacy = (...args) => invoke(legacyClasses, args);
const verify = (mode, file, extra = []) => run(java, ['-cp', [fixtureClasses, ...extra, asmClasspath].join(path.delimiter), 'BuildToolsFixture', mode, ...(file ? [file] : [])]);
const makeJobs = (name, jobs, separator = '\n') => write(at('批量 jobs', name), jobs.map(fields => fields.join('\t')).join(separator) + separator);
const bytesEqual = (...files) => { for (const file of files.slice(1)) assert.deepEqual(fs.readFileSync(file), fs.readFileSync(files[0])); };
function check(name, body) {
  test(name, () => {
    const start = performance.now();
    try { body(); results.push({ name, status: 'passed', elapsedMs: Math.round(performance.now() - start) }); }
    catch (error) { results.push({ name, status: 'failed', elapsedMs: Math.round(performance.now() - start), error: error.message }); throw error; }
  });
}

const manifest = write(at('含 空格 输入', 'AndroidManifest.xml'), '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="fixture.resources"><uses-sdk android:minSdkVersion="21"/></manifest>');
const noSdk = write(at('含 空格 输入', '默认 SDK.xml'), '<manifest package="fixture.defaults"/>');
const emptySdk = write(at('含 空格 输入', '空 SDK.xml'), '<manifest xmlns:android="http://schemas.android.com/apk/res/android" package="fixture.empty"><uses-sdk/></manifest>');
const merged = write(at('含 空格 输入', 'merged R.txt'), 'int attr first 0x7f010010\nint attr second 0x7f010020\nint string greeting 0x7f020030\nint[] styleable Panel { 0x7f010020, 0x7f010010 }\nint styleable Panel_first 1\nint styleable Panel_second 0\n');
const own = write(at('含 空格 输入', 'own R.txt'), 'int attr first 0x7f110001\nint attr second 0x7f110002\nint string greeting 0x7f220002\nint[] styleable Panel { 0x7f110001, 0x7f110002 }\nint styleable Panel_first 0\nint styleable Panel_second 1\n');
const publicXml = write(at('含 空格 输入', 'public.xml'), '<resources><public type="attr" name="first" id="0x7f010010"/><public type="string" name="greeting" id="0x7f020030"/></resources>');
const inputJar = at('含 空格 输入', 'input.jar');
verify('create', inputJar);
const formal = mkdir('正式 smali fixture');
write(path.join(formal, 'smali/fixture/Api.smali'), '.class public abstract Lfixture/Api;\n.super Ljava/lang/Object;\n.implements Ljava/lang/Runnable;\n.field public static final NAME:Ljava/lang/String; = "ignored"\n.field protected volatile count:J\n.field private synthetic alias:[Ljava/lang/String;\n.method public constructor <init>(JD)V\n.end method\n.method protected abstract map([ILandroidx/example/Widget;)Ljava/lang/String;\n.end method\n.method public static varargs native consume([Ljava/lang/String;)D\n.end method\n.method package()V\n.end method\n');
write(path.join(formal, 'smali_classes2/fixture/Port.smali'), '.class public interface abstract Lfixture/Port;\n.super Ljava/lang/Object;\n.method public abstract call(I)V\n.end method\n');
write(path.join(formal, 'smali_classes10/fixture/Secondary.smali'), '.class final Lfixture/Secondary;\n.super Ljava/lang/Object;\n.method public bridge synthetic bridge(JD)Ljava/lang/Object;\n.end method\n');
write(path.join(formal, 'outside.smali'), 'This must not be parsed.');
const unrelated = ['res', 'assets', 'content-src', 'content-compose', 'smali_backup', 'nested'].map(name => {
  const dir = path.join(formal, name);
  write(path.join(dir, 'smali/poison.smali'), 'Neither read nor traversed.');
  return dir;
});
mkdir('输出 files');

check('manifest batch files preserve legacy stdout bytes, defaults, UTF-8 paths, and CRLF jobs', () => {
  const jobs = [];
  for (const [index, input] of [manifest, noSdk, emptySdk].entries()) {
    const output = at('输出 files', `manifest ${index}.txt`);
    assert.equal(current('manifest', input).stdout, legacy('manifest', input).stdout);
    jobs.push(['manifest', input, output]);
  }
  const result = current('batch', makeJobs('manifests.tsv', jobs, '\r\n'));
  assert.equal(result.stdout, '', 'Batch manifest results belong in their output files.');
  jobs.forEach(([, input, output]) => assert.deepEqual(fs.readFileSync(output), Buffer.from(legacy('manifest', input).stdout, 'utf8')));
  assert.equal(fs.readFileSync(jobs[0][2], 'utf8'), 'fixture.resources\n21\n');
  assert.equal(fs.readFileSync(jobs[1][2], 'utf8'), 'fixture.defaults\n1\n');
});

check('rjava batch preserves merged resource IDs, AAR styleable order, and compiled signatures', () => {
  const directories = ['legacy R 输出', 'single R 输出', 'batch R 输出'].map(name => mkdir(name));
  legacy('rjava', merged, own, 'fixture.resources', directories[0]);
  current('rjava', merged, own, 'fixture.resources', directories[1]);
  current('batch', makeJobs('rjava.tsv', [['rjava', merged, own, 'fixture.resources', directories[2]]]));
  const sources = directories.map(dir => path.join(dir, 'fixture/resources/R.java'));
  bytesEqual(...sources);
  const classes = mkdir('compiled R classes');
  run(javac, ['-d', classes, sources[2]]);
  verify('rjava', null, [classes]);
});

check('relocation batch preserves descriptors, string/service metadata, filtering, and deterministic JAR bytes', () => {
  const outputs = ['legacy relocated.jar', 'single relocated.jar', 'batch relocated.jar', 'batch relocated again.jar'].map(name => at('输出 files', name));
  legacy('relocate', inputJar, outputs[0]);
  current('relocate', inputJar, outputs[1]);
  current('batch', makeJobs('relocation.tsv', outputs.slice(2).map(output => ['relocate', inputJar, output])));
  bytesEqual(...outputs);
  verify('relocation', outputs[2]);
});

check('stable and stubs batch match legacy bytes and preserve original ABI signatures', () => {
  const stable = ['legacy stable.txt', 'single stable.txt', 'batch stable.txt'].map(name => at('输出 files', name));
  const stubs = ['legacy stubs.jar', 'single stubs.jar', 'batch stubs.jar', 'batch stubs again.jar'].map(name => at('输出 files', name));
  legacy('stable', publicXml, stable[0]); current('stable', publicXml, stable[1]);
  legacy('stubs', formal, stubs[0]); current('stubs', formal, stubs[1]);
  const result = current('batch', makeJobs('stable-stubs.tsv', [['stable', publicXml, stable[2]], ...stubs.slice(2).map(output => ['stubs', formal, output])]));
  assert.equal(result.stdout, legacy('stubs', formal, stubs[0]).stdout.repeat(2));
  bytesEqual(...stable); bytesEqual(...stubs);
  assert.equal(fs.readFileSync(stable[2], 'utf8'), 'com.autonavi.amapautolite:attr/first = 0x7f010010\ncom.autonavi.amapautolite:string/greeting = 0x7f020030\n');
  verify('stubs', stubs[2]);
});

check('Smali scanning never enters unreadable resource, asset, source, or nested directories', () => {
  assert.notEqual(process.getuid?.(), 0, 'This negative-control test requires a non-root user so directory permissions are enforced.');
  const output = at('输出 files', 'bounded scan stubs.jar');
  try {
    unrelated.forEach(dir => fs.chmodSync(dir, 0));
    const before = invoke(legacyClasses, ['stubs', formal, at('输出 files', 'legacy blocked.jar')], 1);
    assert.match(before.stderr, /AccessDeniedException/, 'Negative control must detect the old broad walk.');
    current('batch', makeJobs('bounded-scan.tsv', [['stubs', formal, output]]));
    bytesEqual(output, at('输出 files', 'single stubs.jar'));
    verify('stubs', output);
  } finally {
    unrelated.forEach(dir => fs.chmodSync(dir, 0o700));
  }
});

check('invalid operation, arity, empty argument, and blank line fail at job 2 before later work', () => {
  const invalid = [['unknown'], ['manifest', manifest], ['manifest', manifest, 'unused', 'extra'], ['rjava', merged, own, '', at('unused')], ['batch', 'nested.tsv'], ['']];
  for (const [index, fields] of invalid.entries()) {
    const first = at('输出 files', `before invalid ${index}.txt`);
    const after = at('输出 files', `after invalid ${index}.txt`);
    const jobs = makeJobs(`invalid-${index}.tsv`, [['stable', publicXml, first], fields, ['manifest', manifest, after]]);
    const result = invoke(currentClasses, ['batch', jobs], 1);
    assert.match(result.stderr, /Batch job 2/);
    assert.equal(fs.readFileSync(first, 'utf8'), fs.readFileSync(at('输出 files', 'batch stable.txt'), 'utf8'));
    assert.equal(fs.existsSync(after), false, 'Later jobs must not execute after validation failure.');
  }
});

check('execution failure also stops at job 2, and an empty batch does no work', () => {
  const first = at('输出 files', 'before failed IO.txt');
  const after = at('输出 files', 'after failed IO.txt');
  const output = at('输出 files', 'missing input manifest.txt');
  const result = invoke(currentClasses, ['batch', makeJobs('failed-IO.tsv', [['stable', publicXml, first], ['manifest', at('不存在 input.xml'), output], ['manifest', manifest, after]])], 1);
  assert.match(result.stderr, /Batch job 2 \(manifest\) failed:/);
  assert.equal(fs.existsSync(first), true);
  assert.equal(fs.existsSync(output), false);
  assert.equal(fs.existsSync(after), false);
  const empty = write(at('批量 jobs', 'empty.tsv'), '');
  assert.equal(current('batch', empty).stdout, '');
});

after(() => {
  const summary = { elapsedMs: Math.round(performance.now() - started), passed: results.filter(result => result.status === 'passed').length, failed: results.filter(result => result.status === 'failed').length, results, commands };
  write(at('test-summary.json'), JSON.stringify(summary, null, 2) + '\n');
  console.log(`Dedicated Compose build tools evidence: ${at('test-summary.json')}`);
});

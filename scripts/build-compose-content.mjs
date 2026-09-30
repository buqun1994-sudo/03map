import fs from 'node:fs';
import path from 'node:path';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const build = path.resolve(process.argv[2] || '');
const expectedPrefix = path.join(root, 'apk-work/9.5.0.600013/source-build.');
if (!build.startsWith(expectedPrefix) || !fs.existsSync(path.join(build, 'unsigned.apk'))) throw new Error('Expected verified source-build staging directory');
const javaHome = process.env.JAVA_HOME;
if(!javaHome||!process.env.ANDROID_SDK_ROOT||!process.env.AAPT2||!process.env.CONTENT_R8_JAR)throw new Error('Missing JAVA_HOME / ANDROID_SDK_ROOT / AAPT2 / CONTENT_R8_JAR');
const java = path.join(javaHome, 'bin/java'), javac = path.join(javaHome, 'bin/javac');
const aapt = process.env.AAPT2;
const android = path.join(process.env.ANDROID_SDK_ROOT, 'platforms/android-35/android.jar');
const r8 = process.env.CONTENT_R8_JAR;
if (![java,javac,aapt,android,r8].every(Boolean)) throw new Error('Missing build tool environment');
const run = (command,args,options={}) => {
  const result = spawnSync(command,args,{encoding:'utf8',maxBuffer:64*1024*1024,...options});
  if (!(command==='unzip' && args[0]==='-Z1')) fs.appendFileSync(path.join(build,'compose-commands.log'),`${command} ${args.join(' ')}\n${result.stdout||''}${result.stderr||''}\nexit: ${result.status}\n`);
  if (result.status !== 0) throw new Error(`${command} failed (${result.status})\n${result.stdout||''}\n${result.stderr||''}`);
  return result.stdout;
};
const mkdir = (p) => { fs.mkdirSync(p,{recursive:true}); return p; };
const walk = (dir) => fs.existsSync(dir) ? fs.readdirSync(dir,{withFileTypes:true}).flatMap(e=>e.isDirectory()?walk(path.join(dir,e.name)):[path.join(dir,e.name)]) : [];
run(process.execPath,[path.join(root,'scripts/check-compose-deps.mjs')]);
const exported = JSON.parse(fs.readFileSync(path.join(root,'ui-preview/map-host/build/compose-export.json'),'utf8'));
const artifacts = [...new Map(exported.dependencies.map(r=>[r.file,r])).values()];
const tools = exported.tools.map(r=>r.file).join(path.delimiter);
const helperClasses = mkdir(path.join(build,'build-tools'));
run(javac,['-cp',tools,'-d',helperClasses,path.join(root,'scripts/ComposeBuildTools.java')]);
const helper = (args) => run(java,['-cp',helperClasses+path.delimiter+tools,'ComposeBuildTools',...args]);
const extracted = mkdir(path.join(build,'compose-artifacts'));
const archives = [], jars = [], proguard = [];
for (const [index,artifact] of [...artifacts,...exported.modules.map(r=>({...r,type:'aar'}))].entries()) {
  if (artifact.type==='jar') { jars.push(artifact.file); continue; }
  const target = mkdir(path.join(extracted,String(index)));
  run('unzip',['-q',artifact.file,'-d',target]);
  const classesJar=path.join(target,'classes.jar');
  if(fs.existsSync(classesJar))jars.push(classesJar);
  jars.push(...walk(path.join(target,'libs')).filter(p=>p.endsWith('.jar')));
  const [pkg,minimum]=helper(['manifest',path.join(target,'AndroidManifest.xml')]).trim().split('\n');
  if(artifact.group && (!/^\d+$/.test(minimum)||Number(minimum)>21))throw new Error(`Runtime library breaks minSdk21: ${artifact.group}:${artifact.name} minSdk ${minimum}`);
  const symbols = path.join(target,'R.txt');
  if (pkg && fs.existsSync(symbols)) archives.push({target,pkg,symbols});
  if (fs.existsSync(path.join(target,'proguard.txt'))) proguard.push(path.join(target,'proguard.txt'));
  const natives=walk(path.join(target,'jni'));
  if (natives.length && !(artifact.group==='androidx.graphics'&&artifact.name==='graphics-path')) throw new Error(`Unexpected native dependency in ${artifact.name}; explicit ABI review required`);
}
const resources = mkdir(path.join(build,'compose-resources'));
const compiled = [];
for (const [index,{target}] of archives.entries()) {
  if (!walk(path.join(target,'res')).length) continue;
  const zip=path.join(resources,`dependency-${index}.zip`);
  run(aapt,['compile','--dir',path.join(target,'res'),'-o',zip]); compiled.push(zip);
}
const stable = path.join(resources,'stable-ids.txt');
helper(['stable',path.join(root,'source/amap-9.5.0.600013/res/values/public.xml'),stable]);
const formal = path.join(resources,'formal.zip');
run(aapt,['compile','--dir',path.join(build,'decode/res'),'-o',formal]);
const linked = path.join(resources,'linked.apk');
const symbolsDir = mkdir(path.join(resources,'symbols'));
const allArgs = ['link','-I',android,'--manifest',path.join(build,'decode/AndroidManifest.xml'),
  '--min-sdk-version','21','--target-sdk-version','24','--version-code','26000001','--version-name','9.5.0.600013',
  '--auto-add-overlay','--stable-ids',stable,'--output-text-symbols',path.join(symbolsDir,'R.txt'),'-o',linked];
for (const zip of [...compiled,formal]) allArgs.push('-R',zip);
run(aapt,allArgs);
const mergedSymbols = path.join(symbolsDir,'R.txt');
const rSources = mkdir(path.join(build,'compose-r-java'));
for (const {pkg,symbols} of archives) helper(['rjava',mergedSymbols,symbols,pkg,rSources]);
const rClasses = mkdir(path.join(build,'compose-r-classes'));
const javaFiles = walk(rSources).filter(p=>p.endsWith('.java'));
run(javac,['--release','8','-d',rClasses,...javaFiles]);
const rJar=path.join(build,'compose-resources.jar');
run(path.join(javaHome,'bin/jar'),['cf',rJar,'-C',rClasses,'.']); jars.push(rJar);
// Modern AndroidX never links against old obfuscated or empty same-name classes in classes.dex.
const relocated=mkdir(path.join(build,'compose-relocated'));
const program=[];
for (const [index,jar] of jars.entries()) {
  const target=path.join(relocated,`${index}.jar`);
  helper(['relocate',jar,target]);
  // Some KMP compatibility artifacts contain only compile metadata and become empty ZIPs.
  if(fs.statSync(target).size!==22)program.push(target);
}
const rules=path.join(build,'compose.pro');
const consumerRules=proguard.map(p=>fs.readFileSync(p,'utf8').replaceAll('androidx.','com.icar03.compose.androidx.').replaceAll('com.icar03.compose.androidx.graphics.path.','androidx.graphics.path.').replaceAll('android.support.','com.icar03.compose.android.support.')).join('\n');
const allowedWarnings=new Set(['android.view.RenderNode','android.view.DisplayListCanvas','android.view.HardwareCanvas']);
for(const line of consumerRules.split('\n')) {
  const warning=/^\s*-dontwarn\s+(.+?)\s*$/.exec(line);
  if(warning && !allowedWarnings.has(warning[1]))throw new Error(`Unreviewed consumer missing-class suppression: ${warning[1]}`);
  if(/^\s*-ignorewarnings\b/.test(line))throw new Error('Consumer may not disable missing-class verification');
}
fs.writeFileSync(rules, fs.readFileSync(path.join(root,'scripts/compose-runtime.pro'),'utf8')+'\n'+consumerRules);
const oldDex=path.join(build,'original.dex');
const originalDexResult=spawnSync('unzip',['-p',path.join(build,'unsigned.apk'),'classes.dex'],{maxBuffer:32*1024*1024});
if(originalDexResult.status!==0||!originalDexResult.stdout.subarray(0,4).equals(Buffer.from('dex\n')))throw new Error('APKTool original primary DEX extraction failed');
fs.writeFileSync(oldDex,originalDexResult.stdout);
const oldLibrary=path.join(build,'original-library.jar');
helper(['stubs',path.join(root,'source/amap-9.5.0.600013'),oldLibrary]);
const dexDir=mkdir(path.join(build,'dex'));
run(java,['-Xmx4g','-cp',r8,'com.android.tools.r8.R8','--release','--min-api','21',
  '--lib',android,'--lib',oldLibrary,'--pg-conf',rules,'--output',dexDir,...program]);
const dexFiles=walk(dexDir).filter(p=>/classes(?:\d+)?\.dex$/.test(p)).sort((a,b)=>{
  const number=(p)=>Number(/classes(\d*)\.dex$/.exec(p)[1]||1);return number(a)-number(b);
});
if (!dexFiles.length) throw new Error('R8 produced no DEX');
const inject=mkdir(path.join(build,'compose-inject'));
run('unzip',['-q',linked,'-d',inject]);
const lock=JSON.parse(fs.readFileSync(path.join(root,'scripts/compose-runtime-deps.lock.json'),'utf8'));
for (const native of lock.native) {
  const artifact=artifacts.find(r=>`${r.group}:${r.name}:${r.version}:${r.type}`===native.artifact);
  if(!artifact)throw new Error('Locked native artifact missing');
  const dest=path.join(inject,native.destination);mkdir(path.dirname(dest));
  const bytes=spawnSync('unzip',['-p',artifact.file,native.entry],{maxBuffer:1024*1024});
  if(bytes.status!==0)throw new Error('Native extraction failed');
  fs.writeFileSync(dest,bytes.stdout);
}
for (const [index,dex] of dexFiles.entries()) fs.copyFileSync(dex,path.join(inject,`classes${index+2}.dex`));
// R8 does not write Java resource services into DEX. Retain provider names explicitly.
const serviceFiles = new Map();
const expectedServices=new Map([
  ['META-INF/services/kotlinx.coroutines.internal.MainDispatcherFactory','kotlinx.coroutines.android.AndroidDispatcherFactory'],
  ['META-INF/services/kotlinx.coroutines.CoroutineExceptionHandler','kotlinx.coroutines.android.AndroidExceptionPreHandler'],
]);
for (const jar of program) {
  const names = run('unzip',['-Z1',jar]).split('\n').filter(n=>n.startsWith('META-INF/services/') && !n.endsWith('/'));
  for (const name of names) {
    const value=run('unzip',['-p',jar,name]);
    serviceFiles.set(name,[...(serviceFiles.get(name)||[]),...value.split('\n').filter(v=>v && !v.startsWith('#'))]);
  }
}
for (const [name,values] of serviceFiles) {
  if(!expectedServices.has(name)||values.some(v=>v!==expectedServices.get(name)))throw new Error(`Unreviewed service metadata: ${name}`);
  const dest=path.join(inject,name);mkdir(path.dirname(dest));fs.writeFileSync(dest,[...new Set(values)].join('\n')+'\n');
}
for(const name of expectedServices.keys())if(!serviceFiles.has(name))throw new Error(`Required runtime service missing: ${name}`);
const injectedDices=dexFiles.map((_,i)=>path.join(inject,`classes${i+2}.dex`));
console.log(run(process.execPath,[path.join(root,'scripts/check-content-dex.mjs'),...injectedDices]).trim());
const injectionFiles=walk(inject).map(p=>path.relative(inject,p));
run('zip',['-q','-X',path.join(build,'unsigned.apk'),...injectionFiles],{cwd:inject});
console.log(run(process.execPath,[path.join(root,'scripts/check-compose-resources.mjs'),mergedSymbols,stable]).trim());
fs.writeFileSync(path.join(build,'compose-build.json'),JSON.stringify({dependencies:artifacts.length,modules:exported.modules.map(r=>r.name),dexFiles:injectedDices.map(p=>path.basename(p)),resourceSymbols:mergedSymbols,relocation:'com.icar03.compose.androidx'},null,2)+'\n');
console.log(`Compose linked resources, isolated program and ${dexFiles.length} additional DEX files`);

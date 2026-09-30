import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';
const root=path.resolve(path.dirname(fileURLToPath(import.meta.url)),'..');
const apk=path.resolve(process.argv[2]||'');
if(!fs.existsSync(apk))throw new Error('Expected candidate APK');
const unzip=(args)=>{const r=spawnSync('unzip',args,{maxBuffer:64*1024*1024});if(r.status!==0)throw new Error('APK entry extraction failed');return r.stdout;};
const digest=bytes=>crypto.createHash('sha256').update(bytes).digest('hex');
const primary=path.join(path.dirname(apk),'original.dex');
if(!fs.existsSync(primary)||digest(fs.readFileSync(primary))!==digest(unzip(['-p',apk,'classes.dex'])))throw new Error('Original primary DEX changed during Compose injection');
const formal=path.join(root,'source/amap-9.5.0.600013/lib/arm64-v8a');
const old=fs.readdirSync(formal).filter(n=>n.endsWith('.so'));
if(old.length!==63)throw new Error('Original native inventory is not 63');
for(const name of old)if(digest(fs.readFileSync(path.join(formal,name)))!==digest(unzip(['-p',apk,`lib/arm64-v8a/${name}`])))throw new Error(`Original native identity changed: ${name}`);
const lock=JSON.parse(fs.readFileSync(path.join(root,'scripts/compose-runtime-deps.lock.json'),'utf8'));
for(const native of lock.native)if(digest(unzip(['-p',apk,native.destination]))!==native.sha256)throw new Error(`Added JNI hash mismatch: ${native.destination}`);
const files=unzip(['-Z1',apk]).toString('utf8').trim().split('\n');
if(new Set(files).size!==files.length)throw new Error('Duplicate APK ZIP entries');
const natives=files.filter(f=>/^lib\/.*\.so$/.test(f));
if(natives.length!==63+lock.native.length||natives.some(f=>!f.startsWith('lib/arm64-v8a/')))throw new Error('Unexpected native count or ABI');
const dex=files.filter(f=>/^classes(?:\d+)?\.dex$/.test(f));
if(dex.length<2)throw new Error('Compose DEX missing');
for(let i=1;i<=dex.length;i++)if(!dex.includes(i===1?'classes.dex':`classes${i}.dex`))throw new Error('Noncontiguous DEX indices');
const services=new Map([
  ['META-INF/services/kotlinx.coroutines.internal.MainDispatcherFactory','kotlinx.coroutines.android.AndroidDispatcherFactory'],
  ['META-INF/services/kotlinx.coroutines.CoroutineExceptionHandler','kotlinx.coroutines.android.AndroidExceptionPreHandler'],
]);
for(const [entry,provider] of services)if(!files.includes(entry)||unzip(['-p',apk,entry]).toString('utf8').trim()!==provider)throw new Error(`Runtime service provider mismatch: ${entry}`);
console.log(`Compose APK verified: original 63 native hashes preserved, ${lock.native.length} locked arm64 addition, ${dex.length} contiguous DEX, dispatcher metadata retained`);

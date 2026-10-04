import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { spawnSync } from 'node:child_process';
import { fileURLToPath } from 'node:url';

const root = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const exportPath = path.join(root, 'ui-preview/map-host/build/compose-export.json');
const exportedText = fs.readFileSync(exportPath, 'utf8');
const exported = JSON.parse(exportedText);
const key = (r) => `${r.group}:${r.name}:${r.version}:${r.type}`;
const sha = (file) => crypto.createHash('sha256').update(fs.readFileSync(file)).digest('hex');
const normalize = (items) => [...new Map(items.map((r) => [key(r), r])).values()].sort((a,b) => key(a).localeCompare(key(b)));
const forbidden = /(?:ui-tooling|ui-test|junit|robolectric|espresso|test-manifest)/;
for (const r of exported.dependencies) {
  if (forbidden.test(`${r.group}:${r.name}`)) throw new Error(`Production graph contains test/tooling: ${key(r)}`);
  if (!/^(?:jar|aar)$/.test(r.type)) throw new Error(`Unsupported artifact ${key(r)}`);
}
const generated = {
  schema: 1,
  relocation: { 'androidx/': 'com/icar03/compose/androidx/', 'android/support/': 'com/icar03/compose/android/support/', exceptions: ['androidx/graphics/path/'] },
  native: normalize(exported.dependencies).filter(r=>r.group==='androidx.graphics'&&r.name==='graphics-path').map(r=>{
    const entry='jni/arm64-v8a/libandroidx.graphics.path.so';
    const result=spawnSync('unzip',['-p',r.file,entry],{maxBuffer:1024*1024});
    if(result.status!==0)throw new Error('Missing locked graphics-path arm64 library');
    return {artifact:key(r),entry,destination:'lib/arm64-v8a/libandroidx.graphics.path.so',sha256:crypto.createHash('sha256').update(result.stdout).digest('hex')};
  }),
  dependencies: normalize(exported.dependencies).map(({file,...r}) => ({...r, sha256:sha(file)})),
  tools: normalize(exported.tools).map(({file,...r}) => ({...r, sha256:sha(file)})),
};
const lockPath = path.join(root, 'scripts/compose-runtime-deps.lock.json');
if (process.argv.includes('--write-lock')) {
  fs.writeFileSync(lockPath, JSON.stringify(generated, null, 2) + '\n');
  console.log(`Locked ${generated.dependencies.length} production artifacts and ${generated.tools.length} build tools`);
} else {
  const lock = JSON.parse(fs.readFileSync(lockPath,'utf8'));
  if (JSON.stringify(lock) !== JSON.stringify(generated)) throw new Error('Compose dependency graph/version/SHA mismatch; review and explicitly regenerate lock');
  console.log(`Compose dependency lock verified: ${lock.dependencies.length} runtime artifacts, ${lock.tools.length} build tools`);
  const receiptIndex = process.argv.indexOf('--receipt');
  if (receiptIndex !== -1) {
    const destination = process.argv[receiptIndex + 1];
    if (!destination) throw new Error('--receipt requires a destination');
    const receipt = { schema: 1, lockSha256: sha(lockPath), exportSha256: crypto.createHash('sha256').update(exportedText).digest('hex'),
      dependencies: normalize(exported.dependencies).map(r => ({ file: r.file, sha256: generated.dependencies.find(item => key(item) === key(r)).sha256 })),
      tools: normalize(exported.tools).map(r => ({ file: r.file, sha256: generated.tools.find(item => key(item) === key(r)).sha256 })) };
    fs.writeFileSync(destination, JSON.stringify(receipt, null, 2) + '\n');
  }
}

import fs from 'node:fs';
import path from 'node:path';
import { fileURLToPath } from 'node:url';

const repoRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const dexPath = process.argv[2];
if (!dexPath) throw new Error('用法：node scripts/check-content-dex.mjs DEX路径');
const dex = fs.readFileSync(dexPath);
if (!dex.subarray(0, 4).equals(Buffer.from('dex\n'))) throw new Error('输入不是 DEX');
const read = (offset) => dex.readUInt32LE(offset);
const dexString = (index) => {
  let offset = read(read(60) + index * 4);
  while (dex[offset++] & 128) {}
  let end = offset;
  while (dex[end] !== 0) end++;
  return dex.toString('utf8', offset, end);
};
const types = Array.from({ length: read(64) }, (_, index) => dexString(read(read(68) + index * 4)));
const definitions = new Set(Array.from({ length: read(96) }, (_, index) => types[read(read(100) + index * 32)]));
const collect = (directory, prefix = '') => fs.readdirSync(directory, { withFileTypes: true }).flatMap((entry) =>
  entry.isDirectory() ? collect(path.join(directory, entry.name), `${prefix}${entry.name}/`)
    : entry.name.endsWith('.smali') ? [`L${prefix}${entry.name.slice(0, -6)};`] : []);
const sourceRoot = path.join(repoRoot, 'source/amap-9.5.0.600013');
const existing = new Set(fs.readdirSync(sourceRoot).filter((name) => /^smali(?:_classes\d+)?$/.test(name))
  .flatMap((name) => collect(path.join(sourceRoot, name))));
const duplicates = [...definitions].filter((name) => existing.has(name));
const missing = types.filter((name) => /^L(?:androidx|okio|com\/airbnb)\//.test(name)
  && !definitions.has(name) && !existing.has(name));
const privateViews = types.filter((name) => /AppCompatImageView|LottieAnimationView|lottie\/R\$/.test(name));
for (const name of ['ContentRuntime', 'ContentRenderer', 'ContentIconView', 'ContentStore']) {
  if (!definitions.has(`Lcom/autonavi/amapauto/content/${name};`)) throw new Error(`主链类型丢失：${name}`);
}
if (duplicates.length || missing.length || privateViews.length) {
  throw new Error(JSON.stringify({ duplicates, missing, privateViews }));
}
console.log(`内容 DEX 闭包通过：${definitions.size} 个类型；无重复、无缺失依赖、无私有 View／资源类引用。`);

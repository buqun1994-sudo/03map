import fs from 'node:fs';
import path from 'node:path';
import crypto from 'node:crypto';
import { fileURLToPath } from 'node:url';

const repoRoot = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..');
const sourceRoot = path.join(repoRoot, 'source/amap-9.5.0.600013');
const manifest = JSON.parse(fs.readFileSync(path.join(sourceRoot, 'assets/content-oem/asset-manifest.json'), 'utf8'));
const decoder = new TextDecoder('utf-8', { fatal: true });
const destinations = new Set();
let animations = 0;
for (const asset of manifest.assets) {
  if (destinations.has(asset.destination) || asset.destination.includes('..') || path.isAbsolute(asset.destination)) {
    throw new Error(`非法或重复资源路径：${asset.destination}`);
  }
  destinations.add(asset.destination);
  const bytes = fs.readFileSync(path.join(sourceRoot, asset.destination));
  const text = asset.format === 'PNG' ? '' : decoder.decode(bytes);
  const digest = crypto.createHash('sha256').update(bytes).digest('hex');
  if (digest !== asset.deployedSha256 || !/^[a-f0-9]{64}$/.test(asset.sourceApkSha256)
      || !/^[a-f0-9]{64}$/.test(asset.sourceSha256)) {
    throw new Error(`资源来源或包内哈希不匹配：${asset.destination}`);
  }
  if (asset.format === 'Lottie') {
    const composition = JSON.parse(text);
    if (composition.w !== 300 || composition.h !== 300 || composition.fr !== 30
        || !Array.isArray(composition.layers) || composition.op <= composition.ip) {
      throw new Error(`动画画布或时间轴不匹配：${asset.destination}`);
    }
    const inspect = (value) => {
      if (!value || typeof value !== 'object') return;
      if (typeof value.x === 'string' || value.ef?.length || value.p && value.u) {
        throw new Error(`动画存在未承载的表达式、效果或图片依赖：${asset.destination}`);
      }
      Object.values(value).forEach(inspect);
    };
    inspect(composition);
    animations++;
  } else if (asset.format === 'PNG') {
    if (bytes.length < 33 || !bytes.subarray(0, 8).equals(Buffer.from([137, 80, 78, 71, 13, 10, 26, 10]))
        || bytes.toString('ascii', 12, 16) !== 'IHDR'
        || bytes.readUInt32BE(16) !== asset.pixelWidth || bytes.readUInt32BE(20) !== asset.pixelHeight) {
      throw new Error(`位图签名或尺寸不匹配：${asset.destination}`);
    }
  } else if (!(asset.format === 'Vector' && text.includes('<vector')
      || asset.format === 'Shape' && text.includes('<shape')
      || asset.format === 'Values' && text.includes('<resources>'))) {
    throw new Error(`静态格式与内容不匹配：${asset.destination}`);
  }
}
console.log(`原厂资源完整性通过：${destinations.size} 项，${animations} 份 Lottie；来源与包内哈希已核对。`);

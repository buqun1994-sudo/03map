#!/usr/bin/env node

import { existsSync, readFileSync } from "node:fs";
import { dirname, join, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const failures = [];
const requiredFiles = [
  "AGENTS.md",
  ".gitignore",
  ".codex/README.md",
  ".codex/config.toml",
  ".codex/local-context.properties.example",
  "README.md",
  "docs/README.md",
  "docs/architecture/项目长期总纲.md",
  "docs/product/产品需求基线.md",
  "docs/architecture/共享基线.md",
  "docs/architecture/03系列协作资产.md",
  "docs/architecture/Codex规则能力池.md",
  "docs/architecture/multi-agent-workflow.md",
  "docs/architecture/rules/README.md",
  "docs/architecture/rules/ai-collaboration.md",
  "docs/operations/本地工具链.md",
  "docs/operations/APK工作流.md",
  "docs/security/安全与密钥边界.md",
  "docs/testing/验证矩阵.md",
  "docs/testing/codex-workflow-eval-cases.md",
  "docs/testing/codex-workflow-scorecard.md",
  "docs/plans/codex-task-intake-template.md",
  "docs/progress.md",
  "docs/archive/amap-9.5.0.600013.md",
  "docs/code-map/README.md",
  "docs/code-map/基线清单.md",
  "docs/code-map/主链索引.md",
  "docs/code-map/全量清单.md",
  "scripts/check-project-docs.mjs",
  "scripts/check-skills.mjs",
  "scripts/check-code-map.mjs",
  "scripts/build-content-apk.sh",
];

function read(relativePath) {
  const path = join(root, relativePath);
  if (!existsSync(path)) {
    failures.push(`缺少文件：${relativePath}`);
    return "";
  }
  return readFileSync(path, "utf8");
}

const contents = new Map(requiredFiles.map((path) => [path, read(path)]));
const agents = contents.get("AGENTS.md") ?? "";
const docsIndex = contents.get("docs/README.md") ?? "";
const baseline = contents.get("docs/code-map/基线清单.md") ?? "";
const mapReadme = contents.get("docs/code-map/README.md") ?? "";
const mapIndex = contents.get("docs/code-map/主链索引.md") ?? "";
const ignore = contents.get(".gitignore") ?? "";

for (const marker of [
  "docs/code-map/README.md",
  "docs/code-map/主链索引.md",
  "docs/product/产品需求基线.md",
  ".agents/skills/",
]) {
  if (!docsIndex.includes(marker)) failures.push(`docs/README.md 缺少路由：${marker}`);
}
if (!docsIndex.includes("source/amap-9.5.0.600013/")) {
  failures.push("docs/README.md 未明确路由正式源码快照");
}
for (const marker of ["全屏动态分屏", "1/3", "2/3", "125%", "2D 车首", "2D 北上", "3D 车首"]) {
  if (!contents.get("docs/product/产品需求基线.md")?.includes(marker)) {
    failures.push(`产品需求基线缺少正式目标：${marker}`);
  }
}
for (const marker of [
  "source/amap-9.5.0.600013/",
  "9.5.0.600013",
  "SignatureKiller/origin.apk",
  "unknown/META-INF/com/android/build/",
  "original/META-INF/",
]) {
  if (!baseline.includes(marker)) failures.push(`基线清单缺少边界或版本标记：${marker}`);
}
for (const marker of [
  "source/amap-9.5.0.600013/",
  "静态确认",
  "实机确认",
  "待验证",
]) {
  if (!mapReadme.includes(marker)) failures.push(`代码地图 README 缺少证据口径：${marker}`);
}
for (const marker of [
  "FloatWindowsManage.smali",
  "GAdaAndroid.smali",
  "nativeOnLayoutChange(III)V",
  "主链索引",
]) {
  if (!mapIndex.includes(marker)) failures.push(`主链索引缺少关键入口：${marker}`);
}
for (const marker of ["*.apk", "*.dex", "apk-work/", ".tmp/", "apk-archive/"] ) {
  if (!ignore.includes(marker)) failures.push(`.gitignore 缺少边界：${marker}`);
}
if (!agents.includes("source/amap-9.5.0.600013/")) failures.push("AGENTS.md 未声明正式源码入口");
if (!agents.includes("交付 / 提交前必须将全部可维护的 Java")) {
  failures.push("AGENTS.md 未声明施工副本回写正式源码的提交门禁");
}
if (contents.get("docs/architecture/03系列协作资产.md")?.includes("03helper") !== true) {
  failures.push("03 系列协作资产记录未包含 03helper 审计结果");
}
if (contents.get("docs/architecture/03系列协作资产.md")?.includes("03投屏") !== true) {
  failures.push("03 系列协作资产记录未包含 03投屏审计结果");
}
if (docsIndex.includes("apk-work/9.5.0.600013/decode")) {
  failures.push("文档仍把临时 apk-work decode 路径写成正式源码入口");
}

const personalPath = /(?:\/Users\/[^/]+\/|[A-Za-z]:\\\\Users\\\\[^\\]+\\\\)/;
for (const [path, content] of contents) {
  if (path === ".codex/local-context.properties.example") continue;
  if (personalPath.test(content)) failures.push(`${path} 写入个人绝对路径`);
}

if (failures.length > 0) {
  console.error("项目文档检查失败：");
  for (const failure of failures) console.error(`- ${failure}`);
  process.exit(1);
}

console.log(`项目文档检查通过（${requiredFiles.length} 个必需文件）。`);

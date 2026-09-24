#!/usr/bin/env node

import { createHash } from "node:crypto";
import { existsSync, readdirSync, readFileSync, statSync } from "node:fs";
import { dirname, join, relative, resolve } from "node:path";
import { fileURLToPath } from "node:url";

const root = resolve(dirname(fileURLToPath(import.meta.url)), "..");
const sourceRoot = join(root, "source", "amap-9.5.0.600013");
const failures = [];

function walk(dir) {
  const files = [];
  for (const entry of readdirSync(dir, { withFileTypes: true })) {
    const path = join(dir, entry.name);
    if (entry.isDirectory()) files.push(...walk(path));
    else if (entry.isFile()) files.push(path);
  }
  return files;
}

function sha256(path) {
  return createHash("sha256").update(readFileSync(path)).digest("hex");
}

if (!existsSync(sourceRoot)) {
  failures.push("缺少正式源码快照：source/amap-9.5.0.600013/");
} else {
  const files = walk(sourceRoot);
  const relativeFiles = files.map((path) => relative(sourceRoot, path));
  const under = (prefix) => relativeFiles.filter((path) => path.startsWith(`${prefix}/`)).length;
  const count = (predicate) => files.filter(predicate).length;

  const expectedCounts = [
    ["总文件", files.length, 9228],
    ["Smali", count((path) => path.endsWith(".smali")), 7269],
    ["XML", count((path) => path.endsWith(".xml")), 595],
    ["res", under("res"), 1515],
    ["assets", under("assets"), 330],
    ["lib", under("lib"), 63],
    ["unknown", under("unknown"), 48],
  ];
  for (const [label, actual, expected] of expectedCounts) {
    if (actual !== expected) failures.push(`${label} 数量为 ${actual}，预期 ${expected}`);
  }

  for (const path of relativeFiles) {
    if (/\.(apk|aab|dex|vdex|odex|jar)$/.test(path) && path !== "assets/SignatureKiller/origin.apk") {
      failures.push(`正式源码快照包含禁止产物：${path}`);
    }
    if (path.split("/").includes("build")) {
      failures.push(`正式源码快照包含构建目录：${path}`);
    }
  }

  const origin = join(sourceRoot, "assets", "SignatureKiller", "origin.apk");
  if (!existsSync(origin) || statSync(origin).size !== 0) {
    failures.push("SignatureKiller/origin.apk 必须是 0 字节占位文件");
  }
  for (const signatureFile of [
    "original/META-INF/MANIFEST.MF",
    "original/META-INF/TESTKEY.SF",
    "original/META-INF/TESTKEY.RSA",
  ]) {
    if (relativeFiles.includes(signatureFile)) failures.push(`正式源码快照包含签名元数据：${signatureFile}`);
  }

  const expectedHashes = new Map([
    ["AndroidManifest.xml", "2b3ee85e92b223ca6971fc5ce4a116c8d86539eb110856e4cf7379b36f1f3dec"],
    ["apktool.yml", "2610aa15401e71b695709662225b7be31cbb73d4d4fd650491d2edcbb83477da"],
  ]);
  for (const [name, expected] of expectedHashes) {
    const path = join(sourceRoot, name);
    if (!existsSync(path) || sha256(path) !== expected) failures.push(`${name} SHA-256 与基线不一致`);
  }

  const anchors = [
    "smali/com/autonavi/amapauto/app/MapApplicationProxy.smali",
    "smali/com/autonavi/amapauto/chenmo_float/AutoamapPluginManage.smali",
    "smali/com/autonavi/amapauto/chenmo_float/ApplicationInitialization.smali",
    "smali/com/autonavi/amapauto/chenmo_float/ControlReceiver.smali",
    "smali/com/autonavi/amapauto/chenmo_float/FloatWindowsManage.smali",
    "smali/com/autonavi/amapauto/chenmo_float/LifecycleCallbacks.smali",
    "smali/com/autonavi/amapauto/chenmo_float/AMapViewManage.smali",
    "res/layout/main_map_view.xml",
    "smali/com/autonavi/amapauto/MapSurfaceView.smali",
    "smali/com/autonavi/amapauto/view/MapSurfaceViewEx.smali",
    "smali/kc.smali",
    "smali/com/autonavi/amapauto/MainMapActivity.smali",
    "smali/com/autonavi/auto/remote/fill/UsbFillActivity.smali",
    "smali/rv.smali",
    "smali/of.smali",
    "smali/com/autonavi/amapauto/jni/protocol/AndroidProtocolExe.smali",
    "smali/com/autonavi/amapauto/jni/GAdaAndroid.smali",
    "smali/e2.smali",
    "smali/rv$b.smali",
    "smali/com/autonavi/eaglet/surfacemng/ActivityStateManager.smali",
    "smali/com/autonavi/eaglet/surfacemng/PluginManager.smali",
    "smali/kx.smali",
    "smali/com/autonavi/amapauto/ar/camera/CameraManager.smali",
    "assets/res/HmiRes/CarLogo_Style",
  ];
  for (const anchor of anchors) {
    const path = join(sourceRoot, anchor);
    if (!existsSync(path)) failures.push(`代码地图锚点不存在：${anchor}`);
  }

  const methodAnchors = new Map([
    ["smali/rv.smali", [".method public C()I"]],
    ["smali/kc.smali", [".method public v()V"]],
    ["smali/com/autonavi/amapauto/chenmo_float/FloatWindowsManage.smali", [
      ".method public control(Landroid/content/Intent;)V",
      ".method public showMap()V",
      ".method public hideMap()V",
    ]],
    ["smali/com/autonavi/amapauto/chenmo_float/LifecycleCallbacks.smali", [
      ".method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V",
      ".method public onActivityResumed(Landroid/app/Activity;)V",
    ]],
    ["smali/com/autonavi/amapauto/MapSurfaceView.smali", [
      ".method public surfaceChanged(Landroid/view/SurfaceHolder;III)V",
    ]],
    ["smali/com/autonavi/amapauto/jni/GAdaAndroid.smali", [
      ".method public static native nativeOnLayoutChange(III)V",
    ]],
  ]);
  for (const [file, methods] of methodAnchors) {
    const path = join(sourceRoot, file);
    if (!existsSync(path)) continue;
    const content = readFileSync(path, "utf8");
    for (const method of methods) {
      if (!content.includes(method)) failures.push(`代码地图方法锚点不存在：${file} ${method}`);
    }
  }
}

const mapFiles = [
  "docs/code-map/README.md",
  "docs/code-map/基线清单.md",
  "docs/code-map/主链索引.md",
  "docs/code-map/全量清单.md",
];
for (const file of mapFiles) {
  if (!existsSync(join(root, file))) failures.push(`缺少代码地图文档：${file}`);
}

const mapIndex = join(root, "docs/code-map/主链索引.md");
if (existsSync(mapIndex)) {
  const content = readFileSync(mapIndex, "utf8");
  for (const marker of [
    "需求导航：从用户语言到代码",
    "FloatWindowsManage.smali",
    "LifecycleCallbacks.smali",
    "smali/rv.smali",
    "smali/kc.smali",
    "MapSurfaceView.smali",
    "nativeOnLayoutChange(III)V",
    "125%",
    "全屏动态分屏",
    "1/3",
    "2/3",
    "三种视角",
  ]) {
    if (!content.includes(marker)) failures.push(`业务代码地图缺少入口：${marker}`);
  }
}

if (failures.length > 0) {
  console.error("代码地图检查失败：");
  for (const failure of failures) console.error(`- ${failure}`);
  process.exit(1);
}

console.log("代码地图检查通过（源码边界、计数、哈希和关键锚点均符合基线）。");

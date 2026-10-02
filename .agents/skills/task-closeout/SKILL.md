---
name: task-closeout
description: 当用户明确要求 03地图 归档、交接、正式收尾或提交前检查时使用；汇总 APK 身份、代码地图、验证和剩余人工项。
---

# 任务收尾

## 输入

1. 当前目标、实际改动和用户已有改动。
2. 原始 APK 哈希、解包入口、静态检查和构建/运行证据。
3. 当前设备状态、客观阻断、用户目标及已有明确要求，不按步骤重新询问授权。

## 步骤

1. 读取根 AGENTS.md、docs/README.md、docs/testing/验证矩阵.md、docs/progress.md 和命中的代码地图章节。
2. 执行 git status --short --branch，区分本轮改动和既有改动。
3. 复用本轮有效静态证据；新 APK 或新解包工作区需重新核对哈希、包名、版本、签名和解包版本。
4. 若修改了 APK，按顺序执行 Apktool 构建、zipalign、apksigner verify、aapt2 元数据检查；设备在线且任务包含运行验证时继续保留数据安装、启动、窗口和相关日志 smoke。
5. 超出目标的数据丢失、设备中断、隐私外传和实体车辆动作按 docs/security/安全与密钥边界.md 判断；Release、instrumentation 等名称不新增门槛，用户已明确要求的工作直接执行。
6. 更新代码地图/进度/筛选清单中的事实状态，把剩余人工动作压缩为明确触发、预期画面和证据。
7. 文档或 Skill 变更时执行 `node scripts/check-project-docs.mjs`、`node scripts/check-skills.mjs`、`git diff --check`；涉及正式源码入口或代码地图时追加 `node scripts/check-code-map.mjs`。

## 交付

说明改动、实际命令和结果、APK/解包路径是否被忽略、Git 状态、未执行项的客观原因和最小人工确认；不使用“请整体回归”。

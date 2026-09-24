---
name: rule-discovery
description: 当 03地图 施工中出现可复用的 APK、解包、窗口、验证、安全或 AI 协作规律，或同类失败第二次出现时使用。
---

# 规则发现

## 目标

把跨任务可复用的经验沉淀为规则、验证、脚本或 Skill；单次 APK 事实留在进度/施工文档，版本专属入口留在代码地图，不复制其它项目的产品身份。

## 判断

1. 一次性状态、一次实验或单个包结果：写 docs/progress.md 或对应阶段文档。
2. 当前版本的物理入口、资源 ID、窗口坐标或运行证据：写 docs/code-map/ 或专项文档。
3. 固定机械检查：优先补脚本、清单或验证命令。
4. 需要 AI 按任务信号选文档、判断证据等级或处理边界的重复流程：再创建/更新 Skill。
5. 跨项目通用的方法先标为候选；未经去专有化和用户要求，不直接修改其它仓库或模板源。

## 写入要求

每条规则写清触发条件、动作、验证方式和适用边界；保留“静态确认”和“实机确认”的区别。出现旧版本类名、路径、坐标或实验包时，明确标注历史，不让它进入当前主链。

## 验证

修改规则或 Skill 后执行：

1. python3 /Users/q/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/<skill-name>（若命中 Skill）。
2. `node scripts/check-project-docs.mjs`、`node scripts/check-skills.mjs`、`node scripts/check-code-map.mjs`（若对应文件存在）。
3. `git diff --check`。

---
name: skill-authoring
description: 当需要创建、更新、拆分或审查 03地图 项目级 .agents/skills，并同步代码地图、文档路由、验证和进度记录时使用。
---

# Skill 创建

## 先判断

1. 一次性事实写入 docs/progress.md 或阶段文档，不创建 Skill。
2. 固定机械检查写脚本、命令或清单。
3. 只有需要 AI 根据 APK 版本、任务信号和证据选择步骤的重复流程才创建 Skill。
4. 从 03lyrics 或 03desktop 参考时，只保留通用工作流骨架，去掉包名、产品路径、业务协议、设备私有值和其它项目历史兼容。

## 创建步骤

1. 名称使用小写字母、数字和连字符，目录名等于 frontmatter name。
2. 创建 SKILL.md 和 agents/openai.yaml；frontmatter 只保留 name、description。
3. 正文只写触发、必读、判断、边界、验证和交付；不复制项目总纲。
4. 若 Skill 会改变代码地图入口，同步 docs/code-map/README.md、docs/code-map/主链索引.md 和 docs/README.md。
5. 若 Skill 只是协作方法，记录来源和去专有化结果到 docs/architecture/03系列协作资产.md。

## 验证

1. python3 /Users/q/.codex/skills/.system/skill-creator/scripts/quick_validate.py .agents/skills/<skill-name>。
2. `node scripts/check-project-docs.mjs`、`node scripts/check-skills.mjs`、`node scripts/check-code-map.mjs`。
3. `git diff --check`；官方脚本缺少 Python `yaml` 时，保留阻断原因并复用项目 Node 检查。

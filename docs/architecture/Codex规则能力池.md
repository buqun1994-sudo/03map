# Codex 规则能力池

## 1. 定位

能力池只回答“任务信号命中什么入口”，不承载 APK 业务方案。文档负责稳定知识，Skill 负责需要上下文判断的流程，脚本负责固定机械检查，验证矩阵负责证据和人工门禁。

## 2. 能力索引

| 任务信号 | 能力 | 入口 | 反触发边界 |
|---|---|---|---|
| 新对话、基线或范围确认 | 任务入口 | `docs/plans/codex-task-intake-template.md` | 缺少高风险授权时不得安装或修改身份 |
| 定位高德入口、资源或调用关系 | 代码地图 | `.agents/skills/amap-code-map/SKILL.md`、`docs/code-map/主链索引.md` | 历史 `.tmp/` 不能替代正式快照 |
| 发现第二次相同规则或失败 | 规则发现 | `.agents/skills/rule-discovery/SKILL.md`、`docs/architecture/rules/` | 单次事实留在进度或专项文档 |
| 创建或审查项目 Skill | Skill 创建 | `.agents/skills/skill-authoring/SKILL.md` | 固定机械动作优先写脚本 |
| 文档、Skill、源码地图快检 | 仓库自检 | `scripts/check-project-docs.mjs`、`scripts/check-skills.mjs`、`scripts/check-code-map.mjs` | 不替代真实 APK 构建或车机验证 |
| 明确要求归档、交接或提交前检查 | 任务收尾 | `.agents/skills/task-closeout/SKILL.md` | 不默认提交、发布或设备写操作 |
| 能力适合多个新项目 | 模板反馈 | `.agents/skills/template-feedback/SKILL.md` | 未去专有化或未获要求时不改模板源 |
| 多模块独立只读检查 | 多 Agent 编排 | `docs/architecture/multi-agent-workflow.md` | 不并行编辑同一关键文件或处理设备 / 密钥 |

## 3. 维护规则

1. 新增能力前先检索 `docs/`、`.agents/skills/` 和 `scripts/`，避免第二套真值。
2. 版本专属路径、类名、资源 ID、窗口坐标和运行证据只进入代码地图或专项文档。
3. 能力池变更后运行三项仓库自检和 `git diff --check`。
4. 评估 Agent 是否选对入口时，使用 `docs/testing/codex-workflow-eval-cases.md`，不把 Eval 当成业务测试。

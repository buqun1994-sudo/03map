# 文档索引

## 1. 定位

本目录是 `03地图` 的长期上下文包，让新的对话可以快速判断项目目标、工具主链、设备边界、验证入口和人机协作方式。文档只记录稳定事实、阶段决策和可追溯结果；一次性聊天判断不直接升级为长期真值。

## 2. 新对话最小读取

1. 根 `AGENTS.md`。
2. 本文件。
3. 按任务信号读取下面的专项文档。
4. 涉及本机工具或车机时读取 `.codex/local-context.properties`；该文件被 Git 忽略，不能把其中内容复制到提交文档。

## 3. 文档路由

| 任务信号 | 必读文档 |
|---|---|
| 项目正式范围、输入基线、阶段目标 | `docs/architecture/项目长期总纲.md` |
| 上下文继承、人机协作、主动验证 | `docs/architecture/共享基线.md`、`docs/architecture/rules/ai-collaboration.md` |
| ADB、JDK、Android SDK、APKTool、签名工具 | `docs/operations/本地工具链.md` |
| 解包、Smali 修改、重打包、安装和悬浮广播 | `docs/operations/APK工作流.md` |
| 用户路径、480×480 悬浮目标、正式需求 | `docs/product/产品需求基线.md` |
| 权限、签名、第三方 APK、日志和设备数据 | `docs/security/安全与密钥边界.md` |
| 静态检查、构建、安装、启动、窗口和日志证据 | `docs/testing/验证矩阵.md` |
| 任务输入、完成标准、阻断 | `docs/plans/codex-task-intake-template.md` |
| 当前已经发生的事实和未完成事项 | `docs/progress.md` |
| 车机媒体读取、切源和控制能力 | `docs/research/车机媒体能力研究.md` |
| `480×480` 悬浮支线封存与恢复入口 | `docs/archive/480x480支线.md` |
| 当前唯一输入 APK（高德 9.5）的身份、来源差异与施工入口 | `docs/archive/amap-9.5.0.600013.md` |
| 业务需求到源码文件、方法和验证证据的映射 | `docs/code-map/README.md`、`docs/code-map/主链索引.md` |
| 稳定复用规则 | `docs/architecture/rules/README.md` |
| 高德解包源码、代码入口、版本基线和高价值锚点 | `docs/code-map/README.md`、`docs/code-map/主链索引.md` |
| 正式反编译源码快照 | `source/amap-9.5.0.600013/`、`docs/code-map/基线清单.md` |
| 03 系列协作资产和 Skill 来源 | `docs/architecture/03系列协作资产.md`、`.agents/skills/` |
| 仓库自检 | `scripts/check-project-docs.mjs`、`scripts/check-skills.mjs`、`scripts/check-code-map.mjs` |
| Codex 能力池、多 Agent 和工作流评估 | `docs/architecture/Codex规则能力池.md`、`docs/architecture/multi-agent-workflow.md`、`docs/testing/codex-workflow-eval-cases.md`、`docs/testing/codex-workflow-scorecard.md` |

## 4. 写作口径

1. 产品文档写用户目标、正式范围、层级语义和验收结果。
2. 架构文档写输入基线、主链、owner、边界和不变量。
3. 代码地图写“业务需求 → 逻辑主链 → 精确文件/方法 → 证据等级”，不机械罗列所有混淆类。
4. 运维文档写可复制的工具调用和本机配置入口，不写真实密钥或设备私有值。
5. 验证文档写命令、证据和客观阻断；进度文档只写当前正式状态和未完成项。
6. 实验记录只有在能解释当前基线、业务逻辑或源码入口时才保留；其余不作为新对话入口。
7. 与 `03lyrics` 共用的方法通过相对链接引用，项目专有事实只写在 `03地图`。

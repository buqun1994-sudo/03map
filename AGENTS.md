# AGENTS.md

核心：用中文沟通；磁盘中的实际文件、设备输出和工具结果是工程真值。

## 1. 项目身份

1. 本仓库是 `03地图`，面向 iCAR 03 车机壁纸状态下的全屏动态分屏地图导航施工。
2. 当前正式主线以已保存的高德 `9.5.0.600013`、125% 全屏 APK 为输入基线，目标是启动即进入全屏动态分屏：内容区约占 `1/3`，地图区约占 `2/3`。
3. 历史 `480×480` 悬浮地图已经封存，只能作为历史证据和独立恢复支线；不得把它写成当前默认布局、验收尺寸或施工入口。安装包身份、输入基线和源码入口以 `docs/archive/amap-9.5.0.600013.md`、`docs/code-map/基线清单.md` 和 `docs/code-map/主链索引.md` 为准。
4. `03lyrics` 和 `03desktop` 是相邻但独立的项目。不要把地图 APK 工作区、地图窗口控制或车机地图事实写进它们的源码。

## 2. 新对话入口

1. 第一轮先读取本文件和 `docs/README.md`。
2. 任务涉及 APK、ADB、车机或签名时，再读取 `docs/operations/本地工具链.md`、`docs/operations/APK工作流.md`、`docs/security/安全与密钥边界.md` 和 `docs/testing/验证矩阵.md`。
3. 需要理解人机协作和上下文继承时，读取 `docs/architecture/共享基线.md`；其中的链接指向 `03lyrics` 已验证的通用规则。
4. 每次开工前先执行 `git status --short --branch`，保留用户已有改动。
5. 原始 APK、签名材料、截图和日志放在仓库外或被 `.gitignore` 忽略的本机目录，不能提交；当前正式输入 APK 归档在 `apk-archive/9.5.0.600013/`，用户提供的上游 APK 只作为基线差异证据。`source/amap-9.5.0.600013/` 是唯一正式代码入口，不能把其它临时解包目录当作源码。
6. 默认先做静态检查和最小构建，再在安全门禁内执行保留数据覆盖安装、启动和最小日志检查；用户当次要求优先。历史悬浮广播只在明确研究 `480×480` 封存支线时使用，不作为当前主线步骤。

## 3. 物理边界

1. source/amap-9.5.0.600013/：当前 9.5、125% 全屏输入基线的 APKTool 解包源码快照；Manifest、Smali、资源、assets、lib 和 unknown 以磁盘内容为真值，不放原始 APK、DEX 或构建目录。
2. `docs/`：产品、架构、工具链、安全、验证、代码地图、研究、计划和进度文档；职责和唯一事实 owner 见 `docs/README.md`。
3. `.codex/`：可提交的本机配置说明；`local-context.properties` 只保存本机路径和设备别名，永不提交。
4. `.tmp/`、`apk-work/` 和仓库外工作目录：APK 解包、重打包和运行证据临时区，不进入 Git。
  `apk-archive/9.5.0.600013/` 是当前唯一正式本地归档，保存输入 APK 与必要身份凭据，被 Git 忽略；清理临时产物时保留该目录。旧实验目录不再作为现存源码或施工入口。
5. 后续若建立 Android 壳应用，必须在长期总纲中先登记源码目录、包名、组件 owner 和验证入口，再开始施工。

## 4. 工具链主链

1. `adb` 负责设备发现、安装、启动、截图、窗口查询和日志读取；广播仅按专项文档和当次授权使用。
2. `apktool` 负责资源、Manifest 和 Smali 工作副本的解包与重打包。
3. `baksmali/smali` 负责需要精确控制的 DEX 反汇编、汇编和校验。
4. `aapt/aapt2` 负责包名、入口、权限和资源检查；`zipalign` 负责对齐；`apksigner` 负责签名与证书验证。
5. 工具由 Mac 本地直接调用，不把 ADB、APKTool 或签名材料复制进仓库，也不把 ADB 做成正式运行依赖。
6. 如果进行 APK 打包，默认必须采用压缩原生库的方式：施工副本的 `apktool.yml` 不得保留 `doNotCompress: - so`，最终 `lib/**/*.so` 必须使用 Deflate；正式源码快照中的历史不压缩配置只作为输入事实，不得照搬到施工回编。

## 5. 安全与人工门禁

1. 禁止提交真实 APK、私钥、keystore、口令、token、完整设备日志、截图、个人绝对路径和车机地址。
2. 修改包名、签名身份、安装 Release、卸载、清除数据、降级安装、重启车机、暂停无障碍或运行高风险 instrumentation 前，必须在当次任务中明确授权。
3. 普通开发默认只做保留数据的测试包覆盖安装、启动和最小日志检查；安装失败时先保留证据，不通过卸载或清数据绕过问题。
4. 车控是正式产品目标；允许在合法授权和研究证据支持下，通过车机导出服务、Binder、`CarPropertyManager` 或其它可验证的车机入口接入。不得连接 CAN、使用 root 或无障碍绕过系统权限；车控写入必须在当次明确授权、车辆处于可控状态、单目标变更、状态回读、可逆恢复和日志留证条件下进行。
5. 对第三方 APK 的修改必须在用户拥有合法使用和测试权的范围内进行；静态修改不能被描述成绕过服务端授权或破解商业校验。

## 6. 人机协作

1. 用户用自然语言描述目标，AI 负责拆解工具调用、执行修改、构建、在安全门禁内安装启动和证据采集；不要求用户手工重复机械步骤。
2. 每轮先说明当前动作和可观察结果，完成后报告实际命令、验证结论和阻断原因。
3. 只有出现无线调试断开、系统授权弹窗、需要用户选择设备或需要确认高风险动作时才暂停请求用户介入；用户明确提出其它验证方式时按用户要求执行。
4. 同一目标的独立检查可以批量执行；依赖关系、文件修改、安装和验证必须顺序执行。
5. 产生稳定重复经验时，更新 `docs/architecture/rules/` 或对应专项文档；一次性判断不升级成长期规则。
6. 任务完成后按 `docs/testing/验证矩阵.md` 逐项汇报，不用“请整体试一下”代替具体验证。

## 7. 项目 Skill 路由

1. .agents/skills/amap-code-map/SKILL.md：定位或记录高德当前版本高价值源码入口时使用。
2. .agents/skills/rule-discovery/SKILL.md：发现跨任务稳定规则、重复失败或模板候选时使用。
3. .agents/skills/skill-authoring/SKILL.md：创建、更新或审查本项目 Skill 时使用。
4. .agents/skills/task-closeout/SKILL.md：用户明确要求归档、交接、正式收尾或提交前检查时使用。
5. .agents/skills/template-feedback/SKILL.md：判断能力是否去专有化并回流模板源时使用；未经用户要求不修改其它仓库。

## 8. 共享协作基线

本项目沿用 `03lyrics` 已验证的上下文读取、源码真值、分层施工、主动验证和收尾口径，但只继承通用方法，不继承 03歌词的包名、业务状态或 UI 事实：

- [03lyrics 根约束](../03lyrics/AGENTS.md)
- [03lyrics 文档入口](../03lyrics/docs/README.md)
- [03lyrics AI 协作规则](../03lyrics/docs/architecture/rules/ai-collaboration.md)
- [03lyrics 安全边界](../03lyrics/docs/security/安全与密钥边界.md)
- [03lyrics 本地开发环境写法](../03lyrics/docs/operations/本地开发环境.md)
- [03lyrics 验证矩阵写法](../03lyrics/docs/testing/验证矩阵.md)

仓库自检入口：`node scripts/check-project-docs.mjs`、`node scripts/check-skills.mjs`、`node scripts/check-code-map.mjs`。这些检查只读取当前工作树，不安装 APK、不连接设备、不改写源码。

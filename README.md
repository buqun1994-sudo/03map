# 03地图

面向 iCAR 03 车机的正式全屏动态分屏地图施工仓库。

当前正式输入基线为高德车机版 `9.5.0.600013`（`com.autonavi.amapautolite`）的 125% 全屏 APK；当前施工目标是启动即进入全屏动态分屏，默认内容区约 `1/3`、地图区约 `2/3`。输入身份见 [高德 9.5 基线清单](docs/code-map/基线清单.md)，业务到源码的定位见 [主链索引](docs/code-map/主链索引.md)。历史 `480×480` 悬浮地图已封存。

## 如何使用

以后可以直接在 Codex 对话中描述目标，例如：

- “分析这个 APK 的包名、入口和全屏分屏实现。”
- “从当前 9.5 输入基线定位 UI 层、地图层或启动链的施工文件。”
- “把地图改成启动即进入全屏动态分屏，并验证三种视角的相机焦点。”
- “抓取启动崩溃日志，定位签名校验、资源、Surface 或地图服务问题并继续修复。”

AI 会直接调用本机 `adb`、`apktool`、`baksmali/smali`、`aapt2`、`zipalign` 和 `apksigner` 完成机械操作；只有设备连接、系统弹窗、缺失输入或超出已明确目标的具体个人风险需要用户介入。

## 文档入口

- [新对话和文档路由](docs/README.md)
- [项目长期总纲](docs/architecture/项目长期总纲.md)
- [产品需求基线](docs/product/产品需求基线.md)
- [共享上下文与人机协作基线](docs/architecture/共享基线.md)
- [本地工具链](docs/operations/本地工具链.md)
- [APK 工作流](docs/operations/APK工作流.md)
- [安全与密钥边界](docs/security/安全与密钥边界.md)
- [验证矩阵](docs/testing/验证矩阵.md)
- [当前进度](docs/progress.md)
- [高德 9.5 输入 APK 归档](docs/archive/amap-9.5.0.600013.md)
- [高德业务代码地图](docs/code-map/README.md)

## 代码地图与协作资产

当前可版本化正式源码位于 `source/amap-9.5.0.600013/`；原始输入快照由 Git 提交 `ac6033c` 固定。代码地图不机械罗列混淆类，而是把业务需求映射到逻辑主链、精确文件/方法、证据等级和下一步验证；03 系列协作资产见 [提取记录](docs/architecture/03系列协作资产.md)。

仓库快检：`node scripts/check-project-docs.mjs`、`node scripts/check-skills.mjs`、`node scripts/check-code-map.mjs`。

## 当前状态

统一车型控制与布局编辑已完成：普通分页为车辆信息／歌词／投影，控制中心是独立覆盖层；统一语义目录、schema2 车型 JSON、只读自检和执行门禁，控制中心／控制卡／任意或空 Dock 编辑及独立配置导入均已接入。五模块 2424 项有效回归（2381 本次执行、43 有效缓存）、Lint 无错误、正式签名和同包模拟器验证通过，实际安装包回拉哈希与交付包一致。唯一交付包、完整结果、进程恢复边界与剩余手测见[统一车控与布局编辑验证](docs/testing/统一车控与布局编辑验证-20261015.md)。本机只保留[最新签名 APK](<apk-work/9.5.0.600013/latest/signed.apk>)及配套报告／配置，默认后续成功构建覆盖旧版，只有用户明确要求才单独保存版本；具体见[产物保留规则](<docs/operations/APK工作流.md#4-产物保留与覆盖>)。当前规范见[产品需求基线](docs/product/产品需求基线.md)与[设置项清单](docs/product/设置项清单.md)。用户车机离线，本轮未发现、连接或操作实车。

当前输入 APK 和必要身份凭据保存在被忽略的 `apk-archive/9.5.0.600013/`；历史 `480×480` 悬浮记录不再作为当前目标。实验可在 `apk-work/9.5.0.600013/` 进行，但提交前必须将 Java / Smali / Manifest / 资源改动回写 `source/`，并从 Git 源码重新构建；APK、DEX 等生成物按现有忽略规则管理，凭据与含隐私证据按 [个人风险口径](docs/security/安全与密钥边界.md) 处理，脱敏截图或日志摘要可按需入库。构建入口：`bash scripts/build-content-apk.sh`；仅签名验证通过的 `signed.apk` 可交付，缺签名材料时构建失败。

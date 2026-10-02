# 内容 UI · 独立 Android Compose 预览

这是第一层**原生 Android** UI 预览宿主，不是网页，不是高德改包，也不代表实车能力已接通。所有可见读数、歌曲、命令回流均为显式预览数据。无设备连接、网络权限、真实车控、媒体服务或系统音量/亮度写入。

## 第三层地图宿主

`:map-host` 将同一UI与Binding挂到正式地图Activity，不新建应用。UI／runtime／host的唯一可维护Kotlin入口已迁入 `source/amap-9.5.0.600013/content-compose/`；本工程各库直接编译它，原厂资源从正式 `res/` 受控导出。第一层`:app`仍只依赖UI与模拟Controller，不能作为地图交付包。

正式地图包只从仓库根目录执行 `bash scripts/build-content-apk.sh`，不是本工程`:app:assembleDebug`。普通Activity宿主、Android9、密度隔离及第二层能力回归入口为 `:map-host:testDebugUnitTest` 等任务；包级依赖、资源／DEX与签名检查见第三层验证记录。车机安装与真实状态回流仍为后续同包实测。

## 第二层接入

本轮新增 [`:content-runtime`](content-runtime/README.md)，将正式既有 Store / Port / Adapter 映射到第一层 `ContentUiState` 和 `ContentEvent`，提供 `BoundContentPanel` 宿主入口。仅接入已有声明能力，不建立新的车辆接口。`:app` 保持纯模拟且不依赖该模块；第三层挂载和正式签名构建由`:map-host`及仓库构建脚本负责，设备连接、安装和真实写入本轮未执行。第二层能力和验证证据见 [第二层验证记录](../docs/testing/Compose第二层能力接入验证记录.md)。以下第一层说明仍只适用于独立预览 `:app`。

## 模块与身份

| 模块 | 责任 |
|---|---|
| `:app` | 独立包 `com.icar03.content.preview`；`MainActivity` 绑定生命周期；`PreviewController` 生成场景并管理可取消的模拟异步任务 |
| `:content-ui` | namespace `com.icar03.content.ui`；纯 Kotlin `ContentUiState` / `ContentEvent` 契约；无业务接口的 `ContentPanel` / `ContentTheme` |

UI 库不依赖宿主模块、不读取车辆或 Android 系统服务；同一呈现已由第二层接入和第三层地图宿主消费，复用正式Adapter／Port而不复制。以下预览交互与未做项仅描述独立`:app`，不是第三层正式包当前状态。

## 构建

固定版本：AGP **8.9.2**、Gradle **8.11.1**、Kotlin 与 Compose compiler 插件 **2.1.0**、Compose UI/Foundation/icons **1.7.6**、Material3 **1.3.1**、Activity Compose **1.9.3**；compileSdk/targetSdk **35**，minSdk **28**，JDK **17**。所有依赖使用明确版本，没有动态版本。该组合按本地工具链缓存选择，不以“最新版”为目标。

1. 设置 JDK 17 的 `JAVA_HOME`；安装 Android SDK Platform 35。
2. 在被忽略的 `local.properties` 配置 `sdk.dir`，或设置 `ANDROID_HOME`。可共享命令使用变量或相对路径；本机配置按现有忽略规则管理。
3. 在本目录运行：

```sh
./gradlew :app:assembleDebug
./gradlew :app:testDebugUnitTest :content-ui:testDebugUnitTest
./gradlew :app:lintDebug :content-ui:lintDebug
```

首次构建可能需要下载固定依赖，已缓存后可加 `--offline`。测试需要的 Robolectric SDK 也可能首次下载；离线缺依赖不应报告为测试通过。产物位于 `app/build/outputs/apk/debug/`，仅是新身份的调试预览包，不是地图交付包。初建预览层时只做本机验证，未运行 install/connected；后续任务需要设备测试时可执行，不继承该轮的范围限制。

## Android Studio 预览

直接打开本目录，Gradle Sync 后进入 `../source/amap-9.5.0.600013/content-compose/ui/com/icar03/content/ui/ContentPanel.kt`。当前浅色默认态以 640×1080 原型的等距规则为基准：20 边距、四个 135 宽列、20 列距和行距，顶部时间在 320 几何中线，两条纵向亮度/音量控件，(20,832)–(620,952) 的一体式媒体卡与 (12,968)–(628,1068) 的浮层 Dock。车锁独占更宽的左侧热区，各卡与 Dock 用柔和投影。深色候选沿用相同构图，采用炭黑层级与原厂夜间座椅图标；各表面的局部阴影向下偏移3dp、柔化5dp，不靠默认elevation成像。媒体播放与下一首各80×80dp，保留12dp间隔。来源区现为96×120dp，图标42dp，与下一首保留12dp留白和细分隔线；来源浮层右对齐媒体卡，宽200dp，五行各80dp，距离媒体卡顶边16dp。测试场景弹层中提供深色模式开关。本轮双主题关闭／展开截图均已实际查看，来源选择、外部点击关闭和不可用／待确认语义通过本机测试；车机密度与触感仍待验证。

**640×1080px 不等于 640×1080dp**。当前自动截图以 Robolectric Android 14、mdpi (160dpi)、640×1080dp 生成 640×1080px 同画布参考帧，用于检查原型等间距和固定锚点；在目标车机系统密度下仍需另做尺寸、字形、阴影与热区复核。截图来自实际 AndroidComposeView 的绘制，不用网页或手画图冒充。

## 交互与状态边界

- 顶栏：静态示例时间、车内温度和无单位里程；无数据时读数为 `--`。
- 四种控制：车锁 0/1，通风/加热/按摩 0–3 档，当前默认态通过 Dock 暴露可达入口；显示目标态不等于真实确认，待确认期间同一控制不重复发起。
- 两个纵向连续填充控件：屏幕亮度和媒体音量；点按/拖动预览位置，在松手时提交一次模拟事件。实际亮度、系统音量不改变。
- 媒体卡：示例音轨、播放/暂停、下一首、来源入口；没有虚构播放进度或歌词。
- 来源：蓝牙音乐、爱趣听、网易云音乐、USB音乐、本机音乐，使用独立预览弹层。
- Dock：车锁、三类座椅控制、设置入口和快捷页入口；不额外铺设工程说明条。
- 主题：测试场景弹层的开关控制独立预览浅／深主题；只改变模拟呈现，不改变高德主题链；参考画布深色已实际审图，目标密度仍待验证。
- 测试场景：日常、无数据、能力不可用、失败回弹、待确认、播放、来源菜单。入口位于内容底部，窄屏可滚动到达。
- 失败场景：900ms后恢复原确认值并明确反馈；成功场景900ms后模拟确认。待确认场景是冻结样本，不冒充运行中的真实命令。
- 切换场景、Activity `ON_STOP`、离开 Composition 均取消旧任务并撤销 target；代数 token 防止过期回调污染新场景。不捕获吞掉 `CancellationException`。恢复前台不重播已取消命令。

状态不持久化，重建 Activity 回到默认预览。`PreviewController` 的 dispatch 由主线程串行调用。可见图标使用正式源码已登记的本机车机原厂 Vector，拷贝前逐项校验 `deployedSha256`，身份映射见 `content-ui/src/main/assets/oem-icon-provenance.json`；仅图标资源进入独立宿主，未复制车控能力或接口。中文沿用 Android 系统 sans-serif fallback，未声称嵌入专用字体。

## 验证与测试

`PreviewControllerTest` 覆盖确认前不改变实际值、重复点击防重、失败回滚、跨场景取消、生命周期停止/恢复、不可用操作屏蔽、滑条范围与NaN、来源确认和主题页面保留。`ContentModelsTest` 覆盖无数据边界、target/actual分离、场景和来源清单。

Robolectric/Compose 渲染测试使用 Android 14 / mdpi，覆盖 640×1080 的浅深默认、无数据和来源展开态。PNG 输出到被忽略的 `content-ui/build/frames/`；执行 `./gradlew :content-ui:testDebugUnitTest --tests '*PrototypeRenderTest'` 可重新生成。测试对真实 AndroidComposeView 绘制产生截图，并检查时间中线、媒体卡与 Dock 的四边锚点、较大锁区、96×120dp来源热区、浮层边界、五来源事件和外部点击关闭。它不等于车机 Surface 合成、真实投影和字体验收。

实际命令、测试与视觉审查状态见 [本轮验证记录](../docs/testing/Compose预览宿主验证记录.md)。当前双主题关闭／展开截图已实际查看；自动测试不证明主观美观，也不代替用户审美确认和目标车机验收。

## 明确未做

没有高德集成、地图占位或假地图；没有连接车机重新提取资源；没有 Binder、CarPropertyManager、系统设置写入或真实媒体接口；没有车辆连接/安装；没有生产签名和 Git 提交。正式产品语义、视觉与个人风险仍由仓库主线文档负责，本预览不反向覆盖。

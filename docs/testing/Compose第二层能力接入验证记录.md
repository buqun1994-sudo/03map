# Compose 第二层能力接入验证记录

## 范围与诊断

用户要求完成 UI 重构第二层，接入已有能力，未声明能力暂不接入。本轮把第一层纯 Compose 呈现与正式 `ContentStore / Port / Adapter` 接通为可复用 Android library；不做第三层高德 APK 注入。第一层预览 app 保留模拟数据，不转成真实车控宿主。

初始源码诊断：第一层网格包含重复静态通风示意，顶栏硬编码星期和里程单位；Dock 不区分各控制能力；没有快捷页回歌词的路径；纯模拟目标回流不能拿来确认真实命令。既有正式业务层已有车辆读数、四控制、媒体与来源、亮度／音量入口，不能复制 Adapter 或增加另一套状态 owner。

## 已修复

- 新增 [`:content-runtime`](../../ui-preview/content-runtime/README.md)，精确引用正式八类最小 Java 闭包，不包含旧 Renderer、地图 Runtime、地图几何或 Lottie。库 Manifest 声明现有媒体监听组件、两项有限包可见性和已有系统能力所需权限；不自动授权。
- `ContentUiMapper` 按各字段有效性投影时间、主题、温度、电量、原始里程、充电、车辆和媒体。未知不显示示例读数，电池图标消费真实有效 SOC 与结构化充电状态；媒体播放、下一首和来源分别门禁。
- `ContentBinding` 复用 Store 命令和 SystemPort，不制造来源 target 或模拟成功；车辆与媒体目标仅来自 Store。主线程串行意图、后台快照投影、单目标待确认、断连／拒绝／超时反馈沿用原主链。
- `BoundContentPanel` 按 STARTED 生命周期订阅；默认 Shared 不销毁调用方 Store，Owned 仅接管唯一生命周期且不能对同一 Store 动态切换。停止时取消回调、关闭弹层、禁用命令并清理媒体引用，不重放历史操作。
- 真实模式移除重复假卡，只显示四控制、两系统滑条，Dock 共用状态；HorizontalPager 保留快捷／歌词两页，歌词仍空态。设置点击仅反馈未接入，不打开预览场景或主题开关。
- 交叉审查修复系统滑条失败仍保留草稿、旧设置反馈遮蔽新车控失败、缺音量写权限仍宣告可操作、连续系统写入旧回读干扰新反馈。既有服务可达性用于来源能力，不把当前 MediaSession 存在当作来源切换条件。
- 真实封面通过 UI slot 呈现；播放中背景使用低分辨率 CPU 柔化副本，兼容 API28，不依赖仅高版本有效的模糊 API，也不回收 Adapter 原图。

## 已验证

本机使用已配置的 JDK17、Android SDK35；无 ADB 或设备命令。

首次整体命令实际退出码 0：

```sh
./gradlew --offline :app:assembleDebug :app:testDebugUnitTest :app:lintDebug \
  :content-ui:assembleDebug :content-ui:testDebugUnitTest :content-ui:lintDebug \
  :content-runtime:assembleDebug :content-runtime:testDebugUnitTest :content-runtime:lintDebug --console=plain
```

该次 `BUILD SUCCESSFUL`，三模块 build、unit test 和 Lint 均通过；Lint 通过不等于零警告。后续电池映射、连续写入和实际绑定集成探针的最终结果在下方另行记录，不拿先前成功结果代替后续源码验证。

正式资源完整性检查通过：57项、7份Lottie，来源与包内哈希一致；`check-project-docs`、`check-skills`、`check-code-map` 首次均通过。首次 `git diff --check` 查出新增文档末尾多余空行，已修复，最终检查结果另记。

双主题实际 Android Compose 渲染的接入态无数据／独立来源能力帧已由 `read_image` 查看，四真实控制、媒体和 Dock 均可见，不存在重复占位卡；失败滑条提交后语义仍为实际回读值，横向翻页能到歌词。截图来自 Android14 / mdpi 本机宿主，不是目标车机。

## 最终结果

最终重复上述完整三模块命令，包含按摩未知开关／残留档位有效性约束，退出码0，`BUILD SUCCESSFUL`。JUnit XML核对共42项、0失败、0错误、0跳过：预览控制器11，纯模型4，UI双主题渲染8，Runtime状态／命令14，真实Port边界3，实际BoundContentPanel双主题集成2。后者经正式Store与显式Port替身验证点击→待确认→回读确认、来源独立能力与非乐观选择，以及真实Composition释放不销毁共享Store。

集成测试初次19项中2项失败，发现来源按钮在能力false时仍enabled；已修为接入态按sourceAvailable禁用，第一层仍允许查看不可用菜单。期间一次独立Lint读取到正在编辑的UI方法签名，出现瞬态编译失败；最终完整构建与Lint均覆盖并通过，没有将失败运行计作通过。

最终关闭／展开四帧均为640×1080实际AndroidComposeView输出并已用read_image查看，文字未挤占操作区、五来源完整、四控制状态与原型固定媒体／Dock区域可辨：

- [浅色关闭](../../ui-preview/content-runtime/build/frames/640x1080-light-bound-ports-closed.png)
- [浅色展开](../../ui-preview/content-runtime/build/frames/640x1080-light-bound-ports-sources.png)
- [深色关闭](../../ui-preview/content-runtime/build/frames/640x1080-dark-bound-ports-closed.png)
- [深色展开](../../ui-preview/content-runtime/build/frames/640x1080-dark-bound-ports-sources.png)

图中“端口替身音轨”明确为测试输入，不是现场音乐或车辆读数；这些帧用于第二层连接契约和参考构图，不代替实车。UI46/46原厂资源逐项核对部署SHA和来源字段，正式57/57资产保持原身份。第一层预览APK的aapt2权限回读只有AndroidX自带动态接收器权限，没有车辆、WRITE_SETTINGS、MODIFY_AUDIO_SETTINGS或通知监听能力，确认runtime未合并进第一层app。

项目文档、Skill、代码地图与正式资源检查，以及`git diff --check`最终复核通过。未把产物或截图加入正式源码；未执行Git提交。

## 待验证

- 第三层高德地图 Activity 的 Compose owner、密度隔离、资源与 DEX 注入、正式签名构建，以及同一候选包的首帧、双 Surface 和地图手势。
- 目标 Android9 的真实车机服务绑定、媒体授权、来源切换、系统权限与音频路由；自然出现的充电／预约状态、驾驶视距及触摸手感。
- 真实车辆／系统写入按用户目标验证状态回流与恢复，具体个人风险见 [安全与密钥边界](../security/安全与密钥边界.md)，已有明确要求不重复授权。本机 Port 替身、编译及像素断言均不是实车闭环证据。
- 当前响应式与目标密度范围沿第一层剩余门槛，本轮不宣称所有窄屏／字体放大和整套视觉验收完成。

## 明确未做

没有接入空调控制、歌词数据源、投屏、天气、档位或其他未声明功能；不填假状态。未连接 ADB、安装、卸载、清数据、执行 instrumentation 或真实车控／系统写入。未改包名、签名身份、地图几何、两条 Surface、高德主题来源或正式 Manifest；未生成新的地图 APK、未提交 Git。已有工作树改动保留。

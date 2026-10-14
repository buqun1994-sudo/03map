# Android 9 与 Android 11 全屏地图兼容诊断研究

日期：2026-10-14

对象：高德 `9.5.0.600013`，包名 `com.autonavi.amapautolite`，正式输入 APK SHA-256 `dfb763c9b9ab42d6096e6c988578937bfbaaa73436db22f99efe37503d54f3f5`

结论状态：静态确认；独立兼容探针已构建并在本地 API 30 模拟器安装启动；03T 的窗口、SurfaceFlinger 和运行日志尚未取得

## 1. 结论先行

Android 11/API 30 不会自动废止旧 APK 的沉浸式标志，也不能仅凭“03T 是 Android 11”断言所有未来地图包都会失效。当前基线的 `targetSdk=24`、`minSdk=21`；`setSystemUiVisibility(0x1706)` 在 API 30 已被标记为过时，但旧 target 仍有兼容路径。此时直接提升 target、全面改用 `WindowInsetsController`、改用 `TextureView` 或复制另一份 APK 的窗口代码，都不是有证据支持的通用修复。

当前最需要区分的是五层：

1. **窗口请求：** 主题、`FLAG_FULLSCREEN`、沉浸式系统栏标志是否真的发出。
2. **任务与窗口边界：** Activity 是否拿到整块 display，是否被车机作为嵌入窗口、freeform 或真正的多窗口管理。
3. **Insets 与 Android View：** 根布局、`map_surface`、`ui_surface` 的实际 frame 是否覆盖预期区域。
4. **独立 Surface：** Surface 的 layer、crop、buffer、Z 序是否跟随 View 布局。
5. **native 地图视口：** `nativeOnLayoutChange()` 和 `nativesurfaceChanged()` 最终收到的宽、高、DPI、Surface 代际是否正确。

“全屏失效”命中哪一层，决定必须改什么。只看到顶部或底部有系统条，和地图 Surface 仍以旧尺寸绘制，是两类问题；Activity 显示为 `RESUMED` 也不能证明画面已经铺满物理屏。

## 2. 当前基线的真实全屏入口

| 层 | 正式源码入口 | 静态事实 | 目前边界 |
|---|---|---|---|
| 主题首帧 | `source/amap-9.5.0.600013/res/values/styles.xml` 的 `Theme.Background`；Manifest 的 `@style/Theme.Background` | `Theme.Background` 设置 `android:windowFullscreen=true`，同时设置 starting background 和无标题 | 只能证明主题请求隐藏状态栏，不能证明导航栏、任务边界或 Surface 已铺满 |
| 保存的状态 | `smali/com/autonavi/amapauto/jni/GAdaAndroid.smali` 的 `saveScreenFlag(Z)`、`loadScreenFlag()`、`updateFullScreenBySave(Activity)` | 使用 `auto_config/FLAG_FULLSCREEN` 保存状态；`setWindowScreenFlag()` 只对 Window 添加／清除 `0x400`，即 `FLAG_FULLSCREEN` | 这是状态栏 Window flag，不等于导航栏隐藏，也不等于 edge-to-edge |
| 沉浸式系统栏 | `smali/pk$f.smali` 的 `j(Activity, Z)`、`smali/z7.smali` 的 `g(Activity, Z)`；同类入口还包括 `smali/j.smali`、`smali/dj.smali` | 全屏时设置 `0x1706`，包含 `FULLSCREEN`、`HIDE_NAVIGATION`、`LAYOUT_FULLSCREEN`、`LAYOUT_HIDE_NAVIGATION`、`LAYOUT_STABLE`、`IMMERSIVE_STICKY` | 旧 API 的最终结果受 WMS、SystemUI 和车机 OEM 策略影响，必须读运行时 `sysUiFl`／窗口 frame |
| API 30 分支 | `smali/kc.smali` 的 API 判断和 `smali/jc.smali` 的桥接方法 | 当可选配置 `0xea61` 为真且 SDK≥30 时调用 `Window.setDecorFitsSystemWindows(true)`，随后通知主题配置 | 这是当前最值得核对的 API 30 条件分支；静态代码不能证明 03T 上该可选项为真，也不能证明它造成了故障 |
| 多窗口门禁 | `GAdaAndroid.updateFullScreenBySave(Activity)`；`GAdaAndroid.isInMultiWindowMode(Activity)`；`smali/wj.smali` | 当可选配置 `0x2749` 为真且 `Activity.isInMultiWindowMode()` 为真时，保存状态路径会调用 `setWindowScreenFlag(false)` | 03T 若把 Activity 放入系统多窗口或嵌入任务，可能主动走这条关闭全屏路径；需要窗口证据 |
| 应用内分屏 | `res/layout/main_map_view.xml`、`smali/SplitPanelController.smali` | 当前是一个 Activity 内的根布局、统一面板和两条 Surface，不等于 Android 系统 split-screen | 面板宽度、translation、Surface layer/buffer、native viewport 仍要分别验证 |

主题定义的静态位置是 [styles.xml](../../source/amap-9.5.0.600013/res/values/styles.xml) 的 `Theme.Background`；Manifest 还声明 `resizeableActivity=false`、两个 `MainMapActivity` 入口和 `screenOrientation=user`。基线身份和 `targetSdk=24` 见 [基线清单](../code-map/基线清单.md)。

## 3. API 28 到 API 30 哪些变化真的相关

### 3.1 API 30 的新窗口 API不等于旧 API 被禁用

API 30 增加了 `WindowInsetsController`、`Window.setDecorFitsSystemWindows(boolean)`、`WindowMetrics` 和 Insets 动画接口；`View.setSystemUiVisibility()` 及部分旧 Insets 接口被标记为 deprecated。这表示新代码应有清晰的 Insets owner，不表示 API 30 会拒绝一个 `targetSdk=24` APK 的旧沉浸式调用。

`setDecorFitsSystemWindows(true)` 的语义是让 decor 内容按系统窗口适配；它不是“隐藏系统栏”开关。`false` 也只是允许内容延伸到系统栏后方，仍需要单独请求隐藏系统栏。当前代码把 `true` 放在 SDK≥30 的可选分支中，因此必须先确认：

- 03T 上可选项 `0xea61` 是否打开；
- 调用前后根 View 的 frame、Insets 和 `getWindowVisibleDisplayFrame()` 是否变化；
- 同一时间 `sysUiFl` 是否仍包含 `HIDE_NAVIGATION` 和 `FULLSCREEN`；
- 全屏按钮或 Activity 重获焦点后，是否有其它路径再次写入系统 UI flags。

### 3.2 API 29/30 的 Insets、手势导航和多窗口会暴露旧假设

Android 10 引入手势导航相关 Insets 和 multi-resume；API 30 继续完善窗口测量和 Insets 控制。它们可能使以下旧假设失效：

- `onResume()` 就代表唯一可见窗口；
- `hasWindowFocus()` 就代表地图正在显示；
- 父 View 的宽高就是物理 display 的宽高；
- 隐藏状态栏就等于隐藏全部系统栏；
- Activity 不是多窗口，就一定占整块物理 display。

这些变化需要运行时窗口、Insets 和 View frame 证据。它们不能直接推出必须提升 targetSdk。

### 3.3 SurfaceView 的关键边界是独立合成和 target 门槛

应用内的两条 `SurfaceView` 是独立于普通 View 树的合成层。父容器的 `LayoutParams` 或 `translationX` 发生变化，只能证明 Java View 布局变化；不能证明 SurfaceFlinger layer 的位置、crop、buffer 或 native/EGL viewport 已同步。

API 30 对 `SurfaceView.setZOrderOnTop()` 增加了与 R target 相关的动态行为边界。对于当前 `targetSdk=24` 的兼容代码，不能假设 Surface 创建或附着后再调用 Z 序设置会实时改变已存在的 Surface。需要在创建／附着前决定层级；若业务必须切层，应采用经过 API 28–30 实机验证的 Surface 重建路径。`setZOrderMediaOverlay()` 不能无证据地类推为同样的动态契约。

### 3.4 非 SDK 接口和 OEM 图形栈不能靠版本标签推断

Android 9 起非 SDK 接口限制逐步加强；target 小于 30 不等于反射的 SurfaceControl、私有 Binder、libgui 或厂商图形接口永久可用。只有出现 `hiddenapi`、`NoSuchMethod`、`IllegalAccess`、Binder 或 EGL 错误，并且能对应到具体调用，才把它列为 API 兼容修复。

同样不能仅凭“Android 11”断言 BLAST、HWC overlay、SurfaceFlinger crop 或驱动改变了行为。需要同包、同布局、同操作窗口的 layer/buffer 和日志证据。

## 4. 命中不同证据后，分别需要什么改动

| 证据命中 | 典型表现 | 必要改动 | 现在是否能直接改 |
|---|---|---|---|
| Window flag／Insets 请求被覆盖 | `sysUiFl` 没有隐藏标志，或 Dialog／返回桌面后系统栏重新出现 | 统一最终窗口请求、Insets owner 和恢复时机；API 30 使用 SDK guard 的 `WindowInsetsController`，API 28/29 保留兼容路径 | 不能先改；要先确认哪条路径覆盖 |
| `setDecorFitsSystemWindows(true)` 造成内容缩进 | Window 仍有全屏标志，但根 View 高度少了系统栏，Surface 顶／底留空 | 按产品目标明确 edge-to-edge 策略；需要整屏时让 `decorFits` 和隐藏系统栏请求一致，并按 API 版本分支 | 高度可疑，尚未实机确认 |
| Task/window 不是整屏 | `dumpsys window` 显示局部 frame、嵌入 token、freeform 或系统 multi-window | 处理 OEM 宿主／窗口模式；普通 fullscreen flag 不能把局部 task 扩成整块 display | 只有命中后才改宿主或模式 |
| View frame 不对 | `panelHost`、`map_surface` 或 `ui_surface` 的宽高与预期不符 | 修正实际窗口 bounds、Insets 消费和 `SplitPanelController.updateGeometry()` 输入；不再使用未经确认的物理屏宽 | 需先取 View frame |
| View 对了，Surface layer／buffer 不对 | 容器分屏成功，但地图铺满、被裁、黑屏、拉伸或仍是旧尺寸 | 按 `surfaceCreated/Changed/Destroyed` 更新两条 Surface，核对 layer/crop/buffer；将真实尺寸传给 native/EGL | 需 SurfaceFlinger 和回调证据 |
| Surface 已重建但旧代际仍回调 | 冷启动正常，HOME／返回／重建／收放后失效 | 给 Surface 和 native 资源做代际隔离，销毁旧 EGL/Surface，忽略迟到回调；焦点、visible、resumed 分开处理 | 需生命周期日志 |
| Z 序未生效 | UI 被地图遮住，或晚调用 `setZOrderOnTop` 无效 | 创建／附着前配置；必要时采用可验证的重建方案 | 只有出现 Z 证据才改 |
| hidden API／OEM 图形错误 | `hiddenapi`、`NoSuchMethod`、EGL、BufferQueue、HWC 或 SurfaceFlinger 错误 | 移除具体失效接口，或为明确 OEM 建立适配分支和最小复现 | 需对应错误日志 |

因此，当前不把“升级 targetSdk”“换 TextureView”“复制 S191 的布局”“删除全部旧全屏调用”列为通用方案。它们会改变太多变量，无法说明 03T 的真实故障层。

## 5. 最小用户取证：不依赖 AI、电脑或 ADB

### 5.1 第一阶段做独立兼容探针

因为当前没有 03T 实车，第一阶段不改地图 APK，也不让车主执行命令。应提供一个小型独立诊断 APK，专门模拟当前地图的关键 Android 行为：`targetSdk=24`、`windowFullscreen`、旧的 `0x1706` 沉浸式标志、API 30 的 `setDecorFitsSystemWindows` 两种模式，以及一个约 `1/3 : 2/3` 的双 `SurfaceView` 分屏。

探针不需要读取地图内部状态。它的价值是做一个可复现的 A/B 判断：

- 探针也不能全屏，或双 Surface 也出现同样的尺寸／裁剪／层级问题：优先怀疑 03T 的 OEM 窗口策略、Insets 或 Android 11 图形兼容，未来地图版本需要公共兼容层；
- 探针完全正常，而地图失败：优先怀疑地图自身的 `decorFits` 可选分支、任务入口、Surface 生命周期、native viewport 或地图专有窗口策略；这时才制作地图同包诊断构建。

探针需要提供“旧 flags”“`decorFits=true`”“`decorFits=false`”三个可重复检查状态，记录每次状态的 Window flags、Insets、根 View frame、两条 Surface 的 `created/changed/destroyed` 和尺寸。它不冒充能读取另一个 APK 的 View 或 SurfaceFlinger layer。

直接导出基线 APK只用于确认包身份，不能替代这个 A/B 探针；探针可以先通过 `PackageManager` 读取 `com.autonavi.amapautolite` 的版本、targetSdk、安装状态和签名摘要，导出 APK 文件只在用户方便时作为附件。

### 5.2 车主实际操作

用户只需要完成四步：

1. 安装我们提供的独立诊断 APK，点击“开始检测”。
2. 依次运行三个全屏／双 Surface 检查；如果界面提供“打开基线地图”，点击它，在地图上复现一次全屏失效，然后返回诊断 APK。
3. 用车机截图功能或手机拍一张地图失败画面，在诊断 APK 中点击“附加照片”选择它；不能选择时，照片也可以和 ZIP 分开发回。
4. 点击“导出报告”，用系统文件选择器保存 ZIP，再把 ZIP 和照片发回。

用户不需要 AI、电脑、ADB、root、录音、无障碍或全局悬浮窗权限；不需要手工复制日志。整个检测应限制在约 60 秒，导出报告由 APK 自动完成。

### 5.3 报告内容和边界

独立探针可以可靠记录：

- 03T 型号、SDK、系统版本、display metrics、density、屏幕尺寸和时间基线；
- 探针自身的 `targetSdk=24`、Window flags、`systemUiVisibility`、Window Insets、可见 frame 和 `setDecorFitsSystemWindows` 当前模式；
- 两条测试 Surface 的 frame、宽高、位置、Z 序请求、`created/changed/destroyed`、SurfaceHolder 回调尺寸和分屏 progress；
- 地图包 `com.autonavi.amapautolite` 的安装状态、versionName/versionCode、targetSdk、证书摘要；能否读取其 APK SHA-256 单独记录为成功或 `denied`；
- 每种测试的结果、异常、结束原因、用户备注和照片文件的 SHA-256。

报告分为 `device`、`probeRuntime`、`mapPackage`、`userEvidence` 和 `gaps`。普通 APK不能直接读取地图 Activity 的 View、native viewport、WMS 全量窗口栈或 SurfaceFlinger layer；这些字段要明确写成 `unsupported`，不能把缺失当成没有问题。

ZIP只保留 `report.json`、`integrity.json` 和用户主动选择的少量照片。报告限时、限事件数和限字节数，写入诊断 APK 私有目录后经系统文件选择器导出；不采集账号、位置、路线、token、录音或持续原始屏幕流。

### 5.4 什么时候才需要地图同包诊断

如果独立探针显示旧全屏请求、`decorFits` 或双 Surface 在 03T 上确实异常，先依据探针结果改公共窗口兼容层；不需要马上读取地图内部。

如果探针完全通过，而地图仍失败，再制作地图同包诊断构建，在真实 Activity、两条 Surface 和 native owner 处记录内部时序。此时用户仍然只需要“安装、开始、复现、导出”，但该构建必须与地图包保持兼容签名；签名不一致时不要求用户卸载现有地图。

03lyrics 当前诊断助手可以复用“用户启动、限时租约、有界 trace、私有 ZIP、SHA-256 完整性和缺口显式化”的机制；它本身没有 WMS、SurfaceFlinger、双 Surface 或 native viewport 采集能力。相关参考见 `03lyrics/app/src/diagnostic/`、`03lyrics/app/src/main/kotlin/com/ninepointnine/desktoplyrics/LyricsRuntimeDiagnostics.kt` 和 [03lyrics 诊断方案](../../03lyrics/docs/plans/netease-media-diagnostics.md)。

## 6. 建议的判定顺序

收到第一份 03T 证据后按这个顺序判断：

1. **包身份：** 先确认实际 APK、版本、签名和 targetSdk；不把用户口中的“基线版”当作哈希事实。
2. **窗口范围：** 检查 task/window bounds、displayId、windowingMode、window type 和系统条归属。
3. **请求结果：** 对照 `Theme.Background`、`FLAG_FULLSCREEN`、`sysUiFl`、`decorFits` 和多窗口门禁。
4. **View 几何：** 对照 `main_map_view.xml` 和 `SplitPanelController.updateGeometry()` 的输入、输出、Insets 和 translation。
5. **Surface 合成：** 对照两条 Surface 的 callback 尺寸、layer/crop/buffer/Z 序。
6. **native 视口：** 对照 `rv$b`、`e2` 到 `GAdaAndroid.nativeOnLayoutChange(III)` 的参数和时序，以及 `MapSurfaceView` 的 `nativesurfaceChanged`。
7. **生命周期和 OEM：** 只在前六层一致而画面仍错误时，进入旧 Surface/EGL 复用、hidden API、HWC/驱动或车机私有窗口策略。

只有第 2～6 步确定偏离点后，才把修复写成“API 30 通用改动”或“03T OEM 适配”。如果 03T 的窗口和 Surface 证据与 Android 9 完全一致，而画面仍不同，再建立最小复现包和驱动层日志；不能先凭版本标签改 Manifest。

## 7. 本轮证据边界

- **静态确认：** 当前正式源码中的主题、Manifest、`kc` API 30 分支、全屏状态保存、`0x1706` 系统 UI flags、`updateFullScreenBySave` 多窗口门禁、双 Surface 和 native layout 链。
- **03lyrics 参考确认：** 可复用限时、有界、私有导出和完整性设计；现有助手不是窗口／Surface 诊断器。地图的公开 testkey 不能继承歌词 Provider 的敏感数据信任假设。
- **本机工具确认：** 规定的 `node scripts/find-vehicle-adb.mjs --serial-only` 已执行，但当前设备在 ADB 授权阶段失败；未对目标车机执行任何写操作。[独立全屏兼容探针](../../tools/android-fullscreen-probe/README.md) 已构建，包名 `com.icar03.fullscreenprobe`，`versionCode=1`、`targetSdk=24`，最终 APK SHA-256 为 `8ca41ec2aeb9502beb0fa82877bf5397c195962680d7329a997a04742cd9dc1e`；已在本地 API 30 模拟器安装并启动，前台进程和全屏画面 Smoke 通过，但不代表 03T 行为。
- **待验证：** 03T 的真实 SDK/build、实际包 SHA、窗口边界、Insets、`0xea61`／`0x2749` 可选值、两条 Surface layer/buffer、native viewport 和首次／返回／重建时序。

本轮联网读取 Android 官方页面失败，下面链接保留为后续人工复核入口，不能写成“本轮已逐页在线核验”：

- [Android 11 全应用行为变化](https://developer.android.com/about/versions/11/behavior-changes-all)
- [Android 11 面向 API 30 的行为变化](https://developer.android.com/about/versions/11/behavior-changes-11)
- [Window.setDecorFitsSystemWindows](https://developer.android.com/reference/android/view/Window#setDecorFitsSystemWindows(boolean))
- [WindowInsetsController](https://developer.android.com/reference/android/view/WindowInsetsController)
- [SurfaceView.setZOrderOnTop](https://developer.android.com/reference/android/view/SurfaceView#setZOrderOnTop(boolean))
- [SurfaceView](https://developer.android.com/reference/android/view/SurfaceView)
- [Android 多窗口](https://developer.android.com/guide/topics/ui/multi-window)
- [AOSP SurfaceView 图形架构](https://source.android.com/docs/core/graphics/arch-sv-glsv)

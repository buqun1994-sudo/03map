# 当前进度

## 2026-09-25 车机充电数据只读研究收尾

1. 已连接在线 iCAR 03 车机，在实际充电期间通过 `dumpsys car_service` 读取 Vehicle HAL 事件；未安装 APK、发送广播或改变车辆状态。
2. 已确认车机提供并实时更新 `EV_BATTERY_LEVEL`（电量）、`BATTERY_BMS_HV_BATTVOLT`（高压电压）、`BATTERY_BMS_HV_BATTCURR`（高压电流）、`VENDOR_CHARGE_PORT_CONNECTED`（充电口连接）、`VENDOR_BMS_CHARGE_STS`（充电状态）和 `VENDOR_BMS_CHGREMAIN_TIME`（剩余时间原始字段）；用户确认充电时读数准确。
3. 连续快照观察到电量约 `27.11` → `27.12`，高压电压约 `378` → `380`，充电电流约 `15.4`；后续状态快照中连接/充电状态变为 `0`，电流约 `-1.8`，证明这些字段会随车辆状态变化。
4. 快充 / 慢充尚未确认：`INFO_EV_CONNECTOR_TYPE` 没有有效缓存事件，且没有完成已知快充与慢充的对照；剩余时间 `519` / `2047` 的单位和编码也未确认。
5. 车机没有形成可承诺的直接充电功率值；`EV_BATTERY_INSTANTANEOUS_CHARGE_RATE` 无缓存事件，几个 `VCU_*POWER*` 字段为 `0.0`。`380 × 15.4 ≈ 5.85 kW` 仅作估算，不作为直接字段结论。研究结果已写入 [车机媒体能力研究](research/车机媒体能力研究.md)，本轮文档更新后收尾。

## 2026-09-25 第二次充电会话快速判定

1. 车机重新连线后，车辆正在充电期间已抓取四次连续只读快照；车辆随后结束充电，本条结论完全依据已保存的当时输出，不再重复查询。
2. 本次 SOC 从 `59.3%` 增长到 `64.38%`，高压电压约 `393–394 V`，高压电流约 `183–185 A`，由 `P≈U×I/1000` 得到约 `72–73 kW`，因此本次会话可确定为高功率直流快充。
3. `VENDOR_CHARGE_PORT_CONNECTED=2`、`VENDOR_BMS_CHARGE_STS=3`、`VCU_ENERGY_FLOW_SHOW=8` 与 SOC 上升同时出现；`VENDOR_BMS_CHGREMAIN_TIME` 从 `62` 变为 `61`，强烈符合分钟数，`2047` 保留为特殊值 / 未知值。
4. 车机直接功率属性 `EV_BATTERY_INSTANTANEOUS_CHARGE_RATE` 仍没有有效事件，但电压和电流已足以实时计算功率；普通第三方应用直接读取仍未验证，系统车设置包拥有 `android.car.permission.CONTROL_CAR_VEHICLE` 只能证明系统应用权限边界。
5. 研究结论已补入 [车机媒体能力研究](research/车机媒体能力研究.md)；本轮不再重新连接或操作已结束的充电会话。

## 2026-09-24 iCAR 03 车机媒体能力研究

1. 已完成第三方应用进程内的运行级验证：蓝牙音乐和爱趣听可以读取标题、歌手、专辑、播放状态和进度，并可直接暂停、恢复、下一首；下一首均观察到真实元数据变化。
2. 已确认多媒体中心导出的切源服务可由第三方显式调用：`audio_source=1/2/3/4/9` 分别对应 U 盘、蓝牙、本地、爱趣听、网易云；U 盘和本地当前因没有可播放曲目，服务调用成功但无法完成有内容切入闭环。
3. 已单独记录当前 03 上由 03T APK 覆盖安装的网易云异常：`CloudMusicService` 在系统层有歌曲元数据和播放状态，但报告 `active=false`、`actions=0`；第三方标准 `MediaController` 及应用进程内 `dispatchMediaButtonEvent` 均未能暂停或下一首。详见 [车机媒体能力研究](research/车机媒体能力研究.md)。
4. 已补充分层证据：切到网易云后，系统级 `KEYCODE_MEDIA_NEXT` 让 `CloudMusicService` 从《至少还有你》切到《IS IT LOVE》，即使该会话仍是 `active=false`、`actions=0`；这条车机媒体键路径与第三方 `TransportControls` 不是同一条链路。
5. 已定位相关 APK：网易云、多媒体中心和 `MediaButtonIntentReceiver` 在 `com.tencent.wecarflow`（当前更新包 `3.2.1.174`，系统基线 `3.2.0.174`）；系统音频焦点 / 路由层是 `/system/priv-app/MB_MLAudioService/MB_MLAudioService.apk`（`com.mengbo.media`，`1.0.18.2`）。当前没有证据要求先从 03T 移植另一只系统 APK。
6. 既有“全局媒体键不可靠”结论修正为路径分层：标准会话对蓝牙和爱趣听可控；当前网易云标准控制不可用，但车机系统媒体键的下一首已验证可用；不能把切源成功或下一首成功外推为暂停成功。

## 2026-09-24 全屏动态分屏施工启动

1. 用户确认当前主线从 `480×480` 悬浮地图切换为全屏动态分屏；`480×480` 保留为未来可继续研究的支线。
2. 当前目标：默认内容区 `1/3`、地图区 `2/3`；内容层铺满全屏，地图面板保持固定宽度并整体横向收放；收起态手势条保留在屏幕最右侧。
3. 手势条只处理横向拖动，使用中性色，视觉长度为物理 `256px`；展开/收起采用距离与速度综合预测，动画沿用约 `200ms` 减速效果。
4. 内容背景跟随亮暗系统主题，车机主题色仅为未来内容控件保留；地图导航、定位和 Surface 状态在收起后继续保持。
5. 本轮已进入“先文档、后施工”流程；设备安装与运行测试由用户在桌面打包完成后手动执行，本轮不自动安装。
6. `480×480` 上一轮修改已独立封存到被忽略的 `apk-work/9.5.0.600013/archive-480x480-20260924/`；当前 `decode/` 只作为全屏分屏施工副本，后续不得互相覆盖。
7. 手势条单击提示已加入本轮范围：展开态显示“向右拖动收起地图”，收起态显示“向左拖动展开地图”，采用柔和渐变、缓慢往返约 3 次后渐隐。
8. 当前施工副本已改为单一地图面板容器：内容背景铺满全屏，地图面板按 `2/3` 宽度定位，`map_surface`、`ui_surface`、遮罩、提示和手势热区共用同一横向位移。
9. 新增 `SplitPanelController.smali`，由 `kc.v()V` 在正常全屏布局完成后安装；控制器使用横向触摸方向判定、`350ms` 速度预测视界、`200ms` 减速吸附和可中途接管动画。
10. `apktool 3.0.3` 已完成本轮资源与 Smali 回编；最终候选已完成对齐、v1/v2/v3 签名、包身份检查和签名后 round-trip，尚未安装或做设备运行验证。

## 2026-09-24/25 启动闪退诊断与修正版

1. 用户手测上一版全屏候选后反馈“进入首页立即闪退”；读取车机 `crash` 缓冲区确认首个确定性根因不是 native 地图崩溃，而是 `MainMapActivity` 启动阶段 `SplitPanelController` 的 `ClassCastException`：构造函数把 `ui_surface`（`SurfaceView`）强转成 `ViewGroup`。
2. 根因是当前新增布局已经把地图相关 View 放入统一地图面板，但控制器仍按“面板内部还有一个子容器”的旧假设读取 `getChildAt(1)`；已在施工副本原位改为直接使用传入面板，并保留后续子节点访问寄存器的正确绑定。
3. 已同步解包 S191 参考包：它的 `map_surface`、`ui_surface` 直接挂根布局，由 `EmbeddedMusicPlayer.applyLayoutSide/applyLayoutVertical/setViewMargins` 修改宽度、重力和 margins；当前主线保留统一面板横移，避免地图收起时压缩 Surface，暂不搬入 S191 的第二 DEX、播放器或 Dock 主链。
4. 已生成桌面修正版 `03地图-全屏动态分屏-9.5.0.600013-fix1.apk`，SHA-256 为 `3c5990a6c89a86ea35c42e9969bf0d4b844a1c62bc658761d26e4a7ca510ec35`；已通过 APKTool 回编、zipalign、v1/v2/v3 签名、aapt2 badging 和新包 round-trip。未自动安装，等待用户手动测试。

## 2026-09-24 第二次闪退诊断与动态手势修正版

1. 用户手测 `fix1` 已确认启动和默认分屏正常；拖动手势条时地图视觉上直接跳到最右侧，松手后必然闪退。最新 `crash` 栈将根因定位到 `SplitPanelController.animateTo()`：`ViewPropertyAnimator.setInterpolator()` 使用了 `android.view.animation.Interpolator` 的错误方法签名，车机 Android 9 运行时找不到该虚方法并抛出 `NoSuchMethodError`。
2. 施工副本已将两处动画调用改为 `android.animation.TimeInterpolator` 签名，并让地图面板与手势条使用同一段 `200ms` `AccelerateDecelerateInterpolator` 动画；拖动过程继续以当前面板位移驱动手势条，避免松手前的视觉跳变。
3. 根据用户补充的 iOS 式呼吸空间，手势条的展开态与内容区边界保留 `30px` 间距，收起态按面板位移连续插值到对应位置；该数值复用 `03desktop` 的 `DrawerGeometry.PANEL_EDGE_GAP_PX`，本项目手势条可见高度仍为 `256px`。
4. 已生成桌面修正版 `03地图-全屏动态分屏-9.5.0.600013-fix2.apk`，SHA-256 为 `ab15da1e9c9d1cf44274e08b2a472899e0cf4ac9a8f87d4ecf699f5af8b26f31`；回读确认 `TimeInterpolator` 签名与 `applyHandleOffset(F)` 已进入最终 APK。
5. `fix2` 已通过 APKTool 回编、zipalign、v1/v2/v3 签名、aapt2 badging、签名后 round-trip 和原生库压缩检查；未自动安装，等待用户手动测试，当前不能把动画和稳定性写成实机已通过。

## 2026-09-24 手势条位置、热区与跟手逻辑修正

1. 用户手测 `fix2` 确认不再闪退，但发现手势条位于地图侧、热区形态不符合预期，地图拖动在当前位移与原位置之间闪烁，且点击错误地触发了状态切换。
2. 该阶段先确认了 `03desktop` 的独立透明触摸带结构：`TRIGGER_WIDTH_PX=60`、`TRIGGER_HEIGHT_PX=810`、`HANDLE_LEFT_PX=32`，并将其作为中间几何参考；随后在 `fix3` 中按本项目“热区不进入地图、白条视觉右缘距边界 `12px`”的最终约束重新换算为 `42px` 宿主内边距。
3. `main_map_view.xml` 的透明触摸带现位于地图边界的内容侧，地图面板只负责整体位移；白条作为触摸带子 View 随父面板同步移动，不再单独做第二套横向动画。
4. `SplitPanelController.applyOffset(F)` 现在只写入地图面板的唯一横向位移；`animateTo(F)` 只对地图面板做吸附动画；布局回调在手势进行中不重置位置，并在非首次布局时保留当前位移，避免地图在跟手位置和原位置之间闪烁。
5. `ACTION_UP` 现在明确按“非取消”路径结束；未形成有效横向拖动时只显示提示文案，不切换状态。错误方向、垂直滑动和其它被阻断的手势回到当前稳定状态；只有有效横向拖动才进入距离/速度综合吸附。
6. `fix2` 阶段未自动安装；其后续几何收敛和比例主链已在下方 `fix3` 候选记录中完成。

## 2026-09-24 动态分屏几何收敛与 fix3 候选

1. 已把地图宽度从分散的 `2/3` 整数计算收敛为 `SplitPanelController.w` 单一比例参数，默认值为 `2/3`，并提供 `getMapRatio()` / `setMapRatio(F)` 作为后续比例设置入口；两条 Surface、遮罩和地图面板继续由同一几何链更新。
2. 已按 `03desktop` 的实际视觉边距重新定位热区：透明热区保持 `60×810px`、右缘与分屏边界对齐；可见手势条为 `6×256px`，在本项目宿主几何中使用 `42px` 内部定位，使白条右缘与参照边界保持 `12px` 视觉间距。`03desktop` 的 `32px` 是其独立窗口坐标中的内部参考值，不再直接当作本项目最终视觉边距。
3. 已完成 APKTool 3.0.3 回编、zipalign、v1/v2/v3 签名、aapt2 包身份与权限检查、签名后 round-trip；反解确认比例计算、`TimeInterpolator` 方法签名、唯一地图位移 owner 和新布局均保留，`applyHandleOffset(F)` 不存在。
4. 已生成桌面候选 `03地图-全屏动态分屏-9.5.0.600013-fix3.apk`，SHA-256 为 `5b1dc0de41e56f60ed6c92d27c298277e81581b6f01160afc16cf9fdf057842d`；签名证书 SHA-256 为 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`，`63` 个 `lib/**/*.so` 均为 Deflate 压缩。
5. 本轮未执行 ADB 安装、卸载、清数据或启动；当前交付点是用户手动安装 `fix3` 后验证启动、分屏、拖动跟手、点击提示和地图状态保持。

## 2026-09-24 fix4 手势条持久显示与点击闪退修正

1. 用户手测 `fix3` 确认拖拽跟手和初始手势条位置正常，但发现拖拽过程中手势条会消失、地图收起后手势条不可见；单击手势条会闪退。
2. 车机 `crash` 缓冲区将点击闪退定位为 `SplitPanelController.showHint()` 调用不存在的 `ObjectAnimator.ofFloat(View, String, float[])` 方法签名，调用链为 `showHint` → `finishGesture` → `onTouch`；不是地图 native 崩溃。
3. `main_map_view.xml` 保持固定外层与独立覆盖层：`x` 只承载两条 Surface 和遮罩，`y` 承载提示、透明热区和可见手势条；`SplitPanelController.applyOffset(F)` 对地图层、提示和热区写入同一个位移值，但不再移动包含 Surface 与手势条的共同父容器，避免 SurfaceView 合成/裁剪导致手势条消失。
4. `animateTo(F)` 和 `ACTION_DOWN` 现在同时取消/驱动 `x`、提示 `c`、热区 `d` 的 `translationX` 动画；收起态手势条仍沿用动态地图边界的位置并持续可见。点击路径仍只调用 `showHintSafely()`，不调用状态吸附。
5. 提示动画的 `ObjectAnimator.ofFloat` 已改为车机可用的 `Object` 目标签名，并保留异常时的静态提示回退，避免提示动画异常再次终止主进程。
6. 已生成桌面候选 `03地图-全屏动态分屏-9.5.0.600013-fix4.apk`，SHA-256 为 `38682b161267cbd170cbba17aa630375daaa49c8f78b549583f80ec8cff1a377`；签名证书 SHA-256 仍为 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`。
7. `fix4` 已通过 Smali 预检、APKTool 3.0.3 回编、aapt2 badging、zipalign、v1/v2/v3 `apksigner verify`、签名后 APKTool round-trip 和 63 个原生库 Deflate 压缩检查；尚未安装或运行本候选包，等待用户手动测试。

## 2026-09-24 fix4 实机手测未通过：手势条与提示层主链待收敛

1. 用户手测 `fix4` 确认本轮仍未达标：默认分屏拖拽时可见手势条会异常消失，地图向右收起后不可见；从右侧向左拖拽展开地图后又出现。当前不能把 `fix4` 的“手势条持续可见”写成已实现。
2. 同一现象表明可见手势条与透明热区的状态/绘制并未完全一致：手势条不可见时热区仍可点击；点击后可见手势条恢复，且后续不再复现首条异常。该现象暂记为运行级症状，尚未在本轮凭猜测指定新的根因。
3. 展开态点击提示的文字渐显/渐隐基本存在，但缺少预期柔光渐变；左右弹跳出现疑似底层静态文案与上层动画文案同时存在的残影。弹跳到最右侧时文案还会与手势条重叠，必须增加内容侧几何边界而不是简单遮盖。
4. 收起态点击手势条时，提示文案会在两个固定位置同时出现，说明提示 View 的位置、动画实例或位移来源没有收敛到同一条主链。
5. 当前架构结论：下一轮不能继续沿 `03desktop` 的局部视觉/热区逻辑叠加修正；应先建立唯一的手势条显隐、热区命中、拖拽位移、提示位移与动画生命周期状态机，所有可见层和触摸层只从同一份几何/状态读取。`03desktop` 只能继续作为视觉参数参考，不作为 `03地图` 的行为主链。
6. 本轮只记录问题、保留现有施工副本和候选包，不继续修改代码；`480×480` 封存支线、正式 `source/` 和历史候选身份保持不变。下一次施工前必须先把上述未通过项转成明确的状态不变量和运行级验收项。

## 2026-09-25 唯一主链施工与 fix5 实机通过

1. 已按用户确认的真值驱动架构完成施工：`main_map_view.xml` 收敛为 `content → root → panelHost → mapLayer / gestureLayer → gestureNode → hintText + visibleHandle`；`source/amap-9.5.0.600013/` 与 `archive-480x480-20260924/` 均未修改。
2. `SplitPanelController.smali` 现在只有一份分界线真值：`currentDividerX`；几何源为 `screenWidth`、`mapWidth`、`expandedDividerX`，默认值入口为 `defaultProgress` / `setDefaultProgress(F)`，未来设置可沿同一入口修改默认位置。
3. 位移 owner 唯一为 `panelHost`；触摸 owner 唯一为 `gestureNode`；提示 owner 唯一为 `hintText`。`applyDividerX(F)` 将当前位置限制在 `[expandedDividerX, screenWidth]`，并由同一值驱动地图面板、地图 Surface/遮罩尺寸关系、手势条和提示几何。
4. 状态编号固定为 `0` 展开、`1` 收起、`2` 按下、`3` 有效横向拖拽、`4` 吸附展开、`5` 吸附收起、`6` 被阻断手势；横向判定为 `absDx > 1.2 × absDy`，速度预测窗口为 `350ms`，吸附动画为 `200ms`，中点为 `expandedDividerX + mapWidth / 2`。
5. `panelAnimator` 与 `hintAnimator` 各自只有一个 owner；同一 View 开始新动画前先取消旧实例。点击只执行一次 `showHint()`，不改变地图状态；提示文案挂在 `gestureNode` 下，自动渐隐或在按下/拖拽时渐隐，弹跳范围保持在手势条左侧安全边界内。
6. 已修正本轮定点校验发现的两个边界错误：最小分界线不再误取 `screenWidth`；释放手势预测位置小于中点吸附到 `expandedDividerX`，大于等于中点吸附到 `screenWidth`。
7. 已生成桌面候选 `03地图-全屏动态分屏-9.5.0.600013-fix5.apk`，SHA-256 为 `58a4f9aa645c5f765c3cbf7f577225d668f0d2d35b9fd3f4fb7eadd30746836d`；包身份为 `com.autonavi.amapautolite` / versionName `9.5.0.600013` / versionCode `26000001`，证书 SHA-256 为 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`。
8. 静态与构建验证已通过：Smali/资源最小回编、APKTool 3.0.3 最终回编、`aapt2 dump badging/permissions`、`zipalign`、v1/v2/v3 签名验证、签名后 APKTool round-trip；`63` 个 `lib/**/*.so` 均为 Deflate 压缩。
9. 用户已在目标车机手动测试 `fix5` 并反馈当前分屏测试通过；本条为用户实机运行结论，AI 未自动安装、采集完整设备日志或修改车机状态。

## 2026-09-24 S191 第三方桌面式地图包静态对照

1. 用户提供的 S191 APK 与正式输入基线同包名、versionCode 和证书，但 APK SHA-256 为 `3da30b6b0a321b3a2968f663ad57a06b8abcec649b6d8eef59cd019ad1af2c56`，增加第二个 DEX 与独立音乐/Dock 模块，插件主链和 native/资源亦有差异。仅隔离解包、静态比较；未安装、启动或改写正式源码与设备。
2. 已定位地图 Activity 内歌词容器、播放器按钮/媒体状态链、桌面式 Dock、壁纸页面和双 Surface 边距让位机制；S191 与正式基线的详细业务→方法映射、增量归因、可借鉴点及不可迁移边界已直接并入 [主链索引](code-map/主链索引.md) 第 8 节，不另设专项文档。该包不是 HOME 桌面，也不是 480×480 悬浮首帧或相机校准的运行证据。
3. 正式施工包的车机签名冲突仍未解除；本轮不因同证书的第三方包改变安装门禁或第一阶段“尚未验收”的状态。

## 2026-09-24 历史 `480×480` 悬浮施工阶段（已封存）

1. 正式输入 APK SHA-256 `dfb763c9b9ab42d6096e6c988578937bfbaaa73436db22f99efe37503d54f3f5` 已重新核对；施工前 `source/` 与 `apk-work/9.5.0.600013/decode/` 逐文件一致。此阶段只修改被忽略的施工副本，`source/` 未动。
2. 工作副本曾修改 8 个文件：Manifest / floating theme 约束启动窗口；`UsbFillActivity.onCreate` 与地图 Activity `onCreate` 先设置 `480×480` 宿主；`kc.u` 初始化视图完毕和 `LifecycleCallbacks.onActivityCreated` 复用幂等接管方法，兼顾权限延后路径；`FloatWindowsManage` 负责默认矩形、手势条拖拽、收回恢复和显示失败回退；`AMapViewManage.removeRootViews/restoreViews` 仅迁移两条 Surface、保留其他根视图，销毁时清理旧视图引用。该阶段已独立封存，物理入口及证据等级见 [主链索引](code-map/主链索引.md) §4.1。
3. 每个结构性修改后 APKTool 3.0.3 回编通过；该封存阶段的候选包曾完成 zipalign、同输入证书的 v1/v2/v3 `apksigner verify`、`aapt2` 包名/版本/入口/权限检查和 round-trip。历史候选 SHA-256 为 `73c90630913eb39b25ba5914a54a4745de45c04a05787b1406c9b16421f39b2f`，仅用于支线追溯。
4. ADB 连接已恢复，车机为 `device`，已有同包名、同版本应用。覆盖安装前已拉取车机现有 `base.apk` 并核对：它的签名证书与正式输入及当时悬浮候选包不一致，故按安全边界停止安装，未卸载、清数据或写入设备；该结论只属于封存支线。
5. 需要用户明确选择：提供能匹配车机现有包证书的合法签名方式以保留数据覆盖，或明确授权卸载现有应用并接受其应用数据丢失后安装候选测试包。签名冲突未解除前不能执行运行级闭环；窗口稳定后才单独施工 UI 150%，地图层和三种视角仍待定位。

## 2026-09-24 上一轮全屏动态分屏候选包（已被 fix3 替代）

1. 桌面候选 APK：`03地图-全屏动态分屏-9.5.0.600013.apk`（已输出至用户桌面）；SHA-256：`ba2295d9f25fb2ed6f43490f0daa3ca10c8ef43c47a2414dc45390e59b627a6e`。
2. 已执行：APKTool 3.0.3 回编、`zipalign` 校验、`aapt2 dump badging/permissions`、v1/v2/v3 `apksigner verify`、签名后 APKTool round-trip；`63` 个 `lib/**/*.so` 均为 Deflate 压缩。
3. 包身份保持 `com.autonavi.amapautolite` / versionName `9.5.0.600013` / versionCode `26000001`；签名证书 SHA-256 为 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`。
4. 未执行 ADB 安装、卸载、清数据或启动；当前暂停在用户手动安装和第 3 节全屏分屏 smoke 之前。

以下为正式施工前的历史基线记录，不覆盖上面的当前阶段状态。

## 2026-09-24 历史输入与前置口径（已由全屏动态分屏主线替代）

1. 用户确认从实验阶段进入正式项目施工：归档的高德 `9.5.0.600013`、125% 全屏 APK 是唯一输入基线，所有后续修改从它的正式源码快照建立工作副本。旧大窗口悬浮方案废弃。
2. 当时目标是 `480×480` 悬浮地图和顶部可拖拽手势条；该目标已封存，不再代表当前主线。
3. UI 顶层目标 `150%`，应沿用输入基线的自定义密度机制，但必须验证其只作用于按钮、地址输入等目标 UI。地图层文字和车标大小独立处理，第二次打开不能失效。
4. 2D 车首、2D 北上、3D 车首三种视角都需要验证相机焦点；先核对 View frame、Surface Layer、buffer、裁剪原点和 native layout，再决定是否需要修改引擎参数。
5. 当前只整理输入来源、文档和业务代码地图；没有改正式源码或构建新 APK，不能宣称上述目标已完成。

## 2026-09-24 收尾清理

1. 已复核用户提供的上游 APK 仍位于仓库外桌面路径，SHA-256 为 `a86318d3f8ee2fc5721fcf49d625779b41108a45cfd5c91d0209da73cd317af4`；当前正式输入归档 SHA-256 为 `dfb763c9b9ab42d6096e6c988578937bfbaaa73436db22f99efe37503d54f3f5`。
2. 旧 `.tmp/` 仅包含已完成归因的解包副本、实验 APK、运行日志和截图；其中仍有价值的输入差异、Surface 坐标观测、native 符号线索和验证边界已转入本目录文档，旧目录不再作为证据入口。
3. 按用户授权清理 `.tmp/`；保留 `apk-archive/9.5.0.600013/`、`source/amap-9.5.0.600013/` 和 `apk-work/9.5.0.600013/`。后续施工只从正式源码快照复制工作副本，不从已删除的实验目录续接。
4. 已核对并清理现有 `apk-work/9.5.0.600013/decode/` 中的回编 `build/`、签名元数据和 APKTool 生成元数据；其余内容与 `source/amap-9.5.0.600013/` 逐文件一致，可作为下一轮的干净施工副本。

## 已确认的输入与物理入口

1. 正式输入 APK SHA-256 为 `dfb763c9b9ab42d6096e6c988578937bfbaaa73436db22f99efe37503d54f3f5`；上游 APK SHA-256 为 `a86318d3f8ee2fc5721fcf49d625779b41108a45cfd5c91d0209da73cd317af4`。两者包名、版本、SDK、权限、证书摘要和 Smali 文件数一致，但不是同一文件。
2. APKTool 3.0.3 文件级对比已确认：Manifest 的可调整尺寸属性，以及 `rv.C()I`、`kc.v()V` 构成 125% 密度改动；另有视觉资源差异。来源、哈希和详细边界见 [基线清单](code-map/基线清单.md)。
3. `source/amap-9.5.0.600013/` 是 9,228 文件的正式只读解包快照；业务需求到文件和方法的入口见 [主链索引](code-map/主链索引.md)。
4. 旧实验副本的 480×480 手势条、逻辑裁剪和启动隐藏只提供可行性线索，不自动迁入正式源码；曾测到地图 Surface Layer 相对父窗口坐标和理论裁剪值不一致，该观测保留在代码地图作为待复核线索。
5. 本轮再次用 APKTool 3.0.3 直接重解包桌面上游 APK 与归档 APK：除 APKTool/签名派生元数据外，差异仍收敛为 `AndroidManifest.xml`、`rv.C()I`、`kc.v()V`、145 个 drawable PNG 和 `res/values/attrs.xml`；与正式快照逐文件一致的施工副本已就位。

## 下轮施工入口

1. 从正式输入基线复制干净的 `apk-work/9.5.0.600013/decode/`，先确认包身份、快照哈希和签名方案，不能从旧 `.tmp/` 实验目录直接继续。
2. 按 [产品需求基线](product/产品需求基线.md) 和 [业务主链索引](code-map/主链索引.md) 切分启动、窗口/手势条、UI 密度、地图层比例、三种视角相机焦点五条主链，先做每条的根因与运行可观测性设计。
3. 施工完成后按 [验证矩阵](testing/验证矩阵.md) 构建、签名、核对设备实际安装包哈希，完成两次启动、拖拽、全屏恢复和三种视角实机验收；本轮文档整理不执行设备写操作。

## 仓库状态

截至本轮收尾，Git 仓库尚无提交，正式源码快照仍在未跟踪工作树中；是否将 386MB 快照纳入 Git 历史，需要单独确认。`apk-archive/`、`apk-work/` 和 `.tmp/` 均被忽略，归档 APK 不进入 Git。

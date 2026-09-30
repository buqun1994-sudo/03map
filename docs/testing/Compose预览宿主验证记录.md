# 第一层 Compose 预览宿主验证记录

## 范围与验收口径

用户明确授权新建标准 Compose UI 预览宿主，并取消旧 UI 文档作为视觉硬约束的地位。此次以成熟组件、整体美观和合理交互为目标，不要求复制旧版固定坐标、纵向滑条、原厂图标或 Dock 槽位。正式高德地图、真实数据、签名和车辆安全边界不变。

工程入口：[`ui-preview/README.md`](../../ui-preview/README.md)。独立包 `com.icar03.content.preview`，`:app` 负责模拟状态与生命周期，`:content-ui` 负责纯呈现契约和 Material3 界面。没有第二层真实数据接入或第三层 APK 注入。

## 已执行

1. 工作开始时 `git status --short --branch` 为 `## main`，无已有修改。
2. 核实 JDK17、Android SDK35、Gradle8.11.1 与已缓存插件；先在长期总纲登记模块、身份和验证入口。
3. `--offline tasks --all` 初次因 Android library 插件 marker 缺失失败；在 `pluginManagement.resolutionStrategy` 将 Android 插件明确映射到同版本 AGP 后通过。
4. 首次离线 assemble 因部分传递依赖未缓存失败，没有将缓存目录误报为完整闭包；随后使用正常固定版本依赖解析。
5. `./gradlew :app:assembleDebug :app:testDebugUnitTest :content-ui:testDebugUnitTest --console=plain` 真实通过。首轮为控制器9项、纯模型4项，零失败。此结论不包含后续新增截图测试。
6. `./gradlew :app:lintDebug :content-ui:lintDebug --console=plain` 真实通过；保留警告，不等于零警告。宿主警告包括固定较旧依赖/target、独立调试应用图标和数据提取规则建议。
7. 编译后发现窄屏顶栏潜在拥挤，已将 `<400dp` 温度次要信息隐藏并减小元素间距，不缩小主题按钮；空媒体状态文案改为等待来源。后续最终构建和渲染测试需覆盖这些修改。

## 视觉证据边界

必须使用实际 Android Compose 渲染产生截图，不用网页或手画图替代。当前图像读取工具明确返回不支持图像输入，主代理和独立检查均无法查看原对照图；因此不能宣称主观审美检查通过，不能复述旧文档作为本轮看图结论。仍需生成新宿主截图、执行语义/边界检查，并将截图提供用户直接审阅。

## 2026-09-30 原型纠偏轮次

本轮确认当前会话的 `read_image` 能实际返回图像，并查看了 `.tmp/prototype-review-20260930/Group 77.svg.png`、`Group 78.svg.png` 及上一轮浅色默认态、来源菜单截图。视觉事实为：原型画布 640×1080，顶部为温度／时间／续航三段信息，主体为四列高密度卡片网格，第三、四列上部为纵向亮度／音量控件，底部为一体式横向媒体卡和 Dock；上一版是 480×810 的单列 Material 页面，含原型没有的大标题、横向 Slider、固定 NavigationBar 和截断媒体卡。

已将 `ContentPanel` / `ContentTheme` 重做为第一层浅色默认态：使用 Compose Material3/Foundation 基础能力实现原型构图，恢复 `#F4F4F4`、`#E9E9E9`、白色表面与深色主字层级，删除内容区常驻工程说明和上一版大标题，加入四列网格、柔和纵向分段控件、一体式媒体卡与 Dock。原有模型、PreviewController、取消回流和独立包边界保留。渲染测试已从绑定旧页面的 34 项契约改为 640×1080 浅色默认态／无数据态真实 Compose 截图契约。

实际查看的最新截图：

- [640×1080 浅色原型默认态](../../ui-preview/content-ui/build/frames/640x1080-light-prototype-ready.png)
- [640×1080 浅色原型无数据态](../../ui-preview/content-ui/build/frames/640x1080-light-prototype-empty.png)

最新实际命令：

```sh
./gradlew :app:testDebugUnitTest :content-ui:testDebugUnitTest --console=plain
```

在 JDK17、Android SDK35 环境中退出码为 0；宿主状态测试与内容 UI 浅色原型渲染测试均通过。最新截图已由 `read_image` 实际查看。当前结论是“浅色默认态方向可供用户确认”，不是整套主题、来源菜单或真实能力已完成。


未连接车机或启动 ADB；未安装、卸载、清数据、执行 instrumentation 或真实车控；未改高德 APK、包名、签名、地图 Surface 或现有 Adapter；未提交 Git。独立宿主的调试签名不是高德签名，不是正式地图交付包。

## 后续浅色默认态精修：原厂图标、等距与浮层 Dock

在本地正式源码 `assets/content-oem/asset-manifest.json` 已登记资源中，逐项核对 `deployedSha256` 后复制 28 个车机原厂 Vector 至独立预览的 `content-ui/src/main/res/drawable/`；来源包、原始条目哈希和部署哈希写在 `content-ui/src/main/assets/oem-icon-provenance.json`。车机未连接、正式高德源码未改。复制到预览工程只用于图标绘制，不能作为真实车控已接通的证据。

按 640 宽的等距规律求得 `(640−2×20−3×20)/4=135` 列宽、20 列间距与行距，得到 20/175/330/485 的列左缘；时间改为内容区 Box 几何中心，不再用两侧剩余宽度的加权 Spacer 居中。媒体和 Dock 从滚动网格独立定位，真实 Compose 测试约束媒体 `(20,832)–(620,952)`、浮层 Dock `(12,968)–(628,1068)`，车锁可点击宽度大于普通槽位，所有卡片/媒体/Dock 使用轻微投影。实际渲染同画布并排／叠图证据分别在 `ui-preview/content-ui/build/frames/prototype-vs-compose-640x1080.png`、`prototype-overlay-640x1080.png`，均已实际查看。原型示意封面与重复的座椅卡不是业务功能；当前静态卡片仅显示原型密度，未对车辆发送命令。

截图密度为 Android 14 Robolectric mdpi/160dpi，640×1080dp→640×1080px。阴影在 JVM View 绘制中很弱，真实车机系统密度/投影/字形与触控手感仍待独立验证；当前截图只用于浅色默认态方向校准，来源菜单和深色主题未在本轮视觉验收。
本轮最终执行 `git diff --check`、`node scripts/check-project-docs.mjs`、`node scripts/check-skills.mjs`、`node scripts/check-code-map.mjs`，均退出码 0；在 JDK17/Android SDK35 下运行 `./gradlew :app:assembleDebug :app:testDebugUnitTest :content-ui:testDebugUnitTest :app:lintDebug :content-ui:lintDebug --console=plain`，退出码 0。渲染测试检查时间可视中心与内容区 x=320 的误差 ≤4px、媒体与 Dock 四边锚点误差 ≤1px、车锁热区大于普通槽位。新候选的视觉判断以本轮实际查看的图像为准，不沿用旧调试包哈希。

## 向下阴影、媒体车机热区与深色候选

本轮只改独立预览模块。局部投影使用 Android Paint 的柔化阴影层（blur=5dp、dx=0、dy=3dp；浅色黑色约19%、深色约63%），在 Compose 的卡片后方绘制；控件、图标与文字仍由 Compose 组件渲染，不用 Canvas 重画整个页面。关闭重复 elevation，保留无描边的表面。

播放／暂停与下一首各为80×80dp热区，间隔12dp，中心间距92dp；图标保持42dp，标题／歌手限定单行并在自身文字区省略，不侵占操作区。保持媒体整体600×120参考构图。该尺寸通过mdpi本机测试，不等于车机系统密度和驾驶状态下的触控手感验收。

深色候选采用中性炭黑层级：背景#101214、普通卡#1B1F24、媒体／Dock／提升表面#23272D、选中层#353B43、主字#F2F4F6、次字#B9C2CA。加入12个已登记夜间座椅Vector，累计40个原厂资源，复制前核对deployedSha256并更新溯源清单。测试入口弹层增加主题开关，默认内容区未增加常驻主题按钮。

实际执行 `./gradlew :app:assembleDebug :app:testDebugUnitTest :content-ui:testDebugUnitTest :app:lintDebug :content-ui:lintDebug --console=plain`，退出码0。浅深默认／无数据共4个Compose渲染用例验证相同时间中心、媒体／Dock边界、80dp热区和12dp间隔，以及下一首与播放事件。阴影像素断言验证卡片、媒体、Dock下方变暗且向背景衰减，方向向下；浅色参考背景244，媒体下方2px约218、6px约238，阴影确实进入原生截图。

- [浅色候选](../../ui-preview/content-ui/build/frames/640x1080-light-prototype-ready.png)
- [深色候选](../../ui-preview/content-ui/build/frames/640x1080-dark-prototype-ready.png)
- [双主题并排](../../ui-preview/content-ui/build/frames/light-dark-refined-comparison.png)

**视觉审查未通过门禁：** 本轮模型切换后，read_image明确失败：model gpt-6.1-sol does not declare image input。当前代理没有获得新图的视觉输入，像素断言和构建通过不能替代实际审图，也不能宣称深色优雅或阴影质感已确认。停止进一步视觉调校，保留截图供支持图像输入的模型／用户审阅；高德主线、车机连接与真实控制未动。

## 上一版 Material 页面历史工程验证

在独立工程目录执行：

```sh
./gradlew --offline :app:assembleDebug :app:testDebugUnitTest :content-ui:testDebugUnitTest :app:lintDebug :content-ui:lintDebug --console=plain
```

最终退出码为0，45项测试、0失败、0错误、0跳过：控制器9项、纯模型4项、真实 Compose 渲染32项。渲染覆盖浅/深主题、480/320dp宽×810dp高、日常/无数据/不可用/播放/待确认/失败演练/来源菜单及歌词空态；生成60张PNG。窄屏顶栏与空媒体文案修正均包含在最终构建中。

初次32项扩展前的20个渲染测试曾全部因 PixelCopy 超时失败；修复为对实际 AndroidComposeView 根调用 `draw(Canvas(bitmap))`，再按语义节点边界裁切。测试不重画界面；Dialog根视图和窗口根必须与Activity不同，否则失败。该路径没有实机Surface合成，因此不能替代真实阴影、字体和手感验收。非空多色/尺寸/控件边界/网格不重叠/语义启停/事件发送的通过，只证明这些客观性质，不证明漂亮。

截图目录为 `ui-preview/content-ui/build/frames/`（忽略产物），主要查看：

- [浅色默认](../../ui-preview/content-ui/build/frames/480x810-light-ready.png)
- [深色默认](../../ui-preview/content-ui/build/frames/480x810-dark-ready.png)
- [浅色来源弹层独立窗口](../../ui-preview/content-ui/build/frames/480x810-light-sources-dialog-window.png)
- [窄屏浅色](../../ui-preview/content-ui/build/frames/320x810-light-ready.png)

独立调试包：`ui-preview/app/build/outputs/apk/debug/app-debug.apk`。`aapt2 dump badging` 确认 `com.icar03.content.preview`、版本 `0.1-preview`、minSdk28/targetSdk35；`apksigner verify --verbose` 为v2单签名人通过。SHA-256：`9213058a4e09f6321edf13c10696c5d3d62bfea9dc9a27291fcdfed9f5d8c1d6`。包与AAR均被Git忽略，未安装。

`git diff --check`、项目文档/Skill/代码地图三项检查通过。原高德正式源码没有变更。

## 2026-09-30 中断后续做：来源区与展开浮层

诊断：最新原型渲染测试仅有浅深默认／无数据四帧，没有展开态覆盖；来源按钮原为72dp宽、34dp图标，紧邻下一首分隔线，视觉空间偏紧。来源实现仍是早期 Material 底部抽屉，而非媒体卡锚定浮层。以上由当前源码和实际浅深默认截图确认，不推断车机行为。

已修复：`PrototypeMediaCard()` 保持600×120参考构图、播放／下一首各80dp和12dp间隔，来源区改为96×120dp、42dp图标，并在下一首与分隔线间加入12dp留白。来源图标消费 `targetSource ?: source`，无障碍说明区分实际来源与切换中目标。`PrototypeSources()` 改为媒体卡右上方200×416dp浮层，参考边界(420,400)–(620,816)，五项各80dp、内边距8dp、菜单与媒体上缘间隔16dp，完整图标／名称和当前选中底色；进入240ms、退出200ms淡入淡出／位移。外部点击关闭；宿主 `MainActivity` 用同一状态处理返回键，不另建菜单状态。

已验证：在JDK17／SDK35执行以下命令，最终退出码0：

```sh
./gradlew --offline :app:assembleDebug :app:testDebugUnitTest :content-ui:testDebugUnitTest :app:lintDebug :content-ui:lintDebug --console=plain
```

共21项测试、0失败、0错误、0跳过：控制器11项、模型4项、双主题真实Compose渲染6项。新增展开截图、五来源选择事件、当前选中态、外部关闭、不可用／待确认禁用、来源失败回弹和重复选择拦截；回归检查96×120dp热区、播放／下一首80dp及间距、菜单与媒体的边界、时间／媒体／Dock原锚点和向下阴影。Lint通过不代表零警告。首轮测试编译因DpRect不提供width/height失败，已改为边界相减并重新通过；初次Gradle缓存锁被沙箱拦截，经授权后运行，没有用失败结果冒充通过。

本轮 `read_image` 可用，以下新图均实际查看，五来源名字未截断，媒体仍为单层横向结构，浅深菜单层级可辨；撤销上一轮“当前模型无法查看新图”的当前阻断，但历史记录保留：

- [浅色关闭态](../../ui-preview/content-ui/build/frames/640x1080-light-prototype-ready.png)
- [浅色展开态](../../ui-preview/content-ui/build/frames/640x1080-light-prototype-sources.png)
- [深色展开态](../../ui-preview/content-ui/build/frames/640x1080-dark-prototype-sources.png)

待验证：以上均为Android14／mdpi的640×1080本机预览，非目标车机截图；车机实际密度、触摸手感、返回键现场交互和动态帧表现仍未实机验收。浮层当前按参考构图固定锚定，其他窄屏／短屏和字体放大不在本轮验收范围。原型重复座椅卡仍是第一层静态构图示意，不代表真实功能；本轮没有借来源问题扩展页面或数据主链。

明确未做：不接ADB、不安装、不写车控／系统亮度／音量、不改高德正式源码／地图Surface／签名、不做第二层真实数据接入和第三层APK注入，不提交Git。工程文档和预览入口已同步。

## 当前剩余门槛

第一层参考画布的双主题关闭／来源展开本机证据已补齐，用户审美确认和目标密度／触感仍独立保留；本轮不能外推为整套响应式页面、真实数据或高德注入已完成。

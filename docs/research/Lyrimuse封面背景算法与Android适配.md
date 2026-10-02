# Lyrimuse 封面背景算法与 Android 适配

## 证据与版本

本机安装的Lyrimuse为1.9.0、build 1.9.0.1000；安装包不包含Swift源码。参考上游v1.9.0标签，实际提交 `e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2`。版本名一致不等于已验证本机二进制的编译提交。以下是源码静态确认，没有Mac动态目验或Apple Music同封面对拍结论。

- [烘焙与后台发布](https://github.com/Yudaotor/lyrimuse/blob/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2/lyrimuse/Sources/lyrimuse/PlaybackCoordinator.swift#L1051)：`rebakeBlurredArtwork`、`bakeWindowBackgroundLayers`。
- [背景呈现和交叉淡入](https://github.com/Yudaotor/lyrimuse/blob/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2/lyrimuse/Sources/lyrimuse/UI/LyricsWindowView.swift#L4229)：`artworkBackground`。
- [柔光摆动和暂停恢复](https://github.com/Yudaotor/lyrimuse/blob/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2/lyrimuse/Sources/lyrimuse/UI/LyricsWindowView.swift#L6231)：`BackdropNSView`。
- [切歌保持旧封面](https://github.com/Yudaotor/lyrimuse/blob/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2/lyrimuse/Sources/LyrimuseCore/Local/LocalPlaybackSource.swift#L3022)：`LocalPlaybackSource.apply`。

上游部分注释残留旧的EV−1.9、p75×1.5、不同区域的三张光斑、整圈旋转等描述。本记录采用实际表达式，不将历史注释当当前参数。

## 上游实际算法

| 环节 | 静态确认 |
|---|---|
| 宏观取色 | CGContext把封面缩成6×6 sRGB格，保留空间色相布局 |
| 明暗均衡 | 原始亮度 `L=.299R+.587G+.114B`；RGB乘 `.45+.55×clamp(meanL/max(.02,L),.4,3.5)` |
| 暗色保护 | 原始L≤.08格不参与可信主色／鲜艳端统计和饱和度拉升 |
| 色相 | S²加权圆均值；一致性 `min(1,resultant/weight/.4)²`；仅占权重不足20%、偏离60°–120°的少数色相收拢，真补色保留 |
| 饱和度 | 亮格不足9个则取全场；排序索引 `floor(n×26/36)`；目标 `min(.95,1.029×S^1.433)×coherence`，只提升可信且欠饱和的格 |
| 色场柔化 | 放大720²，边缘外延，高斯σ35，裁回原框 |
| 闭环调色 | 融合场平均RGB转HSV；反馈饱和度乘子限于 `.35×coherence` 和 `1.6×max(.4,coherence)`；Core Image vibrance为`.4×coherence`；底色EV−.15 |
| 柔光 | 原始最亮格作中心；径向不透明半径.08W、透明外沿.7W；同一张柔光复用三层 |
| 运动 | 每层alpha.25、lighten混合；稳定种子生成初角±15°、偏心锚点.4–.6、scale1–1.25；初角±12°往复摆动，单程55／75／95秒，easeInEaseOut |

旧封面直到新图到货才替换，非空新源在后台烘焙期间也保留旧图层。取图／烘焙都校验曲目key或取消状态，避免迟到回写。暂停及遮挡冻结图层时间，恢复从当前相位继续。

换图声明SwiftUI easeInOut 500ms；空闲欢迎态显式淡化450ms。源码没有统一保证全部nil／失败分支的出现消失，也没有专门的快速连切混合帧快照状态机，因此这两点不能照上游宣称已解决。

## 当前地图实现与差异

正式入口为 `content-compose/runtime/com/icar03/content/runtime/ArtworkProjection.kt` 的 `createAmbientField()` 和 `content-compose/ui/com/icar03/content/ui/MediaAmbientBackground.kt` 的 `MediaAmbientBackground()`／`AmbientPainter`／`AmbientTransition`；对应完整路径和上下游见[主链索引](../code-map/主链索引.md)。

Android独立实现采用有界96²采样后6×6面积平均，后台生成128²基底／柔光；高斯σ按35／720比例缩放。饱和度校正使用Android HSV与颜色距离运算近似Core Image vibrance，不能宣称像素一致。图层绘制用Android9 Canvas及 `PorterDuff.Mode.LIGHTEN`，不依赖RenderEffect、WebView、新GL上下文或新Surface。运动参数沿用三个慢速往复周期；种子来自封面采样内容，保证同图同姿态。

当前用户明确要求歌曲存在期间保持背景，覆盖上一轮“仅playing且有图”规则：切歌／缓冲／暂停／新图失败继续保留最近有效场，不套用上游9秒无图清场。首次从未取得真实封面时没有可生成的真实色场，保留高德主题底。歌曲与非歌曲门禁沿03歌词音频语义及元数据原则实现，并在地图明确排除 `CONTENT_TYPE_MOVIE`；03歌词原实现未显式排除该类型，不能把视频门禁写成已继承的事实。

UI保持一个常驻渲染器：到图才替换；出现、替换、消失统一500ms，采用Android `cubic-bezier(.42,0,.58,1)`近似easeInOut。该控制点是Android适配选择，不是上游给出的精确贝塞尔。快速中断把当前混合比例与相位渲染成保持viewport宽高比的小快照，从这帧继续；旧颜色完整铺底、新场整组按进度覆盖，避免两边分别降alpha造成的主题色暗谷。暂停只冻结运动，宿主停止取消任务／帧驱动。已发布纹理由引用生命周期和Android管理，只有从未发布的过期结果主动recycle。

浅深主题仍只跟随高德；按封面明暗调整黑／白可读性罩，不建立另一套媒体主题。双主题与实际Android像素证据见[本轮验证记录](../testing/歌曲封面背景柔化与过渡验证记录-20261002.md)。

## 来源边界

[Lyrimuse LICENSE](https://github.com/Yudaotor/lyrimuse/blob/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2/LICENSE)为GPL-3.0。本轮参考算法原理与数值，Android代码在既有owner内独立实现，没有把Swift源文件、上游二进制或Core Image实现搬入APK。上游参考只存于本机忽略区。03lyrics相邻仓库保持只读，其歌曲准入原则只用于地图自身端口边界；不复制播放器或另一套状态owner。

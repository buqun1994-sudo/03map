# Lyrimuse 国内歌词与车机能力对照

## 参考版本与实施范围

完整上游为 [Yudaotor/lyrimuse](https://github.com/Yudaotor/lyrimuse/tree/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2)，标签 `v1.9.0`，提交 `e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2`，包含 Swift 应用、LyrimuseCore 和 Go collector。本文依据实际表达式、API、模型和测试判断行为，不依据宣传或仅有的安装包。上游 [LICENSE](https://github.com/Yudaotor/lyrimuse/blob/e71fc2da2df14f1e7b9f8e6d49d65080b52dd5d2/LICENSE) 是 GPL-3.0；Android 部分独立实现协议、格式和行为，不批量搬入 Swift/Go 文件或上游二进制。历史 03lyrics 迁移来源仍保存在 [PROVENANCE.json](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/PROVENANCE.json)，本次新增行为参考单独登记，不能覆盖历史归属或形成宿主 APK 的公开再发布许可。

用户明确要求完整复刻适合国内用户与车机的能力，范围超过封面获取、字号和滚动三个现象。按后续明确调整，不接入 Musixmatch、LyricFind、Deezer、AMLL 联网来源；QQ、网易云、酷狗、酷我、咪咕、汽水为本轮国内目录，保留既有 LRCLIB 兜底。保留未来来源倾向接口，当前不增加设置页，也不能从车机“蓝牙音乐”反推手机平台。

## 能力与适配决定

表中的“实现”是正式源码事实；合成测试、公开网络探测和当前 APK 实车运行分别记录在 [验证记录](../testing/Lyrimuse国内歌词车机适配验证记录-20261002.md)，不能互相替代。

| 能力 | 上游源码证据 | 当前 Android 实现与边界 |
|---|---|---|
| 多源检索与渐进呈现 | collector 的 `provisionallyrics.go`、`lyricsourceinflight.go`、`lyricsourcefailure.go` 及 `enrich.go` | 国内六目录和 LRCLIB 并发；完整回合 20 秒、正文同时两路；先发布一次可同步正文，最后按完整候选批次重新评分。稳定来源失败码映射为本地域类型，取消和截止保留已有有效正文，切歌与停止拒绝迟到结果。 |
| 版本身份与时长证明 | collector `match.go`、`lyricrecordingtriangle_test.go`、`continuousmix_test.go`；上游三角容差为相对1%，普通`durationFits`另有相对25%/末尾5秒规则，源自报曲长冲突为12% | Android继续使用项目既有录音证据与proof重放，固定2000ms为本地准入；自动正文需要真实已知时长，封面也校验已知曲长、标题、歌手及已有专辑。不能将请求时长复制成源候选时长来通过门禁。 |
| 最终质量选择 | collector 的 `match.go`、`lyricsrescore_test.go`、`lyricstimeline.go` | 真字轨按字符覆盖率最多 400 分，实际中文翻译最多 50、日文假名主轨音译最多 30，真实末尾和来源家族正文共识参与评分；识别截断正文，同批相对比较。同步正文优先于纯文本；任意偏好不能挽救无效 proof。 |
| 当前播放器同源偏好 | collector `match.go` 的 `setNativeLyricSourcesForPlayer` / `playerForBundleID` / `playerNativeLyricSource`，`nativesource_test.go`、`shared/players.json` / `players_generated.go`；来源排序另见 `lyricssourceorder_test.go` | 上游确知播放器才使用的同源奖励不能套到未知蓝牙。本项目保留 `preferredSources` 排序接口，仅在质量与证据相同后作倾向，不给所有国内来源同时加“native”奖励。 |
| 国内逐字协议 | collector 的 QQ/QRC、Kugou/KRC、Kuwo/LRCX、Migu/MRC、Soda 请求及解码路径 | QQ 匿名 GetSession→GetPlayLyricInfo 使用同一目录真实数字 songID；网易 y/kv/lv/tv/rv；酷狗 XOR/zlib KRC、酷我 LRCX、咪咕 signed64 XXTEA/UTF-16LE MRC、汽水 KRC 文本。正文、翻译、源音译独立可选；可选轨道失败不清除有效主轨。 |
| QQ QRC 加密格式 | collector 的 QRC DES 衍生解码实现与相关测试 | Kotlin 独立实现协议。标准 JCE DESede 不等价；以临时上游 Go oracle 的合成向量、合成 XML 密文验证，无 Go 运行依赖，无账号 cookie 或授权挑战后的主机轮换。 |
| 严格双轴校验 | collector `lyricstimeline.go` 的 strict rehang 与矛盾轴检查 | 已知曲长、至少两行、原始单戳正文、完整字轨、一一文本一致、文档顺序与词区间正常、末句时长吻合不退化才采用字轨行首。翻译/音译先在旧轴附着后随正文重挂；不平移真实字轨、不均分词时长、不改原始缓存。证据不足继续逐行。 |
| 结构化歌词 | LyrimuseCore lyrics 模型、解析及 `LyricsParsingTests.swift` | LRC、增强 LRC、YRC、KRC、QRC、LRCX、MRC、TTML；保留真实行尾、字尾、背景声部和 agent。TTML 安全 SAX 禁止 DTD/外部实体，限制正文大小、深度和行词数量；完整字正文吻合才以词轴绘制主轨。AMLL 风格 TTML 格式支持不代表联网来源启用。 |
| 翻译与源音译 | LyrimuseCore 的 `LyricsRomanization.swift`、`LyricsTranslationSource.swift`、辅助行模型 | 保留实际来源提供的译文与音译，一对一按时间容差附着；纯简繁重写不算译文质量证据，中文汉字不当作日文读音证据。当前不生成翻译或音译。 |
| 播放位置与暂停/seek | LyrimuseCore `LyricsSyncEngine.swift`、窗口播放投影 | MediaSession PlaybackState 与真实 AVRCP 事件建立 elapsedRealtime 锚点；重复零位置、零速度及 UI 唤醒不创建媒体事件。来源/token/录音/生命周期序列隔离；暂停冻结，seek 立即投影，真实曲长端点停止。 |
| 活动句、滚动锚与间奏 | LyrimuseCore `LyricDisplayWindow.swift`、`LyricsWindowRules.swift`、`LyricDuet.swift`、`LyricDuetLayout.swift` | Store 唯一时间线调用纯 `ContentLyricsCursor`；活动句、滚动锚、同时间多声部独立；真实行尾和背景词尾支持重叠，间奏前预移与三点提示。纯 LRC 仅可用装饰间奏估计，不能由此造字尾或媒体进度。 |
| 原生车机呈现 | Swift `LyricsWindowView.swift` 与上述显示规则 | API28 Canvas/StaticLayout；主文 36sp、译文 22sp、源音译 20sp，左右 48dp 内缩，整曲稳定测量、附近行光栅化，450ms 曲线(.32,.72,0,1)，滚动锚约高度 .41。逐字仅裁切真实词时间，背景声部独立绘制；暂停/离屏/失焦/生命周期停止取消帧。沿 Android 字体 fallback，不宣称等同 Mac 字形。 |
| 手动浏览与静态正文 | 上游 `LyricsWindowView.swift` 自动跟随持续生效，手动回看提供“回到当前播放”；`LyricsKind.swift` 只分类，不含四秒恢复规则 | 本地车机定时歌词拖动时暂停跟随、结束四秒后恢复，避免新增常驻按钮；这是Android交互选择。纯文本明示静态，不创建伪时间戳或自动跟随；同录音保留浏览位置，切歌重置。 |
| 缓存自动升级 | collector `enrich.go`（`needsLyricsRetry` / `retryLyricsUpgrade` / `needsLyricsRescore` / `rescoreLyrics`）、`enrichsave.go`、`enrichindex.go`、`enrichbodyload.go`、`lyricsautoupgrade_test.go` / `lyricsretry_test.go` / `lyricsrescore_test.go`；上游使用JSON主缓存和CRC正文侧文件，6小时最多3次成功触达源的升级重搜，全轮未触达不耗次数 | Android沿用既有私有SQLite，保存完整正文/词轴/译文/音译/TTML/proof；质量版本变化触发重评，本地更严格仅有效Found才计三次预算、间隔六小时；升级不重置预算，同分或较差保旧。人工采纳优先、自动任务和配额清理不得覆盖或删除人工条目；SQLite事务失败完整回滚是本地保障，不是上游实现。 |
| 原生封面与回退 | upstream PlaybackCoordinator/LocalPlaybackSource 封面路径，collector `coverquality.go` | 原生 Bitmap/URI/公开 MediaBrowser 优先；URI 有界解码、LRU 与短负缓存。网络封面按已证实录音排序，网易与酷狗选定 ID 详情补图；目录 3.5 秒、总回合 6.5 秒、最多四候选，图片失败换下张、0/300/600/1200ms 有界重试。512px、2MiB 图片、16MiB 私有按录音缓存。 |
| 已验收氛围背景 | PlaybackCoordinator、LyricsWindowView；[背景专项研究](Lyrimuse封面背景算法与Android适配.md) | 本轮保持既有 6×6 取色、柔化场与三层慢柔光；切歌/暂停/缓冲/新图缺失保持最近有效场，到图500ms替换，确认非歌曲退出。不会加入上游无图九秒清场。 |

咪咕公开目录在已探测响应中没有真实 duration，当前代码保持 `0`，该候选不能自动通过已知时长门禁。实现解析不代表当前接口返回的每个候选均可自动采纳。酷我目录可达也不代表已验证真实 LRCX 正文；具体网络证据等级见验证记录。

## 平台上没有直接对应的部分

- macOS 播放器本地私有缓存、Spotify/Apple/KKBOX/Amazon 等桌面入口不能跨包读取 Android 私有目录。本项目使用合法公开媒体元数据、来源返回及自身缓存；没有 root、账号 token 提取或无障碍绕过。
- Apple 在线歌词依赖合法用户/开发者 token 和 storefront，动态专辑视频还需独立性能与身份校验，本轮未实现。静态封面与已经验收的背景保持不变。
- 上游 macOS 本地翻译和外部机器翻译、日文读音词典没有直接搬入。API28 公开 `android.icu.text.Transliterator` 不可用；未借反射访问隐藏 API，也未用通用汉字转拼音冒充日语阅读。
- 上游完整别名查询矩阵、专辑名救援、歌词管理器的导入/导出/编辑/校准界面仍未全部迁移。当前使用既有有界三轮检索与人工缓存领域接口，设置页遵循用户要求暂不增加；正文自带 offset 已解析。新校准必须绑定录音与时轴，不按歌名/歌手跨版本继承。
- MV/广播专项时钟、Mac 多窗口/菜单栏/刘海/覆盖窗与车机没有同形入口；没有以模拟时钟或新增悬浮层宣称移植。

这些差异是明确的当前适配边界和未完成能力，不将本轮描述为所有桌面功能 100% 复刻。后续扩展继续沿唯一媒体→Store→Compose 主链，复用既有人工采纳、来源倾向和格式入口。

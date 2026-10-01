# Compose 原厂动效与音效追溯

## 当前实现与历史结论边界

第四轮已在唯一Compose呈现层消费座椅真实owner的12个bk/wh资源与5个媒体来源Lottie，完整owner／帧矩阵见[补充研究](座椅与媒体来源原厂动画补充.md)。资源总计86项／25 Lottie。播放与暂停02_f按动作命名，目标pause使用play_02_f、目标play使用pause_02_f；消费时以路径回调隐藏原按钮圆底，保留实心符号与烘焙时间轴。结束保留同一Drawable末帧；冷缓存时保留上一实际渲染帧，待加载完成后原子进入新资源进度0，避免先显示目标静态图再倒回首帧。所有本机实际像素／末帧回归及候选包身份见[第四轮记录](../testing/Compose第四轮反馈修正验证记录.md)。

以下“8份资源”和有AE effect的seat单档文件仅标记第三轮当时的研究范围；这些候选不等同本轮BaseDockAcButton实际消费的无ef多态文件。

## 结论

第三轮只读追踪与随后消费确认如下：

1. 点击音效的高德原生入口是 `com.autonavi.amapauto.jni.GAdaAndroid.playSystemClick()Z`，它转到 `se.playClickSound()Z` → `kq.playClickSound()Z` → 默认实现 `di.playClickSound()Z`，最终调用 `AudioManager.playSoundEffect(0)`。`0` 是 Android 的 CLICK 音效常量语义。Compose当前`ContentPanel.playClickSound()`优先经反射调用这一高德bridge，返回失败或入口不可用时才用`View.playSoundEffect(SoundEffectConstants.CLICK)`兜底；同一已接受点击只响一次。
2. 第三轮当时正式源码登记的 8 份 Lottie 包含原厂 `com.android.systemui.plugin` 10.2.1.542 的 7 份 B 类素材，以及已登记的 canapp `com.mengbo.adasvisualizer` `ico_media_next_f.json`。清单声明由 Lottie 6.6.7、API 21、单次播放加载。可直接施工的媒体与状态动效为：锁定、解锁、播放、暂停、实心下一首、电池充电、主页／应用列表。旧 `ico_media_next.json` 保留来源记录，但主链应消费 `ico_media_next_f.json`，避免动画期间出现描边镂空。
3. **此前把当前 `content_oem_ico_media_play.xml`、`...pause.xml`、`...next.xml`整体称为实心是错误的。** 播放／下一首已登记 SystemUI Vector 的 path 使用外轮廓与内轮廓组合，内三角形成镂空；暂停 Vector 本身是两条白色实心柱体，但它不属于用户要求的同一组“实心媒体图”候选样式。这些旧资源不能作为实心验收证据；正式消费者现已改用下述canapp原厂*_f资源。
4. 只读追踪 `.tmp/research-20260927/apks/canapp.apk`（包名 `com.mengbo.adasvisualizer`，versionName `1.0.303`，APK SHA-256 `851b965c4bc07f8fc47068cb8558edf3f3a3a365a978535e720d70194f9fd8b9`）后，确认存在原厂命名的静态实心 Vector 候选：`ico_media_play_f`→二进制资源 `res/iVg.xml`，`ico_media_pause_f`→`res/mtT.xml`，`ico_media_next_f`→`res/-EX.xml`。`aapt2 dump xmltree`显示三者均为48dp Vector、白色 fill；play_f是单一实心三角路径，pause_f是两条实心圆角柱体，next_f是实心三角加实心竖条。它们不是自绘路径，且与同一包资源表中 `ico_media_play_f/pause_f/next_f` 的正式资源名一一对应。
5. 这三个 `*_f` Vector 的二进制源哈希分别为 `iVg.xml=e8c95e38c1971001f9ad3cd78ce928fbcaa536ba8648630dcb0236ecac9c8f46`、`mtT.xml=0d690f6b7bb7f3eecff9ee64f4216cda2c2e9c9a25a073b2f8bffdb3c6724af0`、`-EX.xml=bb66ea68aba9a584ee99a71a9a80a078605fd276132afa719ef124b2b35ceda8`。用户已授权后，三份资源已复制为正式 `content_oem_ico_media_play_f.xml`、`content_oem_ico_media_pause_f.xml`、`content_oem_ico_media_next_f.xml`，并在 `content-oem/asset-manifest.json` 中登记 source entry、source APK SHA、decoded SHA 与 deployed SHA；正式ContentPanel现已消费这三个*_f稳定资源。
6. 同一 canapp 包还含 `ico_media_play_02_f`／`ico_media_pause_02_f` 等过渡资源；当前登记的同名 Lottie JSON 与这些过渡资产哈希相同（play `134a245c...`、pause `c380f73c...`），但 `*_f` Vector 是更合适的稳定态实心候选。稳定态和过渡态应分开登记，不能把 Lottie 首帧或 Vector 静态候选互相冒充。

## 点击音效精确链

静态确认（9.5.0.600013 正式 Smali）：

- `smali/com/autonavi/amapauto/jni/GAdaAndroid.smali`：`.method public static playSystemClick()Z`，约 4074；调用 `Lse;->c()Lse;` 后执行 `Lse;->playClickSound()Z`。
- `smali/se.smali`：`.method public playClickSound()Z`，约 1928；转发 `Leq;->playClickSound()Z`。
- `smali/kq.smali`：`.method public abstract playClickSound()Z`，约 34，为高德播放协议抽象。
- `smali/di.smali`：`.method public playClickSound()Z`，约 2917；从 `rv.H().z()`获取 Context，取得 `audio` 服务，转成 `AudioManager`，执行 `playSoundEffect(0)`。

当前Compose的`ContentPanel()` dispatch集中调用`playClickSound()`，先经高德bridge、返回false或链接失败时才用View兜底；不改Store。事件门禁为：只在用户确认的点击／控制事件调用一次；页面 settled、关闭浮层等程序性状态变化不发声；disabled、拖动中和失败回弹不额外发第二声。

## 原厂 Lottie 清单与状态 owner

清单文件：`assets/content-oem/asset-manifest.json`。原 7 份状态 Lottie 具有 `sourcePackage=com.android.systemui.plugin`、`sourceVersion=10.2.1.542` 和原 APK SHA `f6b07acc60b8530b860f3cb0312fc5e3745ad6d00301dd71bf7410a764ef1caf`；新增 `ico_media_next_f.json` 具有 `sourcePackage=com.mengbo.adasvisualizer`、`sourceVersion=1.0.303` 和 canapp APK SHA `851b965c4bc07f8fc47068cb8558edf3f3a3a365a978535e720d70194f9fd8b9`。全部登记了 `sourceSha256` 与 `deployedSha256`。

| 用户可见状态 | 已登记 Lottie | 清单帧／时长 | 稳定态 Vector | 推荐触发 owner |
|---|---|---:|---|---|
| 锁定 | `assets/content-oem/ico_lock_close_f.json` | 30fps，0–60，4 keyframed layers | `res/drawable/content_oem_ico_lock_close.xml` | `ContentStore`锁状态从未锁到已锁确认后，或旧 `ContentIconView.setLocked()`的状态转换；pending期间保留目标／当前明确语义 |
| 解锁 | `assets/content-oem/ico_lock_open_f.json` | 30fps，0–31，6 keyframed layers | `res/drawable/content_oem_ico_lock_open.xml` | `ContentStore`锁状态从已锁到未锁确认后；不能只因命令发送成功播放完成态 |
| 播放动作／目标暂停按钮 | `assets/content-oem/ico_media_play_02_f.json` | 30fps，0–16，2 keyframed layers | 当前 `content_oem_ico_media_play.xml` 是镂空旧候选；实心候选为 canapp `ico_media_play_f` (`res/iVg.xml`) | Media snapshot 从暂停到播放确认后，或已接受的 play target；事件不可直接替代回读状态 |
| 暂停动作／目标播放按钮 | `assets/content-oem/ico_media_pause_02_f.json` | 30fps，0–16，2 keyframed layers | 当前 `content_oem_ico_media_pause.xml` 是旧候选；实心候选为 canapp `ico_media_pause_f` (`res/mtT.xml`) | Media snapshot 从播放到暂停确认后，或已接受的 pause target；同一状态重复快照不得重复播放 |
| 下一首 | `assets/content-oem/ico_media_next_f.json`（旧 `ico_media_next.json` 保留历史登记） | 30fps，0–31，3 keyframed layers，全部 fill geometry | `content_oem_ico_media_next_f.xml`；旧 `content_oem_ico_media_next.xml`为镂空候选 | 用户点击且 `nextAvailable` 通过门禁时播放一次；filled 动画期间不显示描边镂空，下一首命令失败不应伪造曲目切换，动画仍不替代媒体回读 |
| 充电 | `assets/content-oem/ico_battery_charging.json` | 30fps，0–30，3 keyframed layers | `content_oem_ico_battery_charging.xml`或登记充电 Vector | Vehicle snapshot 从非充电到明确充电且有效电池数据后；未知／失焦／后台只显示稳定态 |
| 主页／应用列表 | `assets/content-oem/ico_home_applist.json` | 30fps，0–31，3 keyframed layers | 对应 `content_oem_ico_home_applist.xml` | 页面／地图入口从非激活到激活的真实状态转换；当前内容区若没有该状态，不应为了动画新增入口 |

上述 `ContentStore`、snapshot 和可用性归属是对当前正式主链的施工映射；其中锁／电池／媒体状态数据可以静态定位，真实车机回调时序仍属待验证。

## 历史 ContentIconView／Renderer 的可复用结构

需要区分“当前源码里保留的施工参考类”和“9.5 原始输入 APK 的原生 owner”：`content-src/com/autonavi/amapauto/content/ContentIconView.java` 与 `ContentRenderer.java`是在项目历史提交中加入的内容区施工类，并非从原始 APK 反编译出的原有 `ContentIconView`。它们仍提供了可直接复用的动效生命周期语义：

- `ContentIconView.setIcon(String)`：识别 play/pause、停止旧动画、刷新稳定态。
- `setBattery(int, boolean)`：从已有电量进入充电时触发过渡。
- `setLocked(boolean)`：锁状态变化触发锁定／解锁过渡。
- `playAction()`：对下一首等一次性点击触发过渡。
- `transitionAsset()`：已有锁、下一首、电池、主页的 Lottie 资源映射；当前实现对 play/pause 返回 `null`，所以它没有真正消费 `ico_media_play_02_f.json`／`ico_media_pause_02_f.json`，这是媒体动画缺失的重要静态证据。
- `startTransition(Drawable)`：用 `LottieCompositionFactory.fromAsset(applicationContext, "content-oem/" + asset, "content-oem/" + asset)`加载；`LottieDrawable`设为 SOFTWARE、启用 merge paths、一次播放、结束时回到 stable Drawable；生命周期要求 attached、visible、window focus、animationVisible、available 全部满足。
- `stopAnimation()`：递增序列号、移除异步加载监听、取消 Drawable、清理 fallback；`onWindowFocusChanged(false)`、不可见、detach 都会停止。
- `ContentRenderer.renderMediaState(ContentState)`：以 `mediaPlaybackTarget`优先于实际 `mediaPlaying`选 pause/play 稳定态；`ContentStore`仍负责 command target、实际 snapshot、失败／超时回弹。
- `ContentRenderer`的媒体 click：播放按钮只调用 `store.toggleMediaPlayback()`；下一首先调用 `iconFromControlButton(mediaNextButton).playAction()`再调用 `store.nextMediaTrack()`。这个顺序说明旧施工实现把 next 当作点击即发的单次动画，而 play/pause 更适合在目标／实际状态转移时播放。

该旧结构提供了动画状态的事件语义和取消规则，但不能直接说明原始高德 UI 的真实 owner；Compose 应移植“单次状态转移 + 生命周期停止 + 稳定态回落”，不要把旧 View 整体搬入 Compose。

## 媒体图标与动效最小施工映射

- 当前 `content_oem_ico_media_play/pause/next.xml` 仍是旧稳定候选；已登记的实心稳定资源为 `content_oem_ico_media_play_f.xml`、`content_oem_ico_media_pause_f.xml`、`content_oem_ico_media_next_f.xml`。它们来自已核验 canapp `ico_media_play_f`、`ico_media_pause_f`、`ico_media_next_f`，不是手绘路径。
- canapp 候选的准确资源映射为：`ico_media_play_f`→`res/iVg.xml` SHA `e8c95e38...`，`ico_media_pause_f`→`res/mtT.xml` SHA `0d690f6b...`，`ico_media_next_f`→`res/-EX.xml` SHA `bb66ea68...`。它们通过 `aapt2 dump xmltree`确认是48dp白色Vector和实心路径，并已写入正式 asset manifest。
- 所有可点 icon 的按压反馈与状态形变统一走当前共享主链；有可移植、已登记的原厂素材时，锁定和播放／暂停／下一首使用真实 Lottie。稳定Vector只在初始、不可见／未知或加载失败时承接状态，正常异步加载保留上一实际帧、结束保留同一Lottie末帧，不能把按压缩放、透明度或颜色变化描述成原厂 path animation。
- 已登记的播放／暂停／下一首Lottie在明确状态／下一首动作时播放，失败回目标Vector，结束停留同一Drawable末帧。canapp 实心 Vector 已完成来源登记，不再以当前旧镂空图作为最终稳定图。
- 座椅 Vent／Heating／Massage 的本地 inventory 确实存在大量原厂 Lottie。Vent active 档位带 `Excite - 旋转`／`Excite - 操控点` AE pseudo effect；Heat active 档位带 `追踪路径`／循环 AE effect；Massage 档位为无 AE effect 的 stroke/fill 路径动画。这批单档AE候选未登记；第四轮继续追到BaseDockAcButton实际使用的无ef多态bk/wh文件，已登记并播放。真实帧区间和功能色见座椅／来源补充与第四轮像素记录；AE候选不能用来推断实际owner没有可移植路径。
- Lottie 播放由已锁定的 Lottie 6.6.7 依赖和 Compose 帧 Canvas 驱动；不把座椅素材的未承载 AE effect 当作可完整消费资源。所有可点 icon 的按压反馈与状态形变继续走共享主链；锁定、媒体三键、座椅三项和五媒体来源使用已登记、可移植的真实Lottie。
- 没有动态素材的图标复用 stable Vector 和共享按压／选择变换（微缩放、透明度、颜色或 `graphicsLayer`）；这种 Compose 变换不描述为原厂 path animation。

## 证据边界

- 静态确认：资源路径、当前旧 Vector 的几何、三份 `*_f` 实心 Vector 的原厂资源名／二进制树／source与deployed SHA、8 份已登记 Lottie 名称／帧率／帧范围／SHA、座椅 inventory 的 AE effect 分布、旧施工类方法和高德点击音效 Smali 链。
- 实验参考：`.tmp/research-20260927/apks/canapp.apk`及其资源表／解包目录中的 `ico_media_*_f`；它已按用户授权登记到正式 manifest。`.tmp/icon-inventory-20260928/plugin-decoded/assets/`中的座椅 Lottie 只用于结构盘点，未登记进正式主链；`ContentIconView`／`ContentRenderer`的生命周期和触发顺序也属于项目历史施工类，不是原始输入 UI 的反编译 owner。
- 待验证：Android 9车机上的Lottie渲染帧／颜色回调、实车回读时序、座椅档位与颜色以及按压主链的实机表现。本机双主题原厂路径、实心目标、冷缓存0帧起播和末帧保持已有实际像素证据。

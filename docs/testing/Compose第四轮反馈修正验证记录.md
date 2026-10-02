# Compose 第四轮反馈修正验证记录

本轮处理浅色配色恢复、深色滑条填充、爱趣听简笔图标、座椅／五来源原厂动画、删除本地P档限制五项反馈，以及随后补充的“0帧顺播到末帧并停留，不能回闪首帧”。输入与包身份仍是9.5.0.600013全屏动态分屏；上一保存提交`8fd9bec`和[第三轮验证记录](Compose第三轮反馈修正验证记录.md)保留历史，不继承旧包的实车结论。

## 修复与正式落点

| 反馈 | 原因与修复 | 正式owner／证据 |
|---|---|---|
| 浅色模式恢复 | 撤回第三轮浅色D8／白选中／BBB按下；整个LightColors恢复保存提交的E9／E4／E2，白色Dock、来源浮层和滑条填充；深色对比保留 | [ContentTheme.kt](../../source/amap-9.5.0.600013/content-compose/ui/com/icar03/content/ui/ContentTheme.kt)、[ContentPanel.kt](../../source/amap-9.5.0.600013/content-compose/ui/com/icar03/content/ui/ContentPanel.kt)；双主题真实View取像素 |
| 深色纵向填充 | 两滑条填充由媒体surface改为同一选中令牌#484848 | `VerticalLevelCard()`；brightness-fill／volume-fill实帧像素 |
| 爱趣听线图 | 消费原厂ico_media_aiquting Vector，所有来源使用主题主色；品牌PNG只保留历史登记 | `sourceIcon()`／`sourceTint()`；菜单、媒体按钮与歌词入口共用映射 |
| 座椅实际动画 | 上轮只对未承载AE的单档候选做盘点，遗漏原车真实owner使用的无ef多态文件；本轮沿DockAcButton→BaseDockAcButton追到bk/wh与真实gear帧矩阵 | `ShortcutOemIcon()`共享网格／Dock呈现；[原厂owner补充](../research/座椅与媒体来源原厂动画补充.md) |
| 五来源实际动画 | 补登记launcher的BT／AQT／网易／USB／本机五个Lottie，来源按下及明确状态变化播放真实路径；抬手继续播完，取消不发命令 | [OemIcon.kt](../../source/amap-9.5.0.600013/content-compose/ui/com/icar03/content/ui/OemIcon.kt)的`animationFor()`／`OemIcon()`，按压计数仅是局部呈现触发 |
| 去掉本地P限制 | 从`queueCommand()`删除档位0x255／车速0x401读取与P／零速拒绝；原车系统决定驾驶条件。原Binder身份、连接、按摩开启顺序、回读、异常与超时保留 | [ContentVehicleAdapter.java](../../source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content/ContentVehicleAdapter.java)；P／D／R／未知场景逐项核对四个真实写事务，未查询本地档位／速度 |
| 末帧回闪 | 结束不销毁／清composition、不立即切Vector，而保留同一Drawable末帧；下一次明确触发才seek0。播放／暂停资源按动作命名，依据实际首尾帧纠正目标映射 | 共享`OemIcon()`播放owner；完整进度与连续尾帧像素相等 |
| 冷缓存首播 | 加载间隙提前绘制目标Vector会在Lottie到达后倒回旧首帧；新增`OemFrame`保存已画配方，冷加载保持上一稳定Vector／Lottie帧，解析就绪后原子切入进度0，失败才用目标Vector | 延迟`LottieTask.EXECUTOR`并清缓存的确定性回归，旧实现双主题失败、修正后通过 |
| 快速回切 | A未结束→冷B→A不能把已消费A的中间帧当完成；取消后回到同目标明确收敛A末帧，迟到解析不重播 | 同一cold test补快速回切序列，最终进度1／Playing=false |

## 唯一真值与资源消费

`ContentRuntime → ContentStore → ContentBinding → ContentUiMapper → ContentPanel`不新增业务状态owner。`ControlState.displayed/known`供座椅选择档位和主题；媒体actual／target仍分离，命令发出不确认成功。`OemFrame`仅含已画资源、composition、颜色和帧区间，播放键／按压计数／进度也只在呈现层；它们不进入Store，不写车辆，不保存媒体成功。

通风／加热level3/2/1播放gear0/1/2，分别`1..30/31..60/61..90`；通风关闭`91..120`，普通加热关闭必须`121..150`。按摩level1/2/3按升档顺序gear0/1/2，关闭`91..120`。每次仅播放所选真实区间，末帧停留；暂停／失焦／离屏取消，恢复Vector且不补播，监听在dispose移除。三类功能色只覆盖指定body／fill角色，未激活标记保留原厂主题灰、动态opacity／trim／描边，原路径和原始JSON不改。

播放／暂停02_f名称代表动作：目标pause消费play_02_f，目标play消费pause_02_f。它们的路径1是旧按钮圆底，关闭该消费者的MERGE后用PATH回调隐藏路径1；原厂符号路径2/3、颜色回调与烘焙关键帧保留，消费者按1.6归一符号画布，适配现有单层矩形触点。原字节／哈希及消费策略写入[OEM清单](../../source/amap-9.5.0.600013/assets/content-oem/asset-manifest.json)。

新增17份原厂资源：12份左右座椅三类bk/wh主题＋5来源；当前产品仅消费主驾left，right登记用于闭环原厂资源矩阵，不新增副驾控制。86项／25 Lottie的来源、源条目、raw／deployed SHA完整性通过；全部新增文件无ef、表达式、图片依赖，checker保持严格拒绝。Lottie6.6.7／Okio1.17.6及既有56项依赖＋3工具锁不扩展；没有AppCompat、旧Renderer或预览Controller进入正式闭包。

## 本机验证

最终测试计数、签名包与包级门禁结果在下方候选身份段记录。主要定向用例位于[ContentPanelRenderTest.kt](../../ui-preview/content-ui/src/test/java/com/icar03/content/ui/ContentPanelRenderTest.kt)：

- `selectionContrastAndDockGeometryFollowDisplayedTruth()`：双主题填充、菜单／Dock、两滑条填充及AiMusic Vector。
- `allSeatLevelsUseOriginalSegmentsAndRetainTheirTail()`：三类座椅0/1/2/3，网格／Dock同一资产；384ms和768ms实际图标像素不同，排除仅260ms通用缩放；尾帧和时间更新后像素相等。
- `allFiveSourcesPlayTheirOwnPathsAndLiftDoesNotResetTheFrame()`：五来源各自原厂路径中间帧变化，取消不发命令、抬手进度不倒退、来源确认后的按钮动画与末帧保持。
- `mediaTransitionEndsOnTheCorrectFilledTargetAndNeverRewinds()`：从实际动画开始逐帧0→1无倒退，末帧实心play／pause目标正确；连续8帧尾像素相等。
- `uncachedMediaTransitionKeepsItsPreviousFrameUntilZeroFrameIsReady()`：清缓存＋故意延迟解析，正反加载间隙保持旧Vector／Drawable；资源到达进0；A中断→冷B→A返回末帧；迟到结果不重播。
- `registeredOemAnimationPlaysAndSettlesWithoutSnapshotReplay()`：车锁／下一首原厂路径、尾帧／时钟保持、真实窗口焦点dispatch与恢复不补播。

API28的[Binder写事务探针](../../ui-preview/content-runtime/src/test/java/com/icar03/content/runtime/ContentVehicleAdapterCommandTest.kt)在P、D、R、未知档位与0／20／未知速度场景，每轮验证车锁、通风、加热、按摩四个实际事务5目标，且未读0x255／0x401；[Store接入测试](../../ui-preview/content-runtime/src/test/java/com/icar03/content/runtime/ContentRuntimeTest.kt)保留四控制目标→真实回读确认、系统拒绝及6秒超时回弹actual。Binder替身不冒充真实车辆写入。

实际查看的640×1080本机帧均由Android View／Canvas绘制，示例曲目和数值为本机替身：

- [浅色恢复](../../ui-preview/content-ui/build/frames/640x1080-light-selection-contrast.png)与[深色填充](../../ui-preview/content-ui/build/frames/640x1080-dark-selection-contrast.png)。
- [浅色来源与爱趣听线图](../../ui-preview/content-ui/build/frames/640x1080-light-oem-source-AiMusic-tail.png)。
- [浅色座椅level1末帧](../../ui-preview/content-ui/build/frames/640x1080-light-oem-seat-1-tail.png)与[深色座椅关闭末帧](../../ui-preview/content-ui/build/frames/640x1080-dark-oem-seat-0-tail.png)。
- [播放转暂停实心末帧](../../ui-preview/content-ui/build/frames/640x1080-light-oem-media-pause-tail.png)与[冷缓存反向等待](../../ui-preview/content-ui/build/frames/640x1080-light-oem-cold-media-reverse-waiting.png)，后两者逐像素一致。

渲染原图和测试报告留在被忽略的build目录，未提交截图、APK、DEX、class或完整日志。

## 最终候选与门禁

最终候选为[signed.apk](../../apk-work/9.5.0.600013/source-build.4kLb0D/signed.apk)，`158340448` bytes，SHA-256：

```text
486c0e4280033fbda1a693e1de5315f6899b0ff43be8a7cca1a21a48092970dc
```

包名`com.autonavi.amapautolite`，versionCode`26000001`／versionName`9.5.0.600013`，min／target SDK21／24。单signer，v1／v2／v3全部有效，证书SHA仍为`a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`；沿用已测试AOSP testkey身份，不称私有生产签名。

实际执行`bash scripts/build-content-apk.sh`及`bash scripts/test-content-host.sh apk-work/9.5.0.600013/source-build.4kLb0D/signed.apk`，均退出0。UI67＋Runtime36＋Host23＋Preview11＝137，失败／错误／跳过全部0；最终UI测试在签名构建前完整执行，同包宿主命令复用该通过结果，重新核对其余模块及四Lint。最后同包证据目录为`apk-work/9.5.0.600013/host-package-test.bAB2hN/`。

原5408 public IDs保持；新增单DEX有2376定义，联合两DEX无重复／缺运行时引用／旧Renderer或预览泄漏；63原native库逐SHA保持，唯一新增库按锁的arm64 JNI，64库全部Deflate。包内OEM manifest与正式源码逐字节相同，25份Lottie各自包内SHA与deployedSHA全部相同；LightColors整段与`git show 8fd9bec`严格相等。OEM86／25、56＋3依赖锁、文档／技能／代码地图和diff空白自检全部通过。前两次中间包不作为第四轮交付。

## 待验证与明确未做

本轮唯一设备发现入口`node scripts/find-vehicle-adb.mjs --serial-only`未找到匹配S56_HQX／SDK28设备；未使用旧地址、未安装、未真实车控写入。所有运行描述限于本机宿主与包级检查，不称Android9车机已验收。

同包现场需逐项确认：浅色闭／开菜单恢复、深色两个滑条填充；三类座椅各档和关闭的原厂路径／功能色；五来源图标和play／pause／next单次末帧停留、抬手／失焦／回到页面不重播。正常用户点击经现有系统车控入口处理，若系统拒绝或不回读，应恢复actual并给既有失败反馈；不要求为测试切换到D/R或造车速。第三轮真实功率、自然充电完成、普通UID媒体／主题时序与地图首帧／双Surface仍按历史最小现场清单核对。

未改地图125%密度、分界几何、两条Surface、包名、签名身份、原Binder命令值或权限路径；未新增业务功能。源码与文档保留当前工作树，未提交本轮改动。

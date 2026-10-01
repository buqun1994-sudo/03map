# Compose 第三轮反馈修正验证记录

## 输入与范围

按用户要求先提交上一轮源码与证据：`8fd9bec fix(content): 修正第二轮视觉反馈与主题充电真值链`。提交前文档／技能／代码地图／diff检查通过，提交后工作树干净。该提交保存第二轮快照，不称实车已验收。

本轮十一项反馈继续沿 `ContentRuntime → ContentStore → ContentBinding → ContentUiMapper → ContentPanel`，无另一套车控／充电／主题真值。系统密度、分屏几何、双Surface、签名与包名不改，用户已明确剩余11分钟读数正确实时。

## 诊断与落点

| 项目 | 根因／最小修复 | 证据等级与门禁 |
|---|---|---|
| 快捷及Dock触点反馈 | 上轮把clickable indication设null，仅容器缩放，误解用户要求；恢复共同Material3 bounded Ripple，从触点扩散，图标微动并存，媒体仍只有矩形透明度按压 | 静态API owner＋实际down/up/cancel契约；原子点击不叠发；不能把Ripple原点与selected背景混为一层 |
| 内容地图浅线 | 内容子树未画边界；在当前Box viewport的右侧画1dp浅线 | 多宽度640/520/400/640回归；SplitPanelController仍供host宽，不改Surface或手势条 |
| 车锁选中 | generic displayed>0把锁定判选中；统一shortcutSelected：known且Lock displayed0选中，其它control displayed>0 | 快捷／Dock actual与pending目标一致，失败回弹仍由Store |
| 功率缺失 | 原厂电压0x344是INT32/type40，错误getDataFloat返回-1000；电流0x345才是FLOAT/type60 | Adapter改事务7/int电压，事务13/float电流；[原厂CSV与方法证据](../research/充电功率读取类型与完成态补充.md)，类型敏感Binder样本和实时变化测试；新包实车读数待验 |
| 四态充电文案 | 旧Mapper文案未按用户最新口径，完成态未归一 | 已插枪／预约充电中／剩余11分钟·72.0kW／充电完成；只有原始SOC100＋已插枪＋明确BMS0归COMPLETE5，Store显式允许该归一状态，99.6显示100和未知BMS不猜完成；不是宣称厂商枚举5 |
| 点击声 | Compose点击不会自动执行旧View performClick声效 | 确认事件统一playClickSound，高德GAdaAndroid.playSystemClick()→原AudioManager CLICK；失败单次View回退，禁用／取消／程序快照无声；实际车机音色与音量待验 |
| 对比层级 | 上轮selected#2D与surface#1A相近；浅色普通#E9也接近白 | 浅色普通D8D8D8／选中FFFFFF，深色普通1A1A1A／选中484848，按下BBBBBB／5C5C5C；背景EFF0F7／0F0F0F保留；截图和像素验证 |
| 媒体实心图 | 原登记play/next是evenOdd内轮廓镂空；不能仅因有fillColor而称实心 | 新增同车原厂canapp三份*_f Vector，原APKentry二进制SHA／decoded／deployed分别登记，播放／暂停／下一首稳态为实心；动态图也须避免反变镂空 |
| icon动态 | 第三层只读painterResource丢了旧动效加载链 | 所有可点icon共用press/state形变，可移植原厂Lottie按状态／确认点击单次转场，重复快照／时钟不重播；Lifecycle／focus／离屏停止，异步监听dispose移除。座椅保留档位色和几何微动，AE高级效果不称完整复刻，见[动效追溯](../research/Compose原厂动效音效追溯.md) |
| Dock选中范围 | 上轮所有选中都铺槽 | 仅解锁车锁整槽；座椅等其它选中用同RoundedPressTarget尺寸／圆角的局部矩形，槽位触摸面积不缩小 |
| 来源浮层明暗 | Surface提升色背景＋较暗variant选中，与本次要求相反 | 浮层用普通非选中底，选中项亮选中底，品牌PNG不tint；全部来源回流仍原Store |

## 动效与依赖边界

恢复Lottie6.6.7、Okio1.17.6，仅两项新增release产物；版本与旧受控脚本SHA完全一致，分别`4ef8098c5224016d36585765853df4a970fa2632f64a392c008ce82161733672`、`8e88b055523cc80613dfb844d598740e10ada62f4bd98304cdd140c5854cc3b6`。通过exclude避免引入AppCompat控件栈。生产锁56项＋3工具，原现代AndroidX隔离继续，DEX闭包纳入Lottie/Okio引用校验但仍禁止旧Renderer／IconView。

Lottie解析原JSON，Compose动画时钟推动原厂帧进度，Canvas绘制；不改原厂帧率／关键帧，不自己重写AE动画。微动仍用200/240/260ms曲线`.32,.72,0,1`；原厂关键帧的时间线保持自身线性时间映射，不能再加全局缓动扭曲原动态。

中途动画回归首次失败时，用实际语义确认资源尚是前一帧；修复测试在快照更新后waitForIdle再推进手动Compose时钟，先断言旧稳定图标已呈现，再检查新资源、中间帧和结尾，不放宽动画断言。临时序列输出已移除。新增素材的源和包内哈希门禁单独执行。

## 最终验证

最终59 UI＋33 Runtime＋23 Host＋11 Preview＝126/126，失败／错误／跳过均0，四模块Lint通过。实际命令为四模块`testDebugUnitTest/lintDebug`，随后`bash scripts/build-content-apk.sh`及`bash scripts/test-content-host.sh apk-work/9.5.0.600013/source-build.Cxpu0h/signed.apk`均退出0。文档／技能／代码地图与diff自检通过，依赖锁56＋3；69项OEM资产／8份Lottie完整性通过。

UI覆盖双主题640×1080、141/212/320DPI、长充电文字、不重叠／自然宽度，解锁选中与pending目标、座椅局部矩形、菜单明暗像素、内容divider多宽度、所有按钮触控门禁、原厂单次声音桥接、中间动态帧／结尾、重复时钟不重播和窗口失焦／恢复不重播。窗口测试通过ViewRoot实际使用的TreeObserver焦点事件入口发送，不把对子View的dispatchWindowFocusChanged误认为全树事件。

[最终签名包](../../apk-work/9.5.0.600013/source-build.Cxpu0h/signed.apk)：158277430 bytes，SHA256 `7fc7eb2feef5ab8c335a2edc00f3d32ae1c0642d3e99df91a3a241a6ab451e67`；包名`com.autonavi.amapautolite`、versionCode26000001／9.5.0.600013、min21／target24。v1／v2／v3验证通过，单signer沿原AOSP testkey，证书SHA `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`，未换生产身份。5408原public IDs不变，原63地图native逐SHA保留，新增唯一锁定arm64项，64native均Deflate。共2连续DEX，新增内容闭包2372定义，无重复、缺失运行类型、旧Renderer／预览宿主泄漏；dispatcher元数据完整。最终包门禁证据保留在忽略的`apk-work/9.5.0.600013/host-package-test.S3FYP8`。

构建首次因Okio1.17.6可选JSR-305 Nullable注解元数据缺定义失败。只对`javax.annotation.Nullable`作精确dontwarn，不放宽其它运行类型；最终R8删除该无定义注解，DEX checker新增拒绝任何残留Nullable descriptor。最终2372定义闭包严格检查已通过，无需引入额外JSR库或AppCompat。

已实际查看双主题选中／来源浮层和原厂动态图中间帧。原next描边JSON在中间帧镂空，与实心要求冲突；补登记原厂canapp `ico_media_next_f.json`（SHA `d4447c3d0649bfe8c85498919ac6e4a725d61d4c2ce768def3b6b97899973eae`）并切换主消费，所有可见组fill、无stroke/AE/表达式，8份登记中旧next仅历史保留。播放／暂停02_f也确认fill路径。最终参考截图：

- [浅色选中层级](../../ui-preview/content-ui/build/frames/640x1080-light-selection-contrast.png)
- [深色选中层级](../../ui-preview/content-ui/build/frames/640x1080-dark-selection-contrast.png)
- [深色来源浮层](../../ui-preview/content-ui/build/frames/640x1080-dark-prototype-sources.png)
- [深色实心下一首中间帧](../../ui-preview/content-ui/build/frames/640x1080-dark-oem-next-mid.png)

以上是本机正式UI的Port替身帧，明确非车机现场图。

## 现场边界

唯一`find-vehicle-adb`入口未发现身份匹配设备（253有界TCP候选），未回退旧地址、未安装、未写车控。待同包自然实际充电时核对整数电压／浮点电流、实时功率；自然满电时补原始SOC和BMS完成码，当前只认已知idle0。还需核对车机音效、触点动画／动态图标手感、来源浮层对比和内容分界。真实地图首帧、双Surface与原服务运行仍需新包smoke，不继承旧包证据。

明确未做：无原厂座椅完整AE高级效果声称，无充电估值、无功率sentinel绝对值、无电量显示值推完成，无CAN／root、卸载清数据、签名切换、真实车控写入或发布。本轮源码未提交，用户只授权先保存上一轮快照。

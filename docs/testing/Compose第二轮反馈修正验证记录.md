# Compose 第二轮反馈修正验证记录

## 范围与诊断

针对用户第三层UI重构后十项反馈，沿正式 `ContentRuntime → ContentStore → ContentBinding → ContentUiMapper → ContentPanel` 修改。分屏几何、双Surface、125%地图密度、包名、签名身份和车控命令路径保持既有主链。运行级结果仅认本轮新包；本机帧不冒充车机截图。

| 反馈 | 静态诊断与最小修正 | 验证边界 |
|---|---|---|
| 电池外框和内部同色 | `PrototypeTopBar()`原来整图tint绿色；`oemLayerColors()`仅改指定原厂Vector路径fill，外框基础色、内部电量／闪电绿 | 双主题像素及原厂资源ID断言；原路径、裁剪、变换、透明度不变 |
| 充电图形来源 | 原图是SystemUI Plugin 10.2.1.542的`ico_battery_charging.xml`，不是临时绘制；原厂资源自身为断开外框＋闪电 | OEM清单及SHA校验；未替换图形 |
| 顶栏字号 | 当前代码显式覆盖titleLarge为20sp、窄幅18sp；本轮撤销覆盖恢复统一22sp | 141／212／320系统DPI和600dp参考双主题自然宽度测试；不能借恢复字号保证所有窄幅都容纳详情 |
| 时间内部／不同内容间隔 | 时间＋星期用U+2009统一细空格；充电态星期与温度间距加4dp并纳入容量测量 | 正常／最长充电布局与无重叠断言 |
| 只显示充电中 | `ContentVehicleAdapter.readSnapshot()`原来固定NaN／-1，现读取原厂电压0x344、电流0x345、剩余时间0x43d；实际充电且正有限电气量才计算kW | 只读Binder替身验证事务7／13与area0、快照至Mapper；分钟单位沿[研究样本](../research/车机媒体能力研究.md)暂定，2047未知，真实充电需现场复核 |
| 座椅轮廓不变色 | 开启资源的首路径仍为基础色；呈现层仅把轮廓path0改为蓝／橙／紫 | 双主题0–3档快捷／Dock主体像素、层色、原厂资源ID验证 |
| 解锁无蓝色 | 原来车锁统一基础色；已知解锁或相应pending目标投影蓝色，已锁回基础色 | 双主题解锁→锁定→解锁语义断言；真实命令失败回弹仍由Store |
| Dock与媒体按压 | Dock取消矩形／Ripple，与快捷共用94%微缩放；媒体单层矩形固定RGB只动画alpha，避免Transparent的黑RGB参与插值 | 实际down/up/cancel、disabled门禁，完整动画帧、RGB固定及alpha单调断言 |
| 双主题底色 | 浅色仅background改#EFF0F7；深色常用主题令牌RGB同值，背景#0F0F0F、卡片#1A1A1A／#232323、选中#2D2D2D、按下#414141 | 本机双主题关闭／展开帧实际查看；媒体真实封面氛围层仍属既有产品语义 |
| 启动／后台浅色覆盖 | 默认浅色、mode!=2回落浅色、native false覆盖可靠回调均有静态风险；false也包含native未就绪，不能视为已解析day | 初值UNKNOWN=-1；只认明确1/2回调或native true；unknown请求高德日夜回调，ready补请求，不在未解析前造浅色宿主；生命周期和请求测试及同包实车复核 |

## 主题真值证据

`ContentRuntime.readInitialAmapTheme()`读取JNI primitive boolean，并且可靠回调优先。`onAmapThemeChanged()`只消费mode1/2，其它值不覆盖。unknown暂存弱引用待挂载root，`nativeRequestDayNightMode(-1)`请求高德自身解析结果；`AndroidProtocolExe.sendAutoStatus(II)V`的状态1通知`onAmapReady()`，保证native在attach后才就绪仍能请求。后台pending不创建宿主，恢复重试，detach定向清理；没有用户主题偏好持久化或系统uiMode读取。

静态native证据来自未改写的正式库：`libGAdaptor.so` JNI nativeIsNightMode入口0xb1644在空回调／out mode=-1时也返回false，只有mode==5返回true；请求函数0xc0e68空注册回调直接返回false。`libCommon.so`的`CGSettingDayNightModeBizView::onUpdateView`（0xa601e0）与`onCheckedChanged`（0xa6038c）通过HSL Config GetInt32／SetInt32读写键`daynight_mode`的0..2设置；不等于日夜回调mode1/2，也不是Java偏好值。`libhsl.so`的`SystemNotify::RequestDayNightModeReqcbReg`（0x4aba10）由IsNight发0x25／0x26通知，再进入既有日夜回调。这些为同版本静态证据，不能证明新包在车机的实际回调时序。

库SHA：GAdaptor `8ec5cc675185c981063801bf51037a0bfb8311e12a482ac9e1a1b60ba145da1d`；Common `19de4e250f4426ceb38bf5e349090ae6eac43d4d728128930c65a877cdc7b6ff`；hsl `cff6ed0c9c95ecc6b48502854ffcd65be1746c23a1e448a7f085542fb9926a83`。原库不改、不引入native补丁或第二套设置owner。

## 验证状态

最终统一四模块`testDebugUnitTest / lintDebug`命令退出0，XML汇总115/115，失败／错误／跳过0：UI51、runtime30、map-host23（含主题10）、预览app11。本轮改变对应模块的测试实际执行通过；最后统一命令和包级复核中的UP-TO-DATE只代表此前结果复用，不称额外强制重跑。新增只读Binder快照回归严格保留车内温度area1与充电area0，功率样本393V×183.2A按既有Mapper显示72.0kW；松开动画采样覆盖240ms加Compose启动帧。

命令：本地工具链JDK17／offline／`-Pkotlin.incremental=false`，四模块test与Lint；`bash scripts/build-content-apk.sh`；`bash scripts/test-content-host.sh apk-work/9.5.0.600013/source-build.bApJ6h/signed.apk`，均最终退出0。文档／Skill／代码地图、OEM资源和diff检查通过。中间回归暴露unknown与light0碰撞，已将unknown改为-1并保留冷启动解析测试；测试新增期间的函数头、正式字段名、温度area及一位小数断言已修正，未放宽真实业务门禁。一次误用DEX脚本--help因该脚本仅接受DEX路径失败，正式包级随后对新包实际DEX检查通过，不计为生产故障。

候选交付：[signed.apk](../../apk-work/9.5.0.600013/source-build.bApJ6h/signed.apk)，158166382 bytes，SHA-256 `4f5f3daeb1b610e95578054e529144a016aaae76705cb154c9d5f649f138a6af`。包名com.autonavi.amapautolite，版本9.5.0.600013／26000001，min21／target24；v1／v2／v3及单signer／对齐通过，证书SHA `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`，沿用原兼容测试身份（公开AOSP testkey，非生产安全签名）。

包级：65项OEM资源／7份Lottie原哈希保持；54个release依赖＋3个构建工具锁；5408原public IDs不变；新增内容DEX2188定义无重复／未解析运行时类型／旧Renderer／调试预览泄漏，classes.dex＋classes2.dex连续。原63地图库逐SHA不变、唯一新增锁定arm64JNI，共64库均Deflate，dispatcher元数据保持。包级证据留忽略目录`apk-work/9.5.0.600013/host-package-test.jyqmkR/`，不进入Git。

本机已实际查看双主题座椅二档、来源展开、电池充电和212dpi常见充电画面。帧位于忽略的`ui-preview/content-ui/build/frames/`，模拟数据仅证明呈现。

通过唯一入口`node scripts/find-vehicle-adb.mjs --serial-only`发现设备失败：有界扫描未发现身份匹配车机。停止连接／安装，不回退旧地址。没有真实车控写入。

## 待同包现场验证与明确未做

1. 高德日夜设置强制日／夜／自动，冷启动、后台恢复与Activity重建均核对内容主题；unknown若没有回调保持等待，尤其需确认新ready请求能取得当前固件结果。
2. 自然充电时核对原厂剩余分钟变化和功率；非充电、无效字段不补值；高密度窄幅仍按既有自然宽度策略省略细节，无障碍保留完整状态。
3. 解锁蓝色及座椅轮廓各档颜色、Dock微动和媒体矩形触感需驾驶视距检查；本轮没有触发实车写命令。
4. 新包地图首帧、手势／分界／双Surface、普通UID服务绑定和真实回流仍待运行证据。不以包级通过宣称用户验收。
5. 没有改包名／签名、卸载／清数据、root／CAN、方向盘控制、歌词数据、空调或完整设置能力，也没有提交或发布。

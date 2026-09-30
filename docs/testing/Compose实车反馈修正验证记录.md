# Compose 实车反馈修正验证记录

## 范围与证据等级

本轮针对第三层签名包的12项实车反馈修改正式源码，另纠正媒体图标应为独立正式品牌图的需求。地图125%密度、分界、两条Surface、包名和版本不改；仍是唯一Store、Binding和Compose宿主。本轮不连接车机、不发现ADB、不安装、不执行真实车控写入。产品现行语义见[产品基线](../product/产品需求基线.md)，源码入口见[主链索引](../code-map/主链索引.md)。

## 可见修正

- 顶栏全态左侧时间带星期（保留既有星期偏好），里程附km，温度°C、功率kW、时间分钟。默认温度右靠里程，充电／插枪／预约状态同主文字字号、右对齐紧邻里程；这些状态下温度移到时间右侧，容量不足时让位。使用自然文字宽度选择省略温度、秒数、辅助词或充电细节，不重叠、不靠地图密度挤入，主状态和星期保留，无障碍保留完整数据。
- 快捷页与Dock共用车锁、禁用方向盘加热、通风、加热、按摩、设置六项。只有既有ControlId进车控，方向盘无命令；设置沿既有局部反馈。按钮去第三行可见状态，图标52dp、名称20sp，实际／目标状态由原分档图及语义承载。
- Dock选中背景完整覆盖槽位；真实按住动画只在图标附近圆角矩形，媒体播放、下一首、来源复用此反馈形状，完整48dp以上热区不缩水。禁用入口不发事件、不产生有效按压。
- 座椅快捷和Dock均不用整图单色tint。加热橙／按摩紫使用原厂资源层色；通风原资源为单色，六份主题派生只改fillColor：有效扇叶蓝，浅色主体深色、深色主体白，关闭标记及未激活档位透明度保留，所有OEM路径／裁剪不改；原资源也保留。
- 来源菜单280dp、36dp图标和titleLarge字号，以最长“网易云音乐”图标文字组合居中，其他组沿同一左锚。爱趣听改用已核实原厂品牌PNG，不做单色tint；网易云独立品牌素材未找到可靠证据，保留既有原厂资源，不绘制替代品牌。

## 来源回流与证据边界

旧[Renderer](../../source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content/ContentRenderer.java)同样读取Store实际来源，故不能把targetSource为空说成用户现场回归的已证实唯一根因。静态确认缺口是旧Adapter主要按MediaSession包名归类，把wecarflow候选统一视为爱趣听，而网易云服务也属此包，标准会话不能稳定区分。

[Adapter](../../source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content/ContentMediaAdapter.java)现在绑定原厂PlayControlCheryAction，验证导出／权限／接口描述符，在工作线程通过IPlayControlsInterface.getMediaSoure事务6只读回流；注册通知回调仅触发重新读取。内部来源码BT6／USB4／本机11／网易云10不复用外部切源Intent的audio_source码。爱趣听内部值仍无可靠证据，未知／失败不猜测，标准会话回退也需有效数据或能力，不能由空同包会话假确认。

[Store](../../source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content/ContentStore.java)新增唯一pendingSource、请求ID及6秒确认超时；发送成功不更新实际来源，真实快照匹配才确认。失败／超时回弹实际值，低代数快照、迟到失败和销毁回调不能覆盖新请求。[Mapper](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/ContentUiMapper.kt)投影actual与target；后台Binding回调读取最新Store快照。来源回读与播放控制能力分开，已确认网易云不继承旧爱趣听会话的控制／封面。生命周期stop解除订阅／绑定并隔离旧回调，最小queries原已声明，不扩权限。

这证明本轮静态及替身契约实现，不证明普通UID在目标固件成功绑定，也不证明用户实车问题已闭环；新包需按下述顺序现场核对。

## 本机验证

四模块最终一次统一`--rerun-tasks`强制重跑完整退出0（200个任务全部执行），JUnit XML汇总101/101，失败／错误／跳过均0：UI49、runtime28、map-host13、app11；四模块Lint通过。后续包级脚本再次跑相同契约，其中UP-TO-DATE只作已有结果复核，不称额外强制重跑。命令环境沿本地工具链，offline且关闭Kotlin incremental，无新增下载依赖。

测试职责：UI模型5、双主题Render各6（实际down/up/cancel、动画及禁用、蓝／橙／紫／主体像素、0–3分档资源、菜单组合边界）、八组密度各4（141／212／320／600参考双主题）；runtime28含Binder4、状态19、既有端口3、双主题真实Binding2；map-host13含API28／34无ComposeRule普通窗口、密度及返回序列；预览app11仍为模拟状态。

| 640px内容物理宽／系统密度 | 自然宽度下的最长充电选择（双主题） | 证据 |
|---|---|---|
| 141dpi，726.24dp | 秒＋星期＋温度＋完整功率／剩余分钟＋9999km／电池均可显示 | [浅色最长](../../ui-preview/content-ui/build/frames/640x1080-system141-map176-light-charging-longest.png)、[常见充电](../../ui-preview/content-ui/build/frames/640x1080-system141-map176-light-charging-normal.png) |
| 212dpi，483.02dp | 无温度／秒，保留星期、充电中·123.5kW·999分钟及9999km／电池 | [深色最长](../../ui-preview/content-ui/build/frames/640x1080-system212-map265-dark-charging-longest.png)、[来源菜单](../../ui-preview/content-ui/build/frames/640x1080-system212-map265-dark-sources.png) |
| 320dpi，320dp | 无温度／功率分钟细节，保留时间星期、充电中、9999km／电池 | [深色最长](../../ui-preview/content-ui/build/frames/640x1080-system320-map400-dark-charging-longest.png) |
| 600dp参考，等效171dpi | 最长文案隐藏温度，保留完整功率分钟；常见78.5kW／35分钟可显示温度 | Density参考双主题断言／帧，不是新增车机密度事实 |

以上均断言自然文字宽度不被容器截断、同屏不重叠与右锚点，并覆盖默认／插枪等待／预约／充电／待确认；省略是容量策略，不称所有密度都能显示所有字段。实际查看[浅色二档](../../ui-preview/content-ui/build/frames/640x1080-light-seat-level-2.png)、[深色二档](../../ui-preview/content-ui/build/frames/640x1080-dark-seat-level-2.png)、[通风按住](../../ui-preview/content-ui/build/frames/640x1080-dark-dock-Ventilation-held.png)及来源／媒体按住帧；帧为本机模拟，不是车机截屏。

测试修正过程保留：旧里程断言123更新123km；冻结mainClock时改能力尚未重组导致两条严格禁用测试失败，恢复autoAdvance并waitForIdle确认状态后再冻结按压，未削弱生产门禁或断言。普通Host密度类单跑过、与其他Host类共JVM时画面停初始快照（Binding已新值），改map-host test forkEvery=1隔离平台调度上下文；仍不使用ComposeRule、不改真实宿主，完整能力／返回断言保留。缓存具体内部对象未静态证明，不当作车辆业务故障或长期跨项目规则。

## 资源和包级

[OEM清单](../../source/amap-9.5.0.600013/assets/content-oem/asset-manifest.json)现65项／7份Lottie：新增原厂方向盘图、爱趣听品牌PNG及六份原几何颜色派生，全部声明原APK、条目及SHA，PNG额外检查签名及216×217尺寸。爱趣听原图来自com.chery.carsettings 1.0.0.743，源APK SHA `705b5282ed186b973c145725af20559aeaefd397aa0d1a85ef274d8fcd8be09f`；原条目res/drawable/img_aiquting.png与部署SHA相同：`5ffe08c8c817dadb7a04dbd7a4512e06da00eabf27b2202c7743c8ac8e70fa4a`。OEM检查、文档／Skill／代码地图检查和diff空白检查通过。

仅由正式源码经`bash scripts/build-content-apk.sh`重建并签名，随后对同一新包执行`bash scripts/test-content-host.sh <candidate>`，两条主链完整退出0。交付[signed.apk](../../apk-work/9.5.0.600013/source-build.QpUsJK/signed.apk)，158162286 bytes，SHA `dac2c816e00a4141d740b9e9c1035eb4d34a9f39cb4cecbb8df43ced018c26ae`。包名com.autonavi.amapautolite，versionName9.5.0.600013／versionCode26000001，min21／target24，签名v1／v2／v3及单一证书验证通过；证书SHA `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`，仅兼容测试的公开AOSP testkey，不是生产安全签名。

54个release依赖／3个ASM工具锁保持；5408个原public IDs不变、owner ID已解析；classes.dex＋classes2.dex连续，新增内容DEX2184个定义无重复、未解析运行时类型、旧Renderer／调试预览泄漏；dispatcher元数据保留。原63个原生库哈希不变、唯一新增锁定arm64 JNI，共64库均Deflate，对齐与签名检查通过。包级证据保存在忽略目录host-package-test.1Z99na；包级任务复核已有101测试与四Lint（196任务UP-TO-DATE，不称再次强制跑）。这些是包静态和正式源码契约证据，不是车辆执行APK地图／服务的运行证据，不用第三层旧包替代。

## 新包现场核对

1. 只认上节新包哈希，先验证启动／分屏收放／地图首帧、手势和双Surface；时间左对齐带星期，默认温度和km，真实系统密度不被地图125%放大。
2. 媒体逐个选择蓝牙、爱趣听、网易云、USB、本机。发送后显示目标／切换中，只有实际回流才确认；特别核对同属wecarflow的爱趣听→网易云以及反向，超时不伪装成功。
3. 从原车多媒体中心外部切源、停止／启动服务、地图收放或Activity重建，内容区实际来源应同步，迟到回调不恢复旧目标；无媒体会话时仍可使用真实来源能力，播放／下一首必须独立据真实会话门禁。
4. 无授权写入前只读看车锁和座椅真实状态／档位色、Dock整槽选中与按压反馈。方向盘加热不可执行；设置仅局部未接通反馈。车控写入仍需要用户当次明确授权及安全可逆门禁。
5. 有自然插枪／预约／充电条件时核对可靠状态、功率和分钟；缺字段不造值。浅深主题、来源字号与驾驶视距需现场确认，不能由本机像素替代。

歌词数据源、空调与完整设置未接入；网易云正式品牌图未强行补齐。没有ADB／root／CAN／跨包私有View依赖，不连接或安装车辆，不新增方向盘研究或车控写入。

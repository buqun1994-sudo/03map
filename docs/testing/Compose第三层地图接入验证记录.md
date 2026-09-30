# Compose 第三层地图接入与交付验证记录

## 范围与诊断

用户要求开启目标功能、继续完成第三层并准备包，自行上车实测。本轮把第一层UI和第二层既有能力正式挂到当前9.5高德地图Activity，不连接或操作车机；实车闭环与代码／包级完成分开记录。

原正式入口仅创建Java Renderer；直接追加Compose AAR不能运行：库R字段为0，预览资源ID与原包ID冲突，原混淆AndroidX存在空壳和不兼容同名类，原脚本只追加一个DEX。另有普通Activity没有现代owner、地图125%上下文放大内容尺寸、窄媒体／Dock超界以及来源菜单返回会走地图返回链的风险。

## 已修复

- 唯一正式Kotlin入口迁入 `source/amap-9.5.0.600013/content-compose/`，三个库直接编译；旧预览实现副本已移除。正式Java八类仍由白名单编译，不复制Adapter。原厂资源从正式res受控导出，不以预览包R或DEX替代。
- `ContentRuntime.attach/detach/onHostPaused/onHostResumed/onDividerChanged`保持原Smali入口与唯一Store，呈现替换为 `ContentComposeHost`，旧Renderer不进入新内容DEX。Activity通过ContextWrapper解包，重入幂等、其他Activity不能解绑本owner。
- 内容子树提供独立Lifecycle／SavedStateRegistry／ViewModelStore；pause解除Binding、撤销菜单与时钟，resume重投影真实状态，不重发命令；销毁后Runtime释放Store与适配器。显式Binding入口不新增状态owner。
- LocalDensity来自系统，不更改Activity／地图125%配置；只消费既有分界调整content_host宽度／裁剪，不改SplitPanelController、双Surface或地图手势几何。
- KEYCODE_BACK仅在本owner来源弹层打开时消费，关闭后恢复原地图返回；其余按键不改。歌词空态只提供已存在来源入口，不新接歌词数据。
- 真实模式在窄幅采用紧凑布局、固定字号、48dp媒体热区和六槽Dock；极窄Dock可滚动，网格在四列不足时降为二列，不复制假功能撑密度。第一层预览固定锚点保留。
- 正式Manifest只增加既有媒体音量写权限及车机／媒体服务有限可见性；原通知监听服务、包名、版本、SDK和appComponentFactory保留。不自动开启通知访问或WRITE_SETTINGS授权。
- 生产release依赖图锁定版本与SHA，重链接库资源并保持原public IDs；新AndroidX及support引用受控隔离，不删除或升级原DEX同名空壳。graphics-path JNI保留原命名并仅新增一份锁定arm64库，原63份地图库不变。多DEX联合检查与原签名门禁纳入正式构建链。

## 已验证

本机JDK17、SDK35，普通Activity Robolectric宿主；不执行ADB／instrumentation。

阶段命令退出码0（显式Recomposer最终回归另列）：

```sh
./gradlew --offline -Pkotlin.incremental=false \
  :map-host:testDebugUnitTest :map-host:lintDebug \
  :content-ui:testDebugUnitTest :content-ui:lintDebug \
  :content-runtime:testDebugUnitTest :content-runtime:lintDebug \
  :app:testDebugUnitTest :app:lintDebug --console=plain
```

最终签名包回归 `bash scripts/test-content-host.sh apk-work/9.5.0.600013/source-build.FNYqMw/signed.apk` 完整退出0（BUILD SUCCESSFUL，200 tasks）。重新检查包／新增DEX并逐模块回读JUnit XML **67项，0失败、0错误、0跳过**：Host13（原普通宿主8、密度来源1、无规则真实工厂正反例4），UI24、Runtime19、第一层Controller11。四模块Lint通过，不声称零警告；未变化模块由Gradle准确输入判断UP-TO-DATE，回读其通过XML，不伪称全部强制重新执行。返回序列回归覆盖首次DOWN、repeat、UP只消费一次、无菜单新DOWN、pause清锁与owner定向；密度来源保留按钮能力、48dp热区、菜单打开／关闭／再打开／暂停恢复全部断言。最终等待StateFlow与动画采用有界真实帧条件，不把固定帧数或后台线程调度竞速当渲染完成。签名包SHA再次一致；本机包级提取证据在 `apk-work/9.5.0.600013/host-package-test.vZ1Shd/`。

阶段性63项是显式Recomposer修复前结果，不替代上述最终67项；此前第一层assembleDebug及三层测试也通过。

本轮失败与修复不隐去：初次资源闭包缺OEM尺寸颜色，修为实际 `content_oem_values.xml`；初次普通Activity测试未推进View布局帧导致只读到旧宽度，补真实measure/layout与像素输出；源码迁移后Kotlin增量残留产生不存在的重载冲突，全量编译排除旧路径缓存后通过；打包资源符号参数、R8不接受DEX作lib和AAR inspector非生产嵌套JAR均在主链内修正，不用泛dontwarn掩盖缺失依赖。

交叉审查发现普通ComposeView owner不足：默认窗口工厂从地图内容根找Lifecycle，测试规则替工厂会掩盖异常。正式Host在挂载前显式绑定局部Lifecycle Recomposer；无Compose规则的API28／34正反例4项实际通过，负例确认裸ComposeView确实抛owner缺失，正例渲染非空、暂停／恢复／销毁且不污染地图root owner。原语义Host规则与显式生产时钟不一致曾超时，测试改为无规则真实帧探针后重新全量核对，不通过修改生产行为迎合测试。来源层后续断言失败经实际Recomposer诊断：attached=true、Idle、changeCount从1到3、同一Choreographer且无积压，重组与Binding正常；Robolectric重复相同measureSpec命中缓存，使AnimatedVisibility新子树未layout／placed而被语义树过滤。探针递归forceLayout后真实measure/layout，菜单打开／关闭／暂停／恢复全部断言通过，不关闭动画、不替换窗口工厂、不修改生产行为。

返回键交叉审查发现首次DOWN关闭菜单后repeat可能穿透地图，已改为按downTime锁存消费序列，UP／取消／暂停清锁，无菜单保持原链；最终双平台／双主题序列回归通过。

以下真实AndroidComposeView输出已用read_image检查；状态与来源能力含测试替身，不是实车截图：

- [普通Activity浅色](../../ui-preview/map-host/build/frames/640x1080-light-api28-plain-map-host.png)
- [普通Activity深色](../../ui-preview/map-host/build/frames/640x1080-dark-api28-plain-map-host.png)
- [API28实际系统212／地图265宿主](../../ui-preview/map-host/build/frames/640x1080-api28-system212-map265-actual-host.png)
- [同宿主五来源展开](../../ui-preview/map-host/build/frames/640x1080-api28-system212-map265-actual-host-sources.png)（SHA `8c884f7b2e2b4d18898db9a4e8ab7943fbfa0069c6df495b3dc06362c9697aca`，真实宿主、默认工厂，测试端口）
- [212DPI浅色关闭](../../ui-preview/content-ui/build/frames/640x1080-system212-map265-light-closed.png)
- [212DPI深色来源展开](../../ui-preview/content-ui/build/frames/640x1080-system212-map265-dark-sources.png)
- [320DPI长充电紧凑态](../../ui-preview/content-ui/build/frames/640x1080-system320-map400-light-charging.png)

mdpi参考构图与第一层固定锚点保留；212／320DPI真实模式是保证热区与可读性的紧凑布局，不把它宣称为所有原型物理锚点完全相同。长充电信息单行省略，不与时间或里程重叠；自然出现的车机组合另行验证。

## 包级交付结果

唯一正式主链 `bash scripts/build-content-apk.sh` 完整退出0；候选 [signed.apk](../../apk-work/9.5.0.600013/source-build.FNYqMw/signed.apk)，158090987 bytes（约150.77 MiB）。SHA-256：

```text
1873ed3cfaf8b2ee3d7d029b73906f3c0587d612f10acd02dd3bd86c15a22ec1
```

包名 `com.autonavi.amapautolite`，versionName `9.5.0.600013`／versionCode `26000001`，min21／target24。单签名人，v1／v2／v3验证通过；沿用证书SHA-256 `a40da80a59d170caa950cf15c18c454d47a39b26989d8b640ecd745ba71bf5dc`。ZIP测试及4字节对齐通过。54生产依赖和3构建工具锁验证通过，无测试／预览／inspector程序。

额外classes2.dex含2169定义，联合闭包、重复、外部Runtime ABI、Service构造、协程provider及JNI load名门禁通过；原primary DEX字节与同次APKTool输出一致，保留本轮Smali返回序列修复，并非与原始ac6033c字节相同。5408原public IDs保持，各库真实R／styleable重生成；原63原生库逐SHA保持，新增唯一锁定arm64 graphics-path JNI，总64份全部Deflate，JNI包名与loadLibrary原名保持。最终R8日志无缺失类或warning，不以泛dontwarn抑制库依赖缺失。

父代理另对已签名文件重新检查包／新增DEX，并独立核对SHA与大小；包级通过不等于地图native实机运行通过。宿主最终回归结果见本记录后续补充。

## 上车实测清单

1. 仅保留数据覆盖安装同签名测试包；签名冲突或安装失败先保留错误，不卸载、不清数据或降级绕过。
2. 冷启动：直接分屏，左侧真实UI无场景／主题测试开关；无有效车辆／媒体值时为未知／空态，不能出现模拟音轨。
3. 地图收起／恢复／中途再抓，双Surface、定位与导航保持；分别检查2D车首、2D北上、3D车首焦点与右侧125%UI。
4. 快捷／歌词横向吸附、当前页不裁断或外露邻页；来源菜单五项完整，点击外部或返回只关闭菜单，不退出地图。
5. 高德日夜切换及HOME再进入、Activity重建：内容主题对齐，控件尺寸不被地图125%放大，菜单不残留，状态不重播。
6. 先只读观察温度、电量、原始里程、锁与座椅状态，媒体授权／曲目／封面／五来源和系统滑条权限。实际状态应同时反映到快捷卡与Dock，权限不足保持禁用。
7. 驻车P档、零速且可安全恢复时，由你现场单目标验证车锁与座椅、媒体／系统操作；分别记录初值、请求、pending、回读或拒绝／超时、恢复结果。当前包级和替身测试不作为实车写入已确认。
8. 插枪／预约／充电只观察自然状态和单行文案，不执行充电写入；回传同包首帧、明暗、来源开关、触摸反馈及具体异常，避免个人定位轨迹和完整日志。

## 待验证

目标车机上本候选的安装、地图真实首帧、双Surface合成／手势／三视角、真实服务与权限、媒体路由、驻车安全可逆写入、字体放大与驾驶视距触感均待你上车确认。代码未改地图几何不能替代运行级证据。

## 明确未做

未接空调、歌词数据源、投屏、天气、档位及其它未声明功能；没有假地图或额外Activity；没有ADB发现／连接／安装、真实系统／车控写入、清数据、卸载或instrumentation。未改包名、版本、SDK21／24、签名身份、地图密度链和双Surface；未提交Git。沿用公开AOSP testkey仅为旧安装兼容，不是私有production签名，不上传或发布APK。

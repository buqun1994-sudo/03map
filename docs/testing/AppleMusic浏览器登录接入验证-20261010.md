# Apple Music 接入03浏览器登录验证

最初独立浏览器接入与真实触摸修复为下方历史记录；当前轮按用户要求完全移除两张交接页面，并沿既有设置UI规范精简为“已登录 · 实际地区”与一个登录／断开按钮。

## 当前无中间页流程（2026-10-10）

用户随后追加两项真实反馈：完成或取消回地图会关闭设置；关闭浏览器标签页／重开浏览器／地图取消重试会丢底栏。当前修正保留外部登录暂停期间原SettingsSheet节点与滚动状态，回执重新设置返回标记，避免NoDisplay启动阶段短暂恢复提前消费；地图每次登录明确新建普通官方标签页，新Session立即附着活Chrome并在实际onNewIntent和根布局替换时恢复同一底栏，无需强行停止或清Cookie。后续最终APK／回归与实车证据替代下方初版无页验证；本节初版1967项及地图9436／浏览器5d85不能冒充已覆盖这两项新反馈。

- 浏览器新增`CredentialLoginLaunchActivity`使用`Theme.NoDisplay`，`onCreate`内校验并启动普通Chrome后立即`finish`，没有布局／等待窗口；应用内存Session持有登录，用户点击完成才读取最小凭据，通过地图创建的一次性`result_callback`私有广播能力交付，并立即`return_callback`直接回地图。白色交付页不进入登录流程；普通第三方一次性交付接口仍保留。
- 地图旧深色双按钮Activity源码和Manifest入口已删除。[应用回调owner](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicBrowserLogin.kt)接收后在Application协程沿既有Broker验证，等待／失败都投影到原歌词设置；持久化待返回元数据仅request_id与返回设置标记，无token／回执。允许地图进程重新创建后按元数据附着；取消、一次性消费及旧请求关联避免迟到结果提交。
- 同调用方取消后重新发起时，浏览器静默结束旧Session并替换，不回调／跳页／额外提示；不同调用方及旧接口维持忙碌隔离。
- 设置成功状态只展示“已登录 · 实际中文地区”：由Apple官方`/v1/me/storefront`返回后保存的storefront映射，`cn`→中国大陆，其他地区按中文名称，不从地区Cookie或默认值推测。无真实身份字段便不显示账号行。按钮沿同一现有主按钮切换登录／取消／验证中禁用／断开；辅助字号18sp／24sp、12／24dp间距、颜色／透明度／形状／阴影与单次点击音效owner沿现有设置规范。
- [完整五模块回归及Lint](../../apk-work/validation.n0OyWc/report.json)通过，稳定源码指纹`e125a2ae4d288e1d7f19aa45aeee134851c78216e3b6d14c9f6823365a9b9472`；有效1967测试（本轮1948执行、19同指纹缓存），失败／错误／跳过均0。新增应用回调17项包含重复／迟到／取消／进程元数据恢复／官方验证前不存储；三类定向69项通过。四组深浅主题与320dp窄幅的8张原生成功／重试帧均检查，完整地区、按钮右锚和自然换行沿现有规范。
- 初版无页浏览器98项离线范围策略／桥接／Session状态回归通过，包SHA-256=`5d85c0a7afffcf7e2862471fe8ce220d0933df77b2d4d860cb2713752cb4da9e`。后续新标签／温启动修正最终[浏览器APK](../../../03browser/.work/build/03-browser.apk)SHA-256=`f61ebc66d31cd2a59a97ffa26b2644b977c37d7d5e4c4e76568fb9bd4f0358f5`，138776051字节，同证书、原核／资源／2native Deflate及107项离线策略／桥接／Session／底栏身份回归通过；只有后者对应下方最终实车结果。

- 最终设置保持修正取自同一正式源码路径的[独立登录checkout](../../apk-work/login-stable-20261010/)，只包含HEAD与本轮登录修改，共享仓库的并行歌词候选保持原样。两次共享整合虽Gradle成功但外部修改使源码指纹失效，不能算最终有效证据。独立[完整五模块回归与Lint](../../apk-work/login-stable-20261010/apk-work/validation.sYhBo8/report.json)通过，源码稳定`7d31bf740674261d6bdf411c08083641549253496101770b2821c3df1ae81984`，1971项（本轮全部执行）失败／错误／跳过均0。应用回调19项及真实BoundBindingPanel完成／取消保留非零滚动2项有效；地图后台／短暂恢复／再次暂停／实际回执恢复后栏目与滚动误差≤1px，控件后台禁用。
- 最终地图[签名APK](../../apk-work/login-stable-20261010/apk-work/9.5.0.600013/source-build.bD5O5R/signed.apk) SHA-256=`43b08b8a1435c3baaf795f1d81f38ab5a8b6909f2e5161ed20c87d51be81c540`，166582788字节，源码与上述1971项报告一致；v1／v2／v3单Signer、原包身份、DEX闭包、5408原资源ID和64native Deflate核验通过。两包均保留数据覆盖安装，设备APK哈希分别等于上述最终身份。
- 最终包实车取消回流已确认仍在歌词设置；温浏览器登录标签数5→6，再次登录6→7，同PID27174，关闭本次测试标签7→6后底栏保留，正常重开浏览器仍有两按钮；手动回地图取消后再次登录6→7且两按钮恢复，无强行停止或Cookie清理。原设置滚动节点由两项原生回归验证；车机取消后按钮Y+32px来自内联取消提示增加一行，而非滚动被重置，栏目保持。完成物理点击直接回原歌词设置，Apple官方拒绝当前会话后原位显示“Apple Music 未接受本次登录，请重试”，未关闭设置／伪显示已登录。最终活动任务只剩MapMain和Chrome，无任何中间Activity，双进程当前FATAL EXCEPTION计数0。成功状态与滚动保持由2项真实BoundBindingPanel合成官方响应回归覆盖，本轮当前实车会话未通过官方验证；前轮真实账号成功不借用为本轮成功结论。固定状态证据见[最终实车元数据](../../apk-work/apple-no-pages-final-e2e-metadata.json)。

最终回复前另一歌词任务安装了[共享源码合并包](../../apk-work/9.5.0.600013/source-build.Cfe7YE/signed.apk)，设备SHA-256=`814716d71c35a4f710555f78e1591926d11d304a88c3f047c6ceddc80fc716e9`，来源指纹`136f7dd97b554f1bec92f7ec0c0fcd089a0cda58f9f4c8084cbb0f6a3e8d0254`。该构建输入回执中的Manifest、ContentBinding、LyricsSettingsBinding、Controller、Contract、Account、LyricsProviderSettings及SettingsSheet八项源码哈希与本轮正式登录修改全部一致；浏览器仍为f61。保留此较新合并包，不覆盖并行歌词改动；当前双进程Fatal计数0。完整登录实车用例精确绑定43b08，不冒称814合并包已重复整套用例；本轮同owner源码回归和实际回流证据保持上述边界。

## 真实账号点击回流修复（前轮有页面版本历史）

- 用户要求先暂停隐藏“交付站点凭据”中间页，本次不改背景或透明布局。
- 当前S56_HQX实车语义点击完成按钮能返回地图，但旧地图显示“未收到有效的 Apple Music 登录凭据”，尚未进入官方验证。只记录一次属性布尔值确认：当前请求关联、站点和user-token属性均通过，唯一可选地区Cookie `itua` 的 `secure=false` 使旧解析器整份拒收。没有输出token值；临时诊断已从正式源码移除。
- 按用户要求接收规则宽容：`request_id`保留当前请求关联；Cookie可选属性、地区字段、版本／状态提示及无关扩展不作硬性门槛，坏条目跳过而不否决其它有效token。同名候选不因冲突直接取消，由既有Broker在共享预算内逐个请求Apple官方账号端点，仅接受官方验证成功的候选并写原加密存储；晚到、重复Activity Result和取消仍不提交。
- Cookie百分号编码解码一次，保留字面`+`和原样候选；不把Cookie编码表示直接当成账号无效。定向39项测试通过，见[编码及候选回归](../../apk-work/validation.VsZQo3/report.json)；前一版宽容接收完整runtime／Lint通过，见[运行时整合](../../apk-work/validation.28fWfP/report.json)。
- 新版地图使用一次Cookie百分号解码＋保留原样候选后，复用原浏览器登录态通过Apple官方账号端点，恢复歌词设置并显示“已连接 · CN”。本次不代表实际歌词／封面资源已访问；浏览器替换前进程PID27590保持，未清Cookie或重新输入账号。
- 最终地图[签名APK](../../apk-work/9.5.0.600013/source-build.78tD6o/signed.apk) SHA-256=`16034195315d60b21c3b9d186b27c60fcf0fbeb9fadb745b2321d9faf24f7ccf`，166582788字节；[最终runtime整合及Lint](../../apk-work/validation.sF3Zzt/report.json)通过，新增登录专项15项、两类定向合计39项通过；构建与报告源码指纹均为`691674fcfd63353ea896a2223a9f1e2a4ca8c750621340fc37f83dc577b81f53`，64native全部Deflate、签名／闭包／资源核验通过。
- 触摸修正浏览器[签名APK](../../../03browser/.work/build/03-browser.apk) SHA-256=`52f0b00fe602416fdd393830d6964570cd9d32a8df61852d53c2d314261e4ecf`，138771955字节；Java/D8/APKTool／签名、2native Deflate与72项策略／原生回调合成回归通过。仅移除登录完成／取消按钮的遮挡触摸过滤，owner／焦点和可见性条件保留，普通交付页保持既有行为。最终同证书保留数据覆盖安装后无需重新登录，设备`input tap`命中可见完成按钮中心立即返回地图“正在验证”，随后恢复歌词设置“已连接 · CN”；[仅固定状态证据](../../apk-work/apple-real-login-physical-metadata.txt)。两包设备APK哈希均等于上述最终包，当前地图进程FATAL EXCEPTION计数0。


## 用户流程

1. 歌词设置点击Apple Music“登录”；未安装03浏览器时提示安装，保留地图当前状态。
2. 已安装时，地图生成一次性结果／返回能力，03浏览器无显示启动命令注册内存Session后立即结束，排队打开新的普通官方登录标签页；已有进程也创建新标签并恢复底栏。
3. 用户完成登录后点击浏览器“完成登录并返回03地图”。页面加载、重定向、地图暂停都不自动交付。
4. 浏览器缺少必需凭据时继续留在登录页；已有凭据才返回本次请求的最小结果；取消不读取凭据。
5. 完成或取消均直接回原歌词设置，保持栏目和滚动位置，验证进度／失败原位显示；官方验证成功才写既有加密存储并显示“已登录 · 实际地区”，同一按钮切为断开。取消、校验失败和迟到结果不覆盖此前有效账号。

## 源码与接口

- [地图登录接线](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/LyricsSettingsBinding.kt)：生产默认外部浏览器，缺失提示。
- [请求和回执合同](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicBrowserLoginContract.kt)：`site_url=https://music.apple.com/`，`login_url=https://music.apple.com/login`，名称`media-user-token/itua`，必需名称`media-user-token`，UUID request_id，login_flow=true。
- [应用回调接收器](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicBrowserLogin.kt)：本轮取代旧深色双按钮接收Activity；原Activity已删除，不再等待或展示页面。
- [现有鉴权层](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicAuthBroker.kt)：官方developer bearer和`/v1/me/storefront`验证完成后才提交。
- 浏览器实现位于独立兄弟项目`03browser`；普通第三方一次性交付接口保留，登录流程为可选协议，不绑定地图签名。

## 最初接入验证结果（前轮包历史）

- 地图新增外部登录合同／生命周期测试12项通过，旧Connection与Binding定向回归通过；[定向报告](../../apk-work/validation.xTxMDO/report.json)输入稳定。
- `node scripts/validate-content.mjs --scope all --lint`通过；五模块1950项有效测试（1931本次执行、19有效缓存），失败／错误／跳过0，Lint无错误。[整合报告](../../apk-work/validation.0wnboa/report.json)源码指纹`0f2862b8004f4a9ec66158b17679fcba01c391afce04a13a1be54c6783462d20`与最终构建一致。
- 正式地图[签名APK](../../apk-work/9.5.0.600013/source-build.yzUeu0/signed.apk) SHA-256=`8481a949a4740ae7037008bf99436a8bf69d837fa95cd94d627462152f863616`，166582788字节；原包身份／证书保留，64份native全部Deflate、原资源ID和DEX闭包核验通过。[独立包级报告](../../apk-work/9.5.0.600013/host-package-test.sn8QGK/report.json)通过。
- 当次发现的S56_HQX `192.168.0.203:5555`保留数据覆盖安装成功，设备APK哈希等于上述本机包；地图当前PID的AndroidRuntime日志无FATAL EXCEPTION。
- 实际按钮`设置 → 歌词 → 登录`语义点击全部成功；独立03浏览器显示地址栏与本次完成按钮。任务查询确认地图任务中MainMap／Relay／CredentialRequest三实例仍存活，Chrome普通浏览器任务单独在前台；未创建内嵌网页。
- 浏览器首轮返回的`request_left_foreground`竞态已修复：用户在可见且拥有焦点的Chrome页面明确点击后读取；取得必需凭据才回原请求实例，并同步Activity Result。最终[03浏览器APK](../../../03browser/.work/build/03-browser.apk) SHA-256=`a1c8eda0c7a47d9c9dd8a0b8d99b6b8c2b51cf0b6e53f225047d47241e4c18c2`，138771955字节，同证书覆盖安装成功。
- 最终浏览器三项真实车机用例通过：[仅元数据证据](../../../03browser/.work/login-flow-e2e-metadata.txt)。完整Chrome完成按钮交付普通+HttpOnly合成Cookie共2项，站点／request_id／值比对通过；必需名称缺失时连续两次点击均保留Chrome及完成按钮且未返回结果；随后浏览器“取消登录”返回user_canceled且无凭据；异源登录URL直接invalid_request取消。
- 浏览器最终Java/D8编译及55项范围策略＋17项原生回调回归通过；同一最终包原十项协议实车回归全部通过（完整／部分命中、跨站、路径、缺名称、空名称／HTTP拒绝、取消、冷启动），见[十项元数据证据](../../../03browser/.work/credential-e2e-metadata.txt)。
- 最终地图`设置 → 歌词 → 登录 → 浏览器取消登录`通过，恢复“歌词设置”并显示取消提示；[实际地图回流元数据](../../apk-work/apple-browser-map-e2e-metadata.txt)。设备最终浏览器APK哈希与上述本机包完全一致。未安装提示由生产默认入口Robolectric测试覆盖，本轮没有卸载或清空用户浏览器数据。

真实Apple账号登录、官方账号验证与完成按钮物理点击回流现已通过，最终状态“已连接 · CN”；实际Apple歌词／封面资源访问和重启后账号恢复尚未在本轮验收。下方最初接入的测试和APK身份为前轮历史，不替代本节最终修正包结论。

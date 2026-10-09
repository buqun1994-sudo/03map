# Apple 登录与 Lyrimuse 对照（2026-10-09）

## 结论

锁定的 Lyrimuse `main` 是 commit `6ba09b7b12fe6e9294484f063586a192db4ea765`（2026-10-08）。该项目的 Apple 实现是 macOS AppKit/WebKit 中的官方网页登录与 cookie 轮询，再由 Go 引擎读取 `media-user-token` 取 Apple Music 歌词；它没有 Android、车机 WebView、MusicKit WOA 或 Chrome 66 兼容资源实现。因此它可以作为 cookie 生命周期、storefront 处理和 developer token 抓取的行为参考，不能直接作为地图 APK 登录入口或 WebView 兼容方案。

当前地图工程的正式 Apple 链为：`LyricsSettingsBinding` 持有唯一 WebView 与 attempt 生命周期，`AppleMusicConnection` 持有 cookie/credential owner。生产默认直载 `https://music.apple.com/login`，无额外 Referer、无 bootstrap、无官方脚本拦截；`AppleMusicWebAuthorization` 与显式 builder 仅保留 WOA 协议测试注入。

## 上游精确来源

- [上游 main commit](https://github.com/Yudaotor/lyrimuse/commit/6ba09b7b12fe6e9294484f063586a192db4ea765)
- [AppleMusicConnection.swift](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse/Sources/lyrimuse/Settings/AppleMusicConnection.swift)：第 6–16 行说明 Apple 歌词端点需要 `media-user-token`，登录完全交给内嵌 WebKit 页面，不使用 MusicKit JS `authorize()`；第 48–63 行读 token 与 engine status；第 79–129 行清理 Apple 网站数据并创建登录窗口；第 132–227 行创建 `WKWebView`、直载 `https://music.apple.com/login`、轮询 cookie、等待 `itua` 最多 8 秒并以 0600 权限原子落盘；第 247–256 行关闭窗口时取消轮询。
- [AppleMusicTokenFile.swift](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse/Sources/LyrimuseCore/Local/AppleMusicTokenFile.swift)：第 7–18 行定义六个月寿命与 SHA-256 指纹；第 36–65 行把 App token 文件与引擎 status 文件按 token fingerprint 合并；第 68–82 行生成 token 文件 payload。
- [Package.swift](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse/Package.swift)：第 61–77 行只声明 `LyrimuseCore`、macOS `lyrimuse`、`lyrimuse-selftest` 等 SwiftPM target，没有 Android target 或 WebView 兼容构建管线。
- [applemusic.go](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse-engine/applemusic.go)：第 100–119 行定义 AMP API 与音乐网页入口；第 151–246 行读写 token/status；第 249–300 行以 developer token 与 user token 请求 `/v1/me/storefront`，拿不到时返回空而不猜地区；第 348–397 行管理公开 developer token 缓存；第 400–571 行从当前 Music 首页提取 `/assets/*.js` 中的 JWT；第 702–749 行构造 API 请求头。
- [applemusic_test.go](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse-engine/applemusic_test.go)：第 143–157 行验证未连接时不发请求；第 168–195 行验证 storefront 不能硬编码；第 197–234 行验证 token/status 指纹隔离；第 236–249 行验证空 storefront fail closed；第 304–324 行验证首页脚本排序。

## 当前地图工程的 owner 与兼容边界

- [LyricsSettingsBinding.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/LyricsSettingsBinding.kt)：唯一 WebView、lifecycle/attempt、cookie 轮询、页面 readiness 与安全诊断。生产默认直载官方 `/login`；显式测试可注入三参数 builder 或一参数 WOA configuration。
- [AppleMusicConnection.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicConnection.kt)：唯一 credential owner，验证官方 origin/cookie、旧 attempt、过期 cookie、storefront grace 与授权 callback。
- [AppleMusicAuthBroker.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicAuthBroker.kt)：第 42–61 行先过 Connection gate 再 bootstrap developer token；第 131–144 行 `prepareWebAuthorization` 复用当前 attempt 并生成 WOA；第 325–331 行 API 头含 developer bearer 与可选 user token。
- [AppleMusicWebAuthorization.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicWebAuthorization.kt)：第 22–32 行生成 `authorize.music.apple.com/woa` 的 Base64 配置与 nonce referrer；第 35–64 行严格验证 callback origin、当前 UUID path、Base64、UTF-8、JSON 与 token。
- 旧实验（当前生产Binding已不调用）：[AppleMusicAuthorizationCompatAssets.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicAuthorizationCompatAssets.kt)：第 14–27 行锁定 2 个 Apple ID widget 与 8 个 WOA 模块（modern/legacy polyfill、index、vendor、idtoken-verifier）；第 29–35 行提供资源不可用回调；第 38–52 行只接受精确 HTTPS、authority、无 query/fragment 的 GET，未知脚本返回 `VERSION_CHANGED`，已知资源缺失返回 `ASSET_MISSING`，均以 503 fail closed。
- [tools/apple-authorize/README.md](../../tools/apple-authorize/README.md)、[provenance.json](../../source/amap-9.5.0.600013/assets/content-apple-authorize/provenance.json) 与 [lock.json](../../tools/apple-authorize/lock.json)：esbuild 0.25.12、target `chrome66`、10 模块输入/输出 SHA-256、随机 UUID polyfill 与来源固定；官方 HTML、表单、cookie 和认证网络保持在线。

## 现场诊断口径

Binding 的安全诊断只记录 `reason`、WebView engine major、脱敏 `host/path` 与 HTTP status；不记录 Console 原文、query、fragment、cookie、developer bearer 或 `musicUserToken`。SyntaxError、旧引擎缺失 API、主框架网络/HTTP/TLS、被阻止跳转、30 秒首屏超时和 renderer 退出使用独立 reason。renderer 退出向用户显示“Apple Music 登录页面无法在当前车机 WebView 上运行，请重试”。

## 当前官方页面静态证据（忽略审计目录）

抓取证据保存在 `.tmp/apple-login-audit/`，不进入正式资源：

- `music-login.headers` 第 1–8、24–35、52–70 行：`/login` 302 到 `/cn`，再 301 到 `https://music.apple.com/cn/new`，最终 HTML 的 Apple version 为 `2640.11.0-external`。
- `music-login.html` 第 70 行只加载 `/assets/index~c10ba4a68d.js` 的 module 主包；第 76–84 行的 nomodule 只属于 MusicKit component。抓取的 `music-index.js` 含 `?.`、`??`、`Promise.allSettled`、`Object.fromEntries` 和 `window.crypto.randomUUID()`，旧 WebView 66 不能依赖该现代主包。
- `woa.html` 第 4、18–22、33–35 行分别声明 modern polyfill/index/vendor、dynamic-import 探针以及 legacy polyfill/entry；抓取的 modern `woa-index.js` 初始化本地化路径调用 `Promise.allSettled`，legacy `woa-index-legacy.js` 仍含 11 处 optional chaining。旧实验manifest曾锁定上述8个WOA模块，并对未知`.js`返回503；这一固定资源门禁已从生产Binding移除，不能作为官方动态页面兼容完成。未进入 manifest 的后续动态 chunk 仍是现场在线验收边界，不能由两个历史 Apple ID widget 资源推导。

这些静态证据用于解释旧 WebView 的失败边界；真实账号、验证码、订阅地区、Apple 版本漂移和动态 chunk 仍需现场在线验收。

## 同一车机上的现代内核实测

独立GeckoView140 probe已在本轮fresh-discovery确认的S56_HQX／SDK28／arm64车机安装并启动。官方`/login`在线跳到中国商店；[页面实际帧](<../../.tmp/gecko-login-probe/official-page-after-load.png>)显示完整Apple Music导航、图文内容和登录按钮，[点击登录后](<../../.tmp/gecko-login-probe/after-login-button.png>)显示“登录或注册”及邮箱／手机号输入框，实际点击输入框后[车机键盘](<../../.tmp/gecko-login-probe/account-input-keyboard.png>)出现。此证据将硬件／Android9能否显示官方现代登录页面与原有WebView66的能力区分开：页面与输入交互已可实现，不能再把这辆车整体判断成注定不可登录。

CookieAPI=true与固定测试HttpOnly可读已在[脱敏日志](<../../.tmp/gecko-login-probe/device-metadata-login-button.log>)记录；media-user-token=false、itua=false，尚未输入真实账号。页面显示／键盘可用／HttpOnly API三项不代表Apple已发出授权、正式Connection接入成功或歌词／封面API可用。用户重启车机并通知重新连接后，fresh discovery与身份核验已恢复；[重启后首次Cookie快照](<../../.tmp/gecko-login-probe/device-metadata-post-reboot.log#L8>)记录进程启动#2、CookieAPI=true、HttpOnly测试可读=true、HttpOnly测试重启保留=true，且发生在官方页再次加载前。此项证明profile保留固定测试Cookie，未替代真实Apple授权重启保持；账号与2FA、真实授权保持及在线内容仍逐项待验收。

probe APK SHA256=`a10fbf55d79172eb59ee13f1f631cf5e9e975ceda0ba16e9a0995f3cb973c955`，压缩后`97,864,277`字节（约93.36MiB）；GeckoView AAR压缩体积`298,293,037`字节，解包内容`678,951,996`字节，主要是多ABI native库。它内置自己的引擎，不更换系统WebView，也不属于正式地图APK；正式`LyricsSettingsBinding`仍创建Android `android.webkit.WebView`，正式包静态内容没有Gecko路径。若未来以arm64单ABI接入，按probe的实际引擎载荷估算正式APK会增加约85–100MiB压缩体积，并增加独立Gecko content process带来的RAM／CPU压力；本轮不把独立探针冒称为已集成，也不对车机流畅度作未经实测的保证。正式接入还必须合并依赖／资源／多进程services和匹配ABI，用Gecko内置扩展cookies API对接现有Connection的私有凭据owner，不能继续用Android CookieManager读Gecko profile。profile保留、Cookie读取、正式私有保存与API能力是不同验收关口。详见[当前验证](<../testing/设置边沿与Apple车机可行性验证-20261009.md>)；接口来源为[Mozilla官方GeckoView扩展文档](<https://firefox-source-docs.mozilla.org/mobile/android/geckoview/consumer/web-extensions.html>)和[MDN cookies API](<https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/cookies>)。

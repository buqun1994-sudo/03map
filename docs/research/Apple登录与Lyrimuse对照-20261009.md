# Apple 登录与 Lyrimuse 对照（2026-10-09）

## 结论

锁定的 Lyrimuse `main` 是 commit `6ba09b7b12fe6e9294484f063586a192db4ea765`（2026-10-08）。该项目的 Apple 实现是 macOS AppKit/WebKit 中的官方网页登录与 cookie 轮询，再由 Go 引擎读取 `media-user-token` 取 Apple Music 歌词；它没有 Android、车机 WebView、MusicKit WOA 或 Chrome 66 兼容资源实现。因此它可以作为 cookie 生命周期、storefront 处理和 developer token 抓取的行为参考，不能直接作为地图 APK 登录入口或 WebView 兼容方案。

当前地图工程的正式 Apple 链为：`LyricsSettingsBinding` 持有唯一 WebView 与 attempt 生命周期，`AppleMusicConnection` 持有 cookie/credential owner，`AppleMusicAuthBroker` 在受控 WOA 入口前准备 developer token，`AppleMusicWebAuthorization` 校验 nonce 回调，`AppleMusicAuthorizationCompatAssets` 按锁定 manifest 只替换 10 个公开 JavaScript 模块：2 个 Apple ID widget 与 8 个 WOA modern/legacy entry、vendor、polyfill、idtoken-verifier 模块。2026-10-09 起，生产 Binding 默认通过共享 AuthBroker 生成 WOA URL；直载 `https://music.apple.com/login` 仅保留为 Connection 的历史兼容常量和测试输入，不再作为生产登录入口。授权 bootstrap 在 worker 上运行，页面 30 秒首屏期限从实际授权 `loadUrl` 后开始。

## 上游精确来源

- [上游 main commit](https://github.com/Yudaotor/lyrimuse/commit/6ba09b7b12fe6e9294484f063586a192db4ea765)
- [AppleMusicConnection.swift](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse/Sources/lyrimuse/Settings/AppleMusicConnection.swift)：第 6–16 行说明 Apple 歌词端点需要 `media-user-token`，登录完全交给内嵌 WebKit 页面，不使用 MusicKit JS `authorize()`；第 48–63 行读 token 与 engine status；第 79–129 行清理 Apple 网站数据并创建登录窗口；第 132–227 行创建 `WKWebView`、直载 `https://music.apple.com/login`、轮询 cookie、等待 `itua` 最多 8 秒并以 0600 权限原子落盘；第 247–256 行关闭窗口时取消轮询。
- [AppleMusicTokenFile.swift](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse/Sources/LyrimuseCore/Local/AppleMusicTokenFile.swift)：第 7–18 行定义六个月寿命与 SHA-256 指纹；第 36–65 行把 App token 文件与引擎 status 文件按 token fingerprint 合并；第 68–82 行生成 token 文件 payload。
- [Package.swift](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse/Package.swift)：第 61–77 行只声明 `LyrimuseCore`、macOS `lyrimuse`、`lyrimuse-selftest` 等 SwiftPM target，没有 Android target 或 WebView 兼容构建管线。
- [applemusic.go](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse-engine/applemusic.go)：第 100–119 行定义 AMP API 与音乐网页入口；第 151–246 行读写 token/status；第 249–300 行以 developer token 与 user token 请求 `/v1/me/storefront`，拿不到时返回空而不猜地区；第 348–397 行管理公开 developer token 缓存；第 400–571 行从当前 Music 首页提取 `/assets/*.js` 中的 JWT；第 702–749 行构造 API 请求头。
- [applemusic_test.go](https://github.com/Yudaotor/lyrimuse/blob/6ba09b7b12fe6e9294484f063586a192db4ea765/lyrimuse-engine/applemusic_test.go)：第 143–157 行验证未连接时不发请求；第 168–195 行验证 storefront 不能硬编码；第 197–234 行验证 token/status 指纹隔离；第 236–249 行验证空 storefront fail closed；第 304–324 行验证首页脚本排序。

## 当前地图工程的 owner 与兼容边界

- [LyricsSettingsBinding.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/LyricsSettingsBinding.kt)：唯一 WebView、lifecycle/attempt、cookie 轮询、页面 readiness 与安全诊断。生产默认 builder 调用 `AppleMusicAuthBroker.get(appContext).prepareWebAuthorization(...)`，使用同一 Connection owner；测试可注入三参数 builder 或保留一参数 configuration 替身。
- [AppleMusicConnection.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicConnection.kt)：唯一 credential owner，验证官方 origin/cookie、旧 attempt、过期 cookie、storefront grace 与授权 callback。
- [AppleMusicAuthBroker.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicAuthBroker.kt)：第 42–61 行先过 Connection gate 再 bootstrap developer token；第 131–144 行 `prepareWebAuthorization` 复用当前 attempt 并生成 WOA；第 325–331 行 API 头含 developer bearer 与可选 user token。
- [AppleMusicWebAuthorization.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicWebAuthorization.kt)：第 22–32 行生成 `authorize.music.apple.com/woa` 的 Base64 配置与 nonce referrer；第 35–64 行严格验证 callback origin、当前 UUID path、Base64、UTF-8、JSON 与 token。
- [AppleMusicAuthorizationCompatAssets.kt](../../source/amap-9.5.0.600013/content-compose/runtime/com/icar03/content/runtime/lyrics/AppleMusicAuthorizationCompatAssets.kt)：第 14–27 行锁定 2 个 Apple ID widget 与 8 个 WOA 模块（modern/legacy polyfill、index、vendor、idtoken-verifier）；第 29–35 行提供资源不可用回调；第 38–52 行只接受精确 HTTPS、authority、无 query/fragment 的 GET，未知脚本返回 `VERSION_CHANGED`，已知资源缺失返回 `ASSET_MISSING`，均以 503 fail closed。
- [tools/apple-authorize/README.md](../../tools/apple-authorize/README.md)、[provenance.json](../../source/amap-9.5.0.600013/assets/content-apple-authorize/provenance.json) 与 [lock.json](../../tools/apple-authorize/lock.json)：esbuild 0.25.12、target `chrome66`、10 模块输入/输出 SHA-256、随机 UUID polyfill 与来源固定；官方 HTML、表单、cookie 和认证网络保持在线。

## 现场诊断口径

Binding 的安全诊断只记录 `reason`、WebView engine major、脱敏 `host/path` 与 HTTP status；不记录 Console 原文、query、fragment、cookie、developer bearer 或 `musicUserToken`。SyntaxError、旧引擎缺失 API、主框架网络/HTTP/TLS、被阻止跳转、30 秒首屏超时和 renderer 退出使用独立 reason。renderer 退出向用户显示“Apple Music 登录页面无法在当前车机 WebView 上运行，请重试”。

## 当前官方页面静态证据（忽略审计目录）

抓取证据保存在 `.tmp/apple-login-audit/`，不进入正式资源：

- `music-login.headers` 第 1–8、24–35、52–70 行：`/login` 302 到 `/cn`，再 301 到 `https://music.apple.com/cn/new`，最终 HTML 的 Apple version 为 `2640.11.0-external`。
- `music-login.html` 第 70 行只加载 `/assets/index~c10ba4a68d.js` 的 module 主包；第 76–84 行的 nomodule 只属于 MusicKit component。抓取的 `music-index.js` 含 `?.`、`??`、`Promise.allSettled`、`Object.fromEntries` 和 `window.crypto.randomUUID()`，旧 WebView 66 不能依赖该现代主包。
- `woa.html` 第 4、18–22、33–35 行分别声明 modern polyfill/index/vendor、dynamic-import 探针以及 legacy polyfill/entry；抓取的 modern `woa-index.js` 初始化本地化路径调用 `Promise.allSettled`，legacy `woa-index-legacy.js` 仍含 11 处 optional chaining。当前正式 manifest 锁定上述入口图中的 8 个 WOA 模块，并对允许资源根下的未知 `.js` 以 `VERSION_CHANGED` 回调和 HTTP 503 fail closed；已知模块文件缺失以 `ASSET_MISSING` 回调处理。未进入 manifest 的后续动态 chunk 仍是现场在线验收边界，不能由两个历史 Apple ID widget 资源推导。

这些静态证据用于解释旧 WebView 的失败边界；真实账号、验证码、订阅地区、Apple 版本漂移和动态 chunk 仍需现场在线验收。

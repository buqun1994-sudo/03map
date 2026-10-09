# Apple 官方授权页的 Chrome 66 兼容资源

此目录保留曾用于 Chrome 66 实验的固定 WOA／IDMS 脚本图，共 10 项资源。该实验没有证明真实车机账号授权成功，固定脚本图无法覆盖官方更新后的动态资源。当前生产登录无额外headers直载 `https://music.apple.com/login`，不调用该资源拦截器；这里的文件和准入测试仅追溯旧方案的确定性构建，不作为兼容完成结论。实际页面及现代内核验证见[研究记录](../../docs/research/Apple登录与Lyrimuse对照-20261009.md)。

[官方 MusicKit v1](https://js-cdn.music.apple.com/musickit/v1/musickit.js) 使用 `authorize.music.apple.com/woa?a=...&referrer=...`；`a` 为第三方信息 JSON 的 Base64，`thirdPartyToken` 为有效 developer bearer。真实授权结果经当前 attempt 的 nonce 返程，交回唯一 Connection 私有保存。此入口差异及 Lyrimuse 当前 macOS 实现的对照见[研究记录](../../docs/research/Apple登录与Lyrimuse对照-20261009.md)。

原有兼容层仅覆盖两个 IDMS widget，不能覆盖 `/login` 跳转后的网页播放器主包或 WOA 的其它模块。本轮下载并锁定以下公开资源；每项输入／输出 SHA-256、精确 URL 和模块依赖以[锁文件](./lock.json)和[正式 provenance](../../source/amap-9.5.0.600013/assets/content-apple-authorize/provenance.json)为准：

| 来源／角色 | 锁定文件 |
|---|---|
| IDMS home | [home-76bd5c25830b7078b52d.js](./upstream/home-76bd5c25830b7078b52d.js) |
| IDMS widget | [identityWidget-e48dc0b32509f79e9025.js](./upstream/identityWidget-e48dc0b32509f79e9025.js) |
| WOA modern polyfills | [polyfills-modern.2a0ac662.js](./upstream/polyfills-modern.2a0ac662.js) |
| WOA modern entry | [index.08057262.js](./upstream/index.08057262.js) |
| WOA modern vendor | [vendor.c5b156fd.js](./upstream/vendor.c5b156fd.js) |
| WOA modern verifier | [idtoken-verifier.esm.61302cb6.js](./upstream/idtoken-verifier.esm.61302cb6.js) |
| WOA legacy polyfills | [polyfills-legacy.a17ec079.js](./upstream/polyfills-legacy.a17ec079.js) |
| WOA legacy entry | [index-legacy.b2eb8295.js](./upstream/index-legacy.b2eb8295.js) |
| WOA legacy vendor | [vendor-legacy.9c0241d1.js](./upstream/vendor-legacy.9c0241d1.js) |
| WOA legacy verifier | [idtoken-verifier.esm-legacy.a1cbf4ce.js](./upstream/idtoken-verifier.esm-legacy.a1cbf4ce.js) |

[准备脚本](../../scripts/prepare-apple-authorize.mjs)使用锁定 esbuild 0.25.12、target Chrome 66，离线重建资源并检查字面量相对 JS 依赖闭包。未持有 Cookie 或用户凭据的公开源文件才进入此目录，原始 upstream 不打入 APK。既有两个 widget 的 `??=`、WOA legacy 的 `?.` 等语法由编译器降级；`catch {}` 已被 Chrome 66 支持，不能误判成障碍。[UUID 兼容源码](./random-uuid-compat.js)只在缺少原生 API 时使用 `crypto.getRandomValues` 提供 RFC 4122 v4，没有弱随机回退。[运行时兼容源码](./runtime-compat.js)补齐 IDMS widget 已使用的 `Object.fromEntries`，保留原生 API、符号键、迭代器关闭和普通自有 `__proto__` 键语义。WOA 官方 modern polyfill 已包含 `Promise.allSettled`，实际缺失环境执行由 Node 回归验证。

```bash
node scripts/prepare-apple-authorize.mjs --compiler-module .tmp/apple-auth-compiler/node_modules/esbuild
node scripts/prepare-apple-authorize.mjs --check --compiler-module .tmp/apple-auth-compiler/node_modules/esbuild
node --test scripts/test-apple-authorize.mjs
```

[纯 Node 回归](../../scripts/test-apple-authorize.mjs)覆盖安全随机、native 保留、真实缺失 API 执行、固定源／输出重建及篡改拒绝；[Android 资产准入回归](../../ui-preview/content-runtime/src/test/java/com/icar03/content/runtime/lyrics/AppleMusicAuthorizationCompatAssetsTest.kt)验证全部 10 项资产 SHA、HTTPS／GET／authority／无 query 和 fragment／精确路径，及版本漂移、缺资源和文档不拦截。旧实验拦截器对未知JS返回明确不可用；当前Binding不调用该拦截器。其它文档、POST、API、CSS、图片及非准入 origin 保持官方网络。

上述证明确定性编译和准入合同；字面量依赖闭包不能证明账号输入后所有动态脚本都已覆盖，也不能代替车机 WebView 66 的实际表单、验证码、订阅和地区验收。Apple 变更哈希后需重新读取实际资源并更新完整锁，不能以本次本机回归宣称未来版本可用。

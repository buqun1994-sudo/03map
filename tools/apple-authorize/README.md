# Apple 官方授权页的 Chrome 66 兼容资源

此目录维护两个公开 Apple ID widget 脚本的原始来源。应用仍加载真实官方授权页、表单、账号输入、TLS 请求与返回；本地替换仅限两个固定 CDN 哈希路径，没有系统 provider 变更或通用脚本重写。

[官方 MusicKit v1](https://js-cdn.music.apple.com/musickit/v1/musickit.js) 的授权流程为 `authorize.music.apple.com/woa?a=...&referrer=...`，其中 `a` 是第三方信息 JSON 的 Base64，`thirdPartyToken` 为有效 developer bearer。WOA 继续转至 `activate.apple.com/mkauth`，然后真实的 IDMS 登录 widget。用户授权成功由官方返回 `musicUserToken`；密码与验证码仍由官方处理。

当前 IDMS HTML 中两个 `<script src>` 均没有 integrity/SRI。两个 bundle 内的 ReactRedux 共享库分别含 `c[s] ??= new Map` 和 `ai[ii] ??= new Map`；Chrome 66 不能解析此运算符。应用按精确资源 URL 返回 esbuild 降级后的同一公开代码。WOA 的现代脚本、vendor、idtoken-verifier 在本次读取中没有这类障碍；`catch {}` 在 Chrome 66 已受支持，见 [V8 官方版本表](https://v8.dev/features/optional-catch-binding)，不能将它误判为需要降级的依据。

| 公开源码 | 原始 SHA-256 | 编译结果 SHA-256 |
|---|---|---|
| [home](./upstream/home-76bd5c25830b7078b52d.js) | `4780584db5095b3d338291478e94cda4cbd591b9719443369a81aa6643f799bd` | `839c4c5eaf3f43a9e799a048fe4617ee044029c3ff244ed0da49b15e5b404a98` |
| [identityWidget](./upstream/identityWidget-e48dc0b32509f79e9025.js) | `7c2a73b176fcf68533c6cb713a9f61ab89555288ac3b9372406f8fdb6eb743cc` | `6e535986e45925207daeccf499488f0ae19f7314c2b5ab2e2fc9fa37ff286345` |

[lock.json](./lock.json) 固定编译器 esbuild 0.25.12、Chrome 66 target、输出参数及所有输入／输出哈希。[UUID 兼容源码](./random-uuid-compat.js) 只在缺少原生 `crypto.randomUUID` 且存在 `crypto.getRandomValues` 时添加 RFC 4122 v4 接口，使用 16 字节安全随机数及正确 version／variant 位；重复加载保持原函数，没有 `Math.random` 回退。Banner 的 SHA-256 为 `49e47ae01352a1154d0ba1ffaa68dbba3f543b6f2c24cce0648f6bef53aa8672`。

[准备脚本](../../scripts/prepare-apple-authorize.mjs) 不联网，不读取 Cookie 或用户凭据。其默认编译器路径使用当前忽略目录的已安装包；可传 `--compiler-module` 指定任意本机模块路径，但版本必须严格为 0.25.12。生成位置为 [正式兼容资源](../../source/amap-9.5.0.600013/assets/content-apple-authorize/provenance.json)，原始 upstream 不打入 APK。

```bash
node scripts/prepare-apple-authorize.mjs --compiler-module .tmp/apple-auth-compiler/node_modules/esbuild
node scripts/prepare-apple-authorize.mjs --check --compiler-module .tmp/apple-auth-compiler/node_modules/esbuild
node --test scripts/test-apple-authorize.mjs
```

[纯 Node 验证](../../scripts/test-apple-authorize.mjs) 已运行 5 项通过：UUID 格式与安全字节／原生保留与幂等／无安全随机源不弱回退／固定源和编译结果可重建／改源拒绝。运行时还由 [资源准入回归](../../ui-preview/content-runtime/src/test/java/com/icar03/content/runtime/lyrics/AppleMusicAuthorizationCompatAssetsTest.kt) 验证真实 Android asset SHA 和严格 HTTPS、GET、authority、端口、查询、fragment、精确路径准入。

这是确定性解析问题的修复，不代表已完成真实账号、验证码、订阅地区与所有授权后动态 chunk 的验收。Apple 更新资源哈希时需重新只读取证并核对；未知资源保持官方网络路径，不能将新内容静默映射到旧代码。应用实际网页登录及凭据成功边界由宿主绑定与唯一 Connection owner 维护。

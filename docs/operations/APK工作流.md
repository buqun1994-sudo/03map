# APK 工作流

> **职责：** 规定从正式快照到候选 APK、再到安全门禁内运行观察的可复制流程。工具变量见 [本地工具链](本地工具链.md)，身份事实见 [基线清单](../code-map/基线清单.md)，验证门槛见 [验证矩阵](../testing/验证矩阵.md)。

## 1. 创建施工副本

正式输入 APK 只读保存在被忽略的 `apk-archive/9.5.0.600013/`；原始解包快照由 Git 提交 `ac6033c` 固定，当前持续施工的唯一可维护入口是 `source/amap-9.5.0.600013/`。需要实验时，从当前 Git 正式源码建立新的被忽略副本，不从旧候选包或 `.tmp/` 继续：

```sh
INPUT_APK="/path/to/archived-9.5-input.apk"
WORK_DIR="/path/to/local/apk-work/9.5.0.600013"
shasum -a 256 "$INPUT_APK"
# 复制当前 source/amap-9.5.0.600013/ 到全新的 "$WORK_DIR/decode/"
```

先核对包名、版本、Manifest、原始输入快照身份和签名身份；构建前将实验成果回写 `source/`，而非把被忽略副本当成唯一施工代码。

## 2. 静态检查

```sh
"$AAPT2" dump badging "$INPUT_APK"
"$AAPT2" dump permissions "$INPUT_APK"
"$APKSIGNER" verify --verbose --print-certs "$INPUT_APK"
unzip -l "$INPUT_APK" | rg 'AndroidManifest|classes|lib/|resources.arsc'
```

记录入口 Activity、ABI、权限和证书摘要；构建后对候选 APK 重复包身份检查。

## 3. 解包、修改与回编

```sh
"$JAVA" -jar "$APKTOOL" b "$WORK_DIR/decode" -o "$WORK_DIR/unsigned.apk"
```

上述 APKTool 命令仅验证资源与 Smali 的**中间包**；内容区 Java 尚未编译 / 注入时缺少 `ContentRuntime` 等类，绝对不可安装或宣称为完整候选包。完整包必须执行下文的 `build-content-apk.sh` 主链；需要精确处理已有 DEX 时使用完整的 baksmali / smali 分发包，逐个确认输入输出，不覆盖原始文件。

每个结构性动作后立即检查命名空间、类型归属、项目包含关系、Smali 语法和资源引用，不把多轮错误堆到最后处理。

施工副本和正式源码的 `apktool.yml` 均不得保留 `doNotCompress: - so`；最终 `lib/**/*.so` 必须使用 Deflate。

### 正式源码回写与可重建门禁

1. 对照当前 Git 正式源码与实验副本，只迁入本轮确认为有效的 Java、Smali、Manifest、资源及构建配置；将 `build/`、class、DEX、签名、旧轮次和设备证据排除。迁入后逐项核对文件哈希、命名空间、方法入口和资源引用。
2. 在被忽略的 `.codex/local-context.properties` 配置指向仓库外的 `AMAP_SIGNING_PK8` 和 `AMAP_SIGNING_CERT`，从正式源码运行 `bash scripts/build-content-apk.sh`。脚本先运行 `scripts/check-content-assets.mjs`，通过 `scripts/resolve-content-deps.sh` 按版本和 SHA-256 获取公开 Lottie 6.6.7 及必要 AndroidX／Okio 依赖到被忽略 `.tmp/`，从正式 `content-src/` 编译 Java；R8 从受控库裁剪不触及私有 View 的同 APK 图标播放器并生成 `classes2.dex`，`scripts/check-content-dex.mjs` 核对引用闭包；再在被忽略的 `apk-work/9.5.0.600013/source-build.*` 回编 APKTool、注入 DEX、对齐并签名。不从旧 `unknown/classes2.dex` 借用产物，也不把 AAR／JAR／APK／DEX 加入 Git。首次无网络或缓存失效时依赖预检失败，不绕过哈希或降级为不完整包。
3. 缺少签名材料、证书不等于已测试候选包身份或签名 / 包身份验证不通过时，脚本在交付前失败；不输出可交付的未签名包，也不回退到任意 Debug 证书。可显式传入仓库外 PK8、PEM 路径覆盖本机配置：`bash scripts/build-content-apk.sh "$EXTERNAL_KEY" "$EXTERNAL_CERT"`。输出 `signed.apk` 才是候选包；脚本自动验证单 signer、v2、证书 SHA-256、包身份、对齐、DEX 与 `.so` Deflate，并清理未签名中间包。不得从旧签名包复制签名块。
4. 构建完成后运行 `node scripts/check-code-map.mjs`、`git diff --check`，检查 `git status` 与暂存清单。提交正式源码、构建入口和追踪文档；APK、DEX、class、密钥及完整日志永不进入 Git。若正式源码不能独立重建，禁止宣称代码已归档。

## 4. 对齐、签名与包检查

日常出包只执行上节的完整构建入口，不单独运行以下低层命令交付 APK。需要手工诊断中间包时，签名材料只能来自仓库外，且签名证书必须与当前已测试包身份匹配：

```sh
"$ZIPALIGN" -p -f 4 "$WORK_DIR/unsigned.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" sign --key "$EXTERNAL_KEY" --cert "$EXTERNAL_CERT" --out "$WORK_DIR/signed.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" verify --verbose --print-certs "$WORK_DIR/signed.apk"
"$AAPT2" dump badging "$WORK_DIR/signed.apk"
```

记录候选包 SHA-256、包身份、签名摘要、对齐结果和原生库压缩结果；证书私钥、口令和设备私有信息不写入仓库。

## 5. 默认运行验证

用户未指定其它方式时，构建后由 AI 在安全门禁内完成：

1. 先通过唯一车机发现入口获取当前 serial，确认设备处于 `device` 状态，包名 / 版本 / 签名允许保留数据覆盖安装；入口失败后停止，不使用配置中旧 serial。
2. 使用 `adb install -r` 安装，不用卸载、清数据或降级绕过错误。
3. 按 `aapt2` 解析出的实际入口启动，确认目标进程存活。
4. 读取窗口、Surface / 分屏几何和最小致命日志；截图、日志只写临时目录。

```sh
VEHICLE_ADB_SERIAL="$(node scripts/find-vehicle-adb.mjs --serial-only)" || exit 1
"$ADB" devices -l
"$ADB" -s "$VEHICLE_ADB_SERIAL" install -r "$WORK_DIR/signed.apk"
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell am start -n "$ENTRY_COMPONENT"
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell pidof com.autonavi.amapautolite
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell dumpsys window windows
"$ADB" -s "$VEHICLE_ADB_SERIAL" exec-out screencap -p > "$WORK_DIR/runtime.png"
"$ADB" -s "$VEHICLE_ADB_SERIAL" logcat -d -v threadtime -t 300 | rg 'FATAL EXCEPTION|AndroidRuntime|amap|SplitPanel|WindowManager'
```

设备离线、系统授权弹窗、签名冲突或高风险动作出现时，停在具体门禁并记录阻断，不用清数据或未知签名掩盖问题。

## 6. 当前分屏观察重点

候选包必须按 [验证矩阵](../testing/验证矩阵.md) 检查：冷启动首帧、默认 `1/3 : 2/3`、地图收起 / 恢复、中途接管、两条 Surface、主题来源和三种地图视角。不能用旧 `480×480` 包或 S191 静态样本替代当前候选包证据。

## 7. 历史 `480×480` 广播入口

以下接口只在明确恢复封存支线时使用，不属于当前主线启动方式：

- `com.autonavi.plus.showmap`：整数参数 `x`、`y`、`w`、`h`。
- `com.autonavi.plus.closemap`：关闭历史地图窗口。
- `com.autonavi.plus.offset`：已注册但当前无可用处理分支。

历史广播的坐标语义、窗口边界和证据要求见 [480×480 支线](../archive/480x480支线.md)；不得把“先启动全屏、返回 HOME、再发广播”写成当前产品启动链。

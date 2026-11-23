# APK 工作流

> **职责：** 规定从正式快照到候选 APK、再到设备运行观察的可复制流程。工具变量见 [本地工具链](本地工具链.md)，身份事实见 [基线清单](../code-map/基线清单.md)，验证门槛见 [验证矩阵](../testing/验证矩阵.md)。

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

即使 `-o` 输出到忽略目录，也**不能直接对正式 `source/amap-9.5.0.600013/` 执行 `apktool b`**：APKTool 会在输入目录下生成 `build/`、DEX 和资源中间文件。资源最小回编只对被忽略的全新施工副本执行；误生成时先确认没有 Git 跟踪文件，再将整个生成目录移至忽略区，运行 `node scripts/check-code-map.mjs` 复核正式源码边界。

每个结构性动作后立即检查命名空间、类型归属、项目包含关系、Smali 语法和资源引用，不把多轮错误堆到最后处理。源码验证按[构建与验证入口](<构建与验证入口.md>)先规划、先编译所选测试，再跑相关用例／Lint；稳定整合才执行适用全量。APK包级核验不隐式触发源码全量测试。

施工副本和正式源码的 `apktool.yml` 均不得保留 `doNotCompress: - so`；最终 `lib/**/*.so` 必须使用 Deflate。

### 正式源码回写与可重建门禁

1. 对照当前 Git 正式源码与实验副本，只迁入本轮确认为有效的 Java、Smali、Manifest、资源及构建配置；将 `build/`、class、DEX、签名、旧轮次和设备证据排除。迁入后逐项核对文件哈希、命名空间、方法入口和资源引用。
2. 在被忽略的 `.codex/local-context.properties` 配置指向仓库外的 `AMAP_SIGNING_PK8` 和 `AMAP_SIGNING_CERT`，从正式源码运行 `bash scripts/build-content-apk.sh`。第三层主链先检查模块与正式Java白名单、核对正式OEM资产，Gradle按当前输入编译正式 `content-compose/` 和Java白名单（保留增量与有效UP-TO-DATE），导出`:map-host`生产release图；`scripts/check-compose-deps.mjs`按明确版本与SHA锁验证依赖及构建ASM工具。在被忽略的 `apk-work/9.5.0.600013/source-build.*` 从正式Smali／资源回编APKTool，`scripts/build-compose-content.mjs`把受控AAR资源重链接到同包资源表、保持原public IDs并生成真实R，ASM隔离现代AndroidX及support避免旧混淆空壳的ABI冲突，R8生成新增多DEX；`scripts/check-content-dex.mjs`联合验证重复、类型闭包与静态入口和通知Service构造。原63地图库保留正式输入，静音修复仅由正式`native-patches`汇编与锁声明在构建暂存区重建`libhsl.so`／`libautonavi.so`，校验原SHA、入口原字节、payload与最终SHA及完整差分；其余61库逐SHA保持。只加入锁定graphics-path arm64 JNI，全部Deflate；协程dispatcher服务元数据进入最终包。随后对齐和原身份签名。不从旧DEX借产物，不把AAR／JAR／APK／DEX加入Git。缺网络缓存、版本或SHA不匹配时预检失败，不绕过完整性或降级为不完整包。旧 `resolve-content-deps.sh`／Lottie路线仅适用于历史Java Renderer，不是第三层正式呈现构建入口。
3. 缺少签名材料、证书不等于已测试候选包身份或签名 / 包身份验证不通过时，脚本在交付前失败；不输出可交付的未签名包，也不回退到任意 Debug 证书。可显式传入仓库外 PK8、PEM 路径覆盖本机配置：`bash scripts/build-content-apk.sh "$EXTERNAL_KEY" "$EXTERNAL_CERT"`。输出 `signed.apk` 才是候选包；脚本自动验证单 signer、v2、证书 SHA-256、包身份、对齐、DEX 与 `.so` Deflate，并清理未签名中间包。不得从旧签名包复制签名块。
4. 构建完成后运行 `node scripts/check-code-map.mjs`、`git diff --check`，检查 `git status` 与暂存清单。提交正式源码、构建入口和追踪文档；APK、DEX、class 按现有生成物忽略规则管理；非公开凭据及含隐私原始日志按 [个人风险口径](../security/安全与密钥边界.md) 处理，脱敏证据可按需入库。若正式源码不能独立重建，禁止宣称代码已归档。

## 4. 产物保留与覆盖

依据用户明确要求，日常只保留最新一次成功交付和必要项目文件；后续成功构建覆盖旧版，只有用户明确声明某个版本需要单独保存时才另存。固定交付目录为 `apk-work/9.5.0.600013/latest/`，不再按日期、任务名或随机后缀长期累积构建。

1. 开始打包前先核对现有交付包、源码／构建输入指纹和本轮需要；同一输入已有有效成功包时复用，不为换文件名、整理目录或重复交付再构建。
2. 现有构建／验证脚本仍会创建随机暂存目录，执行者负责在收尾时归并并清理；不能把本规则描述为脚本已自动覆盖或自动清理。只有签名、包身份、源码／工具稳定性和构建报告均成功后才整套替换 `latest/`，失败保留上次成功交付。
3. 同批保留 `signed.apk`、相邻且与包内 primary DEX 一致的 `original.dex`、构建报告、源码／工具链前后指纹、必要计时与当前车型配置。最新有效源码验证、包级核验及运行证据分别归入 `latest/validation/`、`latest/package-check/`、`latest/runtime/`，不让文档检查覆盖完整源码回归凭据，也不将不同 APK 的证据混为一批。
4. 替换或迁移后核对 APK SHA-256、原 DEX、配置字节和当前证据索引，更新当前交付 owner 与索引。迁移保持原源码指纹和实际执行记录；报告中原暂存路径通过迁移清单追溯。旧文档中的包路径、哈希属于历史事实，不能统一改指新包。
5. 确认最新交付完整后，清理旧 APK、失败中间包、解包／回编树、重复源码快照、旧测试夹具与失效转换缓存。删除前核对绝对路径、Git 跟踪／改动和活跃构建；旧隔离工作区若有未提交差异，先保存必要恢复补丁与未跟踪源码。正式输入归档、正式源码、签名材料、本机配置以及仍有效的 Gradle／Kotlin／依赖与转换缓存保留。
6. 历史任务的结论、身份和已入库研究文档继续保留；临时日志、截图、设备 APK 回拉副本只保留最新交付所需证据，不因旧文档曾引用就永久保留整套旧构建。用户明确指定另存的版本及输入基线归档不受默认覆盖规则影响。

## 5. 对齐、签名与包检查

日常出包只执行上节的完整构建入口，不单独运行以下低层命令交付 APK。需要手工诊断中间包时，签名材料只能来自仓库外，且签名证书必须与当前已测试包身份匹配：

```sh
"$ZIPALIGN" -p -f 4 "$WORK_DIR/unsigned.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" sign --key "$EXTERNAL_KEY" --cert "$EXTERNAL_CERT" --out "$WORK_DIR/signed.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" verify --verbose --print-certs "$WORK_DIR/signed.apk"
"$AAPT2" dump badging "$WORK_DIR/signed.apk"
```

记录候选包 SHA-256、包身份、签名摘要、对齐结果和原生库压缩结果；证书私钥、口令和设备私有信息不写入仓库。

## 6. 默认运行验证

用户未指定其它方式时，构建后由 AI 主动完成以下验证；已有任务范围不要求重复授权，具体风险见 [安全与密钥边界](../security/安全与密钥边界.md)：

1. 先通过车机发现脚本获取当前 serial，确认设备处于 `device` 状态、目标身份正确，包名 / 版本 / 签名允许保留数据覆盖安装；发现失败后诊断连接，身份未重新核验前不使用旧 serial 写设备。
2. 使用 `adb install -r` 安装，不用卸载、清数据或降级绕过错误。
3. 按 `aapt2` 解析出的实际入口启动，确认目标进程存活。
4. 读取窗口、Surface / 分屏几何和相关错误日志；原始截图、日志先写临时目录，需要入库的证据按实际隐私内容脱敏。

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

设备离线、系统授权弹窗或签名冲突时记录具体原因并继续可执行的本机工作；不自动清数据或换签名掩盖问题。需要新增有损操作时说明影响，按已有用户目标和个人风险口径判断是否确认。

## 7. 当前分屏观察重点

候选包必须按 [验证矩阵](../testing/验证矩阵.md) 检查：冷启动首帧、默认 `1/3 : 2/3`、地图收起 / 恢复、中途接管、两条 Surface、主题来源和三种地图视角。不能用旧 `480×480` 包或 S191 静态样本替代当前候选包证据。

## 8. 历史 `480×480` 广播入口

以下接口只在明确恢复封存支线时使用，不属于当前主线启动方式：

- `com.autonavi.plus.showmap`：整数参数 `x`、`y`、`w`、`h`。
- `com.autonavi.plus.closemap`：关闭历史地图窗口。
- `com.autonavi.plus.offset`：已注册但当前无可用处理分支。

历史广播的坐标语义、窗口边界和证据要求见 [480×480 支线](../archive/480x480支线.md)；不得把“先启动全屏、返回 HOME、再发广播”写成当前产品启动链。

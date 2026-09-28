# APK 工作流

> **职责：** 规定从正式快照到候选 APK、再到安全门禁内运行观察的可复制流程。工具变量见 [本地工具链](本地工具链.md)，身份事实见 [基线清单](../code-map/基线清单.md)，验证门槛见 [验证矩阵](../testing/验证矩阵.md)。

## 1. 创建施工副本

正式输入是被忽略的 `apk-archive/9.5.0.600013/`；`source/amap-9.5.0.600013/` 是只读快照。每轮从快照建立新的被忽略副本，不从上游 APK、旧候选包或 `.tmp/` 继续：

```sh
INPUT_APK="/path/to/archived-9.5-input.apk"
WORK_DIR="/path/to/local/apk-work/9.5.0.600013"
shasum -a 256 "$INPUT_APK"
# 复制 source/amap-9.5.0.600013/ 到全新的 "$WORK_DIR/decode/"
```

先核对包名、版本、Manifest、快照哈希和签名身份；不直接修改 `source/`。

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

常规资源、Manifest 和 Smali 修改沿 APKTool decode / build 主链；需要精确处理多个 DEX 时使用完整的 baksmali / smali 分发包，逐个确认输入输出，不覆盖原始文件。

每个结构性动作后立即检查命名空间、类型归属、项目包含关系、Smali 语法和资源引用，不把多轮错误堆到最后处理。

施工副本的 `apktool.yml` 不得保留 `doNotCompress: - so`；最终 `lib/**/*.so` 必须使用 Deflate。

## 4. 对齐、签名与包检查

签名材料只能来自仓库外，并且必须匹配当次授权：

```sh
"$ZIPALIGN" -p -f 4 "$WORK_DIR/unsigned.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" sign --ks "$EXTERNAL_KEYSTORE" --out "$WORK_DIR/signed.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" verify --verbose --print-certs "$WORK_DIR/signed.apk"
"$AAPT2" dump badging "$WORK_DIR/signed.apk"
```

记录候选包 SHA-256、包身份、签名摘要、对齐结果和原生库压缩结果；证书私钥、口令和设备私有信息不写入仓库。

## 5. 默认运行验证

用户未指定其它方式时，构建后由 AI 在安全门禁内完成：

1. 设备处于 `device` 状态，包名 / 版本 / 签名允许保留数据覆盖安装。
2. 使用 `adb install -r` 安装，不用卸载、清数据或降级绕过错误。
3. 按 `aapt2` 解析出的实际入口启动，确认目标进程存活。
4. 读取窗口、Surface / 分屏几何和最小致命日志；截图、日志只写临时目录。

```sh
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

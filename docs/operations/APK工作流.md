# APK 工作流

## 1. 创建工作副本

本项目的正式输入是被忽略的 `apk-archive/9.5.0.600013/` 中的 125% 全屏 APK；`source/amap-9.5.0.600013/` 是由它生成的只读解包快照。施工先核对输入 APK 和快照身份，再从快照复制干净工作副本到被忽略的 `apk-work/`；不得从上游 APK、旧实验包或 `.tmp/` 魔改目录续接。原始 APK 保持只读：

```sh
INPUT_APK="/path/to/archived-9.5-input.apk"
WORK_DIR="/path/to/local/apk-work/9.5.0.600013"
shasum -a 256 "$INPUT_APK"
# 核对 docs/code-map/基线清单.md 后，复制 source/amap-9.5.0.600013/ 到全新的 $WORK_DIR/decode。
```

## 2. 静态检查

```sh
"$AAPT2" dump badging "$INPUT_APK"
"$AAPT2" dump permissions "$INPUT_APK"
"$APKSIGNER" verify --verbose --print-certs "$INPUT_APK"
unzip -l "$INPUT_APK" | rg 'AndroidManifest|classes|lib/|resources.arsc'
```

先记录包名、版本、入口 Activity、ABI、权限和证书摘要，再决定修改范围。

## 3. APKTool 解包与重打包

```sh
# 正式主链：使用已核对的 $WORK_DIR/decode，不直接编辑 source/。
# 如需重新解包，应输出到全新空目录，先与 source/ 比较差异再决定是否替换施工副本。
"$JAVA" -jar "$APKTOOL" b "$WORK_DIR/decode" -o "$WORK_DIR/unsigned.apk"
```

每次结构性修改后先重新检查 Manifest、Smali 语法和资源引用，不能连续堆改动到最后才定位错误。

## 4. DEX 精确修改

```sh
# 对已定位的 DEX 做精确修改时，由 AI 使用完整的 baksmali/smali 分发包和依赖执行；
# 当前 Android SDK 自带的 BAKSMALI_JAR 不是独立可执行 JAR，不能直接用 `java -jar`。
# 常规修改优先沿用 APKTool 的 decode / build 主链：
"$JAVA" -jar "$APKTOOL" b "$WORK_DIR/decode" -o "$WORK_DIR/unsigned.apk"
```

当前 Android SDK 自带的 `smali-baksmali-3.0.9.jar` 已确认没有 `Main-Class`，且依赖其它 Smali / Guava 类库；不要把同一个 JAR 同时填作 `BAKSMALI_JAR` 和 `SMALI_JAR`。如果 APK 有多个 `classes*.dex`，必须逐个确认输入和输出对应关系；不要覆盖原始文件。

## 5. 对齐、签名和验证

签名材料只能来自仓库外，并且必须先确认签名身份和用户授权：

```sh
"$ZIPALIGN" -p -f 4 "$WORK_DIR/unsigned.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" sign --ks "$EXTERNAL_KEYSTORE" --out "$WORK_DIR/signed.apk" "$WORK_DIR/aligned.apk"
"$APKSIGNER" verify --verbose --print-certs "$WORK_DIR/signed.apk"
"$AAPT2" dump badging "$WORK_DIR/signed.apk"
```

不使用未知测试密钥替代需要共存或完整性验证的签名身份；证书摘要必须写入本轮工作证据，不写进公共文档。

## 6. 安装与启动

```sh
"$ADB" -s "$VEHICLE_ADB_SERIAL" install -r "$WORK_DIR/signed.apk"
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell am start -n 'package.name/.EntryActivity'
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell pidof package.name
```

默认保留数据覆盖安装。遇到签名冲突、版本降级或包名冲突时，先读取错误和已安装包状态，不用卸载或清数据绕过。

## 7. 悬浮地图广播

输入基线为 [高德 9.5](../archive/amap-9.5.0.600013.md)，目标包 `com.autonavi.amapautolite`。当前源码的悬浮插件 Action 和参数为：

- `com.autonavi.plus.showmap`：整数参数 `x`、`y`、`w`、`h`
- `com.autonavi.plus.closemap`：关闭地图窗口
- `com.autonavi.plus.offset`：已注册，但 `FloatWindowsManage.control()` 当前没有处理分支，不可当作可用移动接口

当前正式目标为 `480×480`，位置由该轮窗口方案确定；以下命令只用于具备启动与悬浮权限后的定向广播测试，不是“启动即悬浮”的产品实现：

```sh
FLOAT_X=0
FLOAT_Y=0
FLOAT_RIGHT=$((FLOAT_X + 480))
FLOAT_BOTTOM=$((FLOAT_Y + 480))
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell am broadcast \
  -a com.autonavi.plus.showmap -p com.autonavi.amapautolite \
  --ei x "$FLOAT_X" --ei y "$FLOAT_Y" --ei w "$FLOAT_RIGHT" --ei h "$FLOAT_BOTTOM"
```

`x / y` 是左上角，`w / h` 在当前版本中是右边界和下边界，不是宽高。上面的 `0,0` 只是测试占位坐标，不能作为正式默认位置。指定目标包可避免其它地图接收同名广播；实际位置需要以设备截图和窗口边界确认。

收回窗口使用 `-a com.autonavi.plus.closemap -p com.autonavi.amapautolite`。旧实验的“先打开全屏 Activity、返回 HOME、再发广播”只是基线主链的测试办法，不满足当前正式启动需求；不使用未验证的缩放广播作为默认步骤。

## 8. 运行观察

```sh
"$ADB" -s "$VEHICLE_ADB_SERIAL" shell dumpsys window windows
"$ADB" -s "$VEHICLE_ADB_SERIAL" exec-out screencap -p > "$WORK_DIR/runtime.png"
"$ADB" -s "$VEHICLE_ADB_SERIAL" logcat -d -v threadtime -t 500 | rg 'FATAL EXCEPTION|AndroidRuntime|amap|chenmo|WindowManager'
```

判断标准是：目标进程存活、真实地图界面可见、悬浮窗口边界正确、原车 Dock 未被永久改写、没有致命异常。正式交互还需在相同安装包身份下记录两次启动、拖拽、UI/地图层分别缩放、三种视角和全屏恢复，详见 [验证矩阵](../testing/验证矩阵.md)。

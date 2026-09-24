# 工具链规则

1. 工具路径只从 `.codex/local-context.properties` 读取；提交文档使用变量名，不写本机绝对路径。
2. 原始 APK 只读保存，所有修改在独立工作目录进行；重打包前后都用 `aapt2` 或 `apksigner` 检查身份。
3. `apktool` 适合资源、Manifest 和常规 Smali；DEX 需要精确反汇编时使用已验证的 baksmali 入口，汇编必须使用独立的 smali 主程序或回到 APKTool 构建，不要把只含 baksmali 的 JAR 当作汇编器。
4. APK 产出顺序固定为：重打包 → `zipalign` → `apksigner` → `apksigner verify` → ADB 安装。
5. ADB 命令都显式带 `-s <serial>`；安装默认 `adb install -r`，不使用降级、卸载或清数据参数绕过问题。
6. 悬浮窗口位置必须来自车机实际分辨率、Dock 边界和截图证据；不能把一次试验坐标写成长期真值。

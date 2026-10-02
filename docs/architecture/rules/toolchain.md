# 工具链规则

1. 工具路径默认从 `.codex/local-context.properties` 读取，也可显式传入；可复制的命令使用变量名，本机路径不因格式本身被禁止。
2. 原始 APK 只读保存，所有修改在独立工作目录进行；重打包前后都用 `aapt2` 或 `apksigner` 检查身份。
3. `apktool` 适合资源、Manifest 和常规 Smali；DEX 需要精确反汇编时使用已验证的 baksmali 入口，汇编必须使用独立的 smali 主程序或回到 APKTool 构建，不要把只含 baksmali 的 JAR 当作汇编器。
4. APK 产出顺序固定为：从正式源码执行 `scripts/build-content-apk.sh` → 重打包 → `zipalign` → `apksigner` → `apksigner verify` 与包身份检查 → ADB 安装。签名材料缺失、证书不匹配或验签失败必须停止；未签名包仅是会被清理的内部中间文件，不得安装或交付。签名身份迁移先说明覆盖兼容和数据保留影响，用户已明确要求的迁移不重复授权。
5. ADB 命令都显式带 `-s <serial>`；安装默认 `adb install -r`，不使用降级、卸载或清数据参数绕过问题。
6. 当前分屏几何必须来自 `SplitPanelController` 和候选包运行证据；历史悬浮窗口坐标只在 `docs/archive/480x480支线.md` 中使用，不能写成长期真值。

# 03T 全屏兼容探针

包名：`com.icar03.fullscreenprobe`

版本：`1.0.0`，`versionCode=1`，`minSdk=21`，`targetSdk=24`

这是一个独立探针，不读取地图进程的私有 View、Surface、native 参数或系统全量窗口栈。它模拟正式地图的关键条件：旧式 `0x1706` 全屏请求、API 30 `decorFitsSystemWindows` 两种模式、双 `SurfaceView` 和约 `2/3` 宽度分屏。

## 车主操作

1. 安装并打开“03T全屏兼容探针”。
2. 点“开始 60 秒检测”，依次点“旧 flags”“decorFits=true”“decorFits=false”和“双 Surface 收放”。
3. 点“打开基线地图”，按原问题复现一次，再按返回键回到探针。
4. 用车机截图或手机拍下地图失败画面，点“附加失败照片”；最后点“导出 ZIP”，把 ZIP 和照片发回。

不需要 AI、电脑、ADB、root、录音或无障碍权限。探针会读取设备公开信息和 `com.autonavi.amapautolite` 的公开包信息；地图 APK 文件不可读时，SHA-256 会标记为 `denied`，不会猜测。

## 结果含义

- 探针也不能全屏或双 Surface 尺寸异常：优先检查 03T OEM 窗口／Insets／图形策略。
- 探针正常、地图异常：再做地图同包诊断，检查真实 Activity、两条 Surface 和 native layout 参数。

## 构建

在仓库根目录执行：

```sh
bash tools/android-fullscreen-probe/build.sh
```

产物写入被忽略的 `apk-work/android-fullscreen-probe/`，签名材料沿用本机配置中的 AOSP testkey；不修改地图包，也不要求覆盖安装地图。

# 高德 9.5 正式输入 APK 归档

## 1. 归档职责

本文只负责确认“以后从哪个 APK 开始施工”。它不定义历史悬浮窗口尺寸，也不保存实验包的构建流水账；当前产品目标和业务入口分别见 [产品需求基线](../product/产品需求基线.md) 与 [代码地图主链索引](../code-map/主链索引.md)。

## 2. 当前唯一输入基线

| 项目 | 已确认值 |
|---|---|
| 归档目录 | `apk-archive/9.5.0.600013/`（被 Git 忽略） |
| APK 文件 | `高德地图车机版_共存_悬浮_保时捷字体_默认全屏_DPI125%_9.5.0.600013.apk` |
| APK SHA-256 | `dfb763c9b9ab42d6096e6c988578937bfbaaa73436db22f99efe37503d54f3f5` |
| 文件大小 | `317461313` 字节 |
| 包名 | `com.autonavi.amapautolite` |
| versionCode / versionName | `26000001` / `9.5.0.600013` |
| minSdk / targetSdk | `21` / `24` |
| ABI | `arm64-v8a` |
| 显示基线 | 默认全屏、UI 125% |
| 正式源码快照 | `source/amap-9.5.0.600013/` |
| 正式施工副本 | `apk-work/9.5.0.600013/decode/` |

## 3. 上游来源与差异

用户提供的上游 APK 文件名为 `高德车机_9.5.0.600013_共存悬浮_读秒随灯变色_开天保时捷字体.apk`，SHA-256 为 `a86318d3f8ee2fc5721fcf49d625779b41108a45cfd5c91d0209da73cd317af4`。同 APKTool 3.0.3 解包比较确认：

1. 两个 APK 的包名、版本、SDK、权限和 Smali 文件数量一致。
2. 当前输入基线将 `AndroidManifest.xml` 的 `application resizeableActivity` 从上游的 `true` 改为 `false`。
3. `smali/rv.smali` 的 `C()I` 增加系统密度回退，并采用 `densityDpi × 5 / 4` 的整数计算。
4. `smali/kc.smali` 的 `v()V` 改为读取 `rv.C()I`，并把自定义值写入 `DisplayMetrics`，形成当前 APK 的 UI 125% 机制。
5. 另有 146 个资源文件差异，主要分布在 `res/drawable*` 的 UI、导航、Widget、道路转向和天气图标族；`res/values/attrs.xml` 的枚举顺序不同，但枚举语义集合一致。

这份差异是正式输入基线的来源说明；后续任何施工都必须以归档 APK 和 `source/amap-9.5.0.600013/` 为起点。

## 4. 施工规则

1. 原始 APK 和归档 APK 只读保存，不在其上直接修改。
2. 施工前将 `source/amap-9.5.0.600013/` 复制到被忽略的 `apk-work/9.5.0.600013/decode/`。
3. 施工副本必须先核对 `AndroidManifest.xml`、`apktool.yml`、包名、版本和输入基线哈希，再修改 Smali、Manifest 或资源。
4. 所有构建包、签名材料、截图、日志和 round-trip 解包放在 `.tmp/` 或仓库外，不进入正式源码快照。
5. 历史实验包不能覆盖输入基线，也不能作为下一轮施工副本。

## 5. 历史运行接口

正式 APK 中仍存在历史悬浮广播主链：`ApplicationInitialization.init()` 注册 `com.autonavi.plus.showmap`、`com.autonavi.plus.closemap`，由 `ControlReceiver` 转发给 `FloatWindowsManage`。它只作为 `480×480` 封存支线的技术入口保留，不属于当前全屏分屏启动链，也不定义当前产品尺寸。

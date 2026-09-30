# 第三层地图 Compose 宿主

这是Android library `:map-host`，不是新应用或可安装预览包。唯一正式源码为 [`ContentComposeHost`](../../source/amap-9.5.0.600013/content-compose/host/com/icar03/content/host/ContentComposeHost.kt) 与 [`ContentRuntime`](../../source/amap-9.5.0.600013/content-src/com/autonavi/amapauto/content/ContentRuntime.java)。正式地图的 `kc.v()`、暂停／恢复／销毁、主题和分界回调保持原入口签名；同一Runtime创建唯一Store、同一Binding和ComposeView。

## 宿主合同

- 只挂到现有 `content_host`；不新建Activity、Surface或地图几何owner。
- 为普通Activity的内容子树提供独立Lifecycle、SavedStateRegistry与ViewModelStore；STARTED订阅，暂停撤销临时层，销毁Composition后由Runtime销毁Store。
- LocalDensity来自系统Resources，右侧高德125%上下文不放大内容控件。内容可视宽度只消费 `SplitPanelController` 的分界；默认尚无回调时取父宽1/3。
- 静态 `ContentRuntime.onBackKeyDown/onBackKeyUp(Activity, KeyEvent)` 只锁存本owner用于关闭来源菜单的返回序列，后续重复与UP不穿透；暂停清锁，无菜单的返回／音量／地图路径不改。
- ComposeView在挂载前显式绑定局部Lifecycle Recomposer，不从原地图window内容根找现代owner；无Compose测试规则的API28／34正反例验证真实默认工厂，避免测试替换工厂掩盖启动问题。
- 主题只消费高德同步到Store的状态；能力、未知、目标、回读与失败规则沿第二层。无模拟读数或PreviewController，无未声明控制能力。

## 构建与验证

本目录工程可执行以下本机任务，不连接设备：

```sh
./gradlew --offline -Pkotlin.incremental=false \
  :map-host:testDebugUnitTest :map-host:lintDebug \
  :content-ui:testDebugUnitTest :content-ui:lintDebug \
  :content-runtime:testDebugUnitTest :content-runtime:lintDebug \
  :app:testDebugUnitTest :app:lintDebug
```

`-Pkotlin.incremental=false` 排除正式源码迁移后的旧路径增量缓存；不以缓存中旧class替代当前源码。

交付地图包只能从仓库根运行 `bash scripts/build-content-apk.sh`。它导出release库和受版本／SHA锁约束的生产依赖图，结构化重链接资源并保留原public IDs，隔离新增AndroidX，R8多DEX闭包检查，再按原证书签名。库minSdk28是本机工程策略，原包身份仍min21／target24，不整合库Manifest的SDK或appComponentFactory。现代Compose的graphics-path包含一份arm64 JNI库，独立保留原类名避免JNI符号失配；原63份地图native保持哈希和Deflate。

普通Activity探针覆盖Android9与14、双主题、幂等挂载、owner定向解绑、暂停时钟／恢复、不销毁共享Store；实际系统212／地图上下文265的API28探针覆盖LocalDensity与来源返回键。图像来自本机Android View，不是车机截图或地图Surface合成证据。签名包回归入口 `bash scripts/test-content-host.sh 已签名候选路径` 先验证包和新增DEX，再编译正式源码运行宿主契约，不宣称执行车机native地图DEX。最终包身份、结果和实测清单见 [第三层验证记录](../../docs/testing/Compose第三层地图接入验证记录.md)。

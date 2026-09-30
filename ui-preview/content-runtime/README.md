# 第二层 Compose 能力接入

## 范围

第二层是 `:content-runtime` Android library，不是新的应用，也不是第三层高德 APK 注入。第一层 `:app` 仍运行显式模拟数据，不依赖本模块，不会因本轮改动连接车机或写系统设置。

本模块直接编译正式 `source/amap-9.5.0.600013/content-src/` 中的八类最小闭包：`ContentState`、`ContentRegistry`、`ContentPreferenceStore`、`ContentPorts`、`ContentStore`、`ContentVehicleAdapter`、`ContentMediaAdapter`、`ContentMediaListener`。不复制 Adapter，不包含旧 Renderer、ContentRuntime 或地图几何类。

## 接入入口

已有宿主把唯一 `ContentStore` 传给以下入口：

```kotlin
BoundContentPanel(store = existingStore)
```

`BoundContentPanel` 按宿主生命周期管理订阅、时钟和系统回读，调用同一 `ContentPanel`。主题消费 Store 中由高德提供的主题，不读取系统 `uiMode`，真实接入不开放预览场景或主题切换。

非 Compose 宿主可以使用：

```kotlin
val binding = ContentBinding(existingStore) // 默认 Shared
binding.start()
// binding.state / binding.artwork 提供状态，dispatch 接收用户意图。
binding.stop()
binding.close()
```

所有生命周期和 dispatch API 必须在主线程调用。Store 回调可来自后台，Binding 将其投影到主线程；停止和重新启动通过代数隔离旧回调，不重放历史命令。默认 Shared 只解绑，不销毁调用方 Store；仅在调用方明确移交唯一 Store 生命周期时使用 `StoreOwnership.Owned`。同一宿主只挂载一个 Binding，不在 Composable 内创建第二个 Store。

## 已有能力

| 内容 | 唯一 owner / 路径 | 接入语义 |
|---|---|---|
| 时间、偏好与主题 | `ContentStore` | 格式按偏好派生，高德主题由既有宿主回调写 Store |
| 温度、电量、里程、充电状态 | `ContentVehicleAdapter → ContentStore` | 每字段有效性校验，未知不猜数值，里程不附未经确认单位 |
| 车锁、通风、加热、按摩 | `ContentStore → VehiclePort` | 实际值与待确认目标分离；回读、拒绝、断连与超时仍由原 Store / Adapter 处理 |
| 曲目、播放、下一首 | `ContentStore → MediaPort` | 各项能力分别门禁，播放目标只投影 Store，不把发送当作成功 |
| 五种媒体来源 | `ContentRegistry → MediaPort` | 现有来源服务可达性声明；选择后等待真实快照，Binding 不造来源 target 或模拟确认 |
| 亮度、媒体音量 | `ContentPorts.SystemPort` | 松手一次提交、真实回读确认；无权限禁用；取消不写、同值不重发 |
| 封面 | 媒体快照 → Binding | UI 通过宿主 slot 显示真实封面，无封面回退原厂音乐图标 |

库 Manifest 只声明上述已有能力需要的组件、有限包可见性和系统权限；它不自动授权通知读取或修改系统设置。宿主实际权限不足时仍为不可用。第一层独立调试包不合并本库 Manifest。

真实模式网格只显示四项控制与两滑条，移除第一层重复占位；Dock 和快捷卡使用同一份控制状态。设置仅点击反馈未接入；歌词保持真实空态。空调、投屏、天气、档位及其它未声明能力不建立新端口、不补假状态、不新增控制入口。

## 验证

```sh
./gradlew :content-runtime:assembleDebug :content-runtime:testDebugUnitTest :content-runtime:lintDebug
./gradlew :app:assembleDebug :app:testDebugUnitTest :content-ui:testDebugUnitTest
```

固定依赖版本沿用第一层。测试使用注入的既有 Port 契约，不调用真实设备。测试替身不作为实车能力已确认的证据。实际本轮结果见 [第二层验证记录](../../docs/testing/Compose第二层能力接入验证记录.md)。

Kotlin唯一实现已迁入 `source/amap-9.5.0.600013/content-compose/runtime/`，本库直接编译它；第三层普通地图Activity宿主见 [`:map-host`](../map-host/README.md)。`BoundBindingPanel(binding)` 支持宿主持有同一个Binding以处理临时来源层返回键，离开Composition时关闭Binding；Shared不销毁Store。正式APK仍必须通过原强制签名主链构建，不能安装AAR；实车读取、媒体授权、系统权限和安全可逆写入仍需要后续同包运行证据。

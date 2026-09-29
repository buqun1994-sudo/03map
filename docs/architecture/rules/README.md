# 规则索引

代码入口和版本专属物理锚点统一维护在 docs/code-map/，不在规则文件中复制混淆类名或资源 ID。

本目录只承接 `03地图` 中多次复用且已经验证的规则。单次 APK 分析结果写进 `docs/progress.md` 或对应决策文档；通用的人机协作方法直接参考 [共享基线](../共享基线.md) 和 [03lyrics AI 协作规则](../../../../03lyrics/docs/architecture/rules/ai-collaboration.md)。

| 分类 | 文件 | 内容 |
|---|---|---|
| AI 协作 | `ai-collaboration.md` | 本项目对上下文、执行、验证和交接的翻译 |
| 工具链 | `toolchain.md` | ADB、APKTool、Smali、签名工具的稳定调用约束 |
| 验证 | `testing.md` | APK 静态、安装、启动、窗口、日志及有原型时的视觉证据规则 |
| 安全 | `security.md` | APK 来源、签名材料、设备数据和发布边界 |

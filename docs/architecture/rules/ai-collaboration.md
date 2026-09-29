# AI 协作规则

项目级动态流程通过 .agents/skills/ 路由：定位源码使用 amap-code-map；内容区 UI 视觉返工、状态补全或目标功能开启使用 redesign-content-panel；沉淀稳定经验使用 rule-discovery；创建 Skill 使用 skill-authoring；用户明确收尾/交接时使用 task-closeout；判断模板回流时使用 template-feedback。

通用方法直接参考 [03lyrics AI 协作规则](../../../../03lyrics/docs/architecture/rules/ai-collaboration.md)；本文件只记录地图 APK 工作流的执行翻译。

1. 进入新对话先读根 `AGENTS.md` 和 `docs/README.md`，再按任务信号读取最小文档。
2. 用户提出“分析、修改、构建、安装、启动、固定位置或抓日志”时，默认由 AI 直接执行本机工具链，不停在解释步骤。
3. 解包、修改、重打包、对齐、签名、安装和运行观察按依赖顺序执行；每个阶段报告可观察证据。
4. 修改包名或签名会改变 Android 身份，必须把新身份、证书摘要和共存结果写入本轮证据；不把测试结果冒充为正式发布能力。
5. 车机验证默认使用保留数据覆盖安装和最小 smoke；卸载、清数据、重启、Release、instrumentation 和发布需要当次授权。
6. 只有 ADB 断开、系统授权弹窗、需要用户确认高风险动作或需要用户提供缺失输入时，才暂停等待用户。
7. 发现重复失败或稳定规律后，更新本项目规则、验证矩阵或决策文档；不复制第二套状态机或第二套工具真值。

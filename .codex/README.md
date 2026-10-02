# 本机上下文

`.codex/local-context.properties` 是本机私有配置，已被 `.gitignore` 忽略。新对话涉及工具链或车机时，先读取该文件；缺失时复制 `.codex/local-context.properties.example` 并填写本机路径。

不复制整份配置入库或公开传播。非公开凭据、个人信息和可访问设备的连接信息按 [个人风险口径](../docs/security/安全与密钥边界.md) 保护；排障时可以向用户说明必要路径和脱敏配置，不一律禁止在对话中展示。

.class public Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GAEA_MODULE:Ljava/lang/String; = "gaea"

.field private static sLogger:Lcom/dingtalk/mobile/common/transport/utils/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object p2, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->sLogger:Lcom/dingtalk/mobile/common/transport/utils/Logger;

    invoke-static {p2}, Lwb0;->a(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6
    :cond_0
    sget-object p2, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->sLogger:Lcom/dingtalk/mobile/common/transport/utils/Logger;

    const-string v0, "gaea"

    invoke-interface {p2, v0, p0, p1}, Lcom/dingtalk/mobile/common/transport/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->sLogger:Lcom/dingtalk/mobile/common/transport/utils/Logger;

    .line 3
    invoke-static {v0}, Lwb0;->a(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-object v0, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->sLogger:Lcom/dingtalk/mobile/common/transport/utils/Logger;

    .line 15
    const-string v1, "gaea"

    .line 17
    invoke-interface {v0, v1, p0, p1}, Lcom/dingtalk/mobile/common/transport/utils/Logger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :goto_0
    return-void
.end method

.method public static setLogger(Lcom/dingtalk/mobile/common/transport/utils/Logger;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->sLogger:Lcom/dingtalk/mobile/common/transport/utils/Logger;

    .line 3
    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

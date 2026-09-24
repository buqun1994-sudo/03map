.class public Lcom/dingtalk/bifrost/BifrostEnvUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "bifrostEnvUtils"

.field private static context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getContext()Landroid/content/Context;
    .locals 5

    .line 1
    const-string v0, "bifrostEnvUtils"

    .line 3
    sget-object v1, Lcom/dingtalk/bifrost/BifrostEnvUtils;->context:Landroid/content/Context;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    :try_start_0
    const-string v1, "android.app.ActivityThread"

    .line 10
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "currentApplication"

    .line 16
    const/4 v3, 0x0

    .line 17
    new-array v4, v3, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 22
    move-result-object v1

    .line 23
    new-array v2, v3, [Ljava/lang/Object;

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/content/Context;

    .line 32
    sput-object v1, Lcom/dingtalk/bifrost/BifrostEnvUtils;->context:Landroid/content/Context;

    .line 34
    if-eqz v1, :cond_1

    .line 36
    return-object v1

    .line 37
    :cond_1
    const-string v1, "context from ActivityThread is null"

    .line 39
    invoke-static {v0, v1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    const-string v2, "context from ActivityThread exception"

    .line 46
    invoke-static {v0, v2, v1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    :goto_0
    sget-object v0, Lcom/dingtalk/bifrost/BifrostEnvUtils;->context:Landroid/content/Context;

    .line 51
    return-object v0
.end method

.method public static final setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dingtalk/bifrost/BifrostEnvUtils;->context:Landroid/content/Context;

    .line 3
    return-void
.end method

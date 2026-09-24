.class public Lcom/autonavi/amapauto/controller/AutoStartupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 6

    .line 1
    const-string v0, "StartupReceiver startService catch Exception e = {?}."

    .line 3
    invoke-static {}, Lzm;->d()Lzm;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "isNeedFrontMemory"

    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-virtual {v1, v2, v3}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    const-string v4, "AutoStartupReceiver"

    .line 17
    if-eqz v1, :cond_0

    .line 19
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 21
    filled-new-array {v1}, [Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, v1}, Lu50;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    const-string p1, "startAutoService checkPermissions fail"

    .line 33
    new-array v0, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_0
    :try_start_0
    const-string v1, "startAutoService success"

    .line 41
    new-array v5, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v4, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, La7;->c()La7;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, p1, v3}, La7;->i(Landroid/content/Context;Z)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    new-array v1, v3, [Ljava/lang/Object;

    .line 57
    aput-object p1, v1, v2

    .line 59
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception p1

    .line 64
    new-array v1, v3, [Ljava/lang/Object;

    .line 66
    aput-object p1, v1, v2

    .line 68
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :goto_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "StartupReceiver onReceive() action = {?}"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    const-string v2, "AutoStartupReceiver"

    .line 29
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_0

    .line 44
    const-string v0, "AUTONAVI_START_BACKGROUND"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_0

    .line 56
    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 58
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    move-result p2

    .line 66
    if-eqz p2, :cond_1

    .line 68
    :cond_0
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/controller/AutoStartupReceiver;->a(Landroid/content/Context;)V

    .line 71
    :cond_1
    return-void
.end method

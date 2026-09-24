.class public Lu7;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "AutoLite360Impl"

    .line 9
    const-string v2, "AutoLite360Impl()"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 5

    .line 1
    const-string v0, "AutoLite360Impl"

    .line 3
    const/16 v1, 0x2711

    .line 5
    if-eq p1, v1, :cond_0

    .line 7
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    :try_start_0
    const-string v2, "SHOW_NETWORK_SETTING"

    .line 16
    new-array v3, p1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v2, Landroid/content/Intent;

    .line 23
    const-string v3, "com.caros.launcher.action.START_APP"

    .line 25
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 28
    const-string v3, "com.caros.launcher.extra.APP_TYPE"

    .line 30
    const/16 v4, 0x3f3

    .line 32
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v2

    .line 48
    new-array v3, v1, [Ljava/lang/Object;

    .line 50
    aput-object v2, v3, p1

    .line 52
    const-string p1, "SHOW_NETWORK_SETTING {?}"

    .line 54
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :goto_0
    return v1
.end method

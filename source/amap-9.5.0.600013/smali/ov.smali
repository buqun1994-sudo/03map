.class public Lov;
.super Lmc;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lov;->a:Ljava/lang/String;

    .line 14
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lov;->b:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public final d()Z
    .locals 4

    .line 1
    const/high16 v0, 0x10000000

    .line 3
    :try_start_0
    iget-object v1, p0, Lov;->a:Ljava/lang/String;

    .line 5
    const-string v2, "showNetworkSetting start!"

    .line 7
    const/4 v3, 0x0

    .line 8
    new-array v3, v3, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance v1, Landroid/content/Intent;

    .line 15
    const-string v2, "com.yftech.intent.action.start.wifi.setting"

    .line 17
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 23
    iget-object v2, p0, Lov;->b:Landroid/content/Context;

    .line 25
    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 33
    new-instance v1, Landroid/content/Intent;

    .line 35
    const-string v2, "android.settings.WIFI_SETTINGS"

    .line 37
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 43
    iget-object v0, p0, Lov;->b:Landroid/content/Context;

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 48
    :goto_0
    const/4 v0, 0x1

    .line 49
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lmc;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lov;->d()Z

    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const v0, 0x9c43

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0}, Lov;->getUUID()Ljava/lang/String;

    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_1
    const-string p1, "C04010739001"

    .line 22
    return-object p1
.end method

.method public final getUUID()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "persist.vehicle.sn"

    .line 3
    invoke-static {v0}, Lvf0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lov;->a:Ljava/lang/String;

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 15
    const-string v3, "getUUID uuid={?}"

    .line 17
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-object v0
.end method

.method public startup()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lmc;->startup()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

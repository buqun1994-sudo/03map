.class public Lea;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public e()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 4

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 13
    const-string v1, "android.intent.action.MAIN"

    .line 15
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v1, Landroid/content/ComponentName;

    .line 20
    const-string v2, "com.android.settings"

    .line 22
    const-string v3, "com.banyac.midrive.connectionsettings.activity.WifiActivity"

    .line 24
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 30
    const/high16 v1, 0x10200000

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-array v1, p1, [Ljava/lang/Object;

    .line 50
    const/4 v2, 0x0

    .line 51
    aput-object v0, v1, v2

    .line 53
    const-string v0, "AutoLiteXiaoMiBanYaImpl"

    .line 55
    const-string v2, "SHOW_NETWORK_SETTING {?}"

    .line 57
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_0
    return p1
.end method

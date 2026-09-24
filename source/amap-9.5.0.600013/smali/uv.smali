.class public Luv;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lei;->getBooleanValue(I)Z

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
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    const-string v1, "ACTION_SETTINGS_WIFI_SETTING"

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    const-string v1, "type"

    .line 23
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 26
    iget-object v1, p0, Lac;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    new-array v1, p1, [Ljava/lang/Object;

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    aput-object v0, v1, v2

    .line 42
    const-string v0, "JiangHuaiK7Impl"

    .line 44
    const-string v2, "SHOW_NETWORK_SETTING Exception:"

    .line 46
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :goto_0
    return p1
.end method

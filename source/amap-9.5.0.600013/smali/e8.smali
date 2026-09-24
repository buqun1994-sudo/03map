.class public Le8;
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
.method public getBooleanValue(I)Z
    .locals 2

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
    iget-object p1, p0, Lac;->a:Landroid/content/Context;

    .line 12
    new-instance v0, Landroid/content/Intent;

    .line 14
    const-string v1, "action.dudu.launcher.startWifiSetting"

    .line 16
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    const/4 p1, 0x1

    .line 23
    return p1
.end method

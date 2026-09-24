.class public Laa;
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
    const-string v1, "DefaultAutoLiteImpl"

    .line 9
    const-string v2, "AutoLiteXJYDCMS2Impl"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x2711

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 6
    const/16 v0, 0x2719

    .line 8
    if-eq p1, v0, :cond_0

    .line 10
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 13
    move-result p1

    .line 14
    return p1

    .line 15
    :cond_0
    return v1

    .line 16
    :cond_1
    new-instance p1, Landroid/content/Intent;

    .line 18
    const-string v0, "action_switch_settings_page"

    .line 20
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    const-string v0, "extra_page"

    .line 25
    const-string v2, "\u65e0\u7ebf\u7f51\u7edc"

    .line 27
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    invoke-static {}, Lrv;->H()Lrv;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lrv;->F()Landroid/app/Activity;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 41
    return v1
.end method

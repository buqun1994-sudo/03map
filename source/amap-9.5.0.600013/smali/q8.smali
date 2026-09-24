.class public Lq8;
.super Lv8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lv8;-><init>()V

    .line 4
    const/16 v0, 0xfa

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 10
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 2

    .line 1
    const/16 v0, 0x2712

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
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "navi_bar_status"

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 28
    move-result p1

    .line 29
    if-ne p1, v1, :cond_1

    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Lbc;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    const/4 v0, 0x3

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Exception"

    .line 8
    const-string v3, "DefaultAutoLiteImpl"

    .line 10
    const-string v4, "navi_bar_status"

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eq p2, v0, :cond_1

    .line 15
    const/4 v0, 0x4

    .line 16
    if-eq p2, v0, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object p1

    .line 23
    invoke-static {p1, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-array p2, v5, [Ljava/lang/Object;

    .line 30
    aput-object p1, p2, v1

    .line 32
    invoke-static {v3, v2, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x2

    .line 41
    invoke-static {p1, v4, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    goto :goto_0

    .line 45
    :catch_1
    move-exception p1

    .line 46
    new-array p2, v5, [Ljava/lang/Object;

    .line 48
    aput-object p1, p2, v1

    .line 50
    invoke-static {v3, v2, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :goto_0
    return-void
.end method

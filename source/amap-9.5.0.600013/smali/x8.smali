.class public Lx8;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const-string v2, "DefaultAutoLiteImpl"

    .line 9
    const-string v3, "AutoLiteFJYDCME1Impl"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const/16 v1, 0xc8

    .line 16
    invoke-virtual {p0, v1, v0, v1, v0}, Lac;->d(IIII)V

    .line 19
    return-void
.end method


# virtual methods
.method public e()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 3

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
    const-string v0, "screen_scale"

    .line 24
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x1

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    const/4 v1, 0x0

    .line 32
    aput-object p1, v0, v1

    .line 34
    const-string v1, "DefaultAutoLiteImpl"

    .line 36
    const-string v2, "[AutoLiteRuiMingYiDongZhengQiImpl] scale:{?}"

    .line 38
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-string v0, "full"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 46
    move-result p1

    .line 47
    return p1
.end method

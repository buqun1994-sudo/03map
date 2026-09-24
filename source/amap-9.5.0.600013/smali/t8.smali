.class public Lt8;
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
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "rmt_oper"

    .line 15
    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x1

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v0, v1, v2

    .line 25
    const-string v2, "AutoLiteRenWoYou"

    .line 27
    const-string v3, "devicesInfo={?}"

    .line 29
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v1

    .line 36
    if-nez v1, :cond_0

    .line 38
    const-string v1, "988"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 43
    move-result v0

    .line 44
    if-lez v0, :cond_0

    .line 46
    new-instance v0, Lu8;

    .line 48
    invoke-direct {v0}, Lu8;-><init>()V

    .line 51
    invoke-virtual {v0}, Lu8;->e()Lfi;

    .line 54
    move-result-object v0

    .line 55
    return-object v0

    .line 56
    :cond_0
    return-object p0
.end method

.class public Loe;
.super Lmc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getStringValue(I)Ljava/lang/String;
    .locals 3

    .line 1
    const v0, 0x9c43

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lmc;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 18
    move-result-object p1

    .line 19
    const-string v0, "navi_tuid"

    .line 21
    if-eqz p1, :cond_1

    .line 23
    invoke-static {}, Lrv;->H()Lrv;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lrv;->y()Landroid/app/Application;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, 0x0

    .line 41
    :goto_0
    const/4 v1, 0x2

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    const/4 v2, 0x0

    .line 45
    aput-object v0, v1, v2

    .line 47
    const/4 v0, 0x1

    .line 48
    aput-object p1, v1, v0

    .line 50
    const-string v0, "ChangChengHuaGuanImpl"

    .line 52
    const-string v2, "Settings.System.getString(context,{?}) = {?}"

    .line 54
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-object p1
.end method

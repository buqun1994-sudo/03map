.class public Ldd0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldk0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public g()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "com.neusoft.action.carmodechange"

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    const-string v1, "com.incall.action.carmodechange"

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    return-object v0
.end method

.method public h()I
    .locals 3

    .line 1
    invoke-static {}, Ldd0;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "car_mode"

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const/4 v2, 0x1

    .line 19
    :cond_0
    return v2
.end method

.method public j(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const-string p1, "car_mode"

    .line 3
    const/4 v0, -0x1

    .line 4
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    move-result p1

    .line 8
    const/4 p2, 0x0

    .line 9
    const/4 v0, 0x1

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-static {p2, p2}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 15
    return v0

    .line 16
    :cond_0
    if-ne v0, p1, :cond_1

    .line 18
    invoke-static {p2, v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->setHeadLampStatus(II)V

    .line 21
    return v0

    .line 22
    :cond_1
    return p2
.end method

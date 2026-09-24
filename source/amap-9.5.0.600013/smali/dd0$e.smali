.class public Ldd0$e;
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
    .locals 1

    .line 1
    const-string v0, "com.incall.action.carmodechange"

    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public h()I
    .locals 6

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "car_mode"

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    invoke-static {}, Ldd0;->b()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v3, 0x1

    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 27
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v4, v2

    .line 33
    const-string v5, "GET_HEAD_LAMPS_ON, Settings.System.getInt, ret={?}"

    .line 35
    invoke-static {v1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    if-nez v0, :cond_0

    .line 40
    const/4 v2, 0x1

    .line 41
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

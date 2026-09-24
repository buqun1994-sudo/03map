.class public Lol0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnl0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lol0;
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
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->isAvailable()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getSystemMaxVolume()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getImplProxy()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getSystemMaxVolume()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v1, v2

    .line 23
    const-string v2, "ISystemVolumeFunc"

    .line 25
    const-string v3, "getSystemMaxVolume, value={?}"

    .line 27
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return v0
.end method

.method public getSystemVolume()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getImplProxy()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->getSystemVolume()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v3

    .line 21
    aput-object v3, v1, v2

    .line 23
    const-string v2, "ISystemVolumeFunc"

    .line 25
    const-string v3, "getSystemVolume, value={?}"

    .line 27
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return v0
.end method

.method public setSystemVolume(II)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const-string v1, "ISystemVolumeFunc"

    .line 20
    const-string v2, "setSystemVolume value:{?}, flag:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->getImplProxy()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->setSystemVolume(II)V

    .line 36
    return-void
.end method

.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11M01EV_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "m01ev"

.field private static final TAG:Ljava/lang/String; = "CheryFX11M01EV_InteractionImpl ChannelAdaptor"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 6

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 9
    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    .line 11
    iput-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 13
    const-wide/16 v4, 0x0

    .line 15
    iput-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 17
    const-wide v4, 0x4056d33333333333L    # 91.3

    .line 22
    iput-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 24
    const/4 v4, 0x3

    .line 25
    new-array v4, v4, [Ljava/lang/Object;

    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 31
    move-result-object v2

    .line 32
    aput-object v2, v4, v5

    .line 34
    iget-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 36
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v4, v1

    .line 42
    iget-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 44
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x2

    .line 49
    aput-object v1, v4, v2

    .line 51
    const-string v1, "CheryFX11M01EV_InteractionImpl ChannelAdaptor"

    .line 53
    const-string v2, "location isVaild=true, yaw={?}, pitch={?}, roll={?}"

    .line 55
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-object v0
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;->getStringValue(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "C04010241027"

    .line 12
    return-object p1
.end method

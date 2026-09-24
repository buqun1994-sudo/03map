.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryGS11_InteractionImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;
.source "SourceFile"


# static fields
.field static final CAR_TYPE:Ljava/lang/String; = "GS11"

.field private static final TAG:Ljava/lang/String; = "CheryGS11_InteractionImpl ChannelAdaptor"


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
    const-wide v2, -0x3f9e200000000000L    # -143.0

    .line 14
    iput-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 16
    const-wide/16 v4, 0x0

    .line 18
    iput-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 20
    const-wide v4, -0x3fa9800000000000L    # -90.0

    .line 25
    iput-wide v4, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 27
    const/4 v4, 0x3

    .line 28
    new-array v4, v4, [Ljava/lang/Object;

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 34
    move-result-object v2

    .line 35
    aput-object v2, v4, v5

    .line 37
    iget-wide v2, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 39
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 42
    move-result-object v2

    .line 43
    aput-object v2, v4, v1

    .line 45
    iget-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 47
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x2

    .line 52
    aput-object v1, v4, v2

    .line 54
    const-string v1, "CheryGS11_InteractionImpl ChannelAdaptor"

    .line 56
    const-string v2, "location isVaild=true, yaw={?}, pitch={?}, roll={?}"

    .line 58
    invoke-static {v1, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
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
    const-string p1, "C04010241030"

    .line 12
    return-object p1
.end method

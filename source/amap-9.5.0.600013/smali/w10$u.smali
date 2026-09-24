.class public Lw10$u;
.super Lw10$e0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw10$e0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "MountAngleInfoFuncRepository"

    .line 6
    const-string v3, "getMountAngleInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 13
    invoke-direct {v1}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 16
    const/4 v3, 0x1

    .line 17
    iput-boolean v3, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 19
    const-wide/16 v4, 0x0

    .line 21
    iput-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 23
    const-wide v6, -0x3faea00000000000L    # -69.5

    .line 28
    iput-wide v6, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 30
    iput-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 32
    const/4 v6, 0x3

    .line 33
    new-array v6, v6, [Ljava/lang/Object;

    .line 35
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    move-result-object v4

    .line 39
    aput-object v4, v6, v0

    .line 41
    iget-wide v4, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 43
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 46
    move-result-object v0

    .line 47
    aput-object v0, v6, v3

    .line 49
    iget-wide v3, v1, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 51
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 54
    move-result-object v0

    .line 55
    const/4 v3, 0x2

    .line 56
    aput-object v0, v6, v3

    .line 58
    const-string v0, "getMountAngleInfo locMountAngle : yaw:{?}, pitch:{?}, roll:{?}"

    .line 60
    invoke-static {v2, v0, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    return-object v1
.end method

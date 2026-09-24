.class public Lw10$f;
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
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 13
    const-wide/high16 v3, 0x402a000000000000L    # 13.0

    .line 15
    iput-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 17
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 19
    return-object v0
.end method

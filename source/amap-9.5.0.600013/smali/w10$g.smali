.class public Lw10$g;
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
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 6
    const/4 v1, 0x1

    .line 7
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 9
    const-wide v1, -0x3fa9800000000000L    # -90.0

    .line 14
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 16
    const-wide/high16 v1, 0x4020000000000000L    # 8.0

    .line 18
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 20
    const-wide/16 v1, 0x0

    .line 22
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 24
    return-object v0
.end method

.class public Lw10$d;
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
    invoke-static {}, Lak;->a()Lak;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lak;->b()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 13
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 16
    const/4 v1, 0x1

    .line 17
    iput-boolean v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 19
    const-wide/16 v1, 0x0

    .line 21
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 23
    const-wide/high16 v3, 0x403d000000000000L    # 29.0

    .line 25
    iput-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 27
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 29
    :cond_0
    return-object v0
.end method

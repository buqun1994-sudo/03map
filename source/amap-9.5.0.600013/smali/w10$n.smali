.class public Lw10$n;
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
    .locals 6

    .line 1
    invoke-static {}, Lak;->a()Lak;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lak;->b()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 8
    move-result-object v0

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 15
    cmpl-double v5, v3, v1

    .line 17
    if-nez v5, :cond_1

    .line 19
    iget-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 21
    cmpl-double v5, v3, v1

    .line 23
    if-nez v5, :cond_1

    .line 25
    iget-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 27
    cmpl-double v5, v3, v1

    .line 29
    if-nez v5, :cond_1

    .line 31
    :cond_0
    const/4 v0, 0x0

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    const-string v3, "MountAngleInfoFuncRepository"

    .line 36
    const-string v4, "Use default mount angle in N331"

    .line 38
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    new-instance v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 43
    invoke-direct {v0}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 46
    const/4 v3, 0x1

    .line 47
    iput-boolean v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 49
    const-wide v3, -0x3fd9333333333333L    # -11.4

    .line 54
    iput-wide v3, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 56
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 58
    iput-wide v1, v0, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 60
    :cond_1
    return-object v0
.end method

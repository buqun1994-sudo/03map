.class public Lcom/autonavi/amapauto/location/model/LocModeType;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public funcs:I

.field public locType:I

.field public mountAngle:Lcom/autonavi/amapauto/location/model/LocMountAngle;

.field public platformType:I

.field public sensorOption:Lcom/autonavi/amapauto/location/model/LocSensorOption;

.field public signalTypes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocModeType;->locType:I

    .line 7
    const v0, 0x8704c0

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocModeType;->funcs:I

    .line 12
    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocModeType;->platformType:I

    .line 15
    return-void
.end method

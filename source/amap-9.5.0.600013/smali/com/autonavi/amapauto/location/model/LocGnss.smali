.class public Lcom/autonavi/amapauto/location/model/LocGnss;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accuracy:F

.field public alt:F

.field public arsCourse:F

.field public course:F

.field public dataType:I

.field public day:I

.field public flag:I

.field public hdop:F

.field public hour:I

.field public interval:I

.field public isEW:B

.field public isEncrypted:S

.field public isNS:B

.field public lat:D

.field public lon:D

.field public millisecond:I

.field public minute:I

.field public mode:B

.field public month:I

.field public num:I

.field public overhead:I

.field public pdop:F

.field public second:I

.field public sourType:I

.field public spdState:I

.field public speed:F

.field public speedoMeter:F

.field public status:B

.field public tickTime:J

.field public vdop:F

.field public year:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x10

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/location/model/LocGnss;->dataType:I

    .line 8
    return-void
.end method

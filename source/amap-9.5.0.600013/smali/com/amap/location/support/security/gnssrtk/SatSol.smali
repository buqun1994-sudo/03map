.class public Lcom/amap/location/support/security/gnssrtk/SatSol;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public azimuth:D

.field public cn0DbHz:[D

.field public delta_toe:D

.field public dopplerresp:[D

.field public dopplervsat:[I

.field public dts:[D

.field public dvion:[D

.field public dvtrp:[D

.field public elevation:D

.field public freq:[D

.field public isCT:[I

.field public isRebuild:[I

.field public isSmooth:[I

.field public kalmanvsat:I

.field public pseudorange:[D

.field public pseudorangeRateMetersPerSecond:[D

.field public pseudorangeRateUncertaintyMetersPerSecond:[D

.field public receivedSvTimeUncertaintyNanos:[J

.field public resp:[D

.field public rs:[D

.field public satId:Ljava/lang/String;

.field public svh:I

.field public sys:I

.field public var:[D

.field public vare:D

.field public vare_ura:D

.field public vmeas:D

.field public vsat:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v1, v0, [D

    .line 7
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->resp:[D

    .line 9
    new-array v1, v0, [I

    .line 11
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->dopplervsat:[I

    .line 13
    new-array v1, v0, [D

    .line 15
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->dopplerresp:[D

    .line 17
    const/4 v1, 0x6

    .line 18
    new-array v1, v1, [D

    .line 20
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->rs:[D

    .line 22
    const/4 v1, 0x2

    .line 23
    new-array v2, v1, [D

    .line 25
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->dts:[D

    .line 27
    new-array v2, v0, [I

    .line 29
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->vsat:[I

    .line 31
    new-array v2, v0, [D

    .line 33
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->var:[D

    .line 35
    new-array v2, v1, [D

    .line 37
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->dvion:[D

    .line 39
    new-array v1, v1, [D

    .line 41
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->dvtrp:[D

    .line 43
    new-array v1, v0, [D

    .line 45
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->cn0DbHz:[D

    .line 47
    new-array v1, v0, [D

    .line 49
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->pseudorangeRateUncertaintyMetersPerSecond:[D

    .line 51
    new-array v1, v0, [J

    .line 53
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->receivedSvTimeUncertaintyNanos:[J

    .line 55
    new-array v1, v0, [D

    .line 57
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->pseudorange:[D

    .line 59
    new-array v1, v0, [D

    .line 61
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->pseudorangeRateMetersPerSecond:[D

    .line 63
    new-array v1, v0, [D

    .line 65
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->freq:[D

    .line 67
    new-array v1, v0, [I

    .line 69
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->isCT:[I

    .line 71
    new-array v1, v0, [I

    .line 73
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->isSmooth:[I

    .line 75
    new-array v0, v0, [I

    .line 77
    iput-object v0, p0, Lcom/amap/location/support/security/gnssrtk/SatSol;->isRebuild:[I

    .line 79
    return-void
.end method

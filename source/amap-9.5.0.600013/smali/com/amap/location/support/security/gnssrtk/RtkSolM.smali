.class public Lcom/amap/location/support/security/gnssrtk/RtkSolM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bearing:D

.field public chipSpeedConfidence:D

.field public cov:[D

.field public dop:[D

.field public dtr:[D

.field public gpstime:D

.field public isFilter:I

.field public oneStepPos:[D

.field public pos:[D

.field public radius:D

.field public resp_ct3:D

.field public resp_spp2:D

.field public satSols:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/location/support/security/gnssrtk/SatSol;",
            ">;"
        }
    .end annotation
.end field

.field public speed:[D

.field public speed_accuracy:D

.field public speed_plane:D

.field public ticktime:J

.field public total_sat_nums:I

.field public useType:I

.field public valid_sat_nums:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [D

    .line 7
    iput-object v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->dop:[D

    .line 9
    const/4 v0, 0x3

    .line 10
    new-array v1, v0, [D

    .line 12
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->cov:[D

    .line 14
    const/4 v1, 0x6

    .line 15
    new-array v2, v1, [D

    .line 17
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->speed:[D

    .line 19
    new-array v2, v1, [D

    .line 21
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->pos:[D

    .line 23
    new-array v1, v1, [D

    .line 25
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->dtr:[D

    .line 27
    new-array v0, v0, [D

    .line 29
    iput-object v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->oneStepPos:[D

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->satSols:Ljava/util/ArrayList;

    .line 38
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 3
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->gpstime:D

    .line 5
    const-wide/16 v0, -0x1

    .line 7
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->ticktime:J

    .line 9
    iget-object v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->satSols:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 14
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->valid_sat_nums:I

    .line 17
    iput v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->total_sat_nums:I

    .line 19
    const/4 v1, 0x4

    .line 20
    new-array v1, v1, [D

    .line 22
    iput-object v1, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->dop:[D

    .line 24
    const/4 v1, 0x3

    .line 25
    new-array v2, v1, [D

    .line 27
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->cov:[D

    .line 29
    const/4 v2, 0x6

    .line 30
    new-array v3, v2, [D

    .line 32
    iput-object v3, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->speed:[D

    .line 34
    new-array v3, v2, [D

    .line 36
    iput-object v3, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->pos:[D

    .line 38
    new-array v2, v2, [D

    .line 40
    iput-object v2, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->dtr:[D

    .line 42
    iput v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->isFilter:I

    .line 44
    new-array v0, v1, [D

    .line 46
    iput-object v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->oneStepPos:[D

    .line 48
    const-wide/16 v0, 0x0

    .line 50
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->radius:D

    .line 52
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->bearing:D

    .line 54
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->speed_plane:D

    .line 56
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->speed_accuracy:D

    .line 58
    const/4 v2, -0x1

    .line 59
    iput v2, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->useType:I

    .line 61
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->resp_spp2:D

    .line 63
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->resp_ct3:D

    .line 65
    const-wide/high16 v0, -0x3fdc000000000000L    # -10.0

    .line 67
    iput-wide v0, p0, Lcom/amap/location/support/security/gnssrtk/RtkSolM;->chipSpeedConfidence:D

    .line 69
    return-void
.end method

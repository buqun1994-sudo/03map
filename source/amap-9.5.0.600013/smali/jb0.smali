.class public Ljb0;
.super Lpc;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lpc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lpc;-><init>()V

    .line 3
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    move-result-object v0

    const-string v1, "EXTRA_SLAT"

    const-wide/16 v2, 0x0

    .line 4
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slat:D

    const-string v1, "EXTRA_SLON"

    .line 5
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->slon:D

    const-string v1, "EXTRA_SNAME"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sname:Ljava/lang/String;

    const-string v1, "EXTRA_DLAT"

    .line 7
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    const-string v1, "EXTRA_DLON"

    .line 8
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    const-string v1, "ENTRY_LAT"

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "ENTRY_LON"

    .line 10
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    cmpl-double v1, v6, v2

    if-eqz v1, :cond_0

    .line 11
    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 12
    iput-wide v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    :cond_0
    const-string v1, "EXTRA_DNAME"

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    const-string v1, "EXTRA_DEV"

    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    const-string v1, "EXTRA_M"

    const/4 v4, -0x1

    .line 15
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    const-string v1, "EXTRA_NEWMODE"

    const/16 v4, -0x64

    .line 16
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    const-string v1, "EXTRA_POITYPE"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->poiType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    const-string v1, "EXTRA_FMIDLAT"

    .line 19
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    const-string v1, "EXTRA_FMIDLON"

    .line 20
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    const-string v1, "EXTRA_FMIDNAME"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidname:Ljava/lang/String;

    const-string v1, "EXTRA_SMIDLAT"

    .line 22
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    const-string v1, "EXTRA_SMIDLON"

    .line 23
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    const-string v1, "EXTRA_SMIDNAME"

    .line 24
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidname:Ljava/lang/String;

    const-string v1, "EXTRA_TMIDLAT"

    .line 25
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    const-string v1, "EXTRA_TMIDLON"

    .line 26
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    const-string v1, "EXTRA_TMIDNAME"

    .line 27
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidname:Ljava/lang/String;

    const-string v1, "EXTRA_S_POI_ID"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sPoiId:Ljava/lang/String;

    const-string v1, "EXTRA_D_POI_ID"

    .line 29
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    const-string v1, "EXTRA_FMID_POI_ID"

    .line 30
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fMidPoiId:Ljava/lang/String;

    const-string v1, "EXTRA_TMID_POI_ID"

    .line 31
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tMidPoiId:Ljava/lang/String;

    const-string v1, "EXTRA_SMID_POI_ID"

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->sMidPoiId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

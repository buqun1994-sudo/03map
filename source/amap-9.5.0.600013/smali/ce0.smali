.class public Lce0;
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
    .locals 6

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

    const-string v1, "EXTRA_DNAME"

    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    const-string v1, "EXTRA_DEV"

    const/4 v4, 0x0

    .line 10
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    const-string v1, "EXTRA_M"

    const/4 v4, -0x1

    .line 11
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    const-string v1, "EXTRA_NEWMODE"

    const/16 v4, -0x64

    .line 12
    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    const-string v1, "EXTRA_FMIDLAT"

    .line 13
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    const-string v1, "EXTRA_FMIDLON"

    .line 14
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    const-string v1, "EXTRA_FMIDNAME"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidname:Ljava/lang/String;

    const-string v1, "EXTRA_SMIDLAT"

    .line 16
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    const-string v1, "EXTRA_SMIDLON"

    .line 17
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    const-string v1, "EXTRA_SMIDNAME"

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidname:Ljava/lang/String;

    const-string v1, "EXTRA_TMIDLAT"

    .line 19
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    const-string v1, "EXTRA_TMIDLON"

    .line 20
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    const-string v1, "EXTRA_TMIDNAME"

    .line 21
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidname:Ljava/lang/String;

    const-string v1, "SOURCE_APP"

    .line 22
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "KEY_RECYLE_SIMUNAVI"

    const/4 v2, 0x1

    .line 23
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    .line 24
    :goto_0
    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    return-void
.end method


# virtual methods
.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

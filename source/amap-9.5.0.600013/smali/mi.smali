.class public Lmi;
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

    .line 32
    invoke-direct {p0}, Lpc;-><init>()V

    .line 33
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    move-result-object v0

    const-string v1, "POINAME"

    .line 34
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    const-string v1, "LAT"

    const-wide/16 v2, 0x0

    .line 35
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    const-string v1, "LON"

    .line 36
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    const-string v1, "ENTRY_LAT"

    .line 37
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    const-string v1, "ENTRY_LON"

    .line 38
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v6

    cmpl-double v1, v4, v2

    if-eqz v1, :cond_0

    cmpl-double v1, v6, v2

    if-eqz v1, :cond_0

    .line 39
    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 40
    iput-wide v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    :cond_0
    const-string v1, "DEV"

    const/4 v2, 0x0

    .line 41
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    const-string v1, "STYLE"

    const/4 v2, -0x1

    .line 42
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    const-string v1, "EXTRA_NEWMODE"

    const/16 v2, -0x64

    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->newStrategy:I

    const/4 v1, 0x3

    .line 44
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    const-string v1, "EXTRA_D_POI_ID"

    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dPoiId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 10

    .line 2
    invoke-direct {p0}, Lpc;-><init>()V

    .line 3
    invoke-virtual {p0}, Lpc;->y()Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;

    move-result-object v0

    const/4 v1, 0x3

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->actionType:I

    const-string v2, "lat"

    .line 5
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lon"

    .line 6
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8
    invoke-static {v2}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlat:D

    .line 9
    invoke-static {v3}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dlon:D

    :cond_0
    const-string v2, "style"

    .line 10
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, -0x1

    .line 12
    invoke-static {v2, v3}, Lah;->k(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->strategy:I

    :cond_1
    const-string v2, "dev"

    .line 13
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    .line 15
    invoke-static {v2, v4}, Lah;->k(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dev:I

    :cond_2
    const-string v2, "poiname"

    .line 16
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->dname:Ljava/lang/String;

    const-string v2, "poiid"

    .line 17
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "throughpoint"

    .line 18
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, ";"

    .line 20
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 21
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    :goto_0
    if-ge v5, v2, :cond_6

    aget-object v7, p1, v5

    .line 22
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, ","

    .line 23
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 24
    array-length v8, v7

    if-le v8, v3, :cond_5

    aget-object v8, v7, v4

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    aget-object v8, v7, v3

    .line 25
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_5

    if-ne v6, v3, :cond_3

    .line 26
    aget-object v8, v7, v4

    invoke-static {v8}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlon:D

    .line 27
    aget-object v7, v7, v3

    invoke-static {v7}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->fmidlat:D

    goto :goto_1

    :cond_3
    const/4 v8, 0x2

    if-ne v6, v8, :cond_4

    .line 28
    aget-object v8, v7, v4

    invoke-static {v8}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlon:D

    .line 29
    aget-object v7, v7, v3

    invoke-static {v7}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->smidlat:D

    goto :goto_1

    :cond_4
    if-ne v6, v1, :cond_5

    .line 30
    aget-object v8, v7, v4

    invoke-static {v8}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlon:D

    .line 31
    aget-object v7, v7, v3

    invoke-static {v7}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v7

    iput-wide v7, v0, Lcom/autonavi/amapauto/jni/protocol/data/RouteRequestData;->tmidlat:D

    :cond_5
    :goto_1
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.class public Lqu;
.super Lcc;
.source "SourceFile"

# interfaces
.implements Lld;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 6

    .line 2
    invoke-direct {p0}, Lcc;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 5
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    const-string v1, "SOURCE_APP"

    .line 6
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    const-string v1, "KEYWORDS"

    .line 7
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    const-string v1, "LAT"

    const-wide/16 v2, 0x0

    .line 8
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v4

    iput-wide v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    const-string v1, "LON"

    .line 9
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    const-string v1, "DEV"

    const/4 v2, 0x0

    .line 10
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 5

    .line 11
    invoke-direct {p0}, Lcc;-><init>()V

    .line 12
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v0

    const/4 v1, 0x1

    .line 13
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 14
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    const-string v1, "sourceApplication"

    .line 15
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    const-string v1, "keywords"

    .line 16
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    const-string v1, "lat"

    .line 17
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lon"

    .line 18
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "dev"

    .line 19
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {v1}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    .line 21
    invoke-static {v2}, Lah;->i(Ljava/lang/String;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    const/4 v1, 0x0

    .line 22
    invoke-static {p1, v1}, Lah;->k(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 1

    .line 1
    const/16 v0, 0x273b

    .line 3
    invoke-virtual {p0, v0}, Lnc;->t(I)V

    .line 6
    invoke-virtual {p0}, Lcc;->x()Landroid/content/Intent;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.class public Lru;
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
    .locals 3

    .line 22
    invoke-direct {p0}, Lcc;-><init>()V

    .line 23
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v0

    const/4 v1, 0x0

    .line 24
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    const/4 v2, 0x1

    .line 25
    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    const-string v2, "KEYWORDS"

    .line 26
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    const-string v2, "STYLE"

    .line 27
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->style:I

    const-string v1, "SOURCE_APP"

    .line 28
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 8

    .line 2
    invoke-direct {p0}, Lcc;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    const/4 v2, 0x2

    .line 5
    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    const-string v2, "keywords"

    .line 6
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    const-string v2, "sourceApplication"

    .line 7
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    const-string v2, "style"

    .line 8
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, -0x1

    .line 10
    invoke-static {v2, v3}, Lah;->k(Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->style:I

    :cond_0
    const-string v2, "dev"

    .line 11
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 13
    invoke-static {v2, v1}, Lah;->k(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    :cond_1
    const-string v1, "lat1"

    .line 14
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lon1"

    .line 15
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lat2"

    .line 16
    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lon2"

    .line 17
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v4, 0x0

    .line 18
    invoke-static {v1, v4, v5}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v6

    iput-wide v6, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->leftTopLat:D

    .line 19
    invoke-static {v2, v4, v5}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->leftTopLon:D

    .line 20
    invoke-static {v3, v4, v5}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->rightBottomLat:D

    .line 21
    invoke-static {p1, v4, v5}, Lah;->j(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->rightBottomLon:D

    return-void
.end method


# virtual methods
.method public c()Landroid/content/Intent;
    .locals 1

    .line 1
    const/16 v0, 0x273a

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

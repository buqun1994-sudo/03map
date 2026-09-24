.class public Lpw;
.super Lcc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcc;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 5
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v2, "EXTRA_KEYWORD"

    .line 7
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    const-string v2, "EXTRA_MYLOCLAT"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    const-string v2, "EXTRA_MYLOCLON"

    .line 9
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    const-string v2, "EXTRA_DEV"

    .line 10
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    const-string v2, "EXTRA_CITY"

    .line 11
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    const-string v2, "EXTRA_MAXCOUNT"

    .line 12
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    const-string v2, "EXTRA_RANGE"

    .line 13
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    const-string v2, "EXTRA_CENTERLAT"

    .line 14
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    const-string v2, "EXTRA_CENTERLON"

    .line 15
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    const-string v2, "EXTRA_SORTORDER"

    .line 16
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    const-string v2, "EXTRA_RECOMMEND"

    .line 17
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->isRecommend:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;)V
    .locals 5

    .line 18
    invoke-direct {p0}, Lcc;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "KeywordSearchAction"

    const-string v4, "keyWordSearchModel ={?}"

    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v1

    .line 21
    iput v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 22
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getRequestType()I

    move-result v2

    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-ne v3, v2, :cond_2

    .line 23
    :cond_1
    invoke-virtual {p0, v0}, Lnc;->q(Z)V

    .line 24
    :cond_2
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getKeywords()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMylocLat()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMylocLon()D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    .line 27
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getDev()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    .line 28
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->getCity()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMaxMount()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 30
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedClassify()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needClassify:I

    .line 31
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedSort()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needSort:I

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedRange()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needRange:I

    .line 33
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedCharge()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needCharge:I

    .line 34
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedChildPoi()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needChildPoi:I

    .line 35
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getClassify()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->classify:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getSort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sort:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getRange()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->range:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getCharge()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->charge:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->getSortrule()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 40
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->appname:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->getIsRecommend()Z

    move-result p1

    iput-boolean p1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->isRecommend:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 13
    iget v1, p0, Lnc;->d:I

    .line 15
    invoke-static {v0, v1}, La80;->i(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 18
    move-result-object v0

    .line 19
    return-object v0

    .line 20
    :cond_0
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v1, v1, [Ljava/lang/Object;

    .line 25
    iget v2, p0, Lnc;->d:I

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    aput-object v2, v1, v3

    .line 34
    const-string v2, "KeywordSearchAction"

    .line 36
    const-string v3, "parseToAidlModel resultCode:{?}"

    .line 38
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    invoke-static {v0}, La80;->g(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

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

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

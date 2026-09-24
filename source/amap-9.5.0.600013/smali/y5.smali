.class public Ly5;
.super Lcc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ly5;->l:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcc;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Ly5;->l:Z

    .line 5
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v1

    .line 6
    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "EXTRA_SEARCHTYPE"

    .line 8
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 9
    iput v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    goto :goto_0

    .line 10
    :cond_0
    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    :goto_0
    const-string v0, "EXTRA_KEYWORD"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    const-string v0, "EXTRA_MYLOCLAT"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    const-string v0, "EXTRA_MYLOCLON"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    const-string v0, "EXTRA_DEV"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    const-string v0, "EXTRA_CITY"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    const-string v0, "EXTRA_MAXCOUNT"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    const-string v0, "EXTRA_RANGE"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    const-string v0, "EXTRA_CENTERLAT"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    const-string v0, "EXTRA_CENTERLON"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    const-string v0, "EXTRA_SORTORDER"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;)V
    .locals 8

    .line 21
    invoke-direct {p0}, Lcc;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Ly5;->l:Z

    .line 23
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v1

    const/4 v2, 0x1

    .line 24
    iput v2, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getRequestType()I

    move-result v3

    iput v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    const/4 v4, 0x2

    if-eq v2, v3, :cond_1

    if-ne v4, v3, :cond_2

    .line 26
    :cond_1
    invoke-virtual {p0, v2}, Lnc;->q(Z)V

    :cond_2
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    const-string v5, "AroudSearchAction"

    const-string v6, "aroundSearchModel ={?}"

    invoke-static {v5, v6, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getKeywords()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMylocLat()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lat:D

    .line 30
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMylocLon()D

    move-result-wide v6

    iput-wide v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->lon:D

    .line 31
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getDev()I

    move-result v3

    iput v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->dev:I

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMaxMount()I

    move-result v3

    iput v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    .line 33
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 34
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getLocation()Ljava/lang/String;

    move-result-object v3

    const-string v6, ","

    .line 35
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 36
    array-length v6, v3

    if-ne v6, v4, :cond_3

    .line 37
    :try_start_0
    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    iput-wide v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    .line 38
    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    iput-wide v3, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getLocation()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "locationSpit wrong={?}"

    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getRadius()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    .line 41
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;->getSortrule()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 42
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedClassify()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needClassify:I

    .line 43
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedSort()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needSort:I

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedRange()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needRange:I

    .line 45
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedCharge()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needCharge:I

    .line 46
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedChildPoi()I

    move-result v0

    iput v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needChildPoi:I

    .line 47
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getClassify()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->classify:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getSort()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sort:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getRange()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->range:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getCharge()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->charge:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Lcc;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Ly5;->l:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 53
    iput-boolean v1, p0, Ly5;->l:Z

    .line 54
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    move-result-object v2

    .line 55
    iput v1, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 56
    iput v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 57
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->getSearchCenter()I

    move-result v0

    iput v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchCenter:I

    .line 58
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->getKeyWord()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->getRadius()I

    move-result v0

    iput v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->radius:I

    .line 60
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->getSortrule()I

    move-result v0

    iput v0, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 61
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;->getMaxCount()I

    move-result p1

    iput p1, v2, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 5

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
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;

    .line 26
    const/4 v1, 0x0

    .line 27
    const-string v2, "AroudSearchAction"

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const/4 v3, 0x2

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    iget v4, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 36
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v4

    .line 40
    aput-object v4, v3, v1

    .line 42
    iget-boolean v1, p0, Ly5;->l:Z

    .line 44
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    move-result-object v1

    .line 48
    const/4 v4, 0x1

    .line 49
    aput-object v1, v3, v4

    .line 51
    const-string v1, "parseToAidlModel resultCode:{?},isHomeCompanyAroundSearch:{?}"

    .line 53
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const-string v3, "parseToAidlModel SearchResultData is null"

    .line 59
    new-array v1, v1, [Ljava/lang/Object;

    .line 61
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :goto_0
    invoke-static {v0}, La80;->g(Lcom/autonavi/amapauto/jni/protocol/data/SearchResultData;)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcc;->y()Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    .line 4
    move-result-object v0

    .line 5
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/16 v0, 0x273a

    .line 11
    invoke-virtual {p0, v0}, Lnc;->t(I)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v0, 0x273b

    .line 17
    invoke-virtual {p0, v0}, Lnc;->t(I)V

    .line 20
    :goto_0
    invoke-virtual {p0}, Lcc;->x()Landroid/content/Intent;

    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

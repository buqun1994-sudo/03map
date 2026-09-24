.class public Lym;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 v0, 0x3

    .line 5
    iput v0, p0, Lym;->k:I

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;->getMaxCount()I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lym;->k:I

    .line 13
    return-void
.end method

.method public static x(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 9
    const/16 p1, 0x2724

    .line 11
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/16 v0, 0x2710

    .line 17
    if-ne v0, p1, :cond_3

    .line 19
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisResultModel;

    .line 21
    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisResultModel;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 27
    move-result-object p0

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const-string v0, "poiResult"

    .line 32
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    move-result-object p0

    .line 36
    if-nez p0, :cond_1

    .line 38
    const/4 p0, 0x0

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 44
    :goto_0
    invoke-virtual {p1, p0}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisResultModel;->setPoiResult(Ljava/lang/String;)V

    .line 47
    :cond_2
    move-object p0, p1

    .line 48
    goto :goto_1

    .line 49
    :cond_3
    new-instance p0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 51
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 54
    :goto_1
    return-object p0
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2724

    .line 7
    if-nez v0, :cond_0

    .line 9
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 21
    iget v1, p0, Lnc;->d:I

    .line 23
    invoke-static {v0, v1}, Lym;->x(Ljava/lang/String;I)Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :cond_1
    const-string v0, "[parseToAidlModel]poiResultJson"

    .line 30
    const/4 v2, 0x0

    .line 31
    new-array v3, v2, [Ljava/lang/Object;

    .line 33
    const-string v4, "AlongWaySearchAction"

    .line 35
    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/FrequentInfoData;

    .line 44
    const/4 v3, 0x1

    .line 45
    if-nez v0, :cond_2

    .line 47
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 49
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    iget v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 55
    const/16 v5, 0x2710

    .line 57
    if-ne v5, v1, :cond_3

    .line 59
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisResultModel;

    .line 61
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisResultModel;-><init>()V

    .line 64
    invoke-static {v0}, La80;->q(Lcom/autonavi/amapauto/jni/protocol/data/FrequentInfoData;)Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    new-array v5, v3, [Ljava/lang/Object;

    .line 70
    aput-object v0, v5, v2

    .line 72
    const-string v6, "[parseToAidlModel]poiResultJson:{?}"

    .line 74
    invoke-static {v4, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisResultModel;->setPoiResult(Ljava/lang/String;)V

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 83
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 85
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 88
    :goto_0
    move-object v0, v1

    .line 89
    :goto_1
    new-array v1, v3, [Ljava/lang/Object;

    .line 91
    iget v3, p0, Lnc;->d:I

    .line 93
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    move-result-object v3

    .line 97
    aput-object v3, v1, v2

    .line 99
    const-string v2, "parseToAidlModel resultCode:{?}"

    .line 101
    invoke-static {v4, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;-><init>()V

    .line 12
    iget v1, p0, Lym;->k:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;->setMaxCount(I)V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 24
    move-result v0

    .line 25
    iget v1, p0, Lym;->k:I

    .line 27
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->requestFrequentPois(II)V

    .line 30
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

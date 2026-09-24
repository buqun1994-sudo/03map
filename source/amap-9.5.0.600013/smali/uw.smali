.class public Luw;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Z

.field public l:Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Luw;->k:Z

    .line 4
    iput-object p1, p0, Luw;->l:Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

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
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-object v1

    .line 9
    :cond_0
    if-eqz v0, :cond_2

    .line 11
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 13
    if-eqz v2, :cond_2

    .line 15
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 17
    if-eqz v2, :cond_1

    .line 19
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 21
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    move-result-object v0

    .line 25
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 27
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    move-object v1, v0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x0

    .line 41
    new-array v3, v3, [Ljava/lang/Object;

    .line 43
    const-string v4, "LastGuideInfoAction"

    .line 45
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 51
    iget v0, p0, Lnc;->d:I

    .line 53
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 63
    if-eqz v0, :cond_3

    .line 65
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 67
    if-eqz v1, :cond_3

    .line 69
    invoke-static {v0}, La80;->k(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lcom/autonavi/amapauto/protocol/model/service/GuideInfoModel;

    .line 72
    move-result-object v1

    .line 73
    goto :goto_0

    .line 74
    :cond_3
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 76
    iget v0, p0, Lnc;->d:I

    .line 78
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 81
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Li;->b()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-boolean v0, Li;->a:Z

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    iget-object v0, p0, Luw;->l:Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    .line 13
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 16
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getLastGuideInfo(I)V

    .line 23
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Luw;->k:Z

    .line 3
    return v0
.end method

.class public Ljp;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;

.field public l:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const-string v0, "HistoryDestinationInfoAction"

    .line 6
    iput-object v0, p0, Ljp;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;->getMaxCount()I

    .line 11
    move-result p1

    .line 12
    iput p1, p0, Ljp;->l:I

    .line 14
    if-gtz p1, :cond_0

    .line 16
    const/16 p1, 0x14

    .line 18
    iput p1, p0, Ljp;->l:I

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/16 v0, 0x1e

    .line 23
    if-le p1, v0, :cond_1

    .line 25
    iput v0, p0, Ljp;->l:I

    .line 27
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2730

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
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 17
    if-eqz v0, :cond_2

    .line 19
    iget-boolean v0, p0, Lnc;->c:Z

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Ljp;->x()Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;

    .line 26
    move-result-object v0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 30
    iget v1, p0, Lnc;->d:I

    .line 32
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 35
    :goto_0
    return-object v0

    .line 36
    :cond_2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 38
    const/16 v2, 0x2727

    .line 40
    invoke-direct {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 43
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;

    .line 49
    if-nez v0, :cond_3

    .line 51
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 53
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 56
    goto/16 :goto_2

    .line 58
    :cond_3
    iget v1, p0, Ljp;->l:I

    .line 60
    const/4 v3, 0x1

    .line 61
    if-ge v1, v3, :cond_4

    .line 63
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 65
    const/16 v1, 0x2711

    .line 67
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 70
    goto/16 :goto_2

    .line 72
    :cond_4
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_9

    .line 78
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 81
    move-result-object v1

    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    move-result v1

    .line 86
    if-gtz v1, :cond_5

    .line 88
    goto/16 :goto_1

    .line 90
    :cond_5
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;

    .line 92
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;-><init>()V

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    .line 97
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/HomeOrCopInfoData;->getPoiDatas()Ljava/util/List;

    .line 103
    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    move-result-object v0

    .line 108
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    move-result v3

    .line 112
    if-eqz v3, :cond_8

    .line 114
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    move-result-object v3

    .line 118
    check-cast v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 120
    new-instance v4, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;

    .line 122
    invoke-direct {v4}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;-><init>()V

    .line 125
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    .line 127
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setAddress(Ljava/lang/String;)V

    .line 130
    invoke-virtual {v3}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getPoiid()Ljava/lang/String;

    .line 133
    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setPoiId(Ljava/lang/String;)V

    .line 137
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    .line 139
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setPoiName(Ljava/lang/String;)V

    .line 142
    iget-wide v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    .line 144
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setLatitude(D)V

    .line 147
    iget-wide v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    .line 149
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setLongitude(D)V

    .line 152
    iget v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    .line 154
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 157
    move-result-object v5

    .line 158
    invoke-virtual {v4, v5}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->s(Ljava/lang/String;)V

    .line 161
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->enteryList:Ljava/util/List;

    .line 163
    if-eqz v5, :cond_7

    .line 165
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 168
    move-result v5

    .line 169
    if-lez v5, :cond_7

    .line 171
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->enteryList:Ljava/util/List;

    .line 173
    const/4 v6, 0x0

    .line 174
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    move-result-object v5

    .line 178
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 180
    iget-wide v7, v5, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    .line 182
    invoke-virtual {v4, v7, v8}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setEntryLatitude(D)V

    .line 185
    iget-object v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->enteryList:Ljava/util/List;

    .line 187
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 190
    move-result-object v5

    .line 191
    check-cast v5, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    .line 193
    iget-wide v5, v5, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 195
    invoke-virtual {v4, v5, v6}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setEntryLongitude(D)V

    .line 198
    :cond_7
    iget v3, v3, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    .line 200
    invoke-virtual {v4, v3}, Lcom/autonavi/amapauto/protocol/model/item/HistoryPoiInfo;->setDistance(I)V

    .line 203
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 209
    move-result v3

    .line 210
    iget v4, p0, Ljp;->l:I

    .line 212
    if-lt v3, v4, :cond_6

    .line 214
    :cond_8
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;->s(Ljava/util/List;)V

    .line 217
    move-object v0, v1

    .line 218
    goto :goto_2

    .line 219
    :cond_9
    :goto_1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 221
    invoke-direct {v0, v2}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 224
    :goto_2
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;-><init>()V

    .line 12
    iget v1, p0, Ljp;->l:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;->setMaxCount(I)V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Ljp;->k:Ljava/lang/String;

    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    const-string v2, "getFavoriteInfo FAV_TYPE_HISTORY_DESTINATION"

    .line 28
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lnc;->i()I

    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x4

    .line 36
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getFavoriteInfo(II)V

    .line 39
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/user/ResponseHistoryPoiModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    iget-object v2, p0, Ljp;->k:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    new-array v4, v4, [Ljava/lang/Object;

    .line 40
    invoke-static {v2, v3, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method

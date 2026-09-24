.class public final Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel_JsonLubeParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, ""

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;-><init>(ILjava/lang/String;)V

    .line 13
    const-string v1, "clientPackageName"

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 26
    const-string v1, "packageName"

    .line 28
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 39
    const-string v1, "callbackId"

    .line 41
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 44
    move-result v2

    .line 45
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 52
    const-string v1, "timeStamp"

    .line 54
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 57
    move-result-wide v2

    .line 58
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 61
    move-result-wide v1

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 65
    const-string v1, "var1"

    .line 67
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 78
    const-string v1, "searchType"

    .line 80
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getSearchType()I

    .line 83
    move-result v2

    .line 84
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setSearchType(I)V

    .line 91
    const-string v1, "keywords"

    .line 93
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getKeywords()Ljava/lang/String;

    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setKeywords(Ljava/lang/String;)V

    .line 104
    const-string v1, "mylocLon"

    .line 106
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMylocLon()D

    .line 109
    move-result-wide v2

    .line 110
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 113
    move-result-wide v1

    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setMylocLon(D)V

    .line 117
    const-string v1, "mylocLat"

    .line 119
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMylocLat()D

    .line 122
    move-result-wide v2

    .line 123
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 126
    move-result-wide v1

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setMylocLat(D)V

    .line 130
    const-string v1, "maxCount"

    .line 132
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getMaxMount()I

    .line 135
    move-result v2

    .line 136
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 139
    move-result v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setMaxMount(I)V

    .line 143
    const-string v1, "dev"

    .line 145
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getDev()I

    .line 148
    move-result v2

    .line 149
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 152
    move-result v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setDev(I)V

    .line 156
    const-string v1, "needClassify"

    .line 158
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedClassify()I

    .line 161
    move-result v2

    .line 162
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 165
    move-result v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedClassify(I)V

    .line 169
    const-string v1, "needSort"

    .line 171
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedSort()I

    .line 174
    move-result v2

    .line 175
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 178
    move-result v1

    .line 179
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedSort(I)V

    .line 182
    const-string v1, "needRange"

    .line 184
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedRange()I

    .line 187
    move-result v2

    .line 188
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 191
    move-result v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedRange(I)V

    .line 195
    const-string v1, "needCharge"

    .line 197
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedCharge()I

    .line 200
    move-result v2

    .line 201
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 204
    move-result v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedCharge(I)V

    .line 208
    const-string v1, "needChildPoi"

    .line 210
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getNeedChildPoi()I

    .line 213
    move-result v2

    .line 214
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 217
    move-result v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setNeedChildPoi(I)V

    .line 221
    const-string v1, "classify"

    .line 223
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getClassify()Ljava/lang/String;

    .line 226
    move-result-object v2

    .line 227
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 230
    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setClassify(Ljava/lang/String;)V

    .line 234
    const-string v1, "sort"

    .line 236
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getSort()Ljava/lang/String;

    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setSort(Ljava/lang/String;)V

    .line 247
    const-string v1, "range"

    .line 249
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getRange()Ljava/lang/String;

    .line 252
    move-result-object v2

    .line 253
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setRange(Ljava/lang/String;)V

    .line 260
    const-string v1, "charge"

    .line 262
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getCharge()Ljava/lang/String;

    .line 265
    move-result-object v2

    .line 266
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setCharge(Ljava/lang/String;)V

    .line 273
    const-string v1, "requestType"

    .line 275
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->getRequestType()I

    .line 278
    move-result v2

    .line 279
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 282
    move-result v1

    .line 283
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/SearchBaseModel;->setRequestType(I)V

    .line 286
    const-string v1, "city"

    .line 288
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->getCity()Ljava/lang/String;

    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 295
    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->setCity(Ljava/lang/String;)V

    .line 299
    const-string v1, "sortrule"

    .line 301
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->getSortrule()I

    .line 304
    move-result v2

    .line 305
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 308
    move-result v1

    .line 309
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->setSortrule(I)V

    .line 312
    const-string v1, "isRecommend"

    .line 314
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->getIsRecommend()Z

    .line 317
    move-result v2

    .line 318
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 321
    move-result p0

    .line 322
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;->setIsRecommend(Z)V

    .line 325
    return-object v0
.end method

.class public final Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;-><init>()V

    .line 10
    const-string v1, "clientPackageName"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getClientPackageName()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setClientPackageName(Ljava/lang/String;)V

    .line 23
    const-string v1, "packageName"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getPackageName()Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 36
    const-string v1, "callbackId"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getCallbackId()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setCallbackId(I)V

    .line 49
    const-string v1, "timeStamp"

    .line 51
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getTimeStamp()J

    .line 54
    move-result-wide v2

    .line 55
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 58
    move-result-wide v1

    .line 59
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setTimeStamp(J)V

    .line 62
    const-string v1, "var1"

    .line 64
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getVar1()Ljava/lang/String;

    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setVar1(Ljava/lang/String;)V

    .line 75
    const-string v1, "keywords"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 80
    move-result-object v1

    .line 81
    const/4 v2, 0x0

    .line 82
    if-eqz v1, :cond_2

    .line 84
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 87
    move-result v3

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    .line 90
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 93
    const/4 v5, 0x0

    .line 94
    :goto_0
    if-ge v5, v3, :cond_1

    .line 96
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v5, v5, 0x1

    .line 105
    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;->setKeywords(Ljava/util/ArrayList;)V

    .line 109
    :cond_2
    const-string v1, "pageId"

    .line 111
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;->getPageId()Ljava/lang/String;

    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;->setPageId(Ljava/lang/String;)V

    .line 122
    const-string v1, "data"

    .line 124
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 127
    move-result-object p0

    .line 128
    if-eqz p0, :cond_4

    .line 130
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 133
    move-result v1

    .line 134
    new-instance v3, Ljava/util/ArrayList;

    .line 136
    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    :goto_1
    if-ge v2, v1, :cond_3

    .line 141
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 144
    move-result-object v4

    .line 145
    invoke-static {v4}, Lcom/autonavi/amapauto/protocol/model/item/HotWordInfo_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/model/item/HotWordInfo;

    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v2, v2, 0x1

    .line 154
    goto :goto_1

    .line 155
    :cond_3
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/protocol/model/service/ReqRegistVRKeywordsModel;->setData(Ljava/util/ArrayList;)V

    .line 158
    :cond_4
    return-object v0
.end method

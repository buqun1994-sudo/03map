.class public final Lcom/autonavi/amapauto/protocol/data/search/Poi_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Poi;
    .locals 7

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/Poi;-><init>()V

    .line 10
    const-string v1, "enteryList"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 22
    move-result v3

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_0
    if-ge v5, v3, :cond_1

    .line 31
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 34
    move-result-object v6

    .line 35
    invoke-static {v6}, Lcom/autonavi/amapauto/protocol/data/search/EnteryList_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/EnteryList;

    .line 38
    move-result-object v6

    .line 39
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v5, v5, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iput-object v4, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->a:Ljava/util/List;

    .line 47
    :cond_2
    const-string v1, "biz_ext"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 56
    move-result-object v1

    .line 57
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->b:Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 59
    const-string v1, "Name"

    .line 61
    iget-object v3, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->c:Ljava/lang/String;

    .line 63
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->c:Ljava/lang/String;

    .line 69
    const-string v1, "distance"

    .line 71
    iget v3, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->d:I

    .line 73
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 76
    move-result v1

    .line 77
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->d:I

    .line 79
    const-string v1, "Typecode"

    .line 81
    iget-object v3, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->e:Ljava/lang/String;

    .line 83
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->e:Ljava/lang/String;

    .line 89
    const-string v1, "longitude"

    .line 91
    iget-wide v3, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->f:D

    .line 93
    invoke-virtual {p0, v1, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 96
    move-result-wide v3

    .line 97
    iput-wide v3, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->f:D

    .line 99
    const-string v1, "distaceToSearchLocation"

    .line 101
    iget v3, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->g:I

    .line 103
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 106
    move-result v1

    .line 107
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->g:I

    .line 109
    const-string v1, "childPoiList"

    .line 111
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_4

    .line 117
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 120
    move-result v3

    .line 121
    new-instance v4, Ljava/util/ArrayList;

    .line 123
    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 126
    :goto_1
    if-ge v2, v3, :cond_3

    .line 128
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 131
    move-result-object v5

    .line 132
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;

    .line 135
    move-result-object v5

    .line 136
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iput-object v4, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->h:Ljava/util/List;

    .line 144
    :cond_4
    const-string v1, "Address"

    .line 146
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->i:Ljava/lang/String;

    .line 148
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 152
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->i:Ljava/lang/String;

    .line 154
    const-string v1, "Latitude"

    .line 156
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->j:D

    .line 158
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 161
    move-result-wide v1

    .line 162
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->j:D

    .line 164
    const-string v1, "Tel"

    .line 166
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->k:Ljava/lang/String;

    .line 168
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    move-result-object v1

    .line 172
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->k:Ljava/lang/String;

    .line 174
    const-string v1, "Poiid"

    .line 176
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->l:Ljava/lang/String;

    .line 178
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->l:Ljava/lang/String;

    .line 184
    const-string v1, "homecopType"

    .line 186
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->m:I

    .line 188
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 191
    move-result p0

    .line 192
    iput p0, v0, Lcom/autonavi/amapauto/protocol/data/search/Poi;->m:I

    .line 194
    return-object v0
.end method

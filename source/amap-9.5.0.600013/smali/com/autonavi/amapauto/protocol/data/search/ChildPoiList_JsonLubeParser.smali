.class public final Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;-><init>()V

    .line 10
    const-string v1, "enteryList"

    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_2

    .line 18
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 21
    move-result v2

    .line 22
    new-instance v3, Ljava/util/ArrayList;

    .line 24
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    const/4 v4, 0x0

    .line 28
    :goto_0
    if-ge v4, v2, :cond_1

    .line 30
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Lcom/autonavi/amapauto/protocol/data/search/EnteryList_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/EnteryList;

    .line 37
    move-result-object v5

    .line 38
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    iput-object v3, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->a:Ljava/util/List;

    .line 46
    :cond_2
    const-string v1, "biz_ext"

    .line 48
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 51
    move-result-object v1

    .line 52
    invoke-static {v1}, Lcom/autonavi/amapauto/protocol/data/search/Biz_ext_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->b:Lcom/autonavi/amapauto/protocol/data/search/Biz_ext;

    .line 58
    const-string v1, "Name"

    .line 60
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->c:Ljava/lang/String;

    .line 62
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->c:Ljava/lang/String;

    .line 68
    const-string v1, "distance"

    .line 70
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->d:I

    .line 72
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 75
    move-result v1

    .line 76
    iput v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->d:I

    .line 78
    const-string v1, "Typecode"

    .line 80
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->e:Ljava/lang/String;

    .line 82
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->e:Ljava/lang/String;

    .line 88
    const-string v1, "longitude"

    .line 90
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->f:D

    .line 92
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 95
    move-result-wide v1

    .line 96
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->f:D

    .line 98
    const-string v1, "Latitude"

    .line 100
    iget-wide v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->g:D

    .line 102
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 105
    move-result-wide v1

    .line 106
    iput-wide v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->g:D

    .line 108
    const-string v1, "Address"

    .line 110
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->h:Ljava/lang/String;

    .line 112
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->h:Ljava/lang/String;

    .line 118
    const-string v1, "Tel"

    .line 120
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->i:Ljava/lang/String;

    .line 122
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v1

    .line 126
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->i:Ljava/lang/String;

    .line 128
    const-string v1, "Poiid"

    .line 130
    iget-object v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->j:Ljava/lang/String;

    .line 132
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 136
    iput-object v1, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->j:Ljava/lang/String;

    .line 138
    const-string v1, "homecopType"

    .line 140
    iget v2, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->k:I

    .line 142
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 145
    move-result p0

    .line 146
    iput p0, v0, Lcom/autonavi/amapauto/protocol/data/search/ChildPoiList;->k:I

    .line 148
    return-object v0
.end method

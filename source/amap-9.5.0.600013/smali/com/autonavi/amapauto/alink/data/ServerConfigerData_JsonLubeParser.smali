.class public final Lcom/autonavi/amapauto/alink/data/ServerConfigerData_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/alink/data/ServerConfigerData;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;-><init>()V

    .line 10
    const-string v1, "manufacturer"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->manufacturer:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->manufacturer:Ljava/lang/String;

    .line 20
    const-string v1, "productInfo"

    .line 22
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->productInfo:Ljava/lang/String;

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->productInfo:Ljava/lang/String;

    .line 30
    const-string v1, "integratorId"

    .line 32
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->integratorId:Ljava/lang/String;

    .line 34
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->integratorId:Ljava/lang/String;

    .line 40
    const-string v1, "osType"

    .line 42
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->osType:Ljava/lang/String;

    .line 44
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->osType:Ljava/lang/String;

    .line 50
    const-string v1, "model"

    .line 52
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->model:Ljava/lang/String;

    .line 54
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->model:Ljava/lang/String;

    .line 60
    const-string v1, "version"

    .line 62
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->version:Ljava/lang/String;

    .line 64
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->version:Ljava/lang/String;

    .line 70
    const-string v1, "codecWidth"

    .line 72
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->codecWidth:I

    .line 74
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 77
    move-result v1

    .line 78
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->codecWidth:I

    .line 80
    const-string v1, "codecHeight"

    .line 82
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->codecHeight:I

    .line 84
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 87
    move-result v1

    .line 88
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->codecHeight:I

    .line 90
    const-string v1, "frameRate"

    .line 92
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->frameRate:I

    .line 94
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 97
    move-result v1

    .line 98
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->frameRate:I

    .line 100
    const-string v1, "dpi"

    .line 102
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->dpi:I

    .line 104
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 107
    move-result v1

    .line 108
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->dpi:I

    .line 110
    const-string v1, "audioNumChannels_media"

    .line 112
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->meidaChannel:I

    .line 114
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 117
    move-result v1

    .line 118
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->meidaChannel:I

    .line 120
    const-string v1, "audioSampleRate_media"

    .line 122
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->mediaSampleRate:I

    .line 124
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 127
    move-result v1

    .line 128
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->mediaSampleRate:I

    .line 130
    const-string v1, "audioBitDepth_media"

    .line 132
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_media:I

    .line 134
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 137
    move-result v1

    .line 138
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_media:I

    .line 140
    const-string v1, "audioIPL_media"

    .line 142
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_media:I

    .line 144
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 147
    move-result v1

    .line 148
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_media:I

    .line 150
    const-string v1, "audioNumChannels_navigation"

    .line 152
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_navigation:I

    .line 154
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 157
    move-result v1

    .line 158
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_navigation:I

    .line 160
    const-string v1, "audioSampleRate_navigation"

    .line 162
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_navigation:I

    .line 164
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 167
    move-result v1

    .line 168
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_navigation:I

    .line 170
    const-string v1, "audioBitDepth_navigation"

    .line 172
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_navigation:I

    .line 174
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 177
    move-result v1

    .line 178
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_navigation:I

    .line 180
    const-string v1, "audioIPL_navigation"

    .line 182
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_navigation:I

    .line 184
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 187
    move-result v1

    .line 188
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_navigation:I

    .line 190
    const-string v1, "audioNumChannels_speech"

    .line 192
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_speech:I

    .line 194
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 197
    move-result v1

    .line 198
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_speech:I

    .line 200
    const-string v1, "audioSampleRate_speech"

    .line 202
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_speech:I

    .line 204
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 207
    move-result v1

    .line 208
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_speech:I

    .line 210
    const-string v1, "audioBitDepth_speech"

    .line 212
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_speech:I

    .line 214
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 217
    move-result v1

    .line 218
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_speech:I

    .line 220
    const-string v1, "audioIPL_speech"

    .line 222
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_speech:I

    .line 224
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 227
    move-result p0

    .line 228
    iput p0, v0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_speech:I

    .line 230
    return-object v0
.end method

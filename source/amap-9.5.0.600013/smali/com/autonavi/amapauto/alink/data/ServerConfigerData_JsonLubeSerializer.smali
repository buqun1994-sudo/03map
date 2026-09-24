.class public final Lcom/autonavi/amapauto/alink/data/ServerConfigerData_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/alink/data/ServerConfigerData;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 10
    const-string v1, "manufacturer"

    .line 12
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->manufacturer:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "productInfo"

    .line 19
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->productInfo:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v1, "integratorId"

    .line 26
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->integratorId:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "osType"

    .line 33
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->osType:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v1, "model"

    .line 40
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->model:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v1, "version"

    .line 47
    iget-object v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->version:Ljava/lang/String;

    .line 49
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v1, "codecWidth"

    .line 54
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->codecWidth:I

    .line 56
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 59
    const-string v1, "codecHeight"

    .line 61
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->codecHeight:I

    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v1, "frameRate"

    .line 68
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->frameRate:I

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "dpi"

    .line 75
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->dpi:I

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 80
    const-string v1, "audioNumChannels_media"

    .line 82
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->meidaChannel:I

    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v1, "audioSampleRate_media"

    .line 89
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->mediaSampleRate:I

    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v1, "audioBitDepth_media"

    .line 96
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_media:I

    .line 98
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string v1, "audioIPL_media"

    .line 103
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_media:I

    .line 105
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 108
    const-string v1, "audioNumChannels_navigation"

    .line 110
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_navigation:I

    .line 112
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 115
    const-string v1, "audioSampleRate_navigation"

    .line 117
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_navigation:I

    .line 119
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "audioBitDepth_navigation"

    .line 124
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_navigation:I

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 129
    const-string v1, "audioIPL_navigation"

    .line 131
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_navigation:I

    .line 133
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 136
    const-string v1, "audioNumChannels_speech"

    .line 138
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioNumChannels_speech:I

    .line 140
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 143
    const-string v1, "audioSampleRate_speech"

    .line 145
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioSampleRate_speech:I

    .line 147
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v1, "audioBitDepth_speech"

    .line 152
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioBitDepth_speech:I

    .line 154
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v1, "audioIPL_speech"

    .line 159
    iget p0, p0, Lcom/autonavi/amapauto/alink/data/ServerConfigerData;->audioIPL_speech:I

    .line 161
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 164
    return-object v0
.end method

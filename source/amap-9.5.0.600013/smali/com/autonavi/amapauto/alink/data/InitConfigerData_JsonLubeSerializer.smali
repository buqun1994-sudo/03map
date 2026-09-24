.class public final Lcom/autonavi/amapauto/alink/data/InitConfigerData_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/alink/data/InitConfigerData;)Lorg/json/JSONObject;
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
    const-string v1, "logLevel"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getLogLevel()I

    .line 15
    move-result v2

    .line 16
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    const-string v1, "logPath"

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getLogPath()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v1, "verifyInfoPath"

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getVerifyInfoPath()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v1, "certificatePath"

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getCertificatePath()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v1, "privateKeyPath"

    .line 48
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getPrivateKeyPath()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v1, "audioMixMode"

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getAudioMixMode()I

    .line 60
    move-result v2

    .line 61
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 64
    const-string v1, "huIconMode"

    .line 66
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getHuIconMode()I

    .line 69
    move-result v2

    .line 70
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    const-string v1, "videoMode"

    .line 75
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getVideoMode()I

    .line 78
    move-result v2

    .line 79
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v1, "micSourceMode"

    .line 84
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getMicSourceMode()I

    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "mediaChannelMode"

    .line 93
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getMediaChannelMode()I

    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string v1, "navigationChannelMode"

    .line 102
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getNavigationChannelMode()I

    .line 105
    move-result v2

    .line 106
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v1, "speechChannelMode"

    .line 111
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/data/InitConfigerData;->getSpeechChannelMode()I

    .line 114
    move-result p0

    .line 115
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 118
    return-object v0
.end method

.class public final Lcom/autonavi/amapauto/alink/data/ServerData_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/alink/data/ServerData;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/alink/data/ServerData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/data/ServerData;-><init>()V

    .line 10
    const-string v1, "MAC"

    .line 12
    iget-object v2, v0, Lcom/autonavi/amapauto/alink/data/ServerData;->MAC:Ljava/lang/String;

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/alink/data/ServerData;->MAC:Ljava/lang/String;

    .line 20
    const-string v1, "id"

    .line 22
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/data/ServerData;->getId()I

    .line 25
    move-result v2

    .line 26
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/data/ServerData;->setId(I)V

    .line 33
    const-string v1, "mode"

    .line 35
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/data/ServerData;->getMode()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/data/ServerData;->setMode(Ljava/lang/String;)V

    .line 46
    const-string v1, "type"

    .line 48
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/data/ServerData;->getType()Ljava/lang/String;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/data/ServerData;->setType(Ljava/lang/String;)V

    .line 59
    const-string v1, "txt"

    .line 61
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/data/ServerData;->getTxt()Ljava/lang/String;

    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/alink/data/ServerData;->setTxt(Ljava/lang/String;)V

    .line 72
    return-object v0
.end method

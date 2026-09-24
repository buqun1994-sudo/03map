.class public final Lcom/autonavi/amapauto/alink/data/EventReceivedData_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/alink/data/EventReceivedData;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/alink/data/EventReceivedData;-><init>()V

    .line 10
    const-string v1, "event"

    .line 12
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->event:I

    .line 14
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 17
    move-result v1

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->event:I

    .line 20
    const-string v1, "status"

    .line 22
    iget v2, v0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 24
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 28
    iput v1, v0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 30
    const-string v1, "names"

    .line 32
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/autonavi/amapauto/alink/data/ServiceNameData_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 39
    move-result-object p0

    .line 40
    iput-object p0, v0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->names:Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 42
    return-object v0
.end method

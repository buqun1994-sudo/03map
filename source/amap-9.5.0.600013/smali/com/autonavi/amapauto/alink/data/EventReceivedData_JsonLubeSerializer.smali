.class public final Lcom/autonavi/amapauto/alink/data/EventReceivedData_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/alink/data/EventReceivedData;)Lorg/json/JSONObject;
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
    const-string v1, "event"

    .line 12
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->event:I

    .line 14
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string v1, "status"

    .line 19
    iget v2, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->status:I

    .line 21
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    iget-object p0, p0, Lcom/autonavi/amapauto/alink/data/EventReceivedData;->names:Lcom/autonavi/amapauto/alink/data/ServiceNameData;

    .line 26
    invoke-static {p0}, Lcom/autonavi/amapauto/alink/data/ServiceNameData_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/alink/data/ServiceNameData;)Lorg/json/JSONObject;

    .line 29
    move-result-object p0

    .line 30
    const-string v1, "names"

    .line 32
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    return-object v0
.end method

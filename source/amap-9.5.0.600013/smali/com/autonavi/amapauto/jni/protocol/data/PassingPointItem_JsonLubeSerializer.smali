.class public final Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;)Lorg/json/JSONObject;
    .locals 4
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
    const-string v1, "linkId"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->getLinkId()J

    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 19
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->getLocation()Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 22
    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint_JsonLubeSerializer;->serialize(Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;)Lorg/json/JSONObject;

    .line 26
    move-result-object p0

    .line 27
    const-string v1, "location"

    .line 29
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    return-object v0
.end method

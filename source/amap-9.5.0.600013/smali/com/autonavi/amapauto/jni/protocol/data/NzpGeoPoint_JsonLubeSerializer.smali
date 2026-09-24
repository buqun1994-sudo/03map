.class public final Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint_JsonLubeSerializer;
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

.method public static serialize(Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;)Lorg/json/JSONObject;
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
    const-string v1, "altitude"

    .line 12
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->getAltitude()D

    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 19
    const-string v1, "latitudeY"

    .line 21
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->getLatitudeY()D

    .line 24
    move-result-wide v2

    .line 25
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 28
    const-string v1, "longitudeX"

    .line 30
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->getLongitudeX()D

    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 37
    return-object v0
.end method

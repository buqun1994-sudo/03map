.class public final Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;-><init>()V

    .line 10
    const-string v1, "altitude"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->getAltitude()D

    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->setAltitude(D)V

    .line 23
    const-string v1, "latitudeY"

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->getLatitudeY()D

    .line 28
    move-result-wide v2

    .line 29
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->setLatitudeY(D)V

    .line 36
    const-string v1, "longitudeX"

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->getLongitudeX()D

    .line 41
    move-result-wide v2

    .line 42
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    .line 45
    move-result-wide v1

    .line 46
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->setLongitudeX(D)V

    .line 49
    return-object v0
.end method

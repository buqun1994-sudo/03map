.class public final Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem_JsonLubeParser;
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

.method public static parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;-><init>()V

    .line 10
    const-string v1, "linkId"

    .line 12
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->getLinkId()J

    .line 15
    move-result-wide v2

    .line 16
    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->setLinkId(J)V

    .line 23
    const-string v1, "location"

    .line 25
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint_JsonLubeParser;->parse(Lorg/json/JSONObject;)Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 32
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->setLocation(Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;)V

    .line 36
    return-object v0
.end method

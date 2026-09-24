.class public Lcom/amap/location/fusion/a/c/c;
.super Lcom/amap/location/support/fence/RectangleFence;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/fusion/a/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/fence/RectangleFence;",
        "Ljava/lang/Comparable<",
        "Lcom/amap/location/fusion/a/c/c;",
        ">;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/fusion/a/c/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:D


# direct methods
.method public constructor <init>(DDDDLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/amap/location/support/fence/RectangleFence;-><init>(DDDDLjava/lang/String;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/amap/location/fusion/a/c/c;->c:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/amap/location/fusion/a/c/c;
    .locals 14

    const-string v0, "extras"

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/SecurityUtils;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const-string v1, "{"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "minLat"

    .line 4
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-string v3, "minLon"

    .line 5
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    const-string v3, "maxLat"

    .line 6
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    const-string v3, "maxLon"

    .line 7
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v11

    const-string v3, "polygonVertices"

    .line 8
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v3, "locator"

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 10
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 11
    :cond_0
    new-instance p0, Lcom/amap/location/fusion/a/c/c;

    move-object v4, p0

    invoke-direct/range {v4 .. v13}, Lcom/amap/location/fusion/a/c/c;-><init>(DDDDLjava/lang/String;)V

    const-string v4, "poi"

    .line 12
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/amap/location/fusion/a/c/c;->b:Ljava/lang/String;

    const-string v4, "locatorType"

    const/4 v5, 0x1

    .line 13
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/amap/location/fusion/a/c/c;->a:I

    .line 14
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    .line 15
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 16
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 17
    new-instance v6, Lcom/amap/location/fusion/a/c/c$a;

    invoke-direct {v6}, Lcom/amap/location/fusion/a/c/c$a;-><init>()V

    const-string v7, "code"

    .line 18
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/amap/location/fusion/a/c/c$a;->a:Ljava/lang/String;

    const-string v7, "iod"

    .line 19
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/amap/location/fusion/a/c/c$a;->b:I

    const-string v7, "scene"

    .line 20
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/amap/location/fusion/a/c/c$a;->c:Ljava/lang/String;

    const-string v7, "pri"

    .line 21
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v6, Lcom/amap/location/fusion/a/c/c$a;->d:I

    const-string v7, "iodStay"

    .line 22
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/amap/location/fusion/a/c/c$a;->f:Ljava/lang/String;

    .line 23
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Lcom/amap/location/fusion/a/c/c$a;->e:Ljava/lang/String;

    const-string v5, "13"

    .line 24
    iget-object v7, v6, Lcom/amap/location/fusion/a/c/c$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v6, Lcom/amap/location/fusion/a/c/c$a;->e:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 25
    iput-object v1, v6, Lcom/amap/location/fusion/a/c/c$a;->e:Ljava/lang/String;

    .line 26
    :cond_1
    iget-object v5, p0, Lcom/amap/location/fusion/a/c/c;->c:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 27
    :cond_2
    iget-object v0, p0, Lcom/amap/location/fusion/a/c/c;->c:Ljava/util/List;

    new-instance v1, Lcom/amap/location/fusion/a/c/c$1;

    invoke-direct {v1}, Lcom/amap/location/fusion/a/c/c$1;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p0

    :cond_3
    :goto_1
    const-string v0, "IndoorFence"

    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u56f4\u680flocator\u5b57\u6bb5\u4e3a\u7a7a:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 29
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_4
    return-object v2
.end method


# virtual methods
.method public a(Lcom/amap/location/fusion/a/c/c;)I
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/amap/location/fusion/a/c/c;->d:D

    iget-wide v2, p1, Lcom/amap/location/fusion/a/c/c;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public a(DD)V
    .locals 8

    .line 30
    iget-wide v4, p0, Lcom/amap/location/support/fence/RectangleFence;->mLittleLat:D

    iget-wide v6, p0, Lcom/amap/location/support/fence/RectangleFence;->mLittleLng:D

    move-wide v0, p1

    move-wide v2, p3

    invoke-static/range {v0 .. v7}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/location/fusion/a/c/c;->d:D

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/location/fusion/a/c/c;

    .line 3
    invoke-virtual {p0, p1}, Lcom/amap/location/fusion/a/c/c;->a(Lcom/amap/location/fusion/a/c/c;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "SpecificFence{amapID=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/c;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", locators="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/amap/location/fusion/a/c/c;->c:Ljava/util/List;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", distance="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-wide v1, p0, Lcom/amap/location/fusion/a/c/c;->d:D

    .line 38
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", mLittleLat="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-wide v1, p0, Lcom/amap/location/support/fence/RectangleFence;->mLittleLat:D

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", mBigLat="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-wide v1, p0, Lcom/amap/location/support/fence/RectangleFence;->mBigLat:D

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ", mLittleLng="

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-wide v1, p0, Lcom/amap/location/support/fence/RectangleFence;->mLittleLng:D

    .line 68
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ", mBigLng="

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-wide v1, p0, Lcom/amap/location/support/fence/RectangleFence;->mBigLng:D

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 81
    const/16 v1, 0x7d

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v0

    .line 90
    return-object v0
.end method

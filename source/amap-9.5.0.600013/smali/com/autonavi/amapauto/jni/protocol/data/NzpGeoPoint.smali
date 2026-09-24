.class public Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private altitude:D

.field private latitudeY:D

.field private longitudeX:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->altitude:D

    .line 8
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->latitudeY:D

    .line 10
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->longitudeX:D

    .line 12
    return-void
.end method


# virtual methods
.method public getAltitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->altitude:D

    .line 3
    return-wide v0
.end method

.method public getLatitudeY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->latitudeY:D

    .line 3
    return-wide v0
.end method

.method public getLongitudeX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->longitudeX:D

    .line 3
    return-wide v0
.end method

.method public setAltitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->altitude:D

    .line 3
    return-void
.end method

.method public setLatitudeY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->latitudeY:D

    .line 3
    return-void
.end method

.method public setLongitudeX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->longitudeX:D

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "altitude"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->altitude:D

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "latitudeY"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-wide v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->latitudeY:D

    .line 36
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "longitudeX"

    .line 44
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    iget-wide v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->longitudeX:D

    .line 52
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method

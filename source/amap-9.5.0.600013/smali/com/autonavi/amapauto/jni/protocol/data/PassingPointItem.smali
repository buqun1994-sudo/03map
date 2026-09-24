.class public Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private linkId:J

.field private location:Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->linkId:J

    .line 8
    return-void
.end method


# virtual methods
.method public getLinkId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->linkId:J

    .line 3
    return-wide v0
.end method

.method public getLocation()Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->location:Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 3
    return-object v0
.end method

.method public setLinkId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->linkId:J

    .line 3
    return-void
.end method

.method public setLocation(Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->location:Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "linkId"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ": "

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->linkId:J

    .line 18
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "\n"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, "location"

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/PassingPointItem;->location:Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;

    .line 36
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/NzpGeoPoint;->toString()Ljava/lang/String;

    .line 41
    move-result-object v1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-string v1, "null"

    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

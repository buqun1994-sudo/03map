.class public Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

.field private dstOffsetQtr_:I

.field private offsetQtr_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDstDateTimeRange()Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

    .line 3
    return-object v0
.end method

.method public getDstOffsetQtr_()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->dstOffsetQtr_:I

    .line 3
    return v0
.end method

.method public getOffsetQtr_()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->offsetQtr_:I

    .line 3
    return v0
.end method

.method public setDstDateTimeRange(Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

    .line 3
    return-void
.end method

.method public setDstOffsetQtr_(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->dstOffsetQtr_:I

    .line 3
    return-void
.end method

.method public setOffsetQtr_(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->offsetQtr_:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "TimeZoneInfo{dstOffsetQtr_="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->dstOffsetQtr_:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", offsetQtr_="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->offsetQtr_:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", dateTimeRange="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;->dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x7d

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

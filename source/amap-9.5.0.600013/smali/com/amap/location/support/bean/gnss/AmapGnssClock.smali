.class public Lcom/amap/location/support/bean/gnss/AmapGnssClock;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HAS_BIAS:I = 0x8

.field public static final HAS_BIAS_UNCERTAINTY:I = 0x10

.field public static final HAS_DRIFT:I = 0x20

.field public static final HAS_DRIFT_UNCERTAINTY:I = 0x40

.field public static final HAS_ELAPSED_REALTIME_NANOS:I = 0x80

.field public static final HAS_ELAPSED_REALTIME_UNCERTAINTY_NANOS:I = 0x100

.field public static final HAS_FULL_BIAS:I = 0x4

.field public static final HAS_LEAP_SECOND:I = 0x1

.field public static final HAS_NO_FLAGS:I = 0x0

.field public static final HAS_TIME_UNCERTAINTY:I = 0x2

.field private static final INVALID_VALUE_N9999:I = -0x270f

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public biasNanos:D

.field public biasUncertaintyNanos:D

.field public describeContents:I

.field public driftNanosPerSecond:D

.field public driftUncertaintyNanosPerSecond:D

.field public elapsedRealtimeNanos:J

.field public elapsedRealtimeUncertaintyNanos:D

.field public fullBiasNanos:J

.field public hardwareClockDiscontinuityCount:I

.field public leapSecond:I

.field private mFlags:I

.field public timeNanos:J

.field public timeUncertaintyNanos:D


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->mFlags:I

    .line 7
    const v0, 0x7fffffff

    .line 10
    iput v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->describeContents:I

    .line 12
    const-wide v0, -0x3f3c788000000000L    # -9999.0

    .line 17
    iput-wide v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasNanos:D

    .line 19
    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    .line 21
    iput-wide v2, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasUncertaintyNanos:D

    .line 23
    iput-wide v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftNanosPerSecond:D

    .line 25
    iput-wide v2, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftUncertaintyNanosPerSecond:D

    .line 27
    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeNanos:J

    .line 31
    iput-wide v2, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeUncertaintyNanos:D

    .line 33
    const-wide v4, 0x7fffffffffffffffL

    .line 38
    iput-wide v4, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->fullBiasNanos:J

    .line 40
    const/4 v4, -0x1

    .line 41
    iput v4, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hardwareClockDiscontinuityCount:I

    .line 43
    iput v4, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->leapSecond:I

    .line 45
    iput-wide v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeNanos:J

    .line 47
    iput-wide v2, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeUncertaintyNanos:D

    .line 49
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->mFlags:I

    .line 3
    and-int/2addr v0, p1

    .line 4
    if-ne v0, p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return p1
.end method


# virtual methods
.method public hasBiasNanos()Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasBiasUncertaintyNanos()Z
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasDriftNanosPerSecond()Z
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasDriftUncertaintyNanosPerSecond()Z
    .locals 1

    .line 1
    const/16 v0, 0x40

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasElapsedRealtimeNanos()Z
    .locals 1

    .line 1
    const/16 v0, 0x80

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasElapsedRealtimeUncertaintyNanos()Z
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasFullBiasNanos()Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public hasLeapSecond()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public hasTimeUncertaintyNanos()Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->isFlagSet(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public setFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->mFlags:I

    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->mFlags:I

    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AmapGnssClock{describeContents="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->describeContents:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", biasNanos="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasNanos:D

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", biasUncertaintyNanos="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->biasUncertaintyNanos:D

    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", driftNanosPerSecond="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftNanosPerSecond:D

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", driftUncertaintyNanosPerSecond="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->driftUncertaintyNanosPerSecond:D

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", elapsedRealtimeNanos="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeNanos:J

    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", elapsedRealtimeUncertaintyNanos="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->elapsedRealtimeUncertaintyNanos:D

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", fullBiasNanos="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->fullBiasNanos:J

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", hardwareClockDiscontinuityCount="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hardwareClockDiscontinuityCount:I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", leapSecond="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->leapSecond:I

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", timeNanos="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeNanos:J

    .line 113
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", timeUncertaintyNanos="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->timeUncertaintyNanos:D

    .line 123
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 126
    const/16 v1, 0x7d

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method

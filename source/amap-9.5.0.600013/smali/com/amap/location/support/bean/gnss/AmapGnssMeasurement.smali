.class public Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ADR_STATE_VALID:I = 0x1

.field public static final HAS_AUTOMATIC_GAIN_CONTROL:I = 0x2000

.field public static final HAS_CARRIER_CYCLES:I = 0x400

.field public static final HAS_CARRIER_FREQUENCY:I = 0x200

.field public static final HAS_CARRIER_PHASE:I = 0x800

.field public static final HAS_CARRIER_PHASE_UNCERTAINTY:I = 0x1000

.field public static final HAS_CODE_TYPE:I = 0x4000

.field public static final HAS_NO_FLAGS:I = 0x0

.field public static final HAS_SNR:I = 0x1

.field private static final INVALID_VALUE_N9999:I = -0x270f

.field public static final MULTIPATH_INDICATOR_DETECTED:I = 0x1

.field public static final MULTIPATH_INDICATOR_NOT_DETECTED:I = 0x2

.field public static final MULTIPATH_INDICATOR_UNKNOWN:I = 0x0

.field public static final STATE_UNKNOWN:I = 0x0

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public accumulatedDeltaRangeMeters:D

.field public accumulatedDeltaRangeState:I

.field public accumulatedDeltaRangeUncertaintyMeters:D

.field public automaticGainControlLevelDb:D

.field public carrierCycles:J

.field public carrierFrequencyHz:F

.field public carrierPhase:D

.field public carrierPhaseUncertainty:D

.field public cn0DbHz:D

.field public codeType:Ljava/lang/String;

.field public constellationType:I

.field public describeContents:I

.field private mFlags:I

.field public multipathIndicator:I

.field public pseudorangeRateMetersPerSecond:D

.field public pseudorangeRateUncertaintyMetersPerSecond:D

.field public receivedSvTimeNanos:J

.field public receivedSvTimeUncertaintyNanos:J

.field public snrInDb:D

.field public state:I

.field public svid:I

.field public timeOffsetNanos:D


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->mFlags:I

    .line 7
    const v1, 0x7fffffff

    .line 10
    iput v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->describeContents:I

    .line 12
    const-wide v1, -0x3f3c788000000000L    # -9999.0

    .line 17
    iput-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeMeters:D

    .line 19
    iput v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeState:I

    .line 21
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 23
    iput-wide v3, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeUncertaintyMeters:D

    .line 25
    iput-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->automaticGainControlLevelDb:D

    .line 27
    const/high16 v5, -0x40800000    # -1.0f

    .line 29
    iput v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierFrequencyHz:F

    .line 31
    const-wide v5, 0x7fffffffffffffffL

    .line 36
    iput-wide v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierCycles:J

    .line 38
    const-wide v5, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 43
    iput-wide v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhase:D

    .line 45
    iput-wide v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhaseUncertainty:D

    .line 47
    iput-wide v3, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    .line 49
    const-string v5, "0"

    .line 51
    iput-object v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 53
    const/4 v5, -0x1

    .line 54
    iput v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->constellationType:I

    .line 56
    iput v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->multipathIndicator:I

    .line 58
    iput-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateMetersPerSecond:D

    .line 60
    iput-wide v3, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 62
    const-wide/16 v3, -0x1

    .line 64
    iput-wide v3, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeNanos:J

    .line 66
    iput-wide v3, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    .line 68
    iput-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->snrInDb:D

    .line 70
    iput v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    .line 72
    iput v5, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->svid:I

    .line 74
    iput-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->timeOffsetNanos:D

    .line 76
    return-void
.end method

.method private isFlagSet(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->mFlags:I

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
.method public hasAutomaticGainControlLevelDb()Z
    .locals 1

    .line 1
    const/16 v0, 0x2000

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasCarrierCycles()Z
    .locals 1

    .line 1
    const/16 v0, 0x400

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasCarrierFrequencyHz()Z
    .locals 1

    .line 1
    const/16 v0, 0x200

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasCarrierPhase()Z
    .locals 1

    .line 1
    const/16 v0, 0x800

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasCarrierPhaseUncertainty()Z
    .locals 1

    .line 1
    const/16 v0, 0x1000

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasCodeType()Z
    .locals 1

    .line 1
    const/16 v0, 0x4000

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public hasSnrInDb()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->isFlagSet(I)Z

    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public setFlag(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->mFlags:I

    .line 3
    or-int/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->mFlags:I

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
    const-string v1, "AmapGnssMeasurement{describeContents="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->describeContents:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", accumulatedDeltaRangeMeters="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeMeters:D

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", accumulatedDeltaRangeState="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeState:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", accumulatedDeltaRangeUncertaintyMeters="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->accumulatedDeltaRangeUncertaintyMeters:D

    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", automaticGainControlLevelDb="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->automaticGainControlLevelDb:D

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", carrierFrequencyHz="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierFrequencyHz:F

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", carrierCycles="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierCycles:J

    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", carrierPhase="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhase:D

    .line 83
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", carrierPhaseUncertainty="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->carrierPhaseUncertainty:D

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", cn0DbHz="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", codeType=\'"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->codeType:Ljava/lang/String;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/16 v1, 0x27

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", constellationType="

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->constellationType:I

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    const-string v1, ", multipathIndicator="

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->multipathIndicator:I

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    const-string v1, ", pseudorangeRateMetersPerSecond="

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateMetersPerSecond:D

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, ", pseudorangeRateUncertaintyMetersPerSecond="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 158
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, ", receivedSvTimeNanos="

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeNanos:J

    .line 168
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 171
    const-string v1, ", receivedSvTimeUncertaintyNanos="

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 181
    const-string v1, ", snrInDb="

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->snrInDb:D

    .line 188
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, ", state="

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, ", svid="

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->svid:I

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 211
    const-string v1, ", timeOffsetNanos="

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget-wide v1, p0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->timeOffsetNanos:D

    .line 218
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 221
    const/16 v1, 0x7d

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v0

    .line 230
    return-object v0
.end method

.class public Lcom/amap/location/support/security/gnssrtk/SatObservation;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public accumulatedDeltaRangeMeters:D

.field public accumulatedDeltaRangeState:I

.field public cn0DbHz:D

.field public dopplerShift:D

.field public freq:D

.field public isCT:I

.field public isSmooth:I

.field public obsCode:Ljava/lang/String;

.field public pseudorange:D

.field public pseudorangeRateMetersPerSecond:D

.field public pseudorangeRateUncertaintyMetersPerSecond:D

.field public receivedSvTimeUncertaintyNanos:J

.field public satId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->satId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->obsCode:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorange:D

    .line 5
    iput-wide p5, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->cn0DbHz:D

    .line 6
    iput-wide p7, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->dopplerShift:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;DDDDDDIDJ)V
    .locals 3

    move-object v0, p0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 8
    iput-object v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->satId:Ljava/lang/String;

    move-object v1, p2

    .line 9
    iput-object v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->obsCode:Ljava/lang/String;

    move-wide v1, p3

    .line 10
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorange:D

    move-wide v1, p5

    .line 11
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->cn0DbHz:D

    move-wide v1, p7

    .line 12
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->dopplerShift:D

    move-wide v1, p9

    .line 13
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorangeRateMetersPerSecond:D

    move-wide v1, p11

    .line 14
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->accumulatedDeltaRangeMeters:D

    move-wide/from16 v1, p13

    .line 15
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->freq:D

    move/from16 v1, p15

    .line 16
    iput v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->accumulatedDeltaRangeState:I

    move-wide/from16 v1, p16

    .line 17
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorangeRateUncertaintyMetersPerSecond:D

    move-wide/from16 v1, p18

    .line 18
    iput-wide v1, v0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->receivedSvTimeUncertaintyNanos:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[satId:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->satId:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "obsCode:"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->obsCode:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "pseudorange:"

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorange:D

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "cn0DbHz:"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->cn0DbHz:D

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "dopplerShift:"

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->dopplerShift:D

    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "pseudorangeRateMetersPerSecond:"

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorangeRateMetersPerSecond:D

    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "accumulatedDeltaRangeMeters:"

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->accumulatedDeltaRangeMeters:D

    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "freq:"

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->freq:D

    .line 106
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "accumulatedDeltaRangeState:"

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->accumulatedDeltaRangeState:I

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "pseudorangeRateUncertaintyMetersPerSecond:"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->pseudorangeRateUncertaintyMetersPerSecond:D

    .line 132
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "receivedSvTimeUncertaintyNanos:"

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-wide v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->receivedSvTimeUncertaintyNanos:J

    .line 145
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "isCT:"

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget v2, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->isCT:I

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v1, "isSmooth:"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget v1, p0, Lcom/amap/location/support/security/gnssrtk/SatObservation;->isSmooth:I

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 174
    const-string v1, "]"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    return-object v0
.end method

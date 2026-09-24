.class public Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field dateTimeRangeExclusions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;",
            ">;"
        }
    .end annotation
.end field

.field dateTimeRangeInclusions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;",
            ">;"
        }
    .end annotation
.end field

.field featureExclusions:[I

.field featureInclusions:[I

.field fuzzyTimeInclusions:[I

.field fuzzyTimeexclusions:[I

.field occupancyMaximum:I

.field occupancyMinimum:I

.field roadUserExclusions:[I

.field roadUserInclusions:[I

.field weatherExclusions:[I

.field weatherInclusions:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTimeRangeExclusions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->dateTimeRangeExclusions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getDateTimeRangeInclusions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->dateTimeRangeInclusions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getFeatureExclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->featureExclusions:[I

    .line 3
    return-object v0
.end method

.method public getFeatureInclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->featureInclusions:[I

    .line 3
    return-object v0
.end method

.method public getFuzzyTimeInclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->fuzzyTimeInclusions:[I

    .line 3
    return-object v0
.end method

.method public getFuzzyTimeexclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->fuzzyTimeexclusions:[I

    .line 3
    return-object v0
.end method

.method public getOccupancyMaximum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->occupancyMaximum:I

    .line 3
    return v0
.end method

.method public getOccupancyMinimum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->occupancyMinimum:I

    .line 3
    return v0
.end method

.method public getRoadUserExclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->roadUserExclusions:[I

    .line 3
    return-object v0
.end method

.method public getRoadUserInclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->roadUserInclusions:[I

    .line 3
    return-object v0
.end method

.method public getWeatherExclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->weatherExclusions:[I

    .line 3
    return-object v0
.end method

.method public getWeatherInclusions()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->weatherInclusions:[I

    .line 3
    return-object v0
.end method

.method public setDateTimeRangeExclusions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->dateTimeRangeExclusions:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setDateTimeRangeInclusions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->dateTimeRangeInclusions:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setFeatureExclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->featureExclusions:[I

    .line 3
    return-void
.end method

.method public setFeatureInclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->featureInclusions:[I

    .line 3
    return-void
.end method

.method public setFuzzyTimeInclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->fuzzyTimeInclusions:[I

    .line 3
    return-void
.end method

.method public setFuzzyTimeexclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->fuzzyTimeexclusions:[I

    .line 3
    return-void
.end method

.method public setOccupancyMaximum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->occupancyMaximum:I

    .line 3
    return-void
.end method

.method public setOccupancyMinimum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->occupancyMinimum:I

    .line 3
    return-void
.end method

.method public setRoadUserExclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->roadUserExclusions:[I

    .line 3
    return-void
.end method

.method public setRoadUserInclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->roadUserInclusions:[I

    .line 3
    return-void
.end method

.method public setWeatherExclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->weatherExclusions:[I

    .line 3
    return-void
.end method

.method public setWeatherInclusions([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->weatherInclusions:[I

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
    const-string v1, "ConstraintSet{dateTimeRangeInclusions="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->dateTimeRangeInclusions:Ljava/util/List;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", dateTimeRangeExclusions="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->dateTimeRangeExclusions:Ljava/util/List;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", fuzzyTimeInclusions="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->fuzzyTimeInclusions:[I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", fuzzyTimeexclusions="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->fuzzyTimeexclusions:[I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", weatherInclusions="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->weatherInclusions:[I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", weatherExclusions="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->weatherExclusions:[I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", roadUserInclusions="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->roadUserInclusions:[I

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", roadUserExclusions="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->roadUserExclusions:[I

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", featureInclusions="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->featureInclusions:[I

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", featureExclusions="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->featureExclusions:[I

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", occupancyMinimum="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->occupancyMinimum:I

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", occupancyMaximum="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/ConstraintSet;->occupancyMaximum:I

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

.class public Lcom/autonavi/amapauto/jni/ehp/EHPRegion;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private countryCodeForUtf32String:[I

.field private countryCodeNum:I

.field private countryCodeStr:Ljava/lang/String;

.field private dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

.field private generalSpeedLimitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;",
            ">;"
        }
    .end annotation
.end field

.field private generalUTurnProhibition:Z

.field private laneDefaults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneDefault;",
            ">;"
        }
    .end annotation
.end field

.field private reginId:I

.field private speedUnit:I

.field private subCountryCodeForUtf32String:[I

.field private subCountryCodeStr:Ljava/lang/String;

.field private timeZoneInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field timeZoneInfo_:Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;

.field private trafficDirection:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCountryCodeForUtf32String()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeForUtf32String:[I

    .line 3
    return-object v0
.end method

.method public getCountryCodeNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeNum:I

    .line 3
    return v0
.end method

.method public getCountryCodeStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeStr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDstDateTimeRange()Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

    .line 3
    return-object v0
.end method

.method public getGeneralSpeedLimitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalSpeedLimitList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getGeneralUTurnProhibition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalUTurnProhibition:Z

    .line 3
    return v0
.end method

.method public getLaneDefaults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneDefault;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->laneDefaults:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getReginId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->reginId:I

    .line 3
    return v0
.end method

.method public getSpeedUnit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->speedUnit:I

    .line 3
    return v0
.end method

.method public getSubCountryCodeForUtf32String()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->subCountryCodeForUtf32String:[I

    .line 3
    return-object v0
.end method

.method public getSubCountryCodeStr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->subCountryCodeStr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTimeZoneInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->timeZoneInfoList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getTimeZoneInfo_()Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->timeZoneInfo_:Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;

    .line 3
    return-object v0
.end method

.method public getTrafficDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->trafficDirection:I

    .line 3
    return v0
.end method

.method public isGeneralUTurnProhibition()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalUTurnProhibition:Z

    .line 3
    return v0
.end method

.method public setCountryCodeForUtf32String([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeForUtf32String:[I

    .line 3
    return-void
.end method

.method public setCountryCodeNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeNum:I

    .line 3
    return-void
.end method

.method public setCountryCodeStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeStr:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDstDateTimeRange(Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

    .line 3
    return-void
.end method

.method public setGeneralSpeedLimitList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/GeneralSpeedLimit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalSpeedLimitList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setGeneralUTurnProhibition(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalUTurnProhibition:Z

    .line 3
    return-void
.end method

.method public setLaneDefaults(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/LaneDefault;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->laneDefaults:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setReginId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->reginId:I

    .line 3
    return-void
.end method

.method public setSpeedUnit(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->speedUnit:I

    .line 3
    return-void
.end method

.method public setSubCountryCodeForUtf32String([I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->subCountryCodeForUtf32String:[I

    .line 3
    return-void
.end method

.method public setSubCountryCodeStr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->subCountryCodeStr:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setTimeZoneInfoList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->timeZoneInfoList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setTimeZoneInfo_(Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->timeZoneInfo_:Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;

    .line 3
    return-void
.end method

.method public setTrafficDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->trafficDirection:I

    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "EHPRegion{reginId="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->reginId:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", countryCodeNum="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeNum:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", countryCodeStr=\'"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeStr:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x27

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, ", subCountryCodeStr=\'"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->subCountryCodeStr:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    const-string v1, ", countryCodeForUtf32String="

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->countryCodeForUtf32String:[I

    .line 61
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, ", subCountryCodeForUtf32String="

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->subCountryCodeForUtf32String:[I

    .line 75
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v1, ", trafficDirection="

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->trafficDirection:I

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    const-string v1, ", generalSpeedLimitList="

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalSpeedLimitList:Ljava/util/List;

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, ", timeZoneInfo_="

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->timeZoneInfo_:Lcom/autonavi/amapauto/jni/ehp/TimeZoneInfo;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    const-string v1, ", speedUnit="

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->speedUnit:I

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, ", generalUTurnProhibition="

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->generalUTurnProhibition:Z

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const-string v1, ", laneDefaults="

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->laneDefaults:Ljava/util/List;

    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    const-string v1, ", dstDateTimeRange="

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->dstDateTimeRange:Lcom/autonavi/amapauto/jni/ehp/DateTimeRange;

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, ", timeZoneInfoList="

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/EHPRegion;->timeZoneInfoList:Ljava/util/List;

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const/16 v1, 0x7d

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v0

    .line 171
    return-object v0
.end method

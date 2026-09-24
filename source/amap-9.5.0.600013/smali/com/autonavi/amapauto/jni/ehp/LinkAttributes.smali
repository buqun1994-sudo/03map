.class public Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private advisorySpeedLimitList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;"
        }
    .end annotation
.end field

.field private avgSpeedKmh:I

.field private conditionalProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

.field private crossings:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

.field private flags:I

.field private maxAvgSpeedKmh:I

.field private numberEntryExitLanesLeft:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private numberEntryExitLanesRight:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private numberNormalLanes:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private overtakingProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

.field private pluralJunctionType:I

.field private regionId:I

.field private rightOfWay:I

.field private roadProperties:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private separations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private sequentialTurnProhibitions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TurnLinkSequence;",
            ">;"
        }
    .end annotation
.end field

.field private specialConstruction:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private speedBreakers:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

.field private speedLimitProfile:Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;

.field private speedLimitProfileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;"
        }
    .end annotation
.end field

.field private superelevations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private timeZone:I

.field private tollBooths:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

.field private trafficCameras:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

.field private trafficDirection:I

.field private trafficDirectionDeviation:Z

.field private trafficLights:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

.field private trafficSigns:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdvisorySpeedLimitList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->advisorySpeedLimitList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getAvgSpeedKmh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->avgSpeedKmh:I

    .line 3
    return v0
.end method

.method public getConditionalProhibitions()Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->conditionalProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    .line 3
    return-object v0
.end method

.method public getCrossings()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->crossings:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-object v0
.end method

.method public getFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->flags:I

    .line 3
    return v0
.end method

.method public getMaxAvgSpeedKmh()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->maxAvgSpeedKmh:I

    .line 3
    return v0
.end method

.method public getNumberEntryExitLanesLeft()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesLeft:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getNumberEntryExitLanesRight()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesRight:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getNumberNormalLanes()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberNormalLanes:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getOvertakingProhibitions()Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->overtakingProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    .line 3
    return-object v0
.end method

.method public getPluralJunctionType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->pluralJunctionType:I

    .line 3
    return v0
.end method

.method public getRegionId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->regionId:I

    .line 3
    return v0
.end method

.method public getRightOfWay()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->rightOfWay:I

    .line 3
    return v0
.end method

.method public getRoadProperties()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->roadProperties:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getSeparations()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->separations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getSequentialTurnProhibitions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TurnLinkSequence;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->sequentialTurnProhibitions:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSpecialConstruction()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->specialConstruction:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getSpeedBreakers()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedBreakers:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-object v0
.end method

.method public getSpeedLimitProfile()Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfile:Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;

    .line 3
    return-object v0
.end method

.method public getSpeedLimitProfileList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfileList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getSuperelevations()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->superelevations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getTimeZone()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->timeZone:I

    .line 3
    return v0
.end method

.method public getTollBooths()Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->tollBooths:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 3
    return-object v0
.end method

.method public getTrafficCameras()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficCameras:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-object v0
.end method

.method public getTrafficDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirection:I

    .line 3
    return v0
.end method

.method public getTrafficDirectionDeviation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirectionDeviation:Z

    .line 3
    return v0
.end method

.method public getTrafficLights()Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficLights:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 3
    return-object v0
.end method

.method public getTrafficSigns()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficSigns:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-object v0
.end method

.method public isTrafficDirectionDeviation()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirectionDeviation:Z

    .line 3
    return v0
.end method

.method public setAdvisorySpeedLimitList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->advisorySpeedLimitList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setAttriField(IIIIIILcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;Ljava/util/List;Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;Ljava/util/List;Ljava/util/List;ZIILcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIII",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;",
            "Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TurnLinkSequence;",
            ">;",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;ZII",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 1
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->flags:I

    move v1, p2

    .line 2
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->avgSpeedKmh:I

    move v1, p3

    .line 3
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->rightOfWay:I

    move v1, p4

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->regionId:I

    move v1, p5

    .line 5
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->pluralJunctionType:I

    move v1, p6

    .line 6
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirection:I

    move-object v1, p7

    .line 7
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->specialConstruction:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->roadProperties:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->separations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object v1, p10

    .line 10
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->crossings:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    move-object v1, p11

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedBreakers:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    move-object v1, p12

    .line 12
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficSigns:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    move-object v1, p13

    .line 13
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficCameras:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficLights:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->tollBooths:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 16
    iget-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfile:Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;

    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfile:Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;

    move-object/from16 v1, p14

    .line 17
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfileList:Ljava/util/List;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->superelevations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->conditionalProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->overtakingProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->sequentialTurnProhibitions:Ljava/util/List;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->advisorySpeedLimitList:Ljava/util/List;

    move/from16 v1, p22

    .line 23
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirectionDeviation:Z

    move/from16 v1, p23

    .line 24
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->timeZone:I

    move/from16 v1, p24

    .line 25
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->maxAvgSpeedKmh:I

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberNormalLanes:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesRight:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesLeft:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    return-void
.end method

.method public setAvgSpeedKmh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->avgSpeedKmh:I

    .line 3
    return-void
.end method

.method public setConditionalProhibitions(Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->conditionalProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    .line 3
    return-void
.end method

.method public setCrossings(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->crossings:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-void
.end method

.method public setFlags(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->flags:I

    .line 3
    return-void
.end method

.method public setMaxAvgSpeedKmh(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->maxAvgSpeedKmh:I

    .line 3
    return-void
.end method

.method public setNumberEntryExitLanesLeft(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesLeft:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setNumberEntryExitLanesRight(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesRight:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setNumberNormalLanes(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberNormalLanes:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setOvertakingProhibitions(Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->overtakingProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    .line 3
    return-void
.end method

.method public setPluralJunctionType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->pluralJunctionType:I

    .line 3
    return-void
.end method

.method public setRegionId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->regionId:I

    .line 3
    return-void
.end method

.method public setRightOfWay(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->rightOfWay:I

    .line 3
    return-void
.end method

.method public setRoadProperties(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->roadProperties:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setSeparations(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->separations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setSequentialTurnProhibitions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/TurnLinkSequence;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->sequentialTurnProhibitions:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setSpecialConstruction(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->specialConstruction:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setSpeedBreakers(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedBreakers:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-void
.end method

.method public setSpeedLimitProfile(Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfile:Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;

    .line 3
    return-void
.end method

.method public setSpeedLimitProfileList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfileList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setSuperelevations(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->superelevations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setTimeZone(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->timeZone:I

    .line 3
    return-void
.end method

.method public setTollBooths(Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->tollBooths:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 3
    return-void
.end method

.method public setTrafficCameras(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficCameras:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 3
    return-void
.end method

.method public setTrafficDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirection:I

    .line 3
    return-void
.end method

.method public setTrafficDirectionDeviation(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirectionDeviation:Z

    .line 3
    return-void
.end method

.method public setTrafficLights(Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficLights:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 3
    return-void
.end method

.method public setTrafficSigns(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficSigns:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

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
    const-string v1, "LinkAttributes{flags="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->flags:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", avgSpeedKmh="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->avgSpeedKmh:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", rightOfWay="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->rightOfWay:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", regionId="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->regionId:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", pluralJunctionType="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->pluralJunctionType:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", trafficDirection="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirection:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", specialConstruction="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->specialConstruction:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", roadProperties="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->roadProperties:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", separations="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->separations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", crossings="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->crossings:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", speedBreakers="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedBreakers:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", trafficSigns="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficSigns:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", trafficCameras="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficCameras:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Sequence;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", trafficLights="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficLights:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", tollBooths="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->tollBooths:Lcom/autonavi/amapauto/jni/ehp/PsdVoidSequence;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", speedLimitProfile="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfile:Lcom/autonavi/amapauto/jni/ehp/PsdSpeedLimitProfile;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", speedLimitProfileList="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->speedLimitProfileList:Ljava/util/List;

    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", superelevations="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->superelevations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", conditionalProhibitions="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->conditionalProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", overtakingProhibitions="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->overtakingProhibitions:Lcom/autonavi/amapauto/jni/ehp/BoolConstraintProfile;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", sequentialTurnProhibitions="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->sequentialTurnProhibitions:Ljava/util/List;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", advisorySpeedLimitList="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->advisorySpeedLimitList:Ljava/util/List;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    const-string v1, ", trafficDirectionDeviation="

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->trafficDirectionDeviation:Z

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 236
    const-string v1, ", timeZone="

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->timeZone:I

    .line 243
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    const-string v1, ", maxAvgSpeedKmh="

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->maxAvgSpeedKmh:I

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 256
    const-string v1, ", numberNormalLanes="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberNormalLanes:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    const-string v1, ", numberEntryExitLanesRight="

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesRight:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    const-string v1, ", numberEntryExitLanesLeft="

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;->numberEntryExitLanesLeft:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    const/16 v1, 0x7d

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object v0

    .line 295
    return-object v0
.end method

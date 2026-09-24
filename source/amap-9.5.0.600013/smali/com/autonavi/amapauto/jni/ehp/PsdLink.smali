.class public Lcom/autonavi/amapauto/jni/ehp/PsdLink;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributesBid:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

.field private attributesNeg:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

.field private attributesPos:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

.field private curves:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private functionalRoadClass:I

.field private lengthCm:I

.field private linkId:I

.field private linkType:I

.field private ndsLinkId:J

.field private priorityRoadClass:I

.field private roadLeftSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private roadMiddleSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private roadRightSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

.field private roadType:I

.field private slopes:Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;

.field private stableId:I

.field private stableTopologyReference:Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;

.field private transitionsNeg:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

.field private transitionsNegList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;"
        }
    .end annotation
.end field

.field private transitionsPos:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

.field private transitionsPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;"
        }
    .end annotation
.end field

.field private wgs84Polyline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAttributesBid()Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesBid:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 3
    return-object v0
.end method

.method public getAttributesNeg()Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesNeg:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 3
    return-object v0
.end method

.method public getAttributesPos()Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesPos:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 3
    return-object v0
.end method

.method public getCurves()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->curves:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getFunctionalRoadClass()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->functionalRoadClass:I

    .line 3
    return v0
.end method

.method public getLengthCm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->lengthCm:I

    .line 3
    return v0
.end method

.method public getLinkId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkId:I

    .line 3
    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkType:I

    .line 3
    return v0
.end method

.method public getNdsLinkId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->ndsLinkId:J

    .line 3
    return-wide v0
.end method

.method public getPriorityRoadClass()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->priorityRoadClass:I

    .line 3
    return v0
.end method

.method public getRoadLeftSeparations()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadLeftSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getRoadMiddleSeparations()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadMiddleSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getRoadRightSeparations()Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadRightSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-object v0
.end method

.method public getRoadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadType:I

    .line 3
    return v0
.end method

.method public getSlopes()Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->slopes:Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;

    .line 3
    return-object v0
.end method

.method public getStableId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableId:I

    .line 3
    return v0
.end method

.method public getStableTopologyReference()Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableTopologyReference:Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;

    .line 3
    return-object v0
.end method

.method public getTransitionsNeg()Lcom/autonavi/amapauto/jni/ehp/PsdTransition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNeg:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    .line 3
    return-object v0
.end method

.method public getTransitionsNegList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNegList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getTransitionsPos()Lcom/autonavi/amapauto/jni/ehp/PsdTransition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPos:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    .line 3
    return-object v0
.end method

.method public getTransitionsPosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPosList:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getWgs84Polyline()Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->wgs84Polyline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 3
    return-object v0
.end method

.method public setAttributesBid(Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesBid:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 3
    return-void
.end method

.method public setAttributesNeg(Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesNeg:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 3
    return-void
.end method

.method public setAttributesPos(Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesPos:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 3
    return-void
.end method

.method public setCurves(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->curves:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setFunctionalRoadClass(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->functionalRoadClass:I

    .line 3
    return-void
.end method

.method public setLengthCm(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->lengthCm:I

    .line 3
    return-void
.end method

.method public setLinkId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkId:I

    .line 3
    return-void
.end method

.method public setLinkType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkType:I

    .line 3
    return-void
.end method

.method public setNdsLinkId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->ndsLinkId:J

    .line 3
    return-void
.end method

.method public setPriorityRoadClass(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->priorityRoadClass:I

    .line 3
    return-void
.end method

.method public setPsdField(IIIIIIIJLcom/autonavi/amapauto/jni/ehp/LinkAttributes;Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;Lcom/autonavi/amapauto/jni/ehp/PsdTransition;Lcom/autonavi/amapauto/jni/ehp/PsdTransition;Ljava/util/List;Ljava/util/List;Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIIJ",
            "Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;",
            "Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;",
            "Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;",
            "Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            "Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;",
            "Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    .line 1
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkId:I

    move v1, p2

    .line 2
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableId:I

    move v1, p3

    .line 3
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->lengthCm:I

    move v1, p4

    .line 4
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadType:I

    move v1, p5

    .line 5
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->functionalRoadClass:I

    move v1, p6

    .line 6
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->priorityRoadClass:I

    move v1, p7

    .line 7
    iput v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkType:I

    move-wide v1, p8

    .line 8
    iput-wide v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->ndsLinkId:J

    move-object v1, p10

    .line 9
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesBid:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    move-object v1, p11

    .line 10
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesPos:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    move-object v1, p12

    .line 11
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesNeg:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPos:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNeg:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    move-object/from16 v1, p15

    .line 14
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPosList:Ljava/util/List;

    move-object/from16 v1, p16

    .line 15
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNegList:Ljava/util/List;

    move-object/from16 v1, p17

    .line 16
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->wgs84Polyline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    move-object/from16 v1, p18

    .line 17
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->slopes:Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;

    move-object/from16 v1, p19

    .line 18
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadMiddleSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object/from16 v1, p20

    .line 19
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadRightSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object/from16 v1, p21

    .line 20
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadLeftSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    move-object/from16 v1, p22

    .line 21
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableTopologyReference:Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;

    move-object/from16 v1, p23

    .line 22
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->curves:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    return-void
.end method

.method public setRoadLeftSeparations(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadLeftSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setRoadMiddleSeparations(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadMiddleSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setRoadRightSeparations(Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadRightSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 3
    return-void
.end method

.method public setRoadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadType:I

    .line 3
    return-void
.end method

.method public setSlopes(Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->slopes:Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;

    .line 3
    return-void
.end method

.method public setStableId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableId:I

    .line 3
    return-void
.end method

.method public setStableTopologyReference(Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableTopologyReference:Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;

    .line 3
    return-void
.end method

.method public setTransitionsNeg(Lcom/autonavi/amapauto/jni/ehp/PsdTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNeg:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    .line 3
    return-void
.end method

.method public setTransitionsNegList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNegList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setTransitionsPos(Lcom/autonavi/amapauto/jni/ehp/PsdTransition;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPos:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    .line 3
    return-void
.end method

.method public setTransitionsPosList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/jni/ehp/PsdTransition;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPosList:Ljava/util/List;

    .line 3
    return-void
.end method

.method public setWgs84Polyline(Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->wgs84Polyline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

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
    const-string v1, "PsdLink{linkId="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkId:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", stableId="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableId:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", lengthCm="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->lengthCm:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", roadType="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadType:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", functionalRoadClass="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->functionalRoadClass:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", priorityRoadClass="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->priorityRoadClass:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", attributesBid="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesBid:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", attributesPos="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesPos:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ", attributesNeg="

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->attributesNeg:Lcom/autonavi/amapauto/jni/ehp/LinkAttributes;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    const-string v1, ", transitionsPos="

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPos:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 106
    const-string v1, ", transitionsNeg="

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNeg:Lcom/autonavi/amapauto/jni/ehp/PsdTransition;

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v1, ", transitionsPosList="

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsPosList:Ljava/util/List;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ", transitionsNegList="

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->transitionsNegList:Ljava/util/List;

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    const-string v1, ", linkType="

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    iget v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->linkType:I

    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    const-string v1, ", wgs84Polyline="

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->wgs84Polyline:Lcom/autonavi/amapauto/jni/ehp/Wgs84Polyline;

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", slopes="

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->slopes:Lcom/autonavi/amapauto/jni/ehp/PsdFloatProfile;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, ", ndsLinkId="

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->ndsLinkId:J

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    const-string v1, ", roadMiddleSeparations="

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadMiddleSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    const-string v1, ", roadRightSeparations="

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadRightSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 196
    const-string v1, ", roadLeftSeparations="

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->roadLeftSeparations:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 206
    const-string v1, ", stableTopologyReference="

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->stableTopologyReference:Lcom/autonavi/amapauto/jni/ehp/StableTopologyReference;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string v1, ", curves="

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/ehp/PsdLink;->curves:Lcom/autonavi/amapauto/jni/ehp/PsdUint32Profile;

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    const/16 v1, 0x7d

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object v0

    .line 235
    return-object v0
.end method

.class public Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;
.super Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GuideInfoProtocolData"


# instance fields
.field private addIcon:Ljava/lang/String;

.field private arrivePOILatitude:D

.field private arrivePOILongitude:D

.field private arrivePOIType:Ljava/lang/String;

.field private cameraDist:I

.field private cameraExtraDist:I

.field private cameraExtraIndex:I

.field private cameraExtraSpeed:I

.field private cameraExtraType:I

.field private cameraID:I

.field private cameraIndex:I

.field private cameraSpacing:D

.field private cameraSpeed:I

.field private cameraType:I

.field private carDirection:I

.field private carLatitude:D

.field private carLongitude:D

.field private curPointNum:I

.field private curRoadName:Ljava/lang/String;

.field private curSegNum:I

.field private curSpeed:I

.field private destAddress:Ljava/lang/String;

.field private destLatitude:D

.field private destLongitude:D

.field private destTitle:Ljava/lang/String;

.field private endPOIAddr:Ljava/lang/String;

.field private endPOICityName:Ljava/lang/String;

.field private endPOIDistrictName:Ljava/lang/String;

.field private endPOILatitude:D

.field private endPOILongitude:D

.field private endPOIName:Ljava/lang/String;

.field private endPOIType:Ljava/lang/String;

.field private etaText:Ljava/lang/String;

.field private existMapData:Z

.field private exitDirectionInfo:Ljava/lang/String;

.field private exitNameInfo:Ljava/lang/String;

.field private icon:I

.field private isCameraExtraPenalty:Z

.field private isCameraPenalty:Z

.field private isImminent:Z

.field private isNextRoadNOAOrNot:Z

.field private limitedSpeed:I

.field private newCamera:Z

.field private newExtraCamera:Z

.field private nextNextAddIcon:Ljava/lang/String;

.field private nextNextRoadName:Ljava/lang/String;

.field private nextNextTurnIcon:I

.field private nextRoadName:Ljava/lang/String;

.field private nextRoadProgressPrecent:I

.field private nextSapaDist:I

.field private nextSapaDistAuto:Ljava/lang/String;

.field private nextSapaName:Ljava/lang/String;

.field private nextSapaType:I

.field private nextSegRemainDis:I

.field private nextSegRemainDisAuto:Ljava/lang/String;

.field private nextSegRemainTime:I

.field private onlineIcon:[B

.field private onlineIconHeight:I

.field private onlineIconWidth:I

.field public requestCode:I

.field private roadType:I

.field private roundAboutNum:I

.field private roundAllNum:I

.field private roundaboutOutAngle:I

.field private routeAllDis:I

.field private routeAllTime:I

.field private routeRemainDis:I

.field private routeRemainDistanceAuto:Ljava/lang/String;

.field private routeRemainTime:I

.field private routeRemainTimeAuto:Ljava/lang/String;

.field private routeRemainTimeString:Ljava/lang/String;

.field private routeRemainTrafficLightNum:I

.field private sapaDist:I

.field private sapaDistAuto:Ljava/lang/String;

.field private sapaName:Ljava/lang/String;

.field private sapaNum:I

.field private sapaType:I

.field private segAssistantAction:I

.field private segRemainDis:I

.field private segRemainDisAuto:Ljava/lang/String;

.field private segRemainTime:I

.field private trafficLightNum:I

.field private turnIconBitmap:Landroid/graphics/Bitmap;

.field private type:I

.field private viaPOIArrivalTime:Ljava/lang/String;

.field private viaPOIdistance:I

.field private viaPOItime:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->type:I

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraDist:I

    .line 9
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraType:I

    .line 11
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpeed:I

    .line 13
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraIndex:I

    .line 15
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraDist:I

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraType:I

    .line 19
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraSpeed:I

    .line 21
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraIndex:I

    .line 23
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 25
    iput-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpacing:D

    .line 27
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDist:I

    .line 29
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaType:I

    .line 31
    const/4 v1, 0x0

    .line 32
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaNum:I

    .line 34
    const-string v2, ""

    .line 36
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaName:Ljava/lang/String;

    .line 38
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDist:I

    .line 40
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaType:I

    .line 42
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaName:Ljava/lang/String;

    .line 44
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDistanceAuto:Ljava/lang/String;

    .line 46
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeAuto:Ljava/lang/String;

    .line 48
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDistAuto:Ljava/lang/String;

    .line 50
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDistAuto:Ljava/lang/String;

    .line 52
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDisAuto:Ljava/lang/String;

    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeString:Ljava/lang/String;

    .line 57
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segAssistantAction:I

    .line 59
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundaboutOutAngle:I

    .line 61
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->type:I

    .line 4
    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->existMapData:Z

    .line 7
    const-string v2, ""

    .line 9
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curRoadName:Ljava/lang/String;

    .line 11
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadName:Ljava/lang/String;

    .line 13
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->exitNameInfo:Ljava/lang/String;

    .line 15
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->exitDirectionInfo:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraDist:I

    .line 19
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraType:I

    .line 21
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpeed:I

    .line 23
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraIndex:I

    .line 25
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraDist:I

    .line 27
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraType:I

    .line 29
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraSpeed:I

    .line 31
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraIndex:I

    .line 33
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newExtraCamera:Z

    .line 35
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 37
    iput-wide v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpacing:D

    .line 39
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->icon:I

    .line 41
    const/4 v3, 0x0

    .line 42
    iput-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIcon:[B

    .line 44
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconWidth:I

    .line 46
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconHeight:I

    .line 48
    iput-object v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->turnIconBitmap:Landroid/graphics/Bitmap;

    .line 50
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDis:I

    .line 52
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTime:I

    .line 54
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDis:I

    .line 56
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainTime:I

    .line 58
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carDirection:I

    .line 60
    const-wide/16 v3, 0x0

    .line 62
    iput-wide v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLatitude:D

    .line 64
    iput-wide v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLongitude:D

    .line 66
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->limitedSpeed:I

    .line 68
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSegNum:I

    .line 70
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curPointNum:I

    .line 72
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAboutNum:I

    .line 74
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAllNum:I

    .line 76
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllDis:I

    .line 78
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllTime:I

    .line 80
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSpeed:I

    .line 82
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->trafficLightNum:I

    .line 84
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDist:I

    .line 86
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaType:I

    .line 88
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaNum:I

    .line 90
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaName:Ljava/lang/String;

    .line 92
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDist:I

    .line 94
    iput v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaType:I

    .line 96
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaName:Ljava/lang/String;

    .line 98
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roadType:I

    .line 100
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDistanceAuto:Ljava/lang/String;

    .line 102
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeAuto:Ljava/lang/String;

    .line 104
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextRoadName:Ljava/lang/String;

    .line 106
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextTurnIcon:I

    .line 108
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDis:I

    .line 110
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainTime:I

    .line 112
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDistAuto:Ljava/lang/String;

    .line 114
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDistAuto:Ljava/lang/String;

    .line 116
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDisAuto:Ljava/lang/String;

    .line 118
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segAssistantAction:I

    .line 120
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty:Z

    .line 122
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraExtraPenalty:Z

    .line 124
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isImminent:Z

    .line 126
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNextRoadNOAOrNot:Z

    .line 128
    iput-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newCamera:Z

    .line 130
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraID:I

    .line 132
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->addIcon:Ljava/lang/String;

    .line 134
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextAddIcon:Ljava/lang/String;

    .line 136
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDisAuto:Ljava/lang/String;

    .line 138
    iput v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTrafficLightNum:I

    .line 140
    return-void
.end method

.method public convertIcon()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->icon:I

    .line 3
    const/16 v1, 0x15

    .line 5
    if-eq v0, v1, :cond_4

    .line 7
    const/16 v1, 0x16

    .line 9
    if-eq v0, v1, :cond_4

    .line 11
    const/16 v1, 0x18

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/16 v1, 0x17

    .line 18
    if-ne v0, v1, :cond_1

    .line 20
    const/16 v0, 0xc

    .line 22
    goto :goto_2

    .line 23
    :cond_1
    const/16 v1, 0x19

    .line 25
    if-eq v0, v1, :cond_3

    .line 27
    const/16 v1, 0x1a

    .line 29
    if-eq v0, v1, :cond_3

    .line 31
    const/16 v1, 0x1c

    .line 33
    if-ne v0, v1, :cond_2

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const/16 v1, 0x1b

    .line 38
    if-ne v0, v1, :cond_5

    .line 40
    const/16 v0, 0x12

    .line 42
    goto :goto_2

    .line 43
    :cond_3
    :goto_0
    const/16 v0, 0x11

    .line 45
    goto :goto_2

    .line 46
    :cond_4
    :goto_1
    const/16 v0, 0xb

    .line 48
    :cond_5
    :goto_2
    return v0
.end method

.method public getAddIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->addIcon:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getArrivePOILatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->arrivePOILatitude:D

    .line 3
    return-wide v0
.end method

.method public getArrivePOILongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->arrivePOILongitude:D

    .line 3
    return-wide v0
.end method

.method public getArrivePOIType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->arrivePOIType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCameraDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraDist:I

    .line 3
    return v0
.end method

.method public getCameraExtraDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraDist:I

    .line 3
    return v0
.end method

.method public getCameraExtraIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraIndex:I

    .line 3
    return v0
.end method

.method public getCameraExtraSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraSpeed:I

    .line 3
    return v0
.end method

.method public getCameraExtraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraType:I

    .line 3
    return v0
.end method

.method public getCameraID()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraID:I

    .line 3
    return v0
.end method

.method public getCameraIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraIndex:I

    .line 3
    return v0
.end method

.method public getCameraSpacing()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpacing:D

    .line 3
    return-wide v0
.end method

.method public getCameraSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpeed:I

    .line 3
    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraType:I

    .line 3
    return v0
.end method

.method public getCarDirection()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carDirection:I

    .line 3
    return v0
.end method

.method public getCarLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLatitude:D

    .line 3
    return-wide v0
.end method

.method public getCarLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLongitude:D

    .line 3
    return-wide v0
.end method

.method public getCurPointNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curPointNum:I

    .line 3
    return v0
.end method

.method public getCurRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curRoadName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCurSegNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSegNum:I

    .line 3
    return v0
.end method

.method public getCurSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSpeed:I

    .line 3
    return v0
.end method

.method public getDestAddress()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destAddress:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getDestLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destLatitude:D

    .line 3
    return-wide v0
.end method

.method public getDestLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destLongitude:D

    .line 3
    return-wide v0
.end method

.method public getDestTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destTitle:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPOIAddr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIAddr:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPOICityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOICityName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPOIDistrictName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIDistrictName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPOILatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOILatitude:D

    .line 3
    return-wide v0
.end method

.method public getEndPOILongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOILongitude:D

    .line 3
    return-wide v0
.end method

.method public getEndPOIName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEndPOIType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getEtaText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->etaText:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExitDirectionInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->exitDirectionInfo:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExitNameInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->exitNameInfo:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->icon:I

    .line 3
    invoke-virtual {p0, v0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->switchIcon(I)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getLimitedSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->limitedSpeed:I

    .line 3
    return v0
.end method

.method public getNextNextAddIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextAddIcon:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNextNextRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextRoadName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNextNextTurnIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextTurnIcon:I

    .line 3
    return v0
.end method

.method public getNextRoadName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNextRoadProgressPrecent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadProgressPrecent:I

    .line 3
    return v0
.end method

.method public getNextSapaDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDist:I

    .line 3
    return v0
.end method

.method public getNextSapaDistAuto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDistAuto:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNextSapaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNextSapaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaType:I

    .line 3
    return v0
.end method

.method public getNextSegRemainDis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDis:I

    .line 3
    return v0
.end method

.method public getNextSegRemainDisAuto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDisAuto:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getNextSegRemainTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainTime:I

    .line 3
    return v0
.end method

.method public getOldIcon()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->convertIcon()I

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getOnlineIcon()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIcon:[B

    .line 3
    return-object v0
.end method

.method public getOnlineIconHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconHeight:I

    .line 3
    return v0
.end method

.method public getOnlineIconWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconWidth:I

    .line 3
    return v0
.end method

.method public getRoadType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roadType:I

    .line 3
    return v0
.end method

.method public getRoundAboutNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAboutNum:I

    .line 3
    return v0
.end method

.method public getRoundAllNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAllNum:I

    .line 3
    return v0
.end method

.method public getRoundaboutOutAngle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundaboutOutAngle:I

    .line 3
    return v0
.end method

.method public getRouteAllDis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllDis:I

    .line 3
    return v0
.end method

.method public getRouteAllTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllTime:I

    .line 3
    return v0
.end method

.method public getRouteRemainDis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDis:I

    .line 3
    return v0
.end method

.method public getRouteRemainDistanceAuto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDistanceAuto:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRouteRemainTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTime:I

    .line 3
    return v0
.end method

.method public getRouteRemainTimeAuto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeAuto:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRouteRemainTimeString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeString:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRouteRemainTrafficLightNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTrafficLightNum:I

    .line 3
    return v0
.end method

.method public getSapaDist()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDist:I

    .line 3
    return v0
.end method

.method public getSapaDistAuto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDistAuto:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSapaName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSapaNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaNum:I

    .line 3
    return v0
.end method

.method public getSapaType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaType:I

    .line 3
    return v0
.end method

.method public getSegAssistantAction()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segAssistantAction:I

    .line 3
    return v0
.end method

.method public getSegRemainDis()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDis:I

    .line 3
    return v0
.end method

.method public getSegRemainDisAuto()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDisAuto:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getSegRemainTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainTime:I

    .line 3
    return v0
.end method

.method public getTrafficLightNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->trafficLightNum:I

    .line 3
    return v0
.end method

.method public getTurnIconBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->turnIconBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->type:I

    .line 3
    return v0
.end method

.method public getViaPOIArrivalTime()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOIArrivalTime:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getViaPOIdistance()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOIdistance:I

    .line 3
    return v0
.end method

.method public getViaPOItime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOItime:I

    .line 3
    return v0
.end method

.method public isCameraExtraPenalty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraExtraPenalty:Z

    .line 3
    return v0
.end method

.method public isCameraPenalty()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty:Z

    .line 3
    return v0
.end method

.method public isExistMapData()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->existMapData:Z

    .line 3
    return v0
.end method

.method public isImminent()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isImminent:Z

    .line 3
    return v0
.end method

.method public isNewCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newCamera:Z

    .line 3
    return v0
.end method

.method public isNewExtraCamera()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newExtraCamera:Z

    .line 3
    return v0
.end method

.method public isNextRoadNOAOrNot()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNextRoadNOAOrNot:Z

    .line 3
    return v0
.end method

.method public setAddIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->addIcon:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setArrivePOILatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->arrivePOILatitude:D

    .line 3
    return-void
.end method

.method public setArrivePOILongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->arrivePOILongitude:D

    .line 3
    return-void
.end method

.method public setArrivePOIType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->arrivePOIType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCameraDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraDist:I

    .line 3
    return-void
.end method

.method public setCameraExtraDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraDist:I

    .line 3
    return-void
.end method

.method public setCameraExtraIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraIndex:I

    .line 3
    return-void
.end method

.method public setCameraExtraPenalty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraExtraPenalty:Z

    .line 3
    return-void
.end method

.method public setCameraExtraSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraSpeed:I

    .line 3
    return-void
.end method

.method public setCameraExtraType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraType:I

    .line 3
    return-void
.end method

.method public setCameraID(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraID:I

    .line 3
    return-void
.end method

.method public setCameraIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraIndex:I

    .line 3
    return-void
.end method

.method public setCameraPenalty(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty:Z

    .line 3
    return-void
.end method

.method public setCameraSpacing(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpacing:D

    .line 3
    return-void
.end method

.method public setCameraSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpeed:I

    .line 3
    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraType:I

    .line 3
    return-void
.end method

.method public setCarDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carDirection:I

    .line 3
    return-void
.end method

.method public setCarLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLatitude:D

    .line 3
    return-void
.end method

.method public setCarLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLongitude:D

    .line 3
    return-void
.end method

.method public setCurPointNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curPointNum:I

    .line 3
    return-void
.end method

.method public setCurRoadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curRoadName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setCurSegNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSegNum:I

    .line 3
    return-void
.end method

.method public setCurSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSpeed:I

    .line 3
    return-void
.end method

.method public setDestAddress(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destAddress:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setDestLatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destLatitude:D

    .line 3
    return-void
.end method

.method public setDestLongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destLongitude:D

    .line 3
    return-void
.end method

.method public setDestTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destTitle:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPOIAddr(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIAddr:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPOICityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOICityName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPOIDistrictName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIDistrictName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPOILatitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOILatitude:D

    .line 3
    return-void
.end method

.method public setEndPOILongitude(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOILongitude:D

    .line 3
    return-void
.end method

.method public setEndPOIName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEndPOIType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setEtaText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->etaText:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setExistMapData(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->existMapData:Z

    .line 3
    return-void
.end method

.method public setExitDirectionInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->exitDirectionInfo:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setExitNameInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->exitNameInfo:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->icon:I

    .line 3
    return-void
.end method

.method public setImminent(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isImminent:Z

    .line 3
    return-void
.end method

.method public setLimitedSpeed(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->limitedSpeed:I

    .line 3
    return-void
.end method

.method public setNewCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newCamera:Z

    .line 3
    return-void
.end method

.method public setNewExtraCamera(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newExtraCamera:Z

    .line 3
    return-void
.end method

.method public setNextNextAddIcon(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextAddIcon:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNextNextRoadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextRoadName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNextNextTurnIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextTurnIcon:I

    .line 3
    return-void
.end method

.method public setNextRoadNOAOrNot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNextRoadNOAOrNot:Z

    .line 3
    return-void
.end method

.method public setNextRoadName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNextRoadProgressPrecent(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadProgressPrecent:I

    .line 3
    return-void
.end method

.method public setNextSapaDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDist:I

    .line 3
    return-void
.end method

.method public setNextSapaDistAuto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDistAuto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNextSapaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNextSapaType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaType:I

    .line 3
    return-void
.end method

.method public setNextSegRemainDis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDis:I

    .line 3
    return-void
.end method

.method public setNextSegRemainDisAuto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDisAuto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setNextSegRemainTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainTime:I

    .line 3
    return-void
.end method

.method public setOnlineIcon([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIcon:[B

    .line 3
    return-void
.end method

.method public setOnlineIconHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconHeight:I

    .line 3
    return-void
.end method

.method public setOnlineIconWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconWidth:I

    .line 3
    return-void
.end method

.method public setRoadType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roadType:I

    .line 3
    return-void
.end method

.method public setRoundAboutNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAboutNum:I

    .line 3
    return-void
.end method

.method public setRoundAllNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAllNum:I

    .line 3
    return-void
.end method

.method public setRoundaboutOutAngle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundaboutOutAngle:I

    .line 3
    return-void
.end method

.method public setRouteAllDis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllDis:I

    .line 3
    return-void
.end method

.method public setRouteAllTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllTime:I

    .line 3
    return-void
.end method

.method public setRouteRemainDis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDis:I

    .line 3
    return-void
.end method

.method public setRouteRemainDistanceAuto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDistanceAuto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRouteRemainTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTime:I

    .line 3
    return-void
.end method

.method public setRouteRemainTimeAuto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeAuto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRouteRemainTimeString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeString:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setRouteRemainTrafficLightNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTrafficLightNum:I

    .line 3
    return-void
.end method

.method public setSapaDist(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDist:I

    .line 3
    return-void
.end method

.method public setSapaDistAuto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDistAuto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSapaName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaName:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSapaNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaNum:I

    .line 3
    return-void
.end method

.method public setSapaType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaType:I

    .line 3
    return-void
.end method

.method public setSegAssistantAction(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segAssistantAction:I

    .line 3
    return-void
.end method

.method public setSegRemainDis(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDis:I

    .line 3
    return-void
.end method

.method public setSegRemainDisAuto(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDisAuto:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setSegRemainTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainTime:I

    .line 3
    return-void
.end method

.method public setTrafficLightNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->trafficLightNum:I

    .line 3
    return-void
.end method

.method public setTurnIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->turnIconBitmap:Landroid/graphics/Bitmap;

    .line 3
    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->type:I

    .line 3
    return-void
.end method

.method public setViaPOIArrivalTime(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOIArrivalTime:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setViaPOIdistance(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOIdistance:I

    .line 3
    return-void
.end method

.method public setViaPOItime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOItime:I

    .line 3
    return-void
.end method

.method public switchIcon(I)I
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->M:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 14
    const/16 v0, 0x41

    .line 16
    if-eq p1, v0, :cond_1

    .line 18
    const/16 v0, 0x42

    .line 20
    if-eq p1, v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x5

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x4

    .line 26
    :cond_2
    :goto_0
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "GuideInfoProtocolData{type="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->type:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", existMapData="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->existMapData:Z

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", curRoadName=\'"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curRoadName:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x27

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, ", nextRoadName=\'"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadName:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ", cameraDist="

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraDist:I

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", cameraType="

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraType:I

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, ", cameraSpeed="

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpeed:I

    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ", cameraIndex="

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraIndex:I

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, ", cameraExtraDist="

    .line 96
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraDist:I

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v2, ", cameraExtraType="

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraType:I

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, ", cameraExtraSpeed="

    .line 116
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraSpeed:I

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    const-string v2, ", cameraExtraIndex="

    .line 126
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraExtraIndex:I

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, ", newExtraCamera="

    .line 136
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newExtraCamera:Z

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 144
    const-string v2, ", cameraSpacing="

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraSpacing:D

    .line 151
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 154
    const-string v2, ", icon="

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->icon:I

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, ", onlineIcon="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIcon:[B

    .line 171
    if-nez v2, :cond_0

    .line 173
    const-string v2, "null"

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    array-length v2, v2

    .line 177
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object v2

    .line 181
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    const-string v2, ", onlineIconWidth="

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconWidth:I

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, ", onlineIconHeight="

    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->onlineIconHeight:I

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, ", routeRemainDis="

    .line 206
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDis:I

    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, ", routeRemainTime="

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTime:I

    .line 221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, ", segRemainDis="

    .line 226
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDis:I

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 234
    const-string v2, ", segRemainTime="

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainTime:I

    .line 241
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    const-string v2, ", carDirection="

    .line 246
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carDirection:I

    .line 251
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    const-string v2, ", carLatitude="

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLatitude:D

    .line 261
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 264
    const-string v2, ", carLongitude="

    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    iget-wide v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->carLongitude:D

    .line 271
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 274
    const-string v2, ", limitedSpeed="

    .line 276
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->limitedSpeed:I

    .line 281
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    const-string v2, ", curSegNum="

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSegNum:I

    .line 291
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, ", curPointNum="

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curPointNum:I

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const-string v2, ", roundAboutNum="

    .line 306
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAboutNum:I

    .line 311
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    const-string v2, ", roundAllNum="

    .line 316
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundAllNum:I

    .line 321
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 324
    const-string v2, ", routeAllDis="

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllDis:I

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const-string v2, ", routeAllTime="

    .line 336
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeAllTime:I

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 344
    const-string v2, ", curSpeed="

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->curSpeed:I

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 354
    const-string v2, ", trafficLightNum="

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->trafficLightNum:I

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 364
    const-string v2, ", sapaDist="

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDist:I

    .line 371
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 374
    const-string v2, ", sapaType="

    .line 376
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaType:I

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 384
    const-string v2, ", sapaNum="

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaNum:I

    .line 391
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 394
    const-string v2, ", sapaName=\'"

    .line 396
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaName:Ljava/lang/String;

    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 407
    const-string v2, ", nextSapaDist="

    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDist:I

    .line 414
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 417
    const-string v2, ", nextSapaType="

    .line 419
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaType:I

    .line 424
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    const-string v2, ", nextSapaName=\'"

    .line 429
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaName:Ljava/lang/String;

    .line 434
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    const-string v2, ", roadType="

    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roadType:I

    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 450
    const-string v2, ", routeRemainDistanceAuto=\'"

    .line 452
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainDistanceAuto:Ljava/lang/String;

    .line 457
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 463
    const-string v2, ", routeRemainTimeAuto=\'"

    .line 465
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeAuto:Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 476
    const-string v2, ", sapaDistAuto=\'"

    .line 478
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->sapaDistAuto:Ljava/lang/String;

    .line 483
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 489
    const-string v2, ", nextSapaDistAuto=\'"

    .line 491
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSapaDistAuto:Ljava/lang/String;

    .line 496
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 502
    const-string v2, ", segRemainDisAuto=\'"

    .line 504
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segRemainDisAuto:Ljava/lang/String;

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 515
    const-string v2, ", nextNextRoadName=\'"

    .line 517
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextRoadName:Ljava/lang/String;

    .line 522
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 528
    const-string v2, ", nextNextTurnIcon="

    .line 530
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextTurnIcon:I

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 538
    const-string v2, ", nextSegRemainDis="

    .line 540
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDis:I

    .line 545
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 548
    const-string v2, ", nextSegRemainTime="

    .line 550
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainTime:I

    .line 555
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 558
    const-string v2, ", routeRemainTimeString=\'"

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTimeString:Ljava/lang/String;

    .line 565
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 571
    const-string v2, ", nextRoadProgressPrecent="

    .line 573
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextRoadProgressPrecent:I

    .line 578
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 581
    const-string v2, ", etaText=\'"

    .line 583
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->etaText:Ljava/lang/String;

    .line 588
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 594
    const-string v2, ", segAssistantAction="

    .line 596
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->segAssistantAction:I

    .line 601
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 604
    const-string v2, ", roundaboutOutAngle="

    .line 606
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    iget v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->roundaboutOutAngle:I

    .line 611
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 614
    const-string v2, ", destTitle=\'"

    .line 616
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destTitle:Ljava/lang/String;

    .line 621
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    const-string v2, ", destAddress=\'"

    .line 629
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destAddress:Ljava/lang/String;

    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 640
    const-string v1, ", destLatitude="

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destLatitude:D

    .line 647
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 650
    const-string v1, ", destLongitude="

    .line 652
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget-wide v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->destLongitude:D

    .line 657
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 660
    const-string v1, ", isCameraPenalty="

    .line 662
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraPenalty:Z

    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 670
    const-string v1, ", isCameraExtraPenalty="

    .line 672
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isCameraExtraPenalty:Z

    .line 677
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 680
    const-string v1, ", isImminent="

    .line 682
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isImminent:Z

    .line 687
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 690
    const-string v1, ", isNextRoadNOAOrNot="

    .line 692
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->isNextRoadNOAOrNot:Z

    .line 697
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 700
    const-string v1, ", newCamera="

    .line 702
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    iget-boolean v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->newCamera:Z

    .line 707
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 710
    const-string v1, ", cameraID="

    .line 712
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->cameraID:I

    .line 717
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 720
    const-string v1, ", switchIcon="

    .line 722
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->getIcon()I

    .line 728
    move-result v1

    .line 729
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 732
    const-string v1, ", endPOICityName="

    .line 734
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOICityName:Ljava/lang/String;

    .line 739
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const-string v1, ", endPOIDistrictName="

    .line 744
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->endPOIDistrictName:Ljava/lang/String;

    .line 749
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const-string v1, ", viaPOIArrivalTime="

    .line 754
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->viaPOIArrivalTime:Ljava/lang/String;

    .line 759
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string v1, ", addIcon="

    .line 764
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 767
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->addIcon:Ljava/lang/String;

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    const-string v1, ", nextNextAddIcon="

    .line 774
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 777
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextNextAddIcon:Ljava/lang/String;

    .line 779
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    const-string v1, ", nextSegRemainDisAuto="

    .line 784
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    iget-object v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->nextSegRemainDisAuto:Ljava/lang/String;

    .line 789
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 792
    const-string v1, ", routeRemainTrafficLightNum="

    .line 794
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 797
    iget v1, p0, Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;->routeRemainTrafficLightNum:I

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 802
    const-string v1, "} "

    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 807
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 810
    move-result-object v1

    .line 811
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    move-result-object v0

    .line 818
    return-object v0
.end method

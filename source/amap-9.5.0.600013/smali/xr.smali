.class public interface abstract Lxr;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getGnssStatusCallbackType()I
.end method

.method public abstract getLocationInfoV2(Le;)Lcom/autonavi/amapauto/location/model/LocDrPos;
.end method

.method public abstract getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
.end method

.method public abstract getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
.end method

.method public abstract getSNRForShow(IF)I
.end method

.method public abstract getSatellitePrnForShow(I)I
.end method

.method public abstract getSatelliteType(I)I
.end method

.method public abstract getSatelliteTypeForN(I)I
.end method

.method public abstract getSpeedoMeter(F)F
.end method

.method public abstract handleDrA3d(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract handleDrGyr(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract handleDrPulse(Lorg/json/JSONObject;)Lorg/json/JSONObject;
.end method

.method public abstract isCustomSatelliteTypeForN()Z
.end method

.method public abstract setGpsInfoV2(Le;)V
.end method

.method public abstract setSpeedoMeter(F)Z
.end method

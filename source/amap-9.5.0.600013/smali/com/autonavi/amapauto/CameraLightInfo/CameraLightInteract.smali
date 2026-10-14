.class public Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInteract;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static notifyCameraLightInfos(Landroid/os/Parcel;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;

    invoke-static {v0}, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInteract;->notifyCameraLightInfosImpl(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method

.method public static notifyCameraLightInfosImpl(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V
    .locals 1

    invoke-static {p0}, Lcom/autonavi/amapauto/content/ContentRuntime;->onCruiseSignalBatch(Ljava/lang/Object;)V

    invoke-static {p0}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->setCameraLightInfoWrapper(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V

    invoke-static {}, Lnm;->e()Lnm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnm;->o(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;)V

    return-void
.end method

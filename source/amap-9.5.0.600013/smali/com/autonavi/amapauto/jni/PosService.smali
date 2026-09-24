.class public Lcom/autonavi/amapauto/jni/PosService;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static mCILocSignData:Lcom/autonavi/amapauto/location/model/LocSignData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drCalibration(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "PosService"

    .line 13
    const-string v2, "drCalibration type={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/PosService;->nativeDrCalibration(I)V

    .line 21
    return-void
.end method

.method public static getLocRelatedInfo()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lai;->c()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "PosService"

    .line 13
    const-string v3, "getLocRelatedInfo = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 24
    const/16 v1, 0x13e

    .line 26
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendAutoStatus(I)V

    .line 29
    :cond_0
    return-object v0
.end method

.method public static getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "PosService"

    .line 6
    const-string v2, "getMountAngleInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lse;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public static init(Lcom/autonavi/amapauto/location/model/PosWorkPath;Lcom/autonavi/amapauto/location/model/LocModeType;)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/PosService;->nativeInit(Lcom/autonavi/amapauto/location/model/PosWorkPath;Lcom/autonavi/amapauto/location/model/LocModeType;)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static native nativeDrCalibration(I)V
.end method

.method private static native nativeInit(Lcom/autonavi/amapauto/location/model/PosWorkPath;Lcom/autonavi/amapauto/location/model/LocModeType;)J
.end method

.method public static native nativeSetNmeaInfo(Ljava/lang/String;J)V
.end method

.method private static native nativeSetSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V
.end method

.method public static onMapMatchFeedbackUpdate(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p0, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "PosService"

    .line 15
    const-string v2, "onMapMatchFeedbackUpdate:locMMFeedbackInfo={?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lrv;->I()Lxy;

    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-interface {v0, p0}, Lxy;->onMapMatchFeedbackUpdate(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)V

    .line 33
    :cond_0
    return-void
.end method

.method public static setSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V
    .locals 4

    .line 1
    sget-boolean v0, Li;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    sput-object p0, Lcom/autonavi/amapauto/jni/PosService;->mCILocSignData:Lcom/autonavi/amapauto/location/model/LocSignData;

    .line 9
    iget-object v0, p0, Lcom/autonavi/amapauto/location/model/LocSignData;->gnss:Lcom/autonavi/amapauto/location/model/LocGnss;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v1, 0x6

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    iget v2, v0, Lcom/autonavi/amapauto/location/model/LocGnss;->year:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 25
    iget v2, v0, Lcom/autonavi/amapauto/location/model/LocGnss;->month:I

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x1

    .line 32
    aput-object v2, v1, v3

    .line 34
    iget v2, v0, Lcom/autonavi/amapauto/location/model/LocGnss;->day:I

    .line 36
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x2

    .line 41
    aput-object v2, v1, v3

    .line 43
    iget v2, v0, Lcom/autonavi/amapauto/location/model/LocGnss;->hour:I

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 49
    const/4 v3, 0x3

    .line 50
    aput-object v2, v1, v3

    .line 52
    iget v2, v0, Lcom/autonavi/amapauto/location/model/LocGnss;->minute:I

    .line 54
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x4

    .line 59
    aput-object v2, v1, v3

    .line 61
    iget v0, v0, Lcom/autonavi/amapauto/location/model/LocGnss;->second:I

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v0

    .line 67
    const/4 v2, 0x5

    .line 68
    aput-object v0, v1, v2

    .line 70
    const-string v0, "PosService"

    .line 72
    const-string v2, "LocSignData time:{?}-{?}-{?}-{?}-{?}-{?}"

    .line 74
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/PosService;->nativeSetSignInfo(Lcom/autonavi/amapauto/location/model/LocSignData;)V

    .line 80
    return-void
.end method

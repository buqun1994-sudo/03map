.class public Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraManagerNative"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeCamera()Z
    .locals 5

    .line 1
    const-string v0, "CameraManagerNative"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "closeCamera begin: "

    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->closeCamera()Z

    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v4, "closeCamera end isSuc =  "

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v3

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    const/4 v4, 0x1

    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v4, v1

    .line 55
    const-string v1, "closeCamera stack = {?}"

    .line 57
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_1
    return v2
.end method

.method public static getArCameraBaseInfo()Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "getArCameraBaseInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getArCameraBaseInfo()Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    aput-object v1, v3, v0

    .line 30
    const-string v0, "getArCameraBaseInfo stack = {?}"

    .line 32
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public static getArPerfInfo()Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "getArPerfInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getArPerfInfo()Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 18
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    aput-object v1, v3, v0

    .line 30
    const-string v0, "getArPerfInfo stack = {?}"

    .line 32
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public static getCameraSupportFormat([I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "getCameraSupportFormat"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p0}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getCameraSupportFormat([I)I

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    const/4 v1, 0x1

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    aput-object p0, v1, v0

    .line 30
    const-string p0, "getCameraSupportFormat stack = {?}"

    .line 32
    invoke-static {v2, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return v0
.end method

.method public static initArCamera(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 4

    .line 1
    const-string v0, "CameraManagerNative"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v3, "init begin: "

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->toString()Ljava/lang/String;

    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    new-array v3, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2, p0}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->init(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z

    .line 37
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 38
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v3, "init end ret = "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    new-array v3, v1, [Ljava/lang/Object;

    .line 57
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    goto :goto_1

    .line 61
    :catch_0
    move-exception v2

    .line 62
    goto :goto_0

    .line 63
    :catch_1
    move-exception v2

    .line 64
    const/4 p0, 0x0

    .line 65
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    const/4 v3, 0x1

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    aput-object v2, v3, v1

    .line 77
    const-string v1, "initArCamera: stack = {?}"

    .line 79
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :goto_1
    return p0
.end method

.method public static isCameraOpened()Z
    .locals 6

    .line 1
    const-string v0, "CameraManagerNative"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "isCameraOpened begin: "

    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->isCameraOpened()Z

    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v4, "isCameraOpened end:isOpen =  "

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v3

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    const/4 v4, 0x1

    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    aput-object v5, v4, v1

    .line 55
    const-string v1, "isCameraOpened stack = {?}"

    .line 57
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :goto_1
    return v2
.end method

.method public static native nativeNotifyArCameraBaseInfo(Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;)V
.end method

.method public static native notifyCameraClosed()V
.end method

.method public static native notifyCameraRestartBegin()V
.end method

.method public static native notifyCameraRestartEnd()V
.end method

.method public static native notifyPerfInfo(Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;)V
.end method

.method public static openCamera(I)Z
    .locals 4

    .line 1
    const-string v0, "CameraManagerNative"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "openCamera begin: "

    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2, p0}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->openCamera(I)Z

    .line 18
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "openCamera end: isSuc = "

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    new-array v3, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v2

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v2

    .line 45
    const/4 p0, 0x0

    .line 46
    :goto_0
    const/4 v3, 0x1

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    move-result-object v2

    .line 53
    aput-object v2, v3, v1

    .line 55
    const-string v1, "openCamera: stack = {?}"

    .line 57
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_1
    return p0
.end method

.method public static releaseImageInfo()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "releaseImageInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->releaseImageInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v3, v0

    .line 29
    const-string v0, "releaseImageInfo stack = {?}"

    .line 31
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_0
    return-void
.end method

.method public static requestCameraData()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "requestCamera begin:"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->requestCameraData()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v4, "requestCamera end:cameraData ="

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    new-array v4, v0, [Ljava/lang/Object;

    .line 41
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v3, "requestCamera end, get null cameraData"

    .line 47
    new-array v4, v0, [Ljava/lang/Object;

    .line 49
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    const/4 v4, 0x1

    .line 55
    new-array v4, v4, [Ljava/lang/Object;

    .line 57
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 61
    aput-object v3, v4, v0

    .line 63
    const-string v0, "requestCameraData: stack = {?}"

    .line 65
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    :goto_0
    return-object v1
.end method

.method public static startAR()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "startAR"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->startAR()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v3, v0

    .line 29
    const-string v0, "startAR stack = {?}"

    .line 31
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_0
    return-void
.end method

.method public static stopAR()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManagerNative"

    .line 6
    const-string v3, "stopAR"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->stopAR()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v3, v0

    .line 29
    const-string v0, "stopAR stack = {?}"

    .line 31
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :goto_0
    return-void
.end method

.method public static unInit()Z
    .locals 5

    .line 1
    const-string v0, "CameraManagerNative"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "unInit begin: "

    .line 6
    new-array v3, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Lcom/autonavi/amapauto/ar/camera/CameraManager;->unInit()Z

    .line 18
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 19
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v4, "unInit end isSuc = "

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    new-array v4, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception v3

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v3

    .line 45
    const/4 v2, 0x0

    .line 46
    :goto_0
    const/4 v4, 0x1

    .line 47
    new-array v4, v4, [Ljava/lang/Object;

    .line 49
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    aput-object v3, v4, v1

    .line 55
    const-string v1, "unInit stack = {?}"

    .line 57
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    :goto_1
    return v2
.end method

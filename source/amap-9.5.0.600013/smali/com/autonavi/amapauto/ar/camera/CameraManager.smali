.class public Lcom/autonavi/amapauto/ar/camera/CameraManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final AR_STATE_STARTED:I = 0x1

.field public static final AR_STATE_STOPED:I = 0x0

.field public static final CAMERA_FACING_BACK:I = 0x1

.field public static final CAMERA_FACING_EXTERNAL:I = 0x2

.field public static final CAMERA_FACING_FRONT:I = 0x0

.field private static final MODEL_P1:Ljava/lang/String; = "P1"

.field private static final ourInstance:Lcom/autonavi/amapauto/ar/camera/CameraManager;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private cameraImpl:Liq;

.field private mArState:I

.field private mCameraParam:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

.field private mSocolDataHandler:Landroid/os/Handler;

.field private mSocolDataThread:Landroid/os/HandlerThread;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/CameraManager;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->ourInstance:Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "CameraManager"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->TAG:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mArState:I

    .line 11
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "product:"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v3, ", model:"

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v4, ", device:"

    .line 38
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    sget-object v4, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 43
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v4, ", brand:"

    .line 48
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 53
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    new-array v4, v1, [Ljava/lang/Object;

    .line 62
    invoke-static {v0, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-static {}, Lzm;->d()Lzm;

    .line 68
    move-result-object v2

    .line 69
    sget-object v4, Lzm;->B:Ljava/lang/String;

    .line 71
    invoke-virtual {v2, v4, v1}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 74
    move-result v2

    .line 75
    const-string v4, "isSupportAlink={?}"

    .line 77
    const/4 v5, 0x1

    .line 78
    new-array v5, v5, [Ljava/lang/Object;

    .line 80
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 83
    move-result-object v6

    .line 84
    aput-object v6, v5, v1

    .line 86
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    if-eqz v2, :cond_0

    .line 91
    const-string v2, "use AlinkCamera"

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v1, Ls2;

    .line 100
    invoke-direct {v1}, Ls2;-><init>()V

    .line 103
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const-string v2, "P1"

    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_1

    .line 114
    const-string v2, "use P1"

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    new-instance v1, Lve;

    .line 123
    invoke-direct {v1}, Lve;-><init>()V

    .line 126
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 128
    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lse;->c()Lse;

    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lse;->getArCamera()Liq;

    .line 136
    move-result-object v1

    .line 137
    iput-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    goto :goto_0

    .line 140
    :catchall_0
    move-exception v1

    .line 141
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_0
    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/amapauto/ar/camera/CameraManager;)Lcom/autonavi/amapauto/ar/camera/ArCameraParam;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mCameraParam:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/autonavi/amapauto/ar/camera/CameraManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->ourInstance:Lcom/autonavi/amapauto/ar/camera/CameraManager;

    .line 3
    return-object v0
.end method

.method public static notifyArPerfInfo(Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public closeCamera()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataThread:Landroid/os/HandlerThread;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataThread:Landroid/os/HandlerThread;

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataHandler:Landroid/os/Handler;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 19
    invoke-interface {v0}, Liq;->closeCamera()Z

    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    return v0
.end method

.method public getArCameraBaseInfo()Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Liq;->d()Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getArPerfInfo()Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Liq;->k()Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getArState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mArState:I

    .line 3
    return v0
.end method

.method public getCameraSupportFormat([I)I
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 8
    if-eqz v1, :cond_0

    .line 10
    invoke-interface {v1, v0}, Liq;->j(Ljava/util/ArrayList;)I

    .line 13
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-lez v1, :cond_2

    .line 20
    if-eqz p1, :cond_2

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/lang/Integer;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 41
    move-result v1

    .line 42
    array-length v3, p1

    .line 43
    if-ge v2, v3, :cond_1

    .line 45
    add-int/lit8 v3, v2, 0x1

    .line 47
    aput v1, p1, v2

    .line 49
    move v2, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return v2
.end method

.method public init(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v2, "CameraManager"

    .line 9
    const-string v3, "init:{?} "

    .line 11
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    iput-object p1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mCameraParam:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 20
    invoke-interface {v0, p1}, Liq;->c(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z

    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_0
    return v1
.end method

.method public isCameraOpened()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Liq;->f()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public openCamera(I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "CameraManager"

    .line 6
    const-string v3, "openCamera"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 13
    if-eqz v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataThread:Landroid/os/HandlerThread;

    .line 17
    if-nez v0, :cond_0

    .line 19
    new-instance v0, Landroid/os/HandlerThread;

    .line 21
    const-string v1, "SocolDataThread"

    .line 23
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 26
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataThread:Landroid/os/HandlerThread;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataHandler:Landroid/os/Handler;

    .line 33
    if-nez v0, :cond_1

    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 37
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataThread:Landroid/os/HandlerThread;

    .line 39
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object v1

    .line 43
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 46
    iput-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataHandler:Landroid/os/Handler;

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 50
    invoke-interface {v0, p1}, Liq;->b(I)Z

    .line 53
    move-result p1

    .line 54
    return p1

    .line 55
    :cond_2
    return v0
.end method

.method public releaseImageInfo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Liq;->e()V

    .line 8
    :cond_0
    return-void
.end method

.method public requestCameraData()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "CameraManager"

    .line 6
    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Liq;->h()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mSocolDataHandler:Landroid/os/Handler;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    new-instance v2, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;

    .line 20
    invoke-direct {v2, p0, v0}, Lcom/autonavi/amapauto/ar/camera/CameraManager$a;-><init>(Lcom/autonavi/amapauto/ar/camera/CameraManager;Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;)V

    .line 23
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v3, "imageInfo must not be null"

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_1
    :goto_0
    return-object v0

    .line 35
    :cond_2
    const-string v0, "cameraImpl must not be null"

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 44
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 47
    return-object v0
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Liq;->i(Landroid/graphics/SurfaceTexture;)V

    .line 8
    :cond_0
    return-void
.end method

.method public startAR()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mArState:I

    .line 4
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v0}, Liq;->a(I)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/socol/SocolNative;->notifyArStateChange()V

    .line 14
    return-void
.end method

.method public stopAR()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->mArState:I

    .line 4
    iget-object v1, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-interface {v1, v0}, Liq;->a(I)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/socol/SocolNative;->notifyArStateChange()V

    .line 14
    return-void
.end method

.method public unInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/ar/camera/CameraManager;->cameraImpl:Liq;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Liq;->g()Z

    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.class public Lyd;
.super Lo;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/hardware/Camera;

.field public c:I

.field public d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

.field public e:Landroid/graphics/SurfaceTexture;

.field public f:Z

.field public g:I

.field public h:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

.field public final i:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lo;-><init>()V

    .line 4
    const-string v0, "Camera1"

    .line 6
    iput-object v0, p0, Lyd;->a:Ljava/lang/String;

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lyd;->c:I

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lyd;->f:Z

    .line 14
    iput v0, p0, Lyd;->g:I

    .line 16
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 18
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 21
    iput-object v0, p0, Lyd;->h:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 23
    new-instance v0, Landroid/graphics/SurfaceTexture;

    .line 25
    const v1, 0x8d65

    .line 28
    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 31
    iput-object v0, p0, Lyd;->i:Landroid/graphics/SurfaceTexture;

    .line 33
    return-void
.end method

.method public static synthetic m(Lyd;)Lcom/autonavi/amapauto/ar/camera/ArCameraParam;
    .locals 0

    .line 1
    iget-object p0, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 3
    return-object p0
.end method

.method public static synthetic n(Lyd;Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lyd;->h:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 3
    return-object p1
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lyd;->g:I

    .line 3
    return-void
.end method

.method public b(I)Z
    .locals 5

    .line 1
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez p1, :cond_0

    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    :goto_1
    if-ge v3, v0, :cond_2

    .line 15
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    .line 17
    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 20
    invoke-static {v3, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 23
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 25
    if-ne p1, v4, :cond_1

    .line 27
    iput v4, p0, Lyd;->c:I

    .line 29
    goto :goto_2

    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    :goto_2
    new-array p1, v1, [Ljava/lang/Object;

    .line 35
    iget v0, p0, Lyd;->c:I

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 41
    aput-object v0, p1, v2

    .line 43
    const-string v0, "Camera1"

    .line 45
    const-string v3, "openCamera:curCameraId = {?} "

    .line 47
    invoke-static {v0, v3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    iget p1, p0, Lyd;->c:I

    .line 52
    const/4 v3, -0x1

    .line 53
    if-ne p1, v3, :cond_3

    .line 55
    return v2

    .line 56
    :cond_3
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 62
    if-nez p1, :cond_4

    .line 64
    const-string p1, "openCamera: curCamera == null"

    .line 66
    new-array v1, v2, [Ljava/lang/Object;

    .line 68
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v2

    .line 72
    :cond_4
    new-array v3, v1, [Ljava/lang/Object;

    .line 74
    aput-object p1, v3, v2

    .line 76
    const-string p1, "openCamera: curCamera = {?}"

    .line 78
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-virtual {p0}, Lyd;->r()V

    .line 84
    iput-boolean v1, p0, Lyd;->f:Z

    .line 86
    return v1
.end method

.method public c(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public closeCamera()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lyd;->f:Z

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lyd;->f:Z

    .line 3
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 11
    :cond_0
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lyd;->c:I

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public h()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lyd;->q()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyd;->e:Landroid/graphics/SurfaceTexture;

    .line 3
    return-void
.end method

.method public j(Ljava/util/ArrayList;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final o()I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "window"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/WindowManager;

    .line 17
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_3

    .line 29
    if-eq v0, v1, :cond_2

    .line 31
    const/4 v3, 0x2

    .line 32
    if-eq v0, v3, :cond_1

    .line 34
    const/4 v3, 0x3

    .line 35
    if-eq v0, v3, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/16 v2, 0x10e

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/16 v2, 0xb4

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/16 v2, 0x5a

    .line 46
    :cond_3
    :goto_0
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    .line 48
    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 51
    iget v3, p0, Lyd;->c:I

    .line 53
    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 56
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    .line 58
    if-ne v3, v1, :cond_4

    .line 60
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 62
    add-int/2addr v0, v2

    .line 63
    rem-int/lit16 v0, v0, 0x168

    .line 65
    rsub-int v0, v0, 0x168

    .line 67
    rem-int/lit16 v0, v0, 0x168

    .line 69
    goto :goto_1

    .line 70
    :cond_4
    iget v0, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    .line 72
    sub-int/2addr v0, v2

    .line 73
    add-int/lit16 v0, v0, 0x168

    .line 75
    rem-int/lit16 v0, v0, 0x168

    .line 77
    :goto_1
    return v0
.end method

.method public final p(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Camera1"

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p1, "parameters is null!"

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v3, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 17
    if-nez v3, :cond_1

    .line 19
    const-string p1, "curCamera is null!"

    .line 21
    new-array v2, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    return-object v0

    .line 27
    :cond_1
    new-instance v0, Landroid/hardware/Camera$Size;

    .line 29
    iget-object v1, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 31
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v3, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 36
    iget v4, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 38
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 40
    invoke-direct {v0, v1, v4, v3}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 43
    new-instance v1, Landroid/hardware/Camera$Size;

    .line 45
    iget-object v3, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 47
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v4, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 52
    iget v5, v4, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 54
    iget v4, v4, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 56
    invoke-direct {v1, v3, v5, v4}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 59
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_2

    .line 65
    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 71
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 75
    move-object v0, p1

    .line 76
    check-cast v0, Landroid/hardware/Camera$Size;

    .line 78
    :cond_2
    return-object v0
.end method

.method public q()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lyd;->f:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lyd;->h:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 9
    iget v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 11
    if-nez v2, :cond_1

    .line 13
    return-object v1

    .line 14
    :cond_1
    return-object v0
.end method

.method public r()V
    .locals 9

    .line 1
    const-string v0, "Camera1"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 6
    if-nez v2, :cond_0

    .line 8
    const-string v2, "curCamera is null!"

    .line 10
    new-array v3, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    .line 19
    move-result-object v2

    .line 20
    if-nez v2, :cond_1

    .line 22
    const-string v2, "parameters is null!"

    .line 24
    new-array v3, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    .line 33
    move-result-object v3

    .line 34
    const-string v4, "getSupportedPreviewFormats: {?}"

    .line 36
    const/4 v5, 0x1

    .line 37
    new-array v6, v5, [Ljava/lang/Object;

    .line 39
    aput-object v3, v6, v1

    .line 41
    invoke-static {v0, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    if-eqz v3, :cond_2

    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    move-result v4

    .line 50
    if-lez v4, :cond_2

    .line 52
    iget-object v4, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 54
    iget v4, v4, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 56
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 63
    move-result v4

    .line 64
    if-nez v4, :cond_2

    .line 66
    iget-object v4, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 68
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Ljava/lang/Integer;

    .line 74
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 77
    move-result v3

    .line 78
    iput v3, v4, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 80
    :cond_2
    iget-object v3, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 82
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 84
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 87
    invoke-virtual {p0, v2}, Lyd;->p(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Size;

    .line 90
    move-result-object v3

    .line 91
    const-string v4, "startPreview,size.width={?}\uff0csize.height={?}, cameraParam.format={?}"

    .line 93
    const/4 v6, 0x3

    .line 94
    new-array v6, v6, [Ljava/lang/Object;

    .line 96
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    .line 98
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    move-result-object v7

    .line 102
    aput-object v7, v6, v1

    .line 104
    iget v7, v3, Landroid/hardware/Camera$Size;->height:I

    .line 106
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v7

    .line 110
    aput-object v7, v6, v5

    .line 112
    iget-object v7, p0, Lyd;->d:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 114
    iget v7, v7, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 116
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    move-result-object v7

    .line 120
    const/4 v8, 0x2

    .line 121
    aput-object v7, v6, v8

    .line 123
    invoke-static {v0, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    .line 128
    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 130
    invoke-virtual {v2, v4, v3}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 133
    invoke-virtual {p0}, Lyd;->o()I

    .line 136
    move-result v6

    .line 137
    iget-object v7, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 139
    invoke-virtual {v7, v6}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 142
    iget-object v6, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 144
    invoke-virtual {v6, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 147
    iget-object v2, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 149
    iget-object v6, p0, Lyd;->i:Landroid/graphics/SurfaceTexture;

    .line 151
    invoke-virtual {v2, v6}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 154
    const-string v2, "setPreviewTexture,surfaceTexture={?}"

    .line 156
    new-array v5, v5, [Ljava/lang/Object;

    .line 158
    iget-object v6, p0, Lyd;->e:Landroid/graphics/SurfaceTexture;

    .line 160
    aput-object v6, v5, v1

    .line 162
    invoke-static {v0, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget-object v2, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 167
    new-instance v5, Lyd$a;

    .line 169
    invoke-direct {v5, p0, v4, v3}, Lyd$a;-><init>(Lyd;II)V

    .line 172
    invoke-virtual {v2, v5}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 175
    iget-object v2, p0, Lyd;->b:Landroid/hardware/Camera;

    .line 177
    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 181
    :catch_0
    move-exception v2

    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v4, "Error starting camera preview: "

    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v2

    .line 203
    new-array v1, v1, [Ljava/lang/Object;

    .line 205
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    :goto_0
    return-void
.end method

.class public Lve;
.super Lo;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lve$c;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lae;

.field public c:Landroid/content/Intent;

.field public final d:Landroid/content/ComponentName;

.field public e:Lve$c;

.field public f:Ljava/io/File;

.field public g:Z

.field public h:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

.field public i:I

.field public j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

.field public k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

.field public l:I

.field public m:Lbe;

.field public n:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lo;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 14
    new-instance v0, Landroid/content/ComponentName;

    .line 16
    const-string v1, "com.android.systemui"

    .line 18
    const-string v2, "com.rmt.camera.live.aidl.CameraLiveService"

    .line 20
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-object v0, p0, Lve;->d:Landroid/content/ComponentName;

    .line 25
    new-instance v0, Lve$c;

    .line 27
    invoke-direct {v0, p0}, Lve$c;-><init>(Lve;)V

    .line 30
    iput-object v0, p0, Lve;->e:Lve$c;

    .line 32
    new-instance v0, Ljava/io/File;

    .line 34
    const-string v1, "/storage/emulated/0/rmtpic"

    .line 36
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    iput-object v0, p0, Lve;->f:Ljava/io/File;

    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lve;->g:Z

    .line 44
    iput v0, p0, Lve;->l:I

    .line 46
    new-instance v0, Lve$a;

    .line 48
    invoke-direct {v0, p0}, Lve$a;-><init>(Lve;)V

    .line 51
    iput-object v0, p0, Lve;->m:Lbe;

    .line 53
    new-instance v0, Lve$b;

    .line 55
    invoke-direct {v0, p0}, Lve$b;-><init>(Lve;)V

    .line 58
    iput-object v0, p0, Lve;->n:Landroid/content/ServiceConnection;

    .line 60
    return-void
.end method

.method public static synthetic m(Lve;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic n(Lve;)Lve$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lve;->e:Lve$c;

    .line 3
    return-object p0
.end method

.method public static synthetic o(Lve;Landroid/os/MemoryFile;III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lve;->u(Landroid/os/MemoryFile;III)V

    .line 4
    return-void
.end method

.method public static synthetic p(Lve;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lve;->g:Z

    .line 3
    return p1
.end method

.method public static synthetic q(Lve;)Lae;
    .locals 0

    .line 1
    iget-object p0, p0, Lve;->b:Lae;

    .line 3
    return-object p0
.end method

.method public static synthetic r(Lve;Lae;)Lae;
    .locals 0

    .line 1
    iput-object p1, p0, Lve;->b:Lae;

    .line 3
    return-object p1
.end method

.method public static synthetic s(Lve;)Lbe;
    .locals 0

    .line 1
    iget-object p0, p0, Lve;->m:Lbe;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lve;->l:I

    .line 3
    return-void
.end method

.method public b(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v3

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 13
    const-string v3, "openCamera: cameraId={?}"

    .line 15
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-nez p1, :cond_0

    .line 20
    iput v1, p0, Lve;->i:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v4, p0, Lve;->i:I

    .line 25
    :goto_0
    invoke-virtual {p0}, Lve;->t()V

    .line 28
    return v1
.end method

.method public c(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object p1, v2, v3

    .line 9
    const-string v3, "initCamera: param  ={?}"

    .line 11
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lve;->h:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 16
    return v1
.end method

.method public closeCamera()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "closeCamera: "

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lve;->v()V

    .line 14
    const/4 v0, 0x1

    .line 15
    return v0
.end method

.method public f()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-boolean v2, p0, Lve;->g:Z

    .line 8
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    const-string v2, "isCameraOpened: {?}"

    .line 17
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Lve;->g:Z

    .line 22
    return v0
.end method

.method public g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "unInitCamera: "

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0
.end method

.method public declared-synchronized h()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 11
    if-nez v0, :cond_1

    .line 13
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 15
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 18
    iput-object v0, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 20
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 22
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 25
    const/high16 v1, 0x180000

    .line 27
    new-array v1, v1, [B

    .line 29
    iput-object v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 31
    iget-object v1, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 33
    iget-object v1, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    iget-object v0, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 40
    iget-object v1, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 42
    iget v2, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 44
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 46
    iget v2, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 48
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 50
    iget v2, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 52
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 54
    iget-object v0, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 63
    if-eqz v0, :cond_2

    .line 65
    iget-object v2, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 67
    iget-object v2, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 75
    iget v3, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 77
    iput v3, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 79
    iget v3, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 81
    iput v3, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 83
    iget v3, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 85
    iput v3, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 87
    iget-object v3, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 89
    iget-object v2, v2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 91
    iget v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 93
    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    :cond_2
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 98
    const-string v2, "requestCameraData: latestImageInfo = {?}"

    .line 100
    const/4 v3, 0x1

    .line 101
    new-array v3, v3, [Ljava/lang/Object;

    .line 103
    iget-object v4, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 105
    aput-object v4, v3, v1

    .line 107
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lve;->k:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    monitor-exit p0

    .line 113
    return-object v0

    .line 114
    :catchall_0
    move-exception v0

    .line 115
    monitor-exit p0

    .line 116
    throw v0
.end method

.method public i(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Ljava/util/ArrayList;)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public final t()V
    .locals 5

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    iget-boolean v3, p0, Lve;->g:Z

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    const-string v3, "bindSystemUiServer: mIsBinded = {?}"

    .line 17
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lve;->c:Landroid/content/Intent;

    .line 22
    if-nez v0, :cond_0

    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 26
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 29
    iput-object v0, p0, Lve;->c:Landroid/content/Intent;

    .line 31
    iget-object v2, p0, Lve;->d:Landroid/content/ComponentName;

    .line 33
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 36
    :cond_0
    iget-boolean v0, p0, Lve;->g:Z

    .line 38
    if-nez v0, :cond_1

    .line 40
    invoke-static {}, Lrv;->H()Lrv;

    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 47
    move-result-object v0

    .line 48
    iget-object v2, p0, Lve;->c:Landroid/content/Intent;

    .line 50
    iget-object v3, p0, Lve;->n:Landroid/content/ServiceConnection;

    .line 52
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 55
    :cond_1
    return-void
.end method

.method public final declared-synchronized u(Landroid/os/MemoryFile;III)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 4
    const-string v1, "readOriginData: width = {?},height = {?}"

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 23
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 28
    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 32
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;-><init>()V

    .line 35
    iput-object v0, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 37
    const v1, 0x32315659

    .line 40
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 42
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 44
    invoke-direct {v0}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 47
    const/high16 v1, 0x180000

    .line 49
    new-array v1, v1, [B

    .line 51
    iput-object v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 53
    const/4 v1, -0x1

    .line 54
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 56
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 58
    iget-object v1, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 60
    iget-object v1, v1, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    iget-object v0, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 67
    iput p2, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 69
    iput p3, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 71
    iget-object p2, v0, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    move-result-object p2

    .line 77
    check-cast p2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 79
    if-eqz p2, :cond_1

    .line 81
    iput p4, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 83
    iget-object p2, p2, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 85
    array-length p3, p2

    .line 86
    invoke-static {p4, p3}, Ljava/lang/Math;->min(II)I

    .line 89
    move-result p3

    .line 90
    invoke-virtual {p1, p2, v4, v4, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 93
    :cond_1
    iget-object p1, p0, Lve;->a:Ljava/lang/String;

    .line 95
    const-string p2, "readOriginData: imageInfo = {?}"

    .line 97
    new-array p3, v5, [Ljava/lang/Object;

    .line 99
    iget-object p4, p0, Lve;->j:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 101
    aput-object p4, p3, v4

    .line 103
    invoke-static {p1, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0

    .line 110
    throw p1
.end method

.method public final v()V
    .locals 7

    .line 1
    iget-object v0, p0, Lve;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    iget-boolean v3, p0, Lve;->g:Z

    .line 8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    const-string v3, "unbindSystemUiServer: mIsBinded = {?}"

    .line 17
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    :try_start_0
    iget-object v0, p0, Lve;->b:Lae;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iget v2, p0, Lve;->i:I

    .line 26
    iget-object v3, p0, Lve;->h:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 28
    iget v5, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 30
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 32
    const/4 v6, 0x0

    .line 33
    invoke-interface {v0, v2, v5, v3, v6}, Lae;->r0(IIILbe;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    iget-object v2, p0, Lve;->a:Ljava/lang/String;

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    aput-object v0, v1, v4

    .line 48
    const-string v0, "unbindSystemUiServer: exception:{?}"

    .line 50
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lve;->g:Z

    .line 55
    if-eqz v0, :cond_1

    .line 57
    iput-boolean v4, p0, Lve;->g:Z

    .line 59
    invoke-static {}, Lrv;->H()Lrv;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 66
    move-result-object v0

    .line 67
    iget-object v1, p0, Lve;->n:Landroid/content/ServiceConnection;

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 72
    :cond_1
    return-void
.end method

.class public Lzd;
.super Lo;
.source "SourceFile"


# instance fields
.field public A:I

.field public B:Ljava/util/regex/Pattern;

.field public C:Ljava/lang/String;

.field public D:Ljava/util/concurrent/atomic/AtomicInteger;

.field public E:Landroid/os/HandlerThread;

.field public F:Landroid/os/Handler;

.field public G:I

.field public H:I

.field public I:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field public final a:Ljava/lang/String;

.field public b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

.field public c:Landroid/hardware/camera2/CameraManager;

.field public d:Landroid/hardware/camera2/CameraDevice;

.field public e:Landroid/media/ImageReader;

.field public f:Ljava/lang/Object;

.field public g:Landroid/util/Size;

.field public h:Landroid/view/Surface;

.field public i:Landroid/hardware/camera2/CameraCaptureSession;

.field public j:Ldm;

.field public k:Lcom/autonavi/amapauto/ar/camera/model/ArImage;

.field public l:Ldm$a;

.field public m:Ljava/util/ArrayList;

.field public n:Ljava/lang/Object;

.field public o:Ljava/util/ArrayList;

.field public p:Ljava/util/ArrayList;

.field public q:Ljava/lang/Object;

.field public r:Z

.field public s:Z

.field public t:J

.field public u:J

.field public v:J

.field public w:J

.field public x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

.field public y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

.field public z:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lo;-><init>()V

    .line 4
    const-string v0, "Camera2"

    .line 6
    iput-object v0, p0, Lzd;->a:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/Object;

    .line 10
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lzd;->f:Ljava/lang/Object;

    .line 15
    new-instance v1, Ldm;

    .line 17
    const/4 v2, 0x2

    .line 18
    invoke-direct {v1, v2}, Ldm;-><init>(I)V

    .line 21
    iput-object v1, p0, Lzd;->j:Ldm;

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 25
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v1, p0, Lzd;->m:Ljava/util/ArrayList;

    .line 30
    new-instance v1, Ljava/lang/Object;

    .line 32
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v1, p0, Lzd;->n:Ljava/lang/Object;

    .line 37
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v1, p0, Lzd;->o:Ljava/util/ArrayList;

    .line 44
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    iput-object v1, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 51
    new-instance v1, Ljava/lang/Object;

    .line 53
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v1, p0, Lzd;->q:Ljava/lang/Object;

    .line 58
    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lzd;->r:Z

    .line 61
    iput-boolean v1, p0, Lzd;->s:Z

    .line 63
    const-wide/16 v2, 0x0

    .line 65
    iput-wide v2, p0, Lzd;->t:J

    .line 67
    iput-wide v2, p0, Lzd;->u:J

    .line 69
    iput-wide v2, p0, Lzd;->v:J

    .line 71
    iput-wide v2, p0, Lzd;->w:J

    .line 73
    new-instance v2, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 75
    invoke-direct {v2}, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;-><init>()V

    .line 78
    iput-object v2, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 80
    new-instance v2, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 82
    invoke-direct {v2}, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;-><init>()V

    .line 85
    iput-object v2, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 87
    iput v1, p0, Lzd;->A:I

    .line 89
    const-string v2, "\\s*|\t|\r|\n"

    .line 91
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 94
    move-result-object v2

    .line 95
    iput-object v2, p0, Lzd;->B:Ljava/util/regex/Pattern;

    .line 97
    const-string v2, ""

    .line 99
    iput-object v2, p0, Lzd;->C:Ljava/lang/String;

    .line 101
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 103
    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 106
    iput-object v2, p0, Lzd;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 108
    iput v1, p0, Lzd;->G:I

    .line 110
    const/16 v2, -0x9

    .line 112
    iput v2, p0, Lzd;->H:I

    .line 114
    new-instance v2, Lzd$b;

    .line 116
    invoke-direct {v2, p0}, Lzd$b;-><init>(Lzd;)V

    .line 119
    iput-object v2, p0, Lzd;->I:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 121
    invoke-static {}, Lrv;->H()Lrv;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 128
    move-result-object v2

    .line 129
    const-string v3, "camera"

    .line 131
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Landroid/hardware/camera2/CameraManager;

    .line 137
    iput-object v2, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 139
    invoke-virtual {p0}, Lzd;->L()V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    const-string v3, "priority:"

    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget v3, p0, Lzd;->G:I

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v2

    .line 161
    new-array v3, v1, [Ljava/lang/Object;

    .line 163
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    iget v2, p0, Lzd;->G:I

    .line 168
    const-string v3, "CameraHandler"

    .line 170
    if-eqz v2, :cond_0

    .line 172
    new-instance v2, Landroid/os/HandlerThread;

    .line 174
    iget v4, p0, Lzd;->G:I

    .line 176
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 179
    iput-object v2, p0, Lzd;->E:Landroid/os/HandlerThread;

    .line 181
    goto :goto_0

    .line 182
    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    .line 184
    iget v4, p0, Lzd;->H:I

    .line 186
    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 189
    iput-object v2, p0, Lzd;->E:Landroid/os/HandlerThread;

    .line 191
    :goto_0
    iget-object v2, p0, Lzd;->E:Landroid/os/HandlerThread;

    .line 193
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 196
    new-instance v2, Landroid/os/Handler;

    .line 198
    iget-object v3, p0, Lzd;->E:Landroid/os/HandlerThread;

    .line 200
    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 203
    move-result-object v3

    .line 204
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 207
    iput-object v2, p0, Lzd;->F:Landroid/os/Handler;

    .line 209
    new-instance v2, Ljava/io/File;

    .line 211
    const-string v3, "/sdcard/amapauto9/normal.txt"

    .line 213
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 216
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 219
    move-result v2

    .line 220
    if-eqz v2, :cond_1

    .line 222
    const/4 v2, 0x1

    .line 223
    iput v2, p0, Lzd;->A:I

    .line 225
    :cond_1
    iget-object v2, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 227
    iget v3, p0, Lzd;->A:I

    .line 229
    iput v3, v2, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->workMode:I

    .line 231
    iget-object v2, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 233
    iput v3, v2, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->workMode:I

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    .line 237
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    const-string v3, "mCurrentWorkMode:"

    .line 242
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    iget v3, p0, Lzd;->A:I

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 253
    move-result-object v2

    .line 254
    new-array v1, v1, [Ljava/lang/Object;

    .line 256
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return-void
.end method

.method public static synthetic A(Lzd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzd;->s:Z

    .line 3
    return p1
.end method

.method public static synthetic B(Lzd;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzd;->T()V

    .line 4
    return-void
.end method

.method public static synthetic C(Lzd;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->i:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    return-object p0
.end method

.method public static synthetic D(Lzd;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lzd;->i:Landroid/hardware/camera2/CameraCaptureSession;

    .line 3
    return-object p1
.end method

.method public static synthetic E(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->z:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic F(Lzd;Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;)Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lzd;->z:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 3
    return-object p1
.end method

.method public static synthetic G(Lzd;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzd;->v:J

    .line 3
    return-wide v0
.end method

.method public static synthetic H(Lzd;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lzd;->v:J

    .line 3
    return-wide p1
.end method

.method public static synthetic I(Lzd;)Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic J(Lzd;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic m(Lzd;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 1
    iput-object p1, p0, Lzd;->d:Landroid/hardware/camera2/CameraDevice;

    .line 3
    return-object p1
.end method

.method public static synthetic n(Lzd;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzd;->Y()V

    .line 4
    return-void
.end method

.method public static synthetic o(Lzd;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->f:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic p(Lzd;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzd;->t:J

    .line 3
    return-wide v0
.end method

.method public static synthetic q(Lzd;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lzd;->t:J

    .line 3
    return-wide p1
.end method

.method public static synthetic r(Lzd;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzd;->u:J

    .line 3
    return-wide v0
.end method

.method public static synthetic s(Lzd;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lzd;->u:J

    .line 3
    return-wide p1
.end method

.method public static synthetic t(Lzd;)J
    .locals 4

    .line 1
    iget-wide v0, p0, Lzd;->u:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v2, v0

    .line 6
    iput-wide v2, p0, Lzd;->u:J

    .line 8
    return-wide v0
.end method

.method public static synthetic u(Lzd;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lzd;->K()V

    .line 4
    return-void
.end method

.method public static synthetic v(Lzd;Landroid/media/Image;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzd;->N(Landroid/media/Image;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Lzd;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->m:Ljava/util/ArrayList;

    .line 3
    return-object p0
.end method

.method public static synthetic x(Lzd;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    return-object p0
.end method

.method public static synthetic y(Lzd;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lzd;->q:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic z(Lzd;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lzd;->r:Z

    .line 3
    return p1
.end method


# virtual methods
.method public final K()V
    .locals 4

    .line 1
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 3
    iget-object v1, p0, Lzd;->m:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0, v1}, Lzd;->S(Ljava/util/ArrayList;)F

    .line 8
    move-result v1

    .line 9
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realReceiveImageFps:F

    .line 11
    iget-object v0, p0, Lzd;->n:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 16
    iget-object v2, p0, Lzd;->o:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {p0, v2}, Lzd;->S(Ljava/util/ArrayList;)F

    .line 21
    move-result v2

    .line 22
    iput v2, v1, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realGetImageFps:F

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 27
    iget-object v1, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {p0, v1}, Lzd;->P(Ljava/util/ArrayList;)J

    .line 32
    move-result-wide v1

    .line 33
    iput-wide v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realIntervalTime:J

    .line 35
    iget-object v0, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 40
    const-string v0, "Camera2"

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v2, "realIntervalTime:"

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 54
    iget-wide v2, v2, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realIntervalTime:J

    .line 56
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    const/4 v2, 0x0

    .line 64
    new-array v2, v2, [Ljava/lang/Object;

    .line 66
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 71
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minReceiveImageFps:F

    .line 73
    const/4 v2, 0x0

    .line 74
    cmpl-float v1, v1, v2

    .line 76
    if-nez v1, :cond_0

    .line 78
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realReceiveImageFps:F

    .line 80
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minReceiveImageFps:F

    .line 82
    :cond_0
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxReceiveImageFps:F

    .line 84
    cmpl-float v1, v1, v2

    .line 86
    if-nez v1, :cond_1

    .line 88
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realReceiveImageFps:F

    .line 90
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxReceiveImageFps:F

    .line 92
    :cond_1
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minRealGetImageFps:F

    .line 94
    cmpl-float v1, v1, v2

    .line 96
    if-nez v1, :cond_2

    .line 98
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realGetImageFps:F

    .line 100
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minRealGetImageFps:F

    .line 102
    :cond_2
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxRealGetImageFps:F

    .line 104
    cmpl-float v1, v1, v2

    .line 106
    if-nez v1, :cond_3

    .line 108
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realGetImageFps:F

    .line 110
    iput v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxRealGetImageFps:F

    .line 112
    :cond_3
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minRealGetImageFps:F

    .line 114
    iget v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realGetImageFps:F

    .line 116
    cmpl-float v1, v1, v2

    .line 118
    if-lez v1, :cond_4

    .line 120
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minRealGetImageFps:F

    .line 122
    :cond_4
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxRealGetImageFps:F

    .line 124
    cmpg-float v1, v1, v2

    .line 126
    if-gez v1, :cond_5

    .line 128
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxRealGetImageFps:F

    .line 130
    :cond_5
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minReceiveImageFps:F

    .line 132
    iget v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realReceiveImageFps:F

    .line 134
    cmpl-float v1, v1, v2

    .line 136
    if-lez v1, :cond_6

    .line 138
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->minReceiveImageFps:F

    .line 140
    :cond_6
    iget v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxReceiveImageFps:F

    .line 142
    cmpg-float v1, v1, v2

    .line 144
    if-gez v1, :cond_7

    .line 146
    iput v2, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->maxReceiveImageFps:F

    .line 148
    :cond_7
    return-void

    .line 149
    :catchall_0
    move-exception v1

    .line 150
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    throw v1
.end method

.method public L()V
    .locals 7

    .line 1
    const-string v0, "checkThreadPriortiy stack = "

    .line 3
    const-string v1, "close stack = "

    .line 5
    const-string v2, "Camera2"

    .line 7
    new-instance v3, Ljava/io/File;

    .line 9
    const-string v4, "/sdcard/amapauto9/priority.txt"

    .line 11
    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 17
    move-result v4

    .line 18
    if-eqz v4, :cond_2

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .line 24
    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    .line 30
    move-result v3

    .line 31
    new-array v3, v3, [B

    .line 33
    invoke-virtual {v6, v3}, Ljava/io/FileInputStream;->read([B)I

    .line 36
    move-result v5

    .line 37
    if-lez v5, :cond_0

    .line 39
    new-instance v5, Ljava/lang/String;

    .line 41
    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    .line 44
    iget-object v3, p0, Lzd;->B:Ljava/util/regex/Pattern;

    .line 46
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 49
    move-result-object v3

    .line 50
    const-string v5, ""

    .line 52
    invoke-virtual {v3, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 63
    move-result v3

    .line 64
    iput v3, p0, Lzd;->G:I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :cond_0
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 69
    goto/16 :goto_4

    .line 71
    :catch_0
    move-exception v0

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    new-array v1, v4, [Ljava/lang/Object;

    .line 93
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    goto/16 :goto_4

    .line 98
    :catchall_0
    move-exception v0

    .line 99
    move-object v5, v6

    .line 100
    goto/16 :goto_2

    .line 102
    :catch_1
    move-exception v3

    .line 103
    move-object v5, v6

    .line 104
    goto :goto_0

    .line 105
    :catch_2
    move-exception v3

    .line 106
    move-object v5, v6

    .line 107
    goto :goto_1

    .line 108
    :catchall_1
    move-exception v0

    .line 109
    goto :goto_2

    .line 110
    :catch_3
    move-exception v3

    .line 111
    :goto_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    new-array v3, v4, [Ljava/lang/Object;

    .line 132
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    if-eqz v5, :cond_2

    .line 137
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 140
    goto/16 :goto_4

    .line 142
    :catch_4
    move-exception v0

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    .line 145
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    new-array v1, v4, [Ljava/lang/Object;

    .line 164
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    goto :goto_4

    .line 168
    :catch_5
    move-exception v3

    .line 169
    :goto_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    new-array v3, v4, [Ljava/lang/Object;

    .line 190
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 193
    if-eqz v5, :cond_2

    .line 195
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 198
    goto :goto_4

    .line 199
    :catch_6
    move-exception v0

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    new-array v1, v4, [Ljava/lang/Object;

    .line 221
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    goto :goto_4

    .line 225
    :goto_2
    if-eqz v5, :cond_1

    .line 227
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 230
    goto :goto_3

    .line 231
    :catch_7
    move-exception v3

    .line 232
    new-instance v5, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v1

    .line 251
    new-array v3, v4, [Ljava/lang/Object;

    .line 253
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_1
    :goto_3
    throw v0

    .line 257
    :cond_2
    :goto_4
    return-void
.end method

.method public final M(I)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "convertCustomCameraFormat: format = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "Camera2"

    .line 23
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const v0, 0x2000033

    .line 29
    if-ne p1, v0, :cond_0

    .line 31
    const/4 p1, 0x1

    .line 32
    return p1

    .line 33
    :cond_0
    const v0, 0x2000032

    .line 36
    if-ne p1, v0, :cond_1

    .line 38
    const/4 p1, 0x3

    .line 39
    :cond_1
    return p1
.end method

.method public final N(Landroid/media/Image;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_10

    .line 4
    iget-object v1, p0, Lzd;->j:Ldm;

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Ldm;->b(I)Ldm$a;

    .line 10
    move-result-object v1

    .line 11
    const/4 v3, 0x1

    .line 12
    if-nez v1, :cond_1

    .line 14
    iget-object v4, p0, Lzd;->q:Ljava/lang/Object;

    .line 16
    monitor-enter v4

    .line 17
    :try_start_0
    const-string v1, "Camera2"

    .line 19
    const-string v5, "arImage is null!"

    .line 21
    new-array v6, v2, [Ljava/lang/Object;

    .line 23
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v1, p0, Lzd;->j:Ldm;

    .line 28
    invoke-virtual {v1, v3}, Ldm;->b(I)Ldm$a;

    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_0

    .line 34
    const-string p1, "Camera2"

    .line 36
    const-string v1, "have no usable cache data!"

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    monitor-exit v4

    .line 44
    return-object v0

    .line 45
    :cond_0
    invoke-virtual {v1, v2}, Ldm$a;->h(I)V

    .line 48
    monitor-exit v4

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ldm$a;->d()Ljava/lang/Object;

    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 59
    if-nez v4, :cond_2

    .line 61
    new-instance v4, Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 63
    invoke-direct {v4}, Lcom/autonavi/amapauto/ar/camera/model/ArImage;-><init>()V

    .line 66
    invoke-virtual {v1, v4}, Ldm$a;->f(Ljava/lang/Object;)V

    .line 69
    :cond_2
    iget-object v5, v4, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->imageInfo:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 71
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    .line 74
    move-result v6

    .line 75
    iput v6, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 77
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 80
    move-result v6

    .line 81
    iput v6, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 83
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 86
    move-result v6

    .line 87
    iput v6, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    move-result-wide v6

    .line 93
    iput-wide v6, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 95
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    move-result-wide v6

    .line 99
    invoke-virtual {v1, v6, v7}, Ldm$a;->g(J)V

    .line 102
    invoke-static {}, Lcz;->p()Z

    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 108
    const-string v6, "Camera2"

    .line 110
    new-instance v7, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    const-string v8, "format:"

    .line 117
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v8, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->format:I

    .line 122
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    const-string v8, ", width:"

    .line 127
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v8, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->width:I

    .line 132
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string v8, ", height:"

    .line 137
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    iget v8, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->height:I

    .line 142
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    const-string v8, ",timestamp:"

    .line 147
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget-wide v8, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->timestamp:J

    .line 152
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    const-string v8, ", curTimestamp:"

    .line 157
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 163
    move-result-wide v8

    .line 164
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v7

    .line 171
    new-array v8, v2, [Ljava/lang/Object;

    .line 173
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_3
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 179
    move-result-object p1

    .line 180
    invoke-static {}, Lcz;->p()Z

    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_4

    .line 186
    const-string v6, "Camera2"

    .line 188
    new-instance v7, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    const-string v8, "readImage: planes = "

    .line 195
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v7

    .line 205
    new-array v8, v2, [Ljava/lang/Object;

    .line 207
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    :cond_4
    if-nez p1, :cond_5

    .line 212
    const-string p1, "Camera2"

    .line 214
    const-string v1, "planes is null!"

    .line 216
    new-array v2, v2, [Ljava/lang/Object;

    .line 218
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return-object v0

    .line 222
    :cond_5
    array-length v6, p1

    .line 223
    invoke-static {}, Lcz;->p()Z

    .line 226
    move-result v7

    .line 227
    if-eqz v7, :cond_6

    .line 229
    const-string v7, "Camera2"

    .line 231
    new-instance v8, Ljava/lang/StringBuilder;

    .line 233
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    const-string v9, "readImage: planes count= "

    .line 238
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v8

    .line 248
    new-array v9, v2, [Ljava/lang/Object;

    .line 250
    invoke-static {v7, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_6
    const/4 v7, 0x0

    .line 254
    :goto_1
    if-ge v7, v6, :cond_d

    .line 256
    iget-object v8, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 258
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 261
    move-result v8

    .line 262
    if-ge v7, v8, :cond_7

    .line 264
    iget-object v8, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 266
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 269
    move-result-object v8

    .line 270
    check-cast v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 272
    goto :goto_2

    .line 273
    :cond_7
    new-instance v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;

    .line 275
    invoke-direct {v8}, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;-><init>()V

    .line 278
    iget-object v9, v5, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;->data:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_2
    if-nez v8, :cond_8

    .line 285
    const-string p1, "Camera2"

    .line 287
    const-string v1, "error:channel is null!"

    .line 289
    new-array v2, v2, [Ljava/lang/Object;

    .line 291
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    return-object v0

    .line 295
    :cond_8
    aget-object v9, p1, v7

    .line 297
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 300
    move-result-object v10

    .line 301
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 304
    move-result v11

    .line 305
    if-eqz v11, :cond_9

    .line 307
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->array()[B

    .line 310
    move-result-object v10

    .line 311
    iput-object v10, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 313
    goto :goto_3

    .line 314
    :cond_9
    iget-object v11, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 316
    if-eqz v11, :cond_a

    .line 318
    array-length v11, v11

    .line 319
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    .line 322
    move-result v12

    .line 323
    if-eq v11, v12, :cond_b

    .line 325
    :cond_a
    invoke-virtual {v10}, Ljava/nio/Buffer;->remaining()I

    .line 328
    move-result v11

    .line 329
    new-array v11, v11, [B

    .line 331
    iput-object v11, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 333
    :cond_b
    iget-object v11, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 335
    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 338
    :goto_3
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getRowStride()I

    .line 341
    move-result v10

    .line 342
    iput v10, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 344
    invoke-virtual {v9}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 347
    move-result v9

    .line 348
    iput v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 350
    iget-object v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->data:[B

    .line 352
    array-length v9, v9

    .line 353
    iput v9, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 355
    invoke-static {}, Lcz;->p()Z

    .line 358
    move-result v9

    .line 359
    if-eqz v9, :cond_c

    .line 361
    const-string v9, "Camera2"

    .line 363
    const-string v10, "readImage: channel.rowStride={?},channel.pixelStride={?},channel.dataSize={?}"

    .line 365
    const/4 v11, 0x3

    .line 366
    new-array v11, v11, [Ljava/lang/Object;

    .line 368
    iget v12, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->rowStride:I

    .line 370
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 373
    move-result-object v12

    .line 374
    aput-object v12, v11, v2

    .line 376
    iget v12, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->pixelStride:I

    .line 378
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 381
    move-result-object v12

    .line 382
    aput-object v12, v11, v3

    .line 384
    iget v8, v8, Lcom/autonavi/amapauto/ar/camera/model/ImageChannel;->dataSize:I

    .line 386
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 389
    move-result-object v8

    .line 390
    const/4 v12, 0x2

    .line 391
    aput-object v8, v11, v12

    .line 393
    invoke-static {v9, v10, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    :cond_c
    add-int/lit8 v7, v7, 0x1

    .line 398
    goto/16 :goto_1

    .line 400
    :cond_d
    invoke-virtual {v1, v3}, Ldm$a;->h(I)V

    .line 403
    iget p1, p0, Lzd;->A:I

    .line 405
    if-nez p1, :cond_e

    .line 407
    iget-object p1, p0, Lzd;->z:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 409
    iput-object p1, v4, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->mFrameInfo:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 411
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 414
    move-result-wide v6

    .line 415
    iput-wide v6, p1, Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;->mEnqueueTimeStamp:J

    .line 417
    iput-object v0, p0, Lzd;->z:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 419
    iget-object p1, p0, Lzd;->F:Landroid/os/Handler;

    .line 421
    new-instance v0, Lzd$f;

    .line 423
    invoke-direct {v0, p0}, Lzd$f;-><init>(Lzd;)V

    .line 426
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 429
    :cond_e
    invoke-static {}, Lcz;->p()Z

    .line 432
    move-result p1

    .line 433
    if-eqz p1, :cond_f

    .line 435
    const-string p1, "Camera2"

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    const-string v1, "convertImageData! arImage:"

    .line 444
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    move-result-object v0

    .line 454
    new-array v1, v2, [Ljava/lang/Object;

    .line 456
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    :cond_f
    return-object v5

    .line 460
    :cond_10
    return-object v0
.end method

.method public final O([ILjava/util/ArrayList;)I
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/16 v1, 0x11

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    const/16 v1, 0x23

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 24
    const/16 v1, 0x27

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    const v1, 0x32315659

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const/4 v1, 0x3

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v1, "Camera2"

    .line 61
    const/4 v2, 0x0

    .line 62
    if-eqz p1, :cond_1

    .line 64
    array-length v3, p1

    .line 65
    if-lez v3, :cond_1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v4, "getCameraSupportFormat: length = "

    .line 74
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    array-length v4, p1

    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    new-array v4, v2, [Ljava/lang/Object;

    .line 87
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    array-length v3, p1

    .line 91
    const/4 v4, 0x0

    .line 92
    const/4 v5, 0x0

    .line 93
    :goto_0
    if-ge v4, v3, :cond_2

    .line 95
    aget v6, p1, v4

    .line 97
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v7

    .line 101
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 104
    move-result v7

    .line 105
    if-eqz v7, :cond_0

    .line 107
    const/4 v7, 0x5

    .line 108
    if-ge v5, v7, :cond_0

    .line 110
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v5, v5, 0x1

    .line 119
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    const-string p1, "no srcFormats!"

    .line 124
    new-array p2, v2, [Ljava/lang/Object;

    .line 126
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    const/4 v5, 0x0

    .line 130
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    const-string p2, "nums:"

    .line 137
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    new-array p2, v2, [Ljava/lang/Object;

    .line 149
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    return v5
.end method

.method public P(Ljava/util/ArrayList;)J
    .locals 6

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v2

    .line 10
    if-lez v2, :cond_2

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_1

    .line 15
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v4

    .line 19
    check-cast v4, Ljava/lang/Long;

    .line 21
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 24
    move-result-wide v4

    .line 25
    add-long/2addr v0, v4

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    int-to-long v2, v2

    .line 30
    div-long/2addr v0, v2

    .line 31
    :cond_2
    return-wide v0
.end method

.method public Q()I
    .locals 4

    .line 1
    iget-object v0, p0, Lzd;->b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "cameraParam is null!"

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const-string v3, "Camera2"

    .line 12
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return v1

    .line 16
    :cond_0
    iget v0, v0, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 18
    invoke-virtual {p0, v0}, Lzd;->M(I)I

    .line 21
    move-result v0

    .line 22
    return v0
.end method

.method public R([Landroid/util/Size;II)Landroid/util/Size;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 v1, 0x0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    array-length v1, p1

    .line 7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v3, "length:"

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    const-string v3, ",sizeMap:"

    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v3, ",width:"

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, ",height:"

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 48
    new-array v3, v0, [Ljava/lang/Object;

    .line 50
    const-string v4, "Camera2"

    .line 52
    invoke-static {v4, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    if-eqz p1, :cond_5

    .line 57
    if-lez v1, :cond_5

    .line 59
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    array-length v2, p1

    .line 65
    const/4 v3, 0x0

    .line 66
    :goto_1
    if-ge v3, v2, :cond_3

    .line 68
    aget-object v5, p1, v3

    .line 70
    if-le p2, p3, :cond_1

    .line 72
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 75
    move-result v6

    .line 76
    if-lt v6, p2, :cond_2

    .line 78
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 81
    move-result v6

    .line 82
    if-lt v6, p3, :cond_2

    .line 84
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    goto :goto_2

    .line 88
    :cond_1
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    .line 91
    move-result v6

    .line 92
    if-lt v6, p3, :cond_2

    .line 94
    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    .line 97
    move-result v6

    .line 98
    if-lt v6, p2, :cond_2

    .line 100
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string p3, "size:"

    .line 113
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 119
    move-result p3

    .line 120
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object p2

    .line 127
    new-array p3, v0, [Ljava/lang/Object;

    .line 129
    invoke-static {v4, p2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 135
    move-result p2

    .line 136
    if-lez p2, :cond_4

    .line 138
    new-instance p1, Lzd$a;

    .line 140
    invoke-direct {p1, p0}, Lzd$a;-><init>(Lzd;)V

    .line 143
    invoke-static {v1, p1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    .line 146
    move-result-object p1

    .line 147
    check-cast p1, Landroid/util/Size;

    .line 149
    return-object p1

    .line 150
    :cond_4
    aget-object p1, p1, v0

    .line 152
    return-object p1

    .line 153
    :cond_5
    new-instance p1, Landroid/util/Size;

    .line 155
    invoke-direct {p1, p2, p3}, Landroid/util/Size;-><init>(II)V

    .line 158
    return-object p1
.end method

.method public S(Ljava/util/ArrayList;)F
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    const-wide/16 v3, 0x3e8

    .line 9
    sub-long/2addr v1, v3

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v3

    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v5, "timeCount:"

    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const/4 v5, 0x0

    .line 32
    new-array v6, v5, [Ljava/lang/Object;

    .line 34
    const-string v7, "Camera2"

    .line 36
    invoke-static {v7, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const/4 v4, 0x2

    .line 40
    if-lt v3, v4, :cond_8

    .line 42
    add-int/lit8 v6, v3, -0x1

    .line 44
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    move-result-object v8

    .line 48
    check-cast v8, Ljava/lang/Long;

    .line 50
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 53
    move-result-wide v8

    .line 54
    cmp-long v10, v8, v1

    .line 56
    if-gez v10, :cond_0

    .line 58
    goto/16 :goto_5

    .line 60
    :cond_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Ljava/lang/Long;

    .line 66
    const-wide/16 v8, 0x0

    .line 68
    if-eqz v6, :cond_1

    .line 70
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 73
    move-result-wide v10

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-wide v10, v8

    .line 76
    :goto_0
    sub-int/2addr v3, v4

    .line 77
    move-wide v12, v8

    .line 78
    const/4 v4, 0x0

    .line 79
    :goto_1
    if-ltz v3, :cond_4

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Ljava/lang/Long;

    .line 87
    if-eqz v6, :cond_2

    .line 89
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 92
    move-result-wide v14

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-wide v14, v8

    .line 95
    :goto_2
    cmp-long v6, v14, v1

    .line 97
    if-ltz v6, :cond_3

    .line 99
    add-int/lit8 v4, v4, 0x1

    .line 101
    add-int/lit8 v3, v3, -0x1

    .line 103
    move-wide v12, v14

    .line 104
    goto :goto_1

    .line 105
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 107
    goto :goto_3

    .line 108
    :cond_4
    const/4 v3, 0x0

    .line 109
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    const-string v2, "firstValid:"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 122
    const-string v2, ", fpsCount:"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    const-string v2, ", lastValid:"

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, ", validIndex:"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    move-result-object v1

    .line 150
    new-array v2, v5, [Ljava/lang/Object;

    .line 152
    invoke-static {v7, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    if-lez v3, :cond_5

    .line 157
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object v0

    .line 161
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_5

    .line 167
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    add-int/lit8 v5, v5, 0x1

    .line 172
    if-ge v5, v3, :cond_5

    .line 174
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 177
    goto :goto_4

    .line 178
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 180
    if-nez v4, :cond_6

    .line 182
    return v0

    .line 183
    :cond_6
    sub-long/2addr v10, v12

    .line 184
    cmp-long v1, v10, v8

    .line 186
    if-nez v1, :cond_7

    .line 188
    return v0

    .line 189
    :cond_7
    int-to-double v0, v4

    .line 190
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 195
    mul-double v0, v0, v2

    .line 197
    long-to-double v2, v10

    .line 198
    div-double/2addr v0, v2

    .line 199
    double-to-float v0, v0

    .line 200
    return v0

    .line 201
    :cond_8
    :goto_5
    const-string v0, "have no enough time"

    .line 203
    new-array v1, v5, [Ljava/lang/Object;

    .line 205
    invoke-static {v7, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    const/4 v0, 0x0

    .line 209
    return v0
.end method

.method public final T()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lzd;->s:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lzd;->X()V

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;->notifyCameraClosed()V

    .line 12
    invoke-virtual {p0}, Lzd;->closeCamera()Z

    .line 15
    :goto_0
    return-void
.end method

.method public U(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string v0, "Camera2"

    .line 6
    const-string v1, "camera2 initImageReaderBuilder"

    .line 8
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public final V()Z
    .locals 10

    .line 1
    const-string v0, "3"

    .line 3
    iget-object v1, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 5
    const-string v2, "Camera2"

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 10
    const-string v0, "manager is null!"

    .line 12
    new-array v1, v3, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v1, 0x1

    .line 19
    :try_start_0
    invoke-static {}, Lzm;->d()Lzm;

    .line 22
    move-result-object v4

    .line 23
    sget-object v5, Lzm;->h:Ljava/lang/String;

    .line 25
    invoke-virtual {v4, v5, v0}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    const-string v6, "customCameraId:"

    .line 36
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v5

    .line 46
    new-array v6, v3, [Ljava/lang/Object;

    .line 48
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 54
    move-result v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    const-string v5, "previewSize:"

    .line 57
    const-string v6, "characteristics is null!"

    .line 59
    if-nez v0, :cond_3

    .line 61
    :try_start_1
    iget-object v0, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 63
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 69
    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 71
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 77
    if-eqz v0, :cond_1

    .line 79
    iget-object v6, p0, Lzd;->b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 81
    if-eqz v6, :cond_1

    .line 83
    invoke-virtual {p0}, Lzd;->Q()I

    .line 86
    move-result v6

    .line 87
    invoke-virtual {v0, v6}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 90
    move-result-object v0

    .line 91
    iget-object v6, p0, Lzd;->b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 93
    iget v7, v6, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 95
    iget v6, v6, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 97
    invoke-virtual {p0, v0, v7, v6}, Lzd;->R([Landroid/util/Size;II)Landroid/util/Size;

    .line 100
    move-result-object v0

    .line 101
    iput-object v0, p0, Lzd;->g:Landroid/util/Size;

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    iget-object v5, p0, Lzd;->g:Landroid/util/Size;

    .line 113
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    new-array v5, v3, [Ljava/lang/Object;

    .line 122
    invoke-static {v2, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    :cond_1
    iput-object v4, p0, Lzd;->C:Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    const-string v5, "use the custom Id,  currentCameraId:"

    .line 134
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v5, p0, Lzd;->C:Ljava/lang/String;

    .line 139
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object v0

    .line 146
    new-array v5, v3, [Ljava/lang/Object;

    .line 148
    invoke-static {v2, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object v0, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 153
    iget-object v5, p0, Lzd;->I:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 155
    iget-object v6, p0, Lzd;->F:Landroid/os/Handler;

    .line 157
    invoke-virtual {v0, v4, v5, v6}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 160
    return v1

    .line 161
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 163
    invoke-static {v2, v6, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    :cond_3
    iget-object v0, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 168
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 172
    array-length v4, v0

    .line 173
    const/4 v7, 0x0

    .line 174
    :goto_0
    if-ge v7, v4, :cond_7

    .line 176
    aget-object v8, v0, v7

    .line 178
    iget-object v9, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 180
    invoke-virtual {v9, v8}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 183
    move-result-object v9

    .line 184
    if-eqz v9, :cond_6

    .line 186
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 188
    invoke-virtual {v9, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 191
    move-result-object v0

    .line 192
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 194
    if-eqz v0, :cond_4

    .line 196
    iget-object v4, p0, Lzd;->b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 198
    if-eqz v4, :cond_4

    .line 200
    invoke-virtual {p0}, Lzd;->Q()I

    .line 203
    move-result v4

    .line 204
    invoke-virtual {v0, v4}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    .line 207
    move-result-object v0

    .line 208
    iget-object v4, p0, Lzd;->b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 210
    iget v6, v4, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 212
    iget v4, v4, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 214
    invoke-virtual {p0, v0, v6, v4}, Lzd;->R([Landroid/util/Size;II)Landroid/util/Size;

    .line 217
    move-result-object v0

    .line 218
    iput-object v0, p0, Lzd;->g:Landroid/util/Size;

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    .line 222
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    iget-object v4, p0, Lzd;->g:Landroid/util/Size;

    .line 230
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    new-array v4, v3, [Ljava/lang/Object;

    .line 239
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :cond_4
    invoke-virtual {p0}, Lo;->l()Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    if-eqz v0, :cond_5

    .line 248
    invoke-virtual {p0}, Lo;->l()Ljava/lang/String;

    .line 251
    move-result-object v8

    .line 252
    :cond_5
    iget-object v0, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 254
    iput-object v8, v0, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->cameraId:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    .line 258
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    const-string v4, "cameraId:"

    .line 263
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v0

    .line 273
    new-array v4, v3, [Ljava/lang/Object;

    .line 275
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 280
    iget-object v4, p0, Lzd;->I:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 282
    iget-object v5, p0, Lzd;->F:Landroid/os/Handler;

    .line 284
    invoke-virtual {v0, v8, v4, v5}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 287
    goto :goto_1

    .line 288
    :cond_6
    new-array v8, v3, [Ljava/lang/Object;

    .line 290
    invoke-static {v2, v6, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 293
    add-int/lit8 v7, v7, 0x1

    .line 295
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    new-instance v4, Ljava/lang/StringBuilder;

    .line 299
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    const-string v5, "exception:"

    .line 304
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v0

    .line 318
    new-array v3, v3, [Ljava/lang/Object;

    .line 320
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    goto :goto_1

    .line 324
    :catch_1
    move-exception v0

    .line 325
    new-instance v4, Ljava/lang/StringBuilder;

    .line 327
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    const-string v5, "CameraAccessException:"

    .line 332
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 338
    move-result-object v0

    .line 339
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    new-array v3, v3, [Ljava/lang/Object;

    .line 348
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    :cond_7
    :goto_1
    return v1
.end method

.method public final W()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 12

    .line 1
    iget v0, p0, Lzd;->A:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    if-nez v0, :cond_5

    .line 9
    iget-object v0, p0, Lzd;->j:Ldm;

    .line 11
    const/4 v5, 0x1

    .line 12
    invoke-virtual {v0, v5}, Ldm;->b(I)Ldm$a;

    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 18
    const-string v0, "Camera2"

    .line 20
    const-string v6, "curImageInfo is null!"

    .line 22
    new-array v7, v4, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    move-result-wide v6

    .line 31
    iget-object v0, p0, Lzd;->q:Ljava/lang/Object;

    .line 33
    monitor-enter v0

    .line 34
    :try_start_0
    iget-object v8, p0, Lzd;->q:Ljava/lang/Object;

    .line 36
    const-wide/16 v9, 0x12c

    .line 38
    invoke-virtual {v8, v9, v10}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception v1

    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v8

    .line 45
    :try_start_1
    const-string v9, "Camera2"

    .line 47
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 50
    move-result-object v10

    .line 51
    new-array v11, v4, [Ljava/lang/Object;

    .line 53
    invoke-static {v9, v10, v8, v11}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    monitor-exit v0

    .line 57
    goto :goto_2

    .line 58
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    throw v1

    .line 60
    :cond_0
    move-wide v6, v2

    .line 61
    :goto_2
    cmp-long v0, v6, v2

    .line 63
    if-eqz v0, :cond_1

    .line 65
    const-string v0, "Camera2"

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v3, "wait time:"

    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    move-result-wide v8

    .line 81
    sub-long/2addr v8, v6

    .line 82
    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 89
    new-array v3, v4, [Ljava/lang/Object;

    .line 91
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lzd;->j:Ldm;

    .line 96
    invoke-virtual {v0, v5}, Ldm;->b(I)Ldm$a;

    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lzd;->l:Ldm$a;

    .line 102
    if-nez v0, :cond_2

    .line 104
    const-string v0, "Camera2"

    .line 106
    const-string v2, "after wait, get the null image"

    .line 108
    new-array v3, v4, [Ljava/lang/Object;

    .line 110
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-object v1

    .line 114
    :cond_2
    invoke-virtual {v0}, Ldm$a;->d()Ljava/lang/Object;

    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 120
    iput-object v0, p0, Lzd;->k:Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 122
    if-nez v0, :cond_3

    .line 124
    return-object v1

    .line 125
    :cond_3
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->mFrameInfo:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    move-result-wide v1

    .line 131
    iput-wide v1, v0, Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;->mDequeueTimeStamp:J

    .line 133
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 135
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->frameInfos:Ljava/util/ArrayList;

    .line 137
    iget-object v1, p0, Lzd;->k:Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 139
    iget-object v1, v1, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->mFrameInfo:Lcom/autonavi/amapauto/ar/camera/model/ArCameraFrameInfo;

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 146
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->frameInfos:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 151
    move-result v0

    .line 152
    const/16 v1, 0x1e

    .line 154
    if-le v0, v1, :cond_4

    .line 156
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 158
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->frameInfos:Ljava/util/ArrayList;

    .line 160
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 163
    :cond_4
    iget-object v0, p0, Lzd;->l:Ldm$a;

    .line 165
    const/4 v1, 0x2

    .line 166
    invoke-virtual {v0, v1}, Ldm$a;->h(I)V

    .line 169
    const-string v0, "Camera2"

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    const-string v2, "readImage: imageInfo = "

    .line 178
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget-object v2, p0, Lzd;->k:Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 183
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    new-array v2, v4, [Ljava/lang/Object;

    .line 192
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lzd;->k:Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 197
    iget-object v0, v0, Lcom/autonavi/amapauto/ar/camera/model/ArImage;->imageInfo:Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 199
    return-object v0

    .line 200
    :cond_5
    iget-object v0, p0, Lzd;->f:Ljava/lang/Object;

    .line 202
    monitor-enter v0

    .line 203
    :try_start_2
    iget-object v5, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 205
    if-eqz v5, :cond_8

    .line 207
    invoke-virtual {v5}, Landroid/media/ImageReader;->acquireNextImage()Landroid/media/Image;

    .line 210
    move-result-object v5

    .line 211
    const-string v6, "Camera2"

    .line 213
    new-instance v7, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    const-string v8, "requestImage image= "

    .line 220
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    move-result-object v7

    .line 230
    new-array v8, v4, [Ljava/lang/Object;

    .line 232
    invoke-static {v6, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    if-eqz v5, :cond_8

    .line 237
    iget-wide v6, p0, Lzd;->t:J

    .line 239
    cmp-long v1, v6, v2

    .line 241
    if-nez v1, :cond_6

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 246
    move-result-wide v6

    .line 247
    iput-wide v6, p0, Lzd;->t:J

    .line 249
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 252
    move-result-wide v6

    .line 253
    iget-wide v8, p0, Lzd;->t:J

    .line 255
    sub-long/2addr v6, v8

    .line 256
    const-wide/16 v8, 0x3e8

    .line 258
    cmp-long v1, v6, v8

    .line 260
    if-gez v1, :cond_7

    .line 262
    iget-wide v1, p0, Lzd;->u:J

    .line 264
    const-wide/16 v3, 0x1

    .line 266
    add-long/2addr v1, v3

    .line 267
    iput-wide v1, p0, Lzd;->u:J

    .line 269
    goto :goto_3

    .line 270
    :cond_7
    const-string v1, "Camera2"

    .line 272
    new-instance v6, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v7, "onImageAvailable FPS:"

    .line 279
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-wide v7, p0, Lzd;->u:J

    .line 284
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object v6

    .line 291
    new-array v7, v4, [Ljava/lang/Object;

    .line 293
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    iput-wide v2, p0, Lzd;->u:J

    .line 298
    iput-wide v2, p0, Lzd;->t:J

    .line 300
    invoke-virtual {p0}, Lzd;->K()V

    .line 303
    const-string v1, "Camera2"

    .line 305
    new-instance v2, Ljava/lang/StringBuilder;

    .line 307
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    const-string v3, "realGetImageFps:"

    .line 312
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    iget-object v3, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 317
    iget v3, v3, Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;->realGetImageFps:F

    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v2

    .line 326
    new-array v3, v4, [Ljava/lang/Object;

    .line 328
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :goto_3
    invoke-virtual {p0, v5}, Lzd;->N(Landroid/media/Image;)Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v5}, Landroid/media/Image;->close()V

    .line 338
    monitor-exit v0

    .line 339
    return-object v1

    .line 340
    :cond_8
    monitor-exit v0

    .line 341
    return-object v1

    .line 342
    :catchall_1
    move-exception v1

    .line 343
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    throw v1
.end method

.method public X()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Camera2"

    .line 6
    const-string v2, "restartCamera start"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzd;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-ne v1, v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lzd;->closeCamera()Z

    .line 23
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;->notifyCameraRestartBegin()V

    .line 26
    iget-object v0, p0, Lzd;->F:Landroid/os/Handler;

    .line 28
    new-instance v1, Lzd$e;

    .line 30
    invoke-direct {v1, p0}, Lzd$e;-><init>(Lzd;)V

    .line 33
    const-wide/16 v2, 0x2710

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 38
    :cond_0
    return-void
.end method

.method public final Y()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Camera2"

    .line 6
    const-string v3, "startPreview: "

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    :try_start_0
    iget-object v3, p0, Lzd;->d:Landroid/hardware/camera2/CameraDevice;

    .line 14
    if-nez v3, :cond_0

    .line 16
    const-string v3, "curCamera is null"

    .line 18
    new-array v4, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v3, p0, Lzd;->g:Landroid/util/Size;

    .line 26
    if-nez v3, :cond_1

    .line 28
    const-string v3, "previewSize is null"

    .line 30
    new-array v4, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void

    .line 36
    :cond_1
    iget-object v4, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 38
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 41
    move-result v3

    .line 42
    iput v3, v4, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->outWidth:I

    .line 44
    iget-object v3, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 46
    iget-object v4, p0, Lzd;->g:Landroid/util/Size;

    .line 48
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 51
    move-result v4

    .line 52
    iput v4, v3, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->outHeight:I

    .line 54
    iget-object v3, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 56
    invoke-virtual {p0}, Lzd;->Q()I

    .line 59
    move-result v4

    .line 60
    iput v4, v3, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->outFormat:I

    .line 62
    iget-object v3, p0, Lzd;->g:Landroid/util/Size;

    .line 64
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 67
    move-result v3

    .line 68
    iget-object v4, p0, Lzd;->g:Landroid/util/Size;

    .line 70
    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    .line 73
    move-result v4

    .line 74
    invoke-virtual {p0}, Lzd;->Q()I

    .line 77
    move-result v5

    .line 78
    const/4 v6, 0x5

    .line 79
    invoke-static {v3, v4, v5, v6}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    .line 82
    move-result-object v3

    .line 83
    iput-object v3, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    const-string v4, "startPreview: imageReader = "

    .line 92
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v4, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 97
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v3

    .line 104
    new-array v4, v0, [Ljava/lang/Object;

    .line 106
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v3, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 111
    if-nez v3, :cond_2

    .line 113
    const-string v3, "imageReader is null"

    .line 115
    new-array v4, v0, [Ljava/lang/Object;

    .line 117
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void

    .line 121
    :cond_2
    iget-object v3, p0, Lzd;->d:Landroid/hardware/camera2/CameraDevice;

    .line 123
    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 126
    move-result-object v3

    .line 127
    if-nez v3, :cond_3

    .line 129
    const-string v3, "builder is null"

    .line 131
    new-array v4, v0, [Ljava/lang/Object;

    .line 133
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return-void

    .line 137
    :cond_3
    invoke-virtual {p0, v3}, Lzd;->U(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 140
    iget-object v4, p0, Lzd;->h:Landroid/view/Surface;

    .line 142
    if-nez v4, :cond_4

    .line 144
    iget-object v4, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 146
    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 149
    move-result-object v4

    .line 150
    :cond_4
    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 153
    iget-object v4, p0, Lzd;->d:Landroid/hardware/camera2/CameraDevice;

    .line 155
    new-array v5, v1, [Landroid/view/Surface;

    .line 157
    iget-object v6, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 159
    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    .line 162
    move-result-object v6

    .line 163
    aput-object v6, v5, v0

    .line 165
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 168
    move-result-object v5

    .line 169
    new-instance v6, Lzd$c;

    .line 171
    invoke-direct {v6, p0, v3}, Lzd$c;-><init>(Lzd;Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 174
    iget-object v3, p0, Lzd;->F:Landroid/os/Handler;

    .line 176
    invoke-virtual {v4, v5, v6, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    goto :goto_0

    .line 180
    :catch_0
    move-exception v3

    .line 181
    new-array v1, v1, [Ljava/lang/Object;

    .line 183
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 186
    move-result-object v3

    .line 187
    aput-object v3, v1, v0

    .line 189
    const-string v0, "startPreview: stack = {?}"

    .line 191
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    :goto_0
    iget v0, p0, Lzd;->A:I

    .line 196
    if-nez v0, :cond_5

    .line 198
    iget-object v0, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 200
    if-eqz v0, :cond_5

    .line 202
    new-instance v1, Lzd$d;

    .line 204
    invoke-direct {v1, p0}, Lzd$d;-><init>(Lzd;)V

    .line 207
    iget-object v2, p0, Lzd;->F:Landroid/os/Handler;

    .line 209
    invoke-virtual {v0, v1, v2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 212
    :cond_5
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lzd;->D:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "openCamera isCameraOpen:"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v0, p0, Lzd;->r:Z

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    const-string v1, "Camera2"

    .line 25
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-boolean p1, p0, Lzd;->r:Z

    .line 30
    if-eqz p1, :cond_0

    .line 32
    const/4 p1, 0x1

    .line 33
    return p1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lzd;->V()Z

    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public c(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 5

    .line 1
    iput-object p1, p0, Lzd;->b:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 3
    const/4 v0, 0x0

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const-string v2, "Camera2"

    .line 8
    const-string v3, "initCamera:"

    .line 10
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    if-eqz p1, :cond_0

    .line 15
    iget-object v1, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 17
    iget v4, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->format:I

    .line 19
    iput v4, v1, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->inFormat:I

    .line 21
    iget v4, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 23
    iput v4, v1, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->inWidth:I

    .line 25
    iget v4, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 27
    iput v4, v1, Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;->inHeight:I

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    :cond_0
    const/4 p1, 0x1

    .line 50
    return p1
.end method

.method public closeCamera()Z
    .locals 8

    .line 1
    const-string v0, "Camera2"

    .line 3
    const-string v1, "closeCamera: "

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x0

    .line 12
    :try_start_0
    iget-object v1, p0, Lzd;->i:Landroid/hardware/camera2/CameraCaptureSession;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    .line 19
    iget-object v1, p0, Lzd;->i:Landroid/hardware/camera2/CameraCaptureSession;

    .line 21
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V

    .line 24
    iget-object v1, p0, Lzd;->i:Landroid/hardware/camera2/CameraCaptureSession;

    .line 26
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 29
    iput-object v0, p0, Lzd;->i:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    const-string v3, "Camera2"

    .line 35
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v5, "stopRepeating: stack = "

    .line 42
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    new-array v4, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v3, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    :cond_0
    :goto_0
    const-string v1, "Camera2"

    .line 63
    const-string v3, "closeCamera"

    .line 65
    new-array v4, v2, [Ljava/lang/Object;

    .line 67
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :try_start_1
    iget-object v1, p0, Lzd;->d:Landroid/hardware/camera2/CameraDevice;

    .line 72
    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 77
    iput-object v0, p0, Lzd;->d:Landroid/hardware/camera2/CameraDevice;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 79
    goto :goto_1

    .line 80
    :catch_1
    move-exception v1

    .line 81
    const-string v3, "Camera2"

    .line 83
    new-instance v4, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    const-string v5, "closeCamera: stack = "

    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v1

    .line 104
    new-array v4, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {v3, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    :cond_1
    :goto_1
    const-string v1, "Camera2"

    .line 111
    const-string v3, "close imageReader"

    .line 113
    new-array v4, v2, [Ljava/lang/Object;

    .line 115
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    const-wide/16 v3, 0x0

    .line 120
    :try_start_2
    iget-object v1, p0, Lzd;->f:Ljava/lang/Object;

    .line 122
    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 123
    :try_start_3
    iput-wide v3, p0, Lzd;->t:J

    .line 125
    iput-wide v3, p0, Lzd;->u:J

    .line 127
    iget-object v5, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 129
    if-eqz v5, :cond_2

    .line 131
    invoke-virtual {v5}, Landroid/media/ImageReader;->close()V

    .line 134
    iput-object v0, p0, Lzd;->e:Landroid/media/ImageReader;

    .line 136
    :cond_2
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 137
    :try_start_4
    const-string v1, "Camera2"

    .line 139
    const-string v5, "closeCamera end!"

    .line 141
    new-array v6, v2, [Ljava/lang/Object;

    .line 143
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 146
    iput-boolean v2, p0, Lzd;->r:Z

    .line 148
    iput-boolean v2, p0, Lzd;->s:Z

    .line 150
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;->notifyCameraRestartEnd()V

    .line 153
    iget-object v1, p0, Lzd;->F:Landroid/os/Handler;

    .line 155
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 160
    :cond_3
    iget-object v1, p0, Lzd;->n:Ljava/lang/Object;

    .line 162
    monitor-enter v1

    .line 163
    :try_start_5
    iget-object v0, p0, Lzd;->o:Ljava/util/ArrayList;

    .line 165
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 168
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 169
    iget-object v0, p0, Lzd;->m:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 179
    iput-wide v3, p0, Lzd;->v:J

    .line 181
    iput-wide v3, p0, Lzd;->w:J

    .line 183
    iget-object v0, p0, Lzd;->q:Ljava/lang/Object;

    .line 185
    monitor-enter v0

    .line 186
    :try_start_6
    iget-object v1, p0, Lzd;->j:Ldm;

    .line 188
    invoke-virtual {v1}, Ldm;->a()V

    .line 191
    iget-object v1, p0, Lzd;->q:Ljava/lang/Object;

    .line 193
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 196
    monitor-exit v0

    .line 197
    goto :goto_2

    .line 198
    :catchall_0
    move-exception v1

    .line 199
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 200
    throw v1

    .line 201
    :catchall_1
    move-exception v0

    .line 202
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 203
    throw v0

    .line 204
    :catchall_2
    move-exception v5

    .line 205
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 206
    :try_start_9
    throw v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 207
    :catchall_3
    move-exception v1

    .line 208
    goto :goto_3

    .line 209
    :catch_2
    move-exception v1

    .line 210
    :try_start_a
    const-string v5, "Camera2"

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    .line 214
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    const-string v7, "closeImageReader: stack = "

    .line 219
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v1

    .line 233
    new-array v6, v2, [Ljava/lang/Object;

    .line 235
    invoke-static {v5, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 238
    iput-boolean v2, p0, Lzd;->r:Z

    .line 240
    iput-boolean v2, p0, Lzd;->s:Z

    .line 242
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;->notifyCameraRestartEnd()V

    .line 245
    iget-object v1, p0, Lzd;->F:Landroid/os/Handler;

    .line 247
    if-eqz v1, :cond_4

    .line 249
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 252
    :cond_4
    iget-object v1, p0, Lzd;->n:Ljava/lang/Object;

    .line 254
    monitor-enter v1

    .line 255
    :try_start_b
    iget-object v0, p0, Lzd;->o:Ljava/util/ArrayList;

    .line 257
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 260
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 261
    iget-object v0, p0, Lzd;->m:Ljava/util/ArrayList;

    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 266
    iget-object v0, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 268
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iput-wide v3, p0, Lzd;->v:J

    .line 273
    iput-wide v3, p0, Lzd;->w:J

    .line 275
    iget-object v0, p0, Lzd;->q:Ljava/lang/Object;

    .line 277
    monitor-enter v0

    .line 278
    :try_start_c
    iget-object v1, p0, Lzd;->j:Ldm;

    .line 280
    invoke-virtual {v1}, Ldm;->a()V

    .line 283
    iget-object v1, p0, Lzd;->q:Ljava/lang/Object;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 288
    monitor-exit v0

    .line 289
    :goto_2
    const/4 v0, 0x1

    .line 290
    return v0

    .line 291
    :catchall_4
    move-exception v1

    .line 292
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 293
    throw v1

    .line 294
    :catchall_5
    move-exception v0

    .line 295
    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 296
    throw v0

    .line 297
    :goto_3
    iput-boolean v2, p0, Lzd;->r:Z

    .line 299
    iput-boolean v2, p0, Lzd;->s:Z

    .line 301
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;->notifyCameraRestartEnd()V

    .line 304
    iget-object v2, p0, Lzd;->F:Landroid/os/Handler;

    .line 306
    if-eqz v2, :cond_5

    .line 308
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 311
    :cond_5
    iget-object v0, p0, Lzd;->n:Ljava/lang/Object;

    .line 313
    monitor-enter v0

    .line 314
    :try_start_e
    iget-object v2, p0, Lzd;->o:Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 319
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 320
    iget-object v0, p0, Lzd;->m:Ljava/util/ArrayList;

    .line 322
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 325
    iget-object v0, p0, Lzd;->p:Ljava/util/ArrayList;

    .line 327
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 330
    iput-wide v3, p0, Lzd;->v:J

    .line 332
    iput-wide v3, p0, Lzd;->w:J

    .line 334
    iget-object v2, p0, Lzd;->q:Ljava/lang/Object;

    .line 336
    monitor-enter v2

    .line 337
    :try_start_f
    iget-object v0, p0, Lzd;->j:Ldm;

    .line 339
    invoke-virtual {v0}, Ldm;->a()V

    .line 342
    iget-object v0, p0, Lzd;->q:Ljava/lang/Object;

    .line 344
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 347
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 348
    throw v1

    .line 349
    :catchall_6
    move-exception v0

    .line 350
    :try_start_10
    monitor-exit v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    .line 351
    throw v0

    .line 352
    :catchall_7
    move-exception v1

    .line 353
    :try_start_11
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    .line 354
    throw v1
.end method

.method public d()Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lzd;->y:Lcom/autonavi/amapauto/ar/camera/model/ArCameraBaseInfo;

    .line 3
    return-object v0
.end method

.method public e()V
    .locals 6

    .line 1
    iget-object v0, p0, Lzd;->l:Ldm$a;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ldm$a;->e()I

    .line 9
    move-result v0

    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    iget-object v0, p0, Lzd;->l:Ldm$a;

    .line 15
    invoke-virtual {v0, v1}, Ldm$a;->h(I)V

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v2, "releaseImageInfo! curImageInfo:"

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget-object v2, p0, Lzd;->k:Lcom/autonavi/amapauto/ar/camera/model/ArImage;

    .line 30
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v2, ", reqConsumeTime:"

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 41
    move-result-wide v2

    .line 42
    iget-wide v4, p0, Lzd;->w:J

    .line 44
    sub-long/2addr v2, v4

    .line 45
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    const-string v2, "Camera2"

    .line 56
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public f()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "isCameraOpen:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Lzd;->r:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const-string v2, "Camera2"

    .line 25
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-boolean v0, p0, Lzd;->r:Z

    .line 30
    return v0
.end method

.method public g()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Camera2"

    .line 6
    const-string v3, "unInitCamera"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-object v1, p0, Lzd;->h:Landroid/view/Surface;

    .line 14
    return v0
.end method

.method public h()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 4

    .line 1
    const-string v0, "Camera2"

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "requestCameraData isCameraOpen:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-boolean v2, p0, Lzd;->r:Z

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-boolean v0, p0, Lzd;->r:Z

    .line 30
    if-nez v0, :cond_0

    .line 32
    const/4 v0, 0x0

    .line 33
    return-object v0

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v0

    .line 38
    iput-wide v0, p0, Lzd;->w:J

    .line 40
    iget-object v0, p0, Lzd;->n:Ljava/lang/Object;

    .line 42
    monitor-enter v0

    .line 43
    :try_start_0
    iget-object v1, p0, Lzd;->o:Ljava/util/ArrayList;

    .line 45
    iget-wide v2, p0, Lzd;->w:J

    .line 47
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    invoke-virtual {p0}, Lzd;->W()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;

    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    throw v1
.end method

.method public i(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    .line 3
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    iput-object v0, p0, Lzd;->h:Landroid/view/Surface;

    .line 8
    return-void
.end method

.method public j(Ljava/util/ArrayList;)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Camera2"

    .line 6
    const-string v3, "getCameraSupportFormat: start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    iget-object v1, p0, Lzd;->C:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    const-string v3, "getCameraSupportFormat: formats = "

    .line 19
    const-string v4, "getCameraSupportFormat: target formats = "

    .line 21
    if-nez v1, :cond_1

    .line 23
    :try_start_1
    iget-object v1, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 25
    iget-object v5, p0, Lzd;->C:Ljava/lang/String;

    .line 27
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 33
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 35
    invoke-virtual {v1, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 41
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_0

    .line 49
    array-length v5, v1

    .line 50
    if-lez v5, :cond_0

    .line 52
    new-instance v5, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    new-array v5, v0, [Ljava/lang/Object;

    .line 69
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {p0, v1, p1}, Lzd;->O([ILjava/util/ArrayList;)I

    .line 75
    move-result v1
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    new-array v3, v0, [Ljava/lang/Object;

    .line 93
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_2 .. :try_end_2} :catch_0

    .line 96
    goto :goto_2

    .line 97
    :catch_0
    move-exception p1

    .line 98
    goto :goto_1

    .line 99
    :cond_0
    const/4 v1, 0x0

    .line 100
    goto :goto_2

    .line 101
    :cond_1
    :try_start_3
    iget-object v1, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 103
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    array-length v5, v1

    .line 108
    const/4 v6, 0x0

    .line 109
    :goto_0
    if-ge v6, v5, :cond_0

    .line 111
    aget-object v7, v1, v6

    .line 113
    iget-object v8, p0, Lzd;->c:Landroid/hardware/camera2/CameraManager;

    .line 115
    invoke-virtual {v8, v7}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    .line 118
    move-result-object v7

    .line 119
    if-eqz v7, :cond_2

    .line 121
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 123
    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    .line 126
    move-result-object v7

    .line 127
    check-cast v7, Landroid/hardware/camera2/params/StreamConfigurationMap;

    .line 129
    if-eqz v7, :cond_2

    .line 131
    invoke-virtual {v7}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    .line 134
    move-result-object v7

    .line 135
    if-eqz v7, :cond_2

    .line 137
    array-length v8, v7

    .line 138
    if-lez v8, :cond_2

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v1

    .line 155
    new-array v4, v0, [Ljava/lang/Object;

    .line 157
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    invoke-virtual {p0, v7, p1}, Lzd;->O([ILjava/util/ArrayList;)I

    .line 163
    move-result v1
    :try_end_3
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_3 .. :try_end_3} :catch_1

    .line 164
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    .line 166
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    new-array v3, v0, [Ljava/lang/Object;

    .line 181
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_4} :catch_0

    .line 184
    goto :goto_2

    .line 185
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 187
    goto :goto_0

    .line 188
    :catch_1
    move-exception p1

    .line 189
    const/4 v1, 0x0

    .line 190
    :goto_1
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 193
    move-result-object v3

    .line 194
    new-array v4, v0, [Ljava/lang/Object;

    .line 196
    invoke-static {v2, v3, p1, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 199
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    const-string v3, "getCameraSupportFormat: supportNums = "

    .line 206
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    new-array v0, v0, [Ljava/lang/Object;

    .line 218
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    return v1
.end method

.method public k()Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lzd;->x:Lcom/autonavi/amapauto/ar/camera/model/ArPerfInfo;

    .line 3
    return-object v0
.end method

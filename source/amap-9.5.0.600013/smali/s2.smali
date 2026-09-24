.class public Ls2;
.super Lo;
.source "SourceFile"


# instance fields
.field public a:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

.field public b:Ljava/util/LinkedList;

.field public c:Ljava/lang/Object;

.field public d:Z

.field public e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Lcom/autonavi/amapauto/alink/IAlinkAVListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    iput-object v0, p0, Ls2;->b:Ljava/util/LinkedList;

    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Ls2;->c:Ljava/lang/Object;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Ls2;->d:Z

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 26
    iput-object v0, p0, Ls2;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    new-instance v0, Ls2$a;

    .line 30
    invoke-direct {v0, p0}, Ls2$a;-><init>(Ls2;)V

    .line 33
    iput-object v0, p0, Ls2;->f:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 35
    return-void
.end method

.method public static synthetic m(Ls2;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Ls2;->c:Ljava/lang/Object;

    .line 3
    return-object p0
.end method

.method public static synthetic n(Ls2;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Ls2;->b:Ljava/util/LinkedList;

    .line 3
    return-object p0
.end method

.method public static synthetic o(Ls2;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Ls2;->d:Z

    .line 3
    return p1
.end method

.method public static synthetic p(Ls2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ls2;->q()V

    .line 4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ls2;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 6
    return-void
.end method

.method public b(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Ls2;->d:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v1

    .line 17
    const/4 v3, 0x1

    .line 18
    aput-object v1, v0, v3

    .line 20
    const-string v1, "AlinkCamera"

    .line 22
    const-string v4, "openCamera isCameraOpen:{?},id:{?}"

    .line 24
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-boolean v0, p0, Ls2;->d:Z

    .line 29
    if-eqz v0, :cond_0

    .line 31
    return v3

    .line 32
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Ls2;->f:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 38
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerVideoListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V

    .line 41
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 48
    move-result-object v0

    .line 49
    instance-of v1, v0, Lcom/autonavi/amapauto/alink/EmptyAlientClientImpl;

    .line 51
    if-nez v1, :cond_1

    .line 53
    iget-object v1, p0, Ls2;->a:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 55
    iget v2, v1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 57
    iget v1, v1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 59
    invoke-interface {v0, p1, v2, v1}, Lcom/autonavi/amapauto/alink/IAlinkClient;->openCamera(III)V

    .line 62
    return v3

    .line 63
    :cond_1
    return v2
.end method

.method public c(Lcom/autonavi/amapauto/ar/camera/ArCameraParam;)Z
    .locals 4

    .line 1
    iput-object p1, p0, Ls2;->a:Lcom/autonavi/amapauto/ar/camera/ArCameraParam;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    const-string v2, "AlinkCamera"

    .line 11
    const-string v3, "initCamera:{?}"

    .line 13
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 23
    move-result-object v1

    .line 24
    iget v2, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->width:I

    .line 26
    iget p1, p1, Lcom/autonavi/amapauto/ar/camera/ArCameraParam;->height:I

    .line 28
    invoke-interface {v1, v2, p1}, Lcom/autonavi/amapauto/alink/IAlinkClient;->initCameraParam(II)V

    .line 31
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 34
    move-result-object p1

    .line 35
    iget-object v1, p0, Ls2;->f:Lcom/autonavi/amapauto/alink/IAlinkAVListener;

    .line 37
    invoke-virtual {p1, v1}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerVideoListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V

    .line 40
    return v0
.end method

.method public closeCamera()Z
    .locals 6

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v2, v1, [Ljava/lang/Object;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v0, v2, v3

    .line 15
    const-string v4, "AlinkCamera"

    .line 17
    const-string v5, "closeCamera. alinkClient:{?} "

    .line 19
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 25
    move-result-object v2

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v2, v4}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->registerVideoListener(Lcom/autonavi/amapauto/alink/IAlinkAVListener;)V

    .line 30
    invoke-interface {v0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->closeCamera()V

    .line 33
    invoke-virtual {p0}, Ls2;->q()V

    .line 36
    iput-boolean v3, p0, Ls2;->d:Z

    .line 38
    return v1
.end method

.method public f()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Ls2;->d:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "AlinkCamera"

    .line 15
    const-string v2, "isCameraOpened:{?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Ls2;->d:Z

    .line 22
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public h()Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    .locals 8

    .line 1
    iget-object v0, p0, Ls2;->c:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    iget-object v4, p0, Ls2;->b:Ljava/util/LinkedList;

    .line 9
    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    .line 12
    move-result v4

    .line 13
    if-lt v4, v2, :cond_0

    .line 15
    iget-object v4, p0, Ls2;->b:Ljava/util/LinkedList;

    .line 17
    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 20
    move-result-object v4

    .line 21
    check-cast v4, Lcom/autonavi/amapauto/ar/camera/model/ImageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    move-object v3, v4

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :catch_0
    move-exception v4

    .line 28
    :try_start_1
    const-string v5, "AlinkCamera"

    .line 30
    const-string v6, "exception:"

    .line 32
    new-array v7, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v5, v6, v4, v7}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 37
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 38
    const-string v0, "AlinkCamera"

    .line 40
    const-string v4, "requestCameraData ,isCameraOpen:{?}, image ={?}"

    .line 42
    const/4 v5, 0x2

    .line 43
    new-array v5, v5, [Ljava/lang/Object;

    .line 45
    iget-boolean v6, p0, Ls2;->d:Z

    .line 47
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object v6

    .line 51
    aput-object v6, v5, v1

    .line 53
    aput-object v3, v5, v2

    .line 55
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-object v3

    .line 59
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw v1
.end method

.method public i(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lo;->i(Landroid/graphics/SurfaceTexture;)V

    .line 4
    return-void
.end method

.method public final q()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Ls2;->c:Ljava/lang/Object;

    .line 4
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Ls2;->b:Ljava/util/LinkedList;

    .line 7
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 10
    iget-object v2, p0, Ls2;->b:Ljava/util/LinkedList;

    .line 12
    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 15
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :try_start_2
    const-string v1, "AlinkCamera"

    .line 18
    const-string v2, "closeCamera end!"

    .line 20
    new-array v3, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 28
    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :catch_0
    move-exception v1

    .line 30
    const-string v2, "AlinkCamera"

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    const-string v4, "closeCamera: stack = "

    .line 39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    :goto_0
    return-void
.end method

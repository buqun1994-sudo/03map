.class public abstract Lcom/amap/location/support/fence/FenceLoader;
.super Lcom/amap/location/support/network/FileLoader;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FenceLoader"


# instance fields
.field private final FENCE_FILE_NAME:Ljava/lang/String;

.field private volatile mCurrentLocation:Lcom/amap/location/support/bean/location/AmapLocation;

.field private volatile mHasTryLoad:Z

.field private mLocalFenceFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/location/support/network/FileLoader;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/amap/location/support/handler/AmapLooper;)V

    const-string p1, "fence.blds"

    .line 4
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceLoader;->FENCE_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/location/support/network/FileLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    const-string p1, "fence.blds"

    .line 2
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceLoader;->FENCE_FILE_NAME:Ljava/lang/String;

    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/support/fence/FenceLoader;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/fence/FenceLoader;->fenceFileValid()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/amap/location/support/fence/FenceLoader;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/fence/FenceLoader;->mLocalFenceFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/amap/location/support/fence/FenceLoader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/fence/FenceLoader;->download()V

    .line 4
    return-void
.end method

.method private download()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/fence/FenceLoader;->isCityFence()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    const-string v0, "0"

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    :cond_0
    return-void

    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/support/fence/FenceLoader;->isCityFence()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 36
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const-string v0, ""

    .line 43
    :goto_0
    const-string v1, "fence.blds"

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/amap/location/support/network/FileLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private fenceFileValid()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/fence/FenceLoader;->isCityFence()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "fence.blds"

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amap/location/support/network/FileLoader;->getETag(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 35
    move-result v0

    .line 36
    const/4 v1, 0x1

    .line 37
    xor-int/2addr v0, v1

    .line 38
    iget-object v2, p0, Lcom/amap/location/support/fence/FenceLoader;->mLocalFenceFile:Ljava/io/File;

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 48
    if-eqz v0, :cond_1

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 v1, 0x0

    .line 52
    :goto_0
    return v1
.end method

.method private loadFence(Z)V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/amap/location/support/network/FileLoader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    new-instance v1, Lcom/amap/location/support/fence/FenceLoader$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/location/support/fence/FenceLoader$1;-><init>(Lcom/amap/location/support/fence/FenceLoader;Z)V

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public downloadFence()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/fence/FenceLoader;->download()V

    .line 4
    return-void
.end method

.method public abstract isCityFence()Z
.end method

.method public declared-synchronized loadFence()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amap/location/support/fence/FenceLoader;->loadFence(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceLoader;->mCurrentLocation:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 4
    iget-boolean p1, p0, Lcom/amap/location/support/fence/FenceLoader;->mHasTryLoad:Z

    .line 6
    if-nez p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/amap/location/support/network/FileLoader;->getUrl()Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/amap/location/support/fence/FenceLoader;->isCityFence()Z

    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 34
    const-string p1, "0"

    .line 36
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_1

    .line 46
    new-instance p1, Ljava/io/File;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    iget-object v1, p0, Lcom/amap/location/support/network/FileLoader;->mDirPath:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string v1, "/"

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdCode()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 74
    const-string v1, "fence.blds"

    .line 76
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceLoader;->mLocalFenceFile:Ljava/io/File;

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 84
    iget-object v0, p0, Lcom/amap/location/support/network/FileLoader;->mDirPath:Ljava/lang/String;

    .line 86
    const-string v1, "fence.blds"

    .line 88
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iput-object p1, p0, Lcom/amap/location/support/fence/FenceLoader;->mLocalFenceFile:Ljava/io/File;

    .line 93
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/location/support/fence/FenceLoader;->mLocalFenceFile:Ljava/io/File;

    .line 95
    if-eqz p1, :cond_2

    .line 97
    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/amap/location/support/fence/FenceLoader;->mHasTryLoad:Z

    .line 100
    invoke-direct {p0, p1}, Lcom/amap/location/support/fence/FenceLoader;->loadFence(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_2
    monitor-exit p0

    .line 104
    return-void

    .line 105
    :catchall_0
    move-exception p1

    .line 106
    monitor-exit p0

    .line 107
    throw p1
.end method

.method public abstract parseFence(Ljava/io/File;)V
.end method

.method public parseFile(Ljava/io/File;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p0, p1}, Lcom/amap/location/support/fence/FenceLoader;->parseFence(Ljava/io/File;)V

    .line 9
    :cond_1
    return-void
.end method

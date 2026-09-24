.class public Lcom/amap/location/icecream/IcecreamCone;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "icecone"


# instance fields
.field private mIcecreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

.field private mMainObject:Lcom/amap/location/icecream/interfaces/IIcecream;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init(Lcom/amap/location/support/icecream/IcecreamInfo;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamCone;->mIcecreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 5
    invoke-static {p1}, Lcom/amap/location/support/icecream/IcecreamUtils;->loadIceCreamMainClass(Lcom/amap/location/support/icecream/IcecreamInfo;)Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "icecone"

    .line 11
    if-nez v0, :cond_0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v2, "class create error:"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object p1, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 47
    instance-of v2, v0, Lcom/amap/location/icecream/interfaces/IIcecream;

    .line 49
    if-eqz v2, :cond_1

    .line 51
    check-cast v0, Lcom/amap/location/icecream/interfaces/IIcecream;

    .line 53
    iput-object v0, p0, Lcom/amap/location/icecream/IcecreamCone;->mMainObject:Lcom/amap/location/icecream/interfaces/IIcecream;

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v2, "instance create faild:"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object p1, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p1

    .line 82
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception p1

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamCone;->mIcecreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 94
    iget-object v1, v1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {p1}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p1

    .line 117
    const v0, 0x186d8

    .line 120
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 123
    move-result-object p1

    .line 124
    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 127
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCone;->mIcecreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 7
    return-object v0

    .line 8
    :cond_0
    const-string v0, "unknow"

    .line 10
    return-object v0
.end method

.method public declared-synchronized start(Lcom/amap/location/support/icecream/IcecreamInfo;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCone;->mMainObject:Lcom/amap/location/icecream/interfaces/IIcecream;

    .line 8
    if-nez v0, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/amap/location/icecream/IcecreamCone;->init(Lcom/amap/location/support/icecream/IcecreamInfo;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCone;->mMainObject:Lcom/amap/location/icecream/interfaces/IIcecream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    if-eqz v0, :cond_2

    .line 17
    :try_start_1
    invoke-interface {v0, p2}, Lcom/amap/location/icecream/interfaces/IIcecream;->start(Lorg/json/JSONObject;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p2

    .line 22
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    iget-object p1, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {p2}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 53
    move-result-object p1

    .line 54
    const p2, 0x186d9

    .line 57
    invoke-static {p2, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 60
    :cond_2
    :goto_0
    monitor-exit p0

    .line 61
    return-void

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    monitor-exit p0

    .line 64
    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamCone;->mMainObject:Lcom/amap/location/icecream/interfaces/IIcecream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    :try_start_1
    invoke-interface {v0}, Lcom/amap/location/icecream/interfaces/IIcecream;->stop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/amap/location/icecream/IcecreamCone;->mIcecreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 18
    iget-object v2, v2, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-static {v0}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 44
    move-result-object v0

    .line 45
    const v1, 0x186da

    .line 48
    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    :cond_0
    :goto_0
    monitor-exit p0

    .line 52
    return-void

    .line 53
    :catchall_1
    move-exception v0

    .line 54
    monitor-exit p0

    .line 55
    throw v0
.end method

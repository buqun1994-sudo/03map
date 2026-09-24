.class public Lcom/amap/location/f/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/amap/location/f/a/c;


# instance fields
.field private b:Lcom/amap/location/f/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static a()Lcom/amap/location/f/a/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/f/a/c;->a:Lcom/amap/location/f/a/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/amap/location/f/a/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/location/f/a/c;->a:Lcom/amap/location/f/a/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/location/f/a/c;

    invoke-direct {v1}, Lcom/amap/location/f/a/c;-><init>()V

    sput-object v1, Lcom/amap/location/f/a/c;->a:Lcom/amap/location/f/a/c;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/f/a/c;->a:Lcom/amap/location/f/a/c;

    return-object v0
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/location/f/a/b;

    .line 3
    invoke-direct {v0}, Lcom/amap/location/f/a/b;-><init>()V

    .line 6
    iput-object v0, p0, Lcom/amap/location/f/a/c;->b:Lcom/amap/location/f/a/b;

    .line 8
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/location/support/bean/AmapFps;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    sget-boolean v0, Lcom/amap/location/f/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 8
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 9
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/f/a/c;->b:Lcom/amap/location/f/a/b;

    if-nez v0, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/amap/location/f/a/c;->b()V

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/amap/location/f/a/c;->b:Lcom/amap/location/f/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/amap/location/f/a/b;->a(Lcom/amap/location/support/bean/AmapFps;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    sget-boolean v0, Lcom/amap/location/f/a/a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 13
    monitor-exit p0

    return-void

    .line 14
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/f/a/c;->b:Lcom/amap/location/f/a/b;

    if-nez v0, :cond_1

    .line 15
    invoke-direct {p0}, Lcom/amap/location/f/a/c;->b()V

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/amap/location/f/a/c;->b:Lcom/amap/location/f/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/amap/location/f/a/b;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

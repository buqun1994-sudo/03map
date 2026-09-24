.class public Lcom/amap/location/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/amap/location/b/b;


# instance fields
.field private b:Lcom/amap/location/b/c;

.field private volatile c:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/b/b;->c:Z

    .line 7
    new-instance v0, Lcom/amap/location/b/c;

    .line 9
    invoke-direct {v0}, Lcom/amap/location/b/c;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/location/b/b;->b:Lcom/amap/location/b/c;

    .line 14
    return-void
.end method

.method public static a()Lcom/amap/location/b/b;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/b/b;->a:Lcom/amap/location/b/b;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/amap/location/b/b;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/location/b/b;->a:Lcom/amap/location/b/b;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/location/b/b;

    invoke-direct {v1}, Lcom/amap/location/b/b;-><init>()V

    sput-object v1, Lcom/amap/location/b/b;->a:Lcom/amap/location/b/b;

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
    sget-object v0, Lcom/amap/location/b/b;->a:Lcom/amap/location/b/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/amap/location/b/b/a;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amap/location/b/b;->b:Lcom/amap/location/b/c;

    invoke-virtual {v0, p1}, Lcom/amap/location/b/c;->a(Lcom/amap/location/b/b/a;)V

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/b/b;->c:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/b/b;->b:Lcom/amap/location/b/c;

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/b/c;->a()V

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/amap/location/b/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

.method public declared-synchronized c()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/b/b;->c:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/b/b;->b:Lcom/amap/location/b/c;

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/b/c;->b()V

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amap/location/b/b;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :cond_0
    monitor-exit p0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0

    .line 18
    throw v0
.end method

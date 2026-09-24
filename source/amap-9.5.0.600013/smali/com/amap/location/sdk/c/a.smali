.class public Lcom/amap/location/sdk/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/sdk/c/a$a;
    }
.end annotation


# static fields
.field private static volatile d:Lcom/amap/location/sdk/c/a;

.field private static e:Ljava/lang/Object;


# instance fields
.field private a:Lcom/amap/location/sdk/c/a$a;

.field private b:Z

.field private volatile c:Z

.field private f:Lcom/amap/location/support/handler/AmapHandler;

.field private g:Lcom/amap/location/support/cloud/IAmapCloudListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/sdk/c/a;->e:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/sdk/c/a;->b:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/amap/location/sdk/c/a;->c:Z

    .line 10
    new-instance v0, Lcom/amap/location/sdk/c/a$1;

    .line 12
    const-string v1, "c"

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/amap/location/sdk/c/a$1;-><init>(Lcom/amap/location/sdk/c/a;Ljava/lang/String;)V

    .line 17
    iput-object v0, p0, Lcom/amap/location/sdk/c/a;->g:Lcom/amap/location/support/cloud/IAmapCloudListener;

    .line 19
    return-void
.end method

.method public static a()Lcom/amap/location/sdk/c/a;
    .locals 2

    .line 3
    sget-object v0, Lcom/amap/location/sdk/c/a;->d:Lcom/amap/location/sdk/c/a;

    if-nez v0, :cond_1

    .line 4
    sget-object v0, Lcom/amap/location/sdk/c/a;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    sget-object v1, Lcom/amap/location/sdk/c/a;->d:Lcom/amap/location/sdk/c/a;

    if-nez v1, :cond_0

    .line 6
    new-instance v1, Lcom/amap/location/sdk/c/a;

    invoke-direct {v1}, Lcom/amap/location/sdk/c/a;-><init>()V

    sput-object v1, Lcom/amap/location/sdk/c/a;->d:Lcom/amap/location/sdk/c/a;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/sdk/c/a;->d:Lcom/amap/location/sdk/c/a;

    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/sdk/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/sdk/c/a;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/sdk/c/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/c/a;->b(Lorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_1

    :try_start_0
    const-string v0, "cs"

    const/4 v1, 0x1

    .line 1
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 2
    iput-boolean v1, p0, Lcom/amap/location/sdk/c/a;->b:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/location/sdk/c/a;->b:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amap/location/sdk/c/a;->g()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/c/a$a;->b(Lorg/json/JSONObject;)V

    :cond_2
    return-void
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/c/d;->d()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private declared-synchronized g()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/c/a;->b:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-boolean v0, p0, Lcom/amap/location/sdk/c/a;->c:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/amap/location/sdk/c/a$a;

    .line 16
    invoke-direct {v0, p0}, Lcom/amap/location/sdk/c/a$a;-><init>(Lcom/amap/location/sdk/c/a;)V

    .line 19
    iput-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 21
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->a()V

    .line 24
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 26
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->b()V

    .line 29
    const v0, 0x18786

    .line 32
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method


# virtual methods
.method public a(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 4

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/sdk/c/a;->c:Z

    .line 10
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amap/location/sdk/c/a;->b:Z

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->a()V

    .line 13
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->b()V

    .line 14
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/sdk/c/a;->f:Lcom/amap/location/support/handler/AmapHandler;

    .line 15
    new-instance v1, Lcom/amap/location/sdk/c/a$2;

    invoke-direct {v1, p0}, Lcom/amap/location/sdk/c/a$2;-><init>(Lcom/amap/location/sdk/c/a;)V

    const-wide/16 v2, 0x3a98

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/c/a;->g:Lcom/amap/location/support/cloud/IAmapCloudListener;

    invoke-virtual {v0, v1, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1}, Lcom/amap/location/sdk/c/a$a;->a(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amap/location/sdk/c/a;->c:Z

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->c()V

    .line 11
    :cond_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/c/a;->g:Lcom/amap/location/support/cloud/IAmapCloudListener;

    invoke-virtual {v0, v1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->d()V

    .line 8
    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->e()V

    .line 8
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/c/a;->a:Lcom/amap/location/sdk/c/a$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/sdk/c/a$a;->f()V

    .line 8
    :cond_0
    return-void
.end method

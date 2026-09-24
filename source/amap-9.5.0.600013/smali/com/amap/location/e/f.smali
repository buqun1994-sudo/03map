.class public Lcom/amap/location/e/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/e/f$a;
    }
.end annotation


# static fields
.field private static volatile f:Lcom/amap/location/e/f;

.field private static g:Ljava/lang/Object;


# instance fields
.field private volatile a:Z

.field private b:Lcom/amap/location/support/bean/location/AmapLocation;

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/e/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/e/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private i:Lcom/amap/location/support/handler/AmapLooper;

.field private j:Z

.field private k:Z

.field private l:I

.field private m:I

.field private n:Lcom/amap/location/support/fence/FenceLoader;

.field private o:Ljava/lang/String;

.field private p:Lcom/amap/location/support/nl/NetworkLocationListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/e/f;->g:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/e/f;->a:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/amap/location/e/f;->d:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/amap/location/e/f;->e:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 29
    iput-object v0, p0, Lcom/amap/location/e/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 31
    const/4 v0, 0x2

    .line 32
    iput v0, p0, Lcom/amap/location/e/f;->l:I

    .line 34
    iput v0, p0, Lcom/amap/location/e/f;->m:I

    .line 36
    const-string v0, "https://aloc-gnss-eph.amap.com/gnss-2fence"

    .line 38
    iput-object v0, p0, Lcom/amap/location/e/f;->o:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/amap/location/e/f$3;

    .line 42
    const/16 v1, 0x8

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/amap/location/e/f$3;-><init>(Lcom/amap/location/e/f;I)V

    .line 47
    iput-object v0, p0, Lcom/amap/location/e/f;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    .line 49
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/e/f;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/e/f;->c:J

    return-wide p1
.end method

.method public static a()Lcom/amap/location/e/f;
    .locals 2

    .line 6
    sget-object v0, Lcom/amap/location/e/f;->f:Lcom/amap/location/e/f;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/amap/location/e/f;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/e/f;->f:Lcom/amap/location/e/f;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/amap/location/e/f;

    invoke-direct {v1}, Lcom/amap/location/e/f;-><init>()V

    sput-object v1, Lcom/amap/location/e/f;->f:Lcom/amap/location/e/f;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/e/f;->f:Lcom/amap/location/e/f;

    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/e/f;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/f;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/e/f;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/f;)Z
    .locals 0

    .line 4
    iget-boolean p0, p0, Lcom/amap/location/e/f;->k:Z

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/e/f;Z)Z
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/amap/location/e/f;->k:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/e/f;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/f;->o:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/amap/location/e/f;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    const/16 v1, 0x4e20

    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setInterval(I)V

    .line 4
    iget-object v0, p0, Lcom/amap/location/e/f;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/location/support/nl/NetworkLocationListener;->setOnlayOnline(Z)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/fences/restrictor"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    iput-boolean v1, p0, Lcom/amap/location/e/f;->a:Z

    .line 7
    new-instance v1, Lcom/amap/location/e/f$2;

    const-string v2, "GnssRestrictor"

    iget-object v3, p0, Lcom/amap/location/e/f;->i:Lcom/amap/location/support/handler/AmapLooper;

    invoke-direct {v1, p0, v2, v0, v3}, Lcom/amap/location/e/f$2;-><init>(Lcom/amap/location/e/f;Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    iput-object v1, p0, Lcom/amap/location/e/f;->n:Lcom/amap/location/support/fence/FenceLoader;

    const/4 v0, 0x0

    .line 8
    invoke-virtual {v1, v0}, Lcom/amap/location/support/fence/FenceLoader;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    return-void
.end method

.method public static synthetic b(Lcom/amap/location/e/f;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/amap/location/e/f;->a:Z

    return p1
.end method

.method private c()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/amap/location/e/f;->j:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/e/f;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/nl/INetworkLocator;->removeUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;)V

    const-string v0, "gnssres"

    const-string v1, "removeUpdatesGnssRestrictor"

    .line 4
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/e/f;->j:Z

    :cond_0
    return-void
.end method

.method public static synthetic c(Lcom/amap/location/e/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/e/f;->b()V

    return-void
.end method

.method public static synthetic d(Lcom/amap/location/e/f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/f;->d:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic e(Lcom/amap/location/e/f;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/f;->e:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lcom/amap/location/e/f;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/e/f;->a:Z

    .line 3
    return p0
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)I
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 20
    iget-boolean v2, v1, Lcom/amap/location/e/f;->k:Z

    const/4 v3, 0x2

    if-nez v2, :cond_0

    return v3

    .line 21
    :cond_0
    iget-object v2, v1, Lcom/amap/location/e/f;->n:Lcom/amap/location/support/fence/FenceLoader;

    if-eqz v2, :cond_1

    .line 22
    invoke-virtual {v2, v0}, Lcom/amap/location/support/fence/FenceLoader;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 23
    :cond_1
    iget-boolean v2, v1, Lcom/amap/location/e/f;->a:Z

    if-eqz v2, :cond_c

    if-nez v0, :cond_2

    goto/16 :goto_3

    .line 24
    :cond_2
    :try_start_0
    iget-object v2, v1, Lcom/amap/location/e/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v4

    .line 26
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v6

    .line 27
    iget-object v2, v1, Lcom/amap/location/e/f;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x2

    :goto_0
    const/4 v11, 0x3

    if-ge v9, v2, :cond_a

    .line 28
    iget-object v12, v1, Lcom/amap/location/e/f;->d:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amap/location/e/f$a;

    invoke-virtual {v12, v4, v5, v6, v7}, Lcom/amap/location/support/fence/RectangleFence;->isIn(DD)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 29
    iget-boolean v10, v1, Lcom/amap/location/e/f;->j:Z

    const/4 v12, 0x1

    if-nez v10, :cond_3

    .line 30
    iput-boolean v12, v1, Lcom/amap/location/e/f;->j:Z

    const-string v10, "gnssres"

    const-string v13, "gps in fence request network"

    .line 31
    invoke-static {v10, v13}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v10

    iget-object v13, v1, Lcom/amap/location/e/f;->p:Lcom/amap/location/support/nl/NetworkLocationListener;

    iget-object v14, v1, Lcom/amap/location/e/f;->i:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v10, v13, v8, v14}, Lcom/amap/location/support/nl/INetworkLocator;->requestLocationUpdates(Lcom/amap/location/support/nl/NetworkLocationListener;ZLcom/amap/location/support/handler/AmapLooper;)V

    .line 33
    :cond_3
    iget-object v10, v1, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    if-nez v10, :cond_4

    .line 34
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v10

    invoke-interface {v10}, Lcom/amap/location/support/nl/INetworkLocator;->getLastAmapLocationNetwork()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v10

    iput-object v10, v1, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 35
    :cond_4
    iget-object v10, v1, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    if-nez v10, :cond_6

    .line 36
    iget v0, v1, Lcom/amap/location/e/f;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v12, :cond_5

    .line 37
    :goto_1
    iget-object v0, v1, Lcom/amap/location/e/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v12

    .line 38
    :cond_5
    :try_start_1
    iput v11, v1, Lcom/amap/location/e/f;->l:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    iget-object v0, v1, Lcom/amap/location/e/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v11

    .line 40
    :cond_6
    :try_start_2
    iget-object v10, v1, Lcom/amap/location/e/f;->e:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    iget-object v10, v1, Lcom/amap/location/e/f;->e:Ljava/util/List;

    .line 41
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/location/e/f$a;

    iget-object v13, v1, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v13}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v13

    iget-object v15, v1, Lcom/amap/location/e/f;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    move-wide/from16 v16, v4

    invoke-virtual {v15}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v10, v13, v14, v3, v4}, Lcom/amap/location/support/fence/RectangleFence;->isIn(DD)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 42
    iget-object v2, v1, Lcom/amap/location/e/f;->e:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/location/e/f$a;

    iget-object v2, v2, Lcom/amap/location/e/f$a;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const v3, 0x189a3

    invoke-static {v3, v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 43
    iput v12, v1, Lcom/amap/location/e/f;->m:I

    iput v12, v1, Lcom/amap/location/e/f;->l:I

    const-wide/16 v2, 0x0

    .line 44
    invoke-static {v0, v2, v3, v8}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getLocationStr(Lcom/amap/location/support/bean/location/AmapLocation;DI)Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getInstance()Lcom/amap/location/support/nl/NetworkLocatorParam;

    move-result-object v2

    const-string v3, "gpscache"

    invoke-virtual {v2, v3, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_7
    move-wide/from16 v16, v4

    :cond_8
    const/4 v10, 0x3

    goto :goto_2

    :cond_9
    move-wide/from16 v16, v4

    :goto_2
    add-int/lit8 v9, v9, 0x1

    move-wide/from16 v4, v16

    const/4 v3, 0x2

    goto/16 :goto_0

    .line 46
    :cond_a
    iget-object v0, v1, Lcom/amap/location/e/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-ne v10, v11, :cond_b

    return v11

    .line 47
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/e/f;->c()V

    const/4 v0, 0x2

    .line 48
    iput v0, v1, Lcom/amap/location/e/f;->l:I

    return v0

    :catchall_0
    move-exception v0

    .line 49
    iget-object v2, v1, Lcom/amap/location/e/f;->h:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 50
    throw v0

    :cond_c
    :goto_3
    const/4 v0, 0x2

    return v0
.end method

.method public a(Lcom/amap/location/support/handler/AmapLooper;Z)V
    .locals 3

    const-string v0, "restrictor"

    if-nez p2, :cond_0

    return-void

    .line 12
    :cond_0
    iput-object p1, p0, Lcom/amap/location/e/f;->i:Lcom/amap/location/support/handler/AmapLooper;

    .line 13
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object p2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p2, v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "enable"

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/amap/location/e/f;->k:Z

    if-nez v1, :cond_1

    const-string p2, "110153"

    const-string v1, "cloud enable is close"

    .line 15
    invoke-static {p2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object p2

    new-instance v1, Lcom/amap/location/e/f$1;

    invoke-direct {v1, p0, v0}, Lcom/amap/location/e/f$1;-><init>(Lcom/amap/location/e/f;Ljava/lang/String;)V

    invoke-virtual {p2, v1, p1}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    return-void

    :cond_1
    const-string p1, "url"

    .line 17
    iget-object v0, p0, Lcom/amap/location/e/f;->o:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/f;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 19
    :goto_0
    invoke-direct {p0}, Lcom/amap/location/e/f;->b()V

    return-void
.end method

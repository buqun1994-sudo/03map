.class public Lcom/amap/location/e/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/e/b$a;
    }
.end annotation


# static fields
.field private static a:Z


# instance fields
.field private A:Ljava/lang/Runnable;

.field private B:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

.field private C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

.field private volatile b:Z

.field private c:Lcom/amap/location/support/handler/AmapHandler;

.field private d:Lcom/amap/location/support/handler/AmapHandlerThread;

.field private e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private f:Lcom/amap/location/support/handler/AmapLooper;

.field private g:Lcom/amap/location/e/a/h;

.field private h:Lcom/amap/location/support/bean/location/AmapLocation;

.field private i:J

.field private j:J

.field private k:Lcom/amap/location/support/bean/location/AmapLocation;

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/amap/location/e/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:J

.field private r:Lcom/amap/location/e/a/f;

.field private s:Lcom/amap/location/e/a/c;

.field private t:Lcom/amap/location/e/a/e;

.field private u:Lcom/amap/location/e/a/b;

.field private v:Lcom/amap/location/e/a/a/e;

.field private w:Lcom/amap/location/e/a;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    .line 7
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/amap/location/e/b;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    iput-boolean v0, p0, Lcom/amap/location/e/b;->l:Z

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    .line 25
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    .line 30
    new-instance v0, Lcom/amap/location/e/b$2;

    .line 32
    invoke-direct {v0, p0}, Lcom/amap/location/e/b$2;-><init>(Lcom/amap/location/e/b;)V

    .line 35
    iput-object v0, p0, Lcom/amap/location/e/b;->A:Ljava/lang/Runnable;

    .line 37
    new-instance v0, Lcom/amap/location/e/b$3;

    .line 39
    invoke-direct {v0, p0}, Lcom/amap/location/e/b$3;-><init>(Lcom/amap/location/e/b;)V

    .line 42
    iput-object v0, p0, Lcom/amap/location/e/b;->B:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 44
    new-instance v0, Lcom/amap/location/e/b$4;

    .line 46
    invoke-direct {v0, p0}, Lcom/amap/location/e/b$4;-><init>(Lcom/amap/location/e/b;)V

    .line 49
    iput-object v0, p0, Lcom/amap/location/e/b;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 51
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/e/b;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/e/b;->y:I

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/e/b;->p:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Lcom/amap/location/e/a/a/e;)Lcom/amap/location/e/a/a/e;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/e/b;->v:Lcom/amap/location/e/a/a/e;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Lcom/amap/location/e/a/h;)Lcom/amap/location/e/a/h;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/location/e/b;->g:Lcom/amap/location/e/a/h;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Lcom/amap/location/e/a;)Lcom/amap/location/e/a;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/amap/location/e/b;->w:Lcom/amap/location/e/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amap/location/e/b;->f:Lcom/amap/location/support/handler/AmapLooper;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/amap/location/e/b;->o:Ljava/util/List;

    return-object p1
.end method

.method private a(IILjava/lang/Object;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amap/location/e/b;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 25
    invoke-interface {v0, p1, p2, v1, p3}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(IIILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcom/amap/location/e/b;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/e/b;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 27
    throw p1
.end method

.method public static synthetic a(Lcom/amap/location/e/b;ILcom/amap/location/e/a/a;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/amap/location/e/b;->b(ILcom/amap/location/e/a/a;)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/e/b;)Z
    .locals 0

    .line 10
    iget-boolean p0, p0, Lcom/amap/location/e/b;->z:Z

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/e/b;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/amap/location/e/b;->b:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/e/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/e/b;->y:I

    return p0
.end method

.method public static synthetic b(Lcom/amap/location/e/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/e/b;->q:J

    return-wide p1
.end method

.method private b(I)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove gnss algo type is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gnssalgo"

    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 17
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/e/b;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->unregisterSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;)Z

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amap/location/e/a/d;->q:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amap/location/e/a/d;->v:Z

    if-nez v0, :cond_1

    .line 19
    invoke-direct {p0}, Lcom/amap/location/e/b;->e()V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 20
    iget-object p1, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_2

    .line 21
    iget-object v0, p0, Lcom/amap/location/e/b;->A:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/amap/location/e/b;->z:Z

    :cond_2
    return-void
.end method

.method private b(ILcom/amap/location/e/a/a;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/amap/location/e/b;->d()V

    .line 5
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/location/e/b;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    iget-object v1, p0, Lcom/amap/location/e/b;->f:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {p2, v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->registerSatelliteStatusCallback(Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "request gnss algo type is : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "gnssalgo"

    invoke-static {v0, p2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 8
    iget-object v1, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v1, :cond_2

    .line 9
    iput p2, p0, Lcom/amap/location/e/b;->y:I

    .line 10
    iput-boolean v0, p0, Lcom/amap/location/e/b;->z:Z

    if-eqz v1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/amap/location/e/b;->A:Ljava/lang/Runnable;

    invoke-interface {v1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/amap/location/e/b;->A:Ljava/lang/Runnable;

    iget-boolean v2, p0, Lcom/amap/location/e/b;->l:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x3e8

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x1388

    :goto_0
    invoke-interface {v1, v0, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_3

    .line 14
    invoke-direct {p0}, Lcom/amap/location/e/b;->g()V

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/amap/location/e/b;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/e/b;->b(I)V

    return-void
.end method

.method public static synthetic c(Lcom/amap/location/e/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/e/b;->l:Z

    return p0
.end method

.method public static synthetic d(Lcom/amap/location/e/b;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/amap/location/e/b;->a:Z

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/e/b;->B:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    iget-object v2, p0, Lcom/amap/location/e/b;->f:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/b;->g:Lcom/amap/location/e/a/h;

    invoke-virtual {v0}, Lcom/amap/location/e/a/h;->a()V

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/security/INativeAbility;->rtkNativeInit()I

    move-result v0

    iput v0, p0, Lcom/amap/location/e/b;->x:I

    const-string v0, "gnssalgo"

    const-string v1, "rgm start"

    .line 7
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x1

    .line 8
    sput-boolean v0, Lcom/amap/location/e/b;->a:Z

    return-void
.end method

.method public static synthetic e(Lcom/amap/location/e/b;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->A:Ljava/lang/Runnable;

    return-object p0
.end method

.method private e()V
    .locals 3

    .line 2
    sget-boolean v0, Lcom/amap/location/e/b;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/location/e/b;->B:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    invoke-interface {v0, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z

    .line 5
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/security/INativeAbility;->rtkNativeUnInit()V

    .line 6
    iput v1, p0, Lcom/amap/location/e/b;->x:I

    const-string v0, "gnssalgo"

    const-string v2, "rgm stop"

    .line 7
    invoke-static {v0, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_1
    sput-boolean v1, Lcom/amap/location/e/b;->a:Z

    return-void
.end method

.method public static synthetic f(Lcom/amap/location/e/b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    return-object p0
.end method

.method private f()Z
    .locals 8

    .line 2
    invoke-direct {p0}, Lcom/amap/location/e/b;->h()Lcom/amap/location/e/a/b/b;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-wide v2, v0, Lcom/amap/location/e/a/b/b;->d:J

    iget-wide v4, p0, Lcom/amap/location/e/b;->j:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x4b0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    return v1

    .line 4
    :cond_1
    iget-wide v2, v0, Lcom/amap/location/e/a/b/b;->d:J

    iget-wide v6, p0, Lcom/amap/location/e/b;->p:J

    sub-long/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private g()V
    .locals 7

    .line 2
    sget-boolean v0, Lcom/amap/location/e/b;->a:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    iget v0, p0, Lcom/amap/location/e/b;->x:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/amap/location/e/b;->g:Lcom/amap/location/e/a/h;

    invoke-virtual {v0}, Lcom/amap/location/e/a/h;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amap/location/e/b;->w:Lcom/amap/location/e/a;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/amap/location/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/amap/location/e/b;->f()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/e/a/a;

    if-eqz v0, :cond_b

    .line 7
    iget-object v1, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Ljava/util/List;)V

    .line 8
    iget-object v1, p0, Lcom/amap/location/e/b;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 9
    iget-wide v1, p0, Lcom/amap/location/e/b;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/e/a/a;->b(J)V

    .line 10
    iget-wide v1, p0, Lcom/amap/location/e/b;->j:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/e/a/a;->a(J)V

    .line 11
    iget-object v1, p0, Lcom/amap/location/e/b;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 12
    iget-object v1, p0, Lcom/amap/location/e/b;->w:Lcom/amap/location/e/a;

    invoke-virtual {v1}, Lcom/amap/location/e/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/amap/location/e/b;->o:Ljava/util/List;

    iget-wide v3, p0, Lcom/amap/location/e/b;->p:J

    iget-wide v5, p0, Lcom/amap/location/e/b;->q:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/amap/location/e/a/a;->a(Ljava/util/List;JJ)V

    .line 14
    iget-object v1, p0, Lcom/amap/location/e/b;->u:Lcom/amap/location/e/a/b;

    if-nez v1, :cond_3

    .line 15
    new-instance v1, Lcom/amap/location/e/a/b;

    invoke-direct {v1}, Lcom/amap/location/e/a/b;-><init>()V

    iput-object v1, p0, Lcom/amap/location/e/b;->u:Lcom/amap/location/e/a/b;

    .line 16
    :cond_3
    iget-object v1, p0, Lcom/amap/location/e/b;->u:Lcom/amap/location/e/a/b;

    invoke-virtual {v1, v0}, Lcom/amap/location/e/a/b;->a(Lcom/amap/location/e/a/a;)V

    goto/16 :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 18
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/e/a/a;

    if-eqz v0, :cond_b

    .line 19
    iget-object v1, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Ljava/util/List;)V

    .line 20
    iget-object v1, p0, Lcom/amap/location/e/b;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 21
    iget-wide v1, p0, Lcom/amap/location/e/b;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/e/a/a;->b(J)V

    .line 22
    iget-wide v1, p0, Lcom/amap/location/e/b;->j:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/e/a/a;->a(J)V

    .line 23
    iget-object v1, p0, Lcom/amap/location/e/b;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 24
    iget-object v1, p0, Lcom/amap/location/e/b;->v:Lcom/amap/location/e/a/a/e;

    invoke-virtual {v1}, Lcom/amap/location/e/a/a/e;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Ljava/util/List;)V

    .line 25
    iget-object v1, p0, Lcom/amap/location/e/b;->s:Lcom/amap/location/e/a/c;

    if-nez v1, :cond_5

    .line 26
    new-instance v1, Lcom/amap/location/e/a/c;

    invoke-direct {v1}, Lcom/amap/location/e/a/c;-><init>()V

    iput-object v1, p0, Lcom/amap/location/e/b;->s:Lcom/amap/location/e/a/c;

    .line 27
    iget-object v1, p0, Lcom/amap/location/e/b;->v:Lcom/amap/location/e/a/a/e;

    invoke-virtual {v1}, Lcom/amap/location/e/a/a/e;->a()V

    .line 28
    :cond_5
    iget-object v1, p0, Lcom/amap/location/e/b;->v:Lcom/amap/location/e/a/a/e;

    invoke-virtual {v1}, Lcom/amap/location/e/a/a/e;->b()V

    .line 29
    iget-object v1, p0, Lcom/amap/location/e/b;->s:Lcom/amap/location/e/a/c;

    invoke-virtual {v1, v0}, Lcom/amap/location/e/a/c;->a(Lcom/amap/location/e/a/a;)V

    goto/16 :goto_0

    .line 30
    :cond_6
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/e/a/a;

    if-eqz v0, :cond_b

    .line 32
    iget-object v1, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Ljava/util/List;)V

    .line 33
    iget-object v1, p0, Lcom/amap/location/e/b;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 34
    iget-boolean v1, p0, Lcom/amap/location/e/b;->l:Z

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Z)V

    .line 35
    iget-wide v3, p0, Lcom/amap/location/e/b;->i:J

    invoke-virtual {v0, v3, v4}, Lcom/amap/location/e/a/a;->b(J)V

    .line 36
    iget-wide v3, p0, Lcom/amap/location/e/b;->j:J

    invoke-virtual {v0, v3, v4}, Lcom/amap/location/e/a/a;->a(J)V

    .line 37
    iget-object v1, p0, Lcom/amap/location/e/b;->t:Lcom/amap/location/e/a/e;

    if-nez v1, :cond_7

    .line 38
    new-instance v1, Lcom/amap/location/e/a/e;

    invoke-direct {v1}, Lcom/amap/location/e/a/e;-><init>()V

    iput-object v1, p0, Lcom/amap/location/e/b;->t:Lcom/amap/location/e/a/e;

    .line 39
    :cond_7
    iget-wide v3, p0, Lcom/amap/location/e/b;->i:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/amap/location/e/b;->i:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x4b0

    cmp-long v1, v3, v5

    if-lez v1, :cond_8

    .line 40
    invoke-direct {p0, v2}, Lcom/amap/location/e/b;->b(I)V

    return-void

    .line 41
    :cond_8
    invoke-direct {p0}, Lcom/amap/location/e/b;->h()Lcom/amap/location/e/a/b/b;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 42
    iget-wide v1, v1, Lcom/amap/location/e/a/b/b;->c:J

    iget-wide v3, p0, Lcom/amap/location/e/b;->i:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    cmp-long v5, v1, v3

    if-gez v5, :cond_b

    .line 43
    iget-object v1, p0, Lcom/amap/location/e/b;->t:Lcom/amap/location/e/a/e;

    invoke-virtual {v1, v0}, Lcom/amap/location/e/a/e;->a(Lcom/amap/location/e/a/a;)V

    goto :goto_0

    .line 44
    :cond_9
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 45
    iget-object v0, p0, Lcom/amap/location/e/b;->n:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/e/a/a;

    if-eqz v0, :cond_b

    .line 46
    iget-object v1, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Ljava/util/List;)V

    .line 47
    iget-object v1, p0, Lcom/amap/location/e/b;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 48
    iget-object v1, p0, Lcom/amap/location/e/b;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->b(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 49
    iget-wide v1, p0, Lcom/amap/location/e/b;->i:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/e/a/a;->b(J)V

    .line 50
    iget-wide v1, p0, Lcom/amap/location/e/b;->j:J

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/e/a/a;->a(J)V

    .line 51
    iget-boolean v1, p0, Lcom/amap/location/e/b;->l:Z

    invoke-virtual {v0, v1}, Lcom/amap/location/e/a/a;->a(Z)V

    .line 52
    iget-object v1, p0, Lcom/amap/location/e/b;->r:Lcom/amap/location/e/a/f;

    if-nez v1, :cond_a

    .line 53
    new-instance v1, Lcom/amap/location/e/a/f;

    invoke-direct {v1}, Lcom/amap/location/e/a/f;-><init>()V

    iput-object v1, p0, Lcom/amap/location/e/b;->r:Lcom/amap/location/e/a/f;

    .line 54
    :cond_a
    iget-object v1, p0, Lcom/amap/location/e/b;->r:Lcom/amap/location/e/a/f;

    invoke-virtual {v1, v0}, Lcom/amap/location/e/a/f;->a(Lcom/amap/location/e/a/a;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/amap/location/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/e/b;->g()V

    return-void
.end method

.method private h()Lcom/amap/location/e/a/b/b;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/b;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/e/a/b/b;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic h(Lcom/amap/location/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/e/b;->d()V

    return-void
.end method

.method public static synthetic i(Lcom/amap/location/e/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/e/b;->e()V

    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/amap/location/e/b;)Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->C:Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;

    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/amap/location/e/b;)Lcom/amap/location/e/a/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->g:Lcom/amap/location/e/a/h;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lcom/amap/location/e/b;)Lcom/amap/location/e/a/a/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->v:Lcom/amap/location/e/a/a/e;

    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/amap/location/e/b;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/e/b;->f:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 17
    iget-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v1, v1, v0}, Lcom/amap/location/e/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 21
    iget-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 22
    invoke-direct {p0, v0, p1, v1}, Lcom/amap/location/e/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(ILcom/amap/location/e/a/a;)V
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 20
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/location/e/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 29
    iput-object p1, p0, Lcom/amap/location/e/b;->h:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 30
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/e/b;->i:J

    .line 31
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/e/b;->j:J

    .line 32
    iget-object v0, p0, Lcom/amap/location/e/b;->w:Lcom/amap/location/e/a;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1}, Lcom/amap/location/e/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-static {}, Lcom/amap/location/e/a/b/d;->a()Lcom/amap/location/e/a/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/e/a/b/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    if-nez v0, :cond_2

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const-string v0, "gnssalgo"

    const-string v1, "init"

    .line 14
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    new-instance v1, Lcom/amap/location/e/b$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/location/e/b$1;-><init>(Lcom/amap/location/e/b;Z)V

    const-string p1, "GnssAlgoManager"

    const/16 v2, 0xa

    invoke-interface {v0, p1, v2, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandlerThread(Ljava/lang/String;ILcom/amap/location/support/handler/OnLooperPrepared;)Lcom/amap/location/support/handler/AmapHandlerThread;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/e/b;->d:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 16
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapHandlerThread;->start()V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 3

    .line 23
    iget-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 24
    invoke-direct {p0, v2, v0, v1}, Lcom/amap/location/e/b;->a(IILjava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 27
    iput-object p1, p0, Lcom/amap/location/e/b;->k:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 28
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 29
    iget-object v0, p0, Lcom/amap/location/e/b;->w:Lcom/amap/location/e/a;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1}, Lcom/amap/location/e/a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 25
    iput-boolean p1, p0, Lcom/amap/location/e/b;->l:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x3e8

    goto :goto_0

    :cond_0
    const/16 p1, 0x1388

    :goto_0
    int-to-float p1, p1

    const v0, 0x3f666666    # 0.9f

    mul-float p1, p1, v0

    .line 26
    sput p1, Lcom/amap/location/e/a/d;->r:F

    return-void
.end method

.method public c()V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/amap/location/e/b;->z:Z

    .line 4
    iget-object v1, p0, Lcom/amap/location/e/b;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 5
    iget-object v1, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lcom/amap/location/e/b;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 7
    iget-object v3, p0, Lcom/amap/location/e/b;->e:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v2, 0x4

    .line 9
    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    .line 10
    :cond_1
    iput-boolean v0, p0, Lcom/amap/location/e/b;->b:Z

    return-void
.end method

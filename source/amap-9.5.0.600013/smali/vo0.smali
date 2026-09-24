.class public Lvo0;
.super Lcom/amap/location/support/location/AbstractLocator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvo0$n;
    }
.end annotation


# instance fields
.field public final G:Ljava/lang/String;

.field public H:Lcom/amap/location/support/handler/AmapLooper;

.field public I:Lcom/amap/location/support/handler/AmapHandler;

.field public J:Lcom/amap/location/support/handler/AmapHandlerThread;

.field public K:Lcom/amap/location/support/handler/AmapHandler;

.field public L:Z

.field public M:Ljava/lang/String;

.field public N:Lgw0;

.field public O:Z

.field public P:I

.field public Q:Z

.field public R:Ljava/lang/String;

.field public S:Ljava/lang/String;

.field public T:I

.field public U:Z

.field public V:I

.field public W:Lcom/amap/location/support/bean/location/AmapLocation;

.field public X:Lvo0$n;

.field public Y:Lcom/amap/location/support/model/ModelLoader;

.field public Z:Ljava/lang/String;

.field public a0:J

.field public b0:Lcom/amap/location/support/handler/AmapHandlerThread;

.field public c0:Lcom/amap/location/support/icecream/PluginClassLoader;

.field public d0:I

.field public e0:I

.field public f0:Z

.field public g0:Z

.field public h0:Ljava/lang/Runnable;

.field public i0:Ljava/lang/Runnable;

.field public j0:Ljava/lang/Runnable;

.field public final k0:Lcom/amap/location/support/rtk/EphemerisListener;

.field public final l0:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

.field public m0:Ljava/lang/Runnable;

.field public final n0:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

.field public o0:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

.field public final p0:Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/location/AbstractLocator;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lvo0;->V:I

    .line 7
    new-instance v1, Lvo0$n;

    .line 9
    invoke-direct {v1, p0}, Lvo0$n;-><init>(Lvo0;)V

    .line 12
    iput-object v1, p0, Lvo0;->X:Lvo0$n;

    .line 14
    iput v0, p0, Lvo0;->e0:I

    .line 16
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lvo0;->f0:Z

    .line 19
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lvo0;->g0:Z

    .line 22
    new-instance v0, Lvo0$l;

    .line 24
    invoke-direct {v0, p0}, Lvo0$l;-><init>(Lvo0;)V

    .line 27
    iput-object v0, p0, Lvo0;->h0:Ljava/lang/Runnable;

    .line 29
    new-instance v0, Lvo0$m;

    .line 31
    invoke-direct {v0, p0}, Lvo0$m;-><init>(Lvo0;)V

    .line 34
    iput-object v0, p0, Lvo0;->i0:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lvo0$b;

    .line 38
    invoke-direct {v0, p0}, Lvo0$b;-><init>(Lvo0;)V

    .line 41
    iput-object v0, p0, Lvo0;->j0:Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lvo0$d;

    .line 45
    invoke-direct {v0, p0}, Lvo0$d;-><init>(Lvo0;)V

    .line 48
    iput-object v0, p0, Lvo0;->k0:Lcom/amap/location/support/rtk/EphemerisListener;

    .line 50
    new-instance v0, Lvo0$e;

    .line 52
    invoke-direct {v0, p0}, Lvo0$e;-><init>(Lvo0;)V

    .line 55
    iput-object v0, p0, Lvo0;->l0:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 57
    new-instance v0, Lvo0$f;

    .line 59
    invoke-direct {v0, p0}, Lvo0$f;-><init>(Lvo0;)V

    .line 62
    iput-object v0, p0, Lvo0;->m0:Ljava/lang/Runnable;

    .line 64
    new-instance v0, Lvo0$g;

    .line 66
    invoke-direct {v0, p0}, Lvo0$g;-><init>(Lvo0;)V

    .line 69
    iput-object v0, p0, Lvo0;->n0:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 71
    new-instance v0, Lvo0$h;

    .line 73
    invoke-direct {v0, p0}, Lvo0$h;-><init>(Lvo0;)V

    .line 76
    iput-object v0, p0, Lvo0;->o0:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    .line 78
    new-instance v0, Lvo0$i;

    .line 80
    invoke-direct {v0, p0}, Lvo0$i;-><init>(Lvo0;)V

    .line 83
    iput-object v0, p0, Lvo0;->p0:Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, "/gnss"

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lvo0;->G:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/io/File;

    .line 110
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/io/File;

    .line 121
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 127
    :cond_0
    return-void
.end method

.method public static synthetic A(Lvo0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvo0;->Q:Z

    .line 3
    return p1
.end method

.method public static synthetic B(Lvo0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lvo0;->d0:I

    .line 3
    return p1
.end method

.method public static synthetic C(Lvo0;Ljava/lang/String;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvo0;->u(Ljava/lang/String;)J

    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static synthetic D(Lvo0;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->H:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    return-object p0
.end method

.method public static synthetic E(Lvo0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvo0;->U:Z

    .line 3
    return p1
.end method

.method public static synthetic F(Lvo0;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvo0;->e(Ljava/lang/String;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic G(Lvo0;)Lcom/amap/location/support/model/ModelLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->Y:Lcom/amap/location/support/model/ModelLoader;

    .line 3
    return-object p0
.end method

.method public static synthetic H(Lvo0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvo0;->f0:Z

    .line 3
    return p1
.end method

.method public static synthetic I(Lvo0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->M:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic J(Lvo0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvo0;->L:Z

    .line 3
    return p0
.end method

.method public static synthetic K(Lvo0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->Z:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic L(Lvo0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvo0;->g0:Z

    .line 3
    return p0
.end method

.method public static synthetic M(Lvo0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvo0;->c()V

    .line 4
    return-void
.end method

.method public static synthetic N(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->J:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 3
    return-object p0
.end method

.method public static synthetic O(Lvo0;)Lcom/amap/location/support/handler/AmapHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->b0:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 3
    return-object p0
.end method

.method public static synthetic P(Lvo0;)I
    .locals 0

    .line 1
    iget p0, p0, Lvo0;->d0:I

    .line 3
    return p0
.end method

.method public static synthetic Q(Lvo0;)Lcom/amap/location/support/icecream/PluginClassLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->c0:Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 3
    return-object p0
.end method

.method public static synthetic R(Lvo0;)Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->p0:Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;

    .line 3
    return-object p0
.end method

.method public static synthetic S(Lvo0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->i0:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic T(Lvo0;)I
    .locals 2

    .line 1
    iget v0, p0, Lvo0;->d0:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lvo0;->d0:I

    .line 7
    return v0
.end method

.method public static synthetic U(Lvo0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->R:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic V(Lvo0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvo0;->b()V

    .line 4
    return-void
.end method

.method public static synthetic W(Lvo0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->M:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic X(Lvo0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvo0;->U:Z

    .line 3
    return p0
.end method

.method public static synthetic Y(Lvo0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->j0:Ljava/lang/Runnable;

    .line 3
    return-object p0
.end method

.method public static synthetic Z(Lvo0;)I
    .locals 0

    .line 1
    iget p0, p0, Lvo0;->T:I

    .line 3
    return p0
.end method

.method public static synthetic a(Lvo0;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->m0:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static synthetic a0(Lvo0;)Lgw0;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->N:Lgw0;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lvo0;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->W:Lcom/amap/location/support/bean/location/AmapLocation;

    return-object p0
.end method

.method public static synthetic b0(Lvo0;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lvo0;->d()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c(Lvo0;)I
    .locals 0

    .line 1
    iget p0, p0, Lvo0;->P:I

    return p0
.end method

.method public static synthetic c0(Lvo0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->Z:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic d(Lvo0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lvo0;->T:I

    return p1
.end method

.method public static synthetic d0(Lvo0;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lvo0;->a0:J

    .line 3
    return-wide v0
.end method

.method public static synthetic e0(Lvo0;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lvo0;->S:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lvo0;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lvo0;->a0:J

    .line 3
    return-wide p1
.end method

.method public static synthetic f0(Lvo0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvo0;->f0:Z

    .line 3
    return p0
.end method

.method public static synthetic g(Lvo0;Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->W:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 3
    return-object p1
.end method

.method public static synthetic h(Lvo0;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->I:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p1
.end method

.method public static synthetic i(Lvo0;Lcom/amap/location/support/handler/AmapHandlerThread;)Lcom/amap/location/support/handler/AmapHandlerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->J:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 3
    return-object p1
.end method

.method public static synthetic j(Lvo0;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->H:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    return-object p1
.end method

.method public static synthetic k(Lvo0;Lcom/amap/location/support/icecream/PluginClassLoader;)Lcom/amap/location/support/icecream/PluginClassLoader;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->c0:Lcom/amap/location/support/icecream/PluginClassLoader;

    .line 3
    return-object p1
.end method

.method public static synthetic l(Lvo0;Lcom/amap/location/support/model/ModelLoader;)Lcom/amap/location/support/model/ModelLoader;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->Y:Lcom/amap/location/support/model/ModelLoader;

    .line 3
    return-object p1
.end method

.method public static synthetic m(Lvo0;Lgw0;)Lgw0;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->N:Lgw0;

    .line 3
    return-object p1
.end method

.method public static synthetic n(Lvo0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->R:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic o(Lvo0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvo0;->y(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public static synthetic p(Lvo0;Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lvo0;->r(Ljava/lang/Runnable;J)V

    .line 4
    return-void
.end method

.method public static synthetic s(Lvo0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lvo0;->O:Z

    .line 3
    return p1
.end method

.method public static synthetic t(Lvo0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lvo0;->P:I

    .line 3
    return p1
.end method

.method public static synthetic v(Lvo0;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->K:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p1
.end method

.method public static synthetic w(Lvo0;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0;->S:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic x(Lvo0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lvo0;->q(Ljava/lang/Runnable;)V

    .line 4
    return-void
.end method

.method public static synthetic z(Lvo0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lvo0;->Q:Z

    .line 3
    return p0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 2
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lvo0;->G:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/model/hd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    const-string v2, "model/hd"

    invoke-interface {v1, v2, v0}, Lcom/amap/location/support/common/IPlatformStatus;->releaseAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "GnssSoftLocator"

    const-string v1, "model release error"

    .line 4
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public final b()V
    .locals 8

    .line 2
    iget v0, p0, Lvo0;->V:I

    const-string v1, "GnssSoftLocator"

    if-nez v0, :cond_0

    const-string v0, "start already "

    .line 3
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->start()I

    move-result v0

    iput v0, p0, Lvo0;->V:I

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "2#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lvo0;->V:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v2, 0x18ef4

    invoke-static {v2, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 6
    iget v0, p0, Lvo0;->V:I

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lvo0;->L:Z

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lvo0;->l0:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setName(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lvo0;->l0:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->setMinTime(J)V

    .line 10
    invoke-static {}, Lcom/amap/location/support/rtk/EphemerisManager;->getInstance()Lcom/amap/location/support/rtk/EphemerisManager;

    move-result-object v0

    iget-object v2, p0, Lvo0;->k0:Lcom/amap/location/support/rtk/EphemerisListener;

    iget-object v3, p0, Lvo0;->H:Lcom/amap/location/support/handler/AmapLooper;

    invoke-virtual {v0, v2, v3}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v2, p0, Lvo0;->l0:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    iget-object v3, p0, Lvo0;->H:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v0, v2, v3}, Lcom/amap/location/support/signal/gnss/IGnssManager;->requestGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 12
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v2, p0, Lvo0;->n0:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    iget-object v3, p0, Lvo0;->H:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v0, v2, v3}, Lcom/amap/location/support/signal/gnss/IGnssManager;->registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 13
    iget-object v0, p0, Lvo0;->J:Lcom/amap/location/support/handler/AmapHandlerThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lvo0;->K:Lcom/amap/location/support/handler/AmapHandler;

    if-nez v0, :cond_2

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    iget-object v2, p0, Lvo0;->J:Lcom/amap/location/support/handler/AmapHandlerThread;

    invoke-interface {v2}, Lcom/amap/location/support/handler/AmapHandlerThread;->getAmapLooper()Lcom/amap/location/support/handler/AmapLooper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    iput-object v0, p0, Lvo0;->K:Lcom/amap/location/support/handler/AmapHandler;

    .line 15
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    move-result-object v2

    iget-object v3, p0, Lvo0;->o0:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lvo0;->K:Lcom/amap/location/support/handler/AmapHandler;

    invoke-interface/range {v2 .. v7}, Lcom/amap/location/support/signal/sensor/ISensorManager;->registerListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;IIILcom/amap/location/support/handler/AmapHandler;)Z

    .line 16
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    move-result-object v2

    iget-object v3, p0, Lvo0;->o0:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    const/16 v4, 0x10

    iget-object v7, p0, Lvo0;->K:Lcom/amap/location/support/handler/AmapHandler;

    invoke-interface/range {v2 .. v7}, Lcom/amap/location/support/signal/sensor/ISensorManager;->registerListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;IIILcom/amap/location/support/handler/AmapHandler;)Z

    .line 17
    :cond_2
    iget v0, p0, Lvo0;->T:I

    if-lez v0, :cond_3

    .line 18
    iget-object v0, p0, Lvo0;->N:Lgw0;

    invoke-virtual {v0}, Lgw0;->a()V

    .line 19
    :cond_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;->start()V

    :cond_4
    const-string v0, " is startInner"

    .line 21
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 2

    .line 2
    iget v0, p0, Lvo0;->V:I

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;->stop()V

    .line 5
    :cond_1
    iget-object v0, p0, Lvo0;->j0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lvo0;->y(Ljava/lang/Runnable;)V

    .line 6
    invoke-static {}, Lcom/amap/location/support/rtk/EphemerisManager;->getInstance()Lcom/amap/location/support/rtk/EphemerisManager;

    move-result-object v0

    iget-object v1, p0, Lvo0;->k0:Lcom/amap/location/support/rtk/EphemerisListener;

    invoke-virtual {v0, v1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lvo0;->U:Z

    .line 8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getSensor()Lcom/amap/location/support/signal/sensor/ISensorManager;

    move-result-object v0

    iget-object v1, p0, Lvo0;->o0:Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/sensor/ISensorManager;->unregisterListener(Lcom/amap/location/support/signal/sensor/AmapSensorEventListener;)V

    .line 9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lvo0;->n0:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z

    .line 10
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    move-result-object v0

    iget-object v1, p0, Lvo0;->l0:Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removeGnssUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 11
    invoke-static {}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->stop()I

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lvo0;->V:I

    .line 13
    iget-object v0, p0, Lvo0;->N:Lgw0;

    invoke-virtual {v0}, Lgw0;->h()V

    const-string v0, "3#"

    .line 14
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const v1, 0x18ef4

    invoke-static {v1, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    return-void
.end method

.method public final d()Z
    .locals 9

    .line 2
    iget-boolean v0, p0, Lvo0;->O:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1388

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    .line 5
    invoke-virtual {v2}, Lcom/amap/location/type/location/LocationMatch;->getLinkScore()I

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    iget v4, p0, Lvo0;->P:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-le v3, v4, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_3

    :try_start_1
    const-string v0, "GnssSoftLocator"

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Id:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/location/type/location/LocationMatch;->getLinkId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ",score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/amap/location/type/location/LocationMatch;->getLinkScore()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    goto :goto_2

    :catchall_1
    move-exception v1

    .line 8
    :goto_1
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return v0
.end method

.method public final e(Ljava/lang/String;)I
    .locals 4

    .line 1
    const/16 v0, -0x3e7

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lvo0;->a()V

    .line 6
    iget-object v1, p0, Lvo0;->G:Ljava/lang/String;

    .line 8
    invoke-static {p1, v1}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->init(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    move-result v0

    .line 12
    const/4 p1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iput-boolean p1, p0, Lvo0;->L:Z

    .line 17
    return v0

    .line 18
    :cond_0
    iget-object v1, p0, Lvo0;->X:Lvo0$n;

    .line 20
    invoke-static {v1}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->a(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)V

    .line 23
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 32
    move-result-object v1

    .line 33
    iget-object v2, p0, Lvo0;->p0:Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;

    .line 35
    invoke-interface {v1, v2}, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;->init(Lcom/amap/location/support/rtk/diffgnss/IDiffDataCallback;)V

    .line 38
    :cond_1
    iget-boolean v1, p0, Lvo0;->Q:Z

    .line 40
    if-eqz v1, :cond_2

    .line 42
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 45
    move-result-object v1

    .line 46
    const-string v2, "GnssSensorCallback"

    .line 48
    new-instance v3, Lvo0$j;

    .line 50
    invoke-direct {v3, p0}, Lvo0$j;-><init>(Lvo0;)V

    .line 53
    invoke-interface {v1, v2, p1, v3}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandlerThread(Ljava/lang/String;ILcom/amap/location/support/handler/OnLooperPrepared;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 56
    move-result-object p1

    .line 57
    iput-object p1, p0, Lvo0;->J:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 59
    invoke-interface {p1}, Lcom/amap/location/support/handler/AmapHandlerThread;->start()V

    .line 62
    :cond_2
    const/4 p1, 0x1

    .line 63
    iput-boolean p1, p0, Lvo0;->L:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    const-string v1, "GnssSoftLocator"

    .line 69
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    :goto_0
    return v0
.end method

.method public init()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lvo0;->L:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lvo0$a;

    .line 12
    invoke-direct {v1, p0}, Lvo0$a;-><init>(Lvo0;)V

    .line 15
    const-string v2, "GnssSoftLocator"

    .line 17
    const/16 v3, 0xa

    .line 19
    invoke-interface {v0, v2, v3, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandlerThread(Ljava/lang/String;ILcom/amap/location/support/handler/OnLooperPrepared;)Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lvo0;->b0:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 25
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandlerThread;->start()V

    .line 28
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/location/AbstractLocator;->hasStart()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final q(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvo0;->I:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public final r(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvo0;->I:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lvo0;->L:Z

    .line 4
    iput-boolean v0, p0, Lvo0;->g0:Z

    .line 6
    iget-object v0, p0, Lvo0;->I:Lcom/amap/location/support/handler/AmapHandler;

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string v0, "GnssSoftLocator"

    .line 12
    const-string v1, "not init"

    .line 14
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    iput-object v1, p0, Lvo0;->I:Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 24
    new-instance v1, Lvo0$k;

    .line 26
    invoke-direct {v1, p0}, Lvo0$k;-><init>(Lvo0;)V

    .line 29
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 32
    return-void
.end method

.method public startLocation()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lvo0;->L:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lvo0;->g0:Z

    .line 8
    const-string v0, "GnssSoftLocator"

    .line 10
    const-string v1, "not init"

    .line 12
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Luu0;->a()V

    .line 19
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_1

    .line 25
    iget-object v0, p0, Lvo0;->h0:Ljava/lang/Runnable;

    .line 27
    invoke-virtual {p0, v0}, Lvo0;->q(Ljava/lang/Runnable;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iget-object v0, p0, Lvo0;->i0:Ljava/lang/Runnable;

    .line 33
    invoke-virtual {p0, v0}, Lvo0;->q(Ljava/lang/Runnable;)V

    .line 36
    :goto_0
    return-void
.end method

.method public stopLocation()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lvo0;->g0:Z

    .line 4
    iget-boolean v0, p0, Lvo0;->L:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string v0, "GnssSoftLocator"

    .line 10
    const-string v1, "not init"

    .line 12
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lvo0;->i0:Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p0, v0}, Lvo0;->y(Ljava/lang/Runnable;)V

    .line 21
    new-instance v0, Lvo0$c;

    .line 23
    invoke-direct {v0, p0}, Lvo0$c;-><init>(Lvo0;)V

    .line 26
    invoke-virtual {p0, v0}, Lvo0;->q(Ljava/lang/Runnable;)V

    .line 29
    return-void
.end method

.method public final u(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    const-wide/16 v0, -0x1

    .line 18
    return-wide v0
.end method

.method public final y(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvo0;->I:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    :cond_0
    return-void
.end method

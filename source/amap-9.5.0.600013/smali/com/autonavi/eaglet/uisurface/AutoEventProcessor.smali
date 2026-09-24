.class public Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Las;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;,
        Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;
    }
.end annotation


# static fields
.field public static p:Z

.field public static volatile q:Landroid/view/Surface;

.field public static volatile r:I

.field public static volatile s:I

.field public static volatile t:I

.field public static volatile u:I

.field public static final v:Ljava/util/concurrent/locks/ReentrantLock;


# instance fields
.field public a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

.field public b:Lhr;

.field public c:Lir;

.field public d:J

.field public e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Ljava/lang/Object;

.field public k:Z

.field public l:Ljava/lang/Object;

.field public m:Z

.field public volatile n:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile o:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 6
    sput-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->f:Z

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->g:Z

    .line 9
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->h:Z

    .line 11
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->i:Z

    .line 13
    new-instance v1, Ljava/lang/Object;

    .line 15
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->j:Ljava/lang/Object;

    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k:Z

    .line 23
    new-instance v1, Ljava/lang/Object;

    .line 25
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 30
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 32
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 37
    iput-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 39
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->o:Z

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    .line 43
    const-string v1, "AutoMainThread"

    .line 45
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_0

    .line 57
    new-instance v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 59
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 62
    move-result-object v0

    .line 63
    invoke-direct {v1, p0, v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;-><init>(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Looper;)V

    .line 66
    iput-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 68
    new-instance v0, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 70
    invoke-direct {v0}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;-><init>()V

    .line 73
    iput-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 75
    return-void

    .line 76
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 78
    const-string v1, "AutoMainThread thread is not alive!"

    .line 80
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    throw v0
.end method

.method public static synthetic A(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->X(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic B(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->T(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic C(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->Z(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic D(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->f:Z

    .line 3
    return p0
.end method

.method public static synthetic E(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a0(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic F(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->f:Z

    .line 3
    return p1
.end method

.method public static synthetic G(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->h0(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic H(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lhr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    return-object p0
.end method

.method public static synthetic I(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->Y(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic J(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c0(Z)V

    .line 4
    return-void
.end method

.method public static synthetic K(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b0()V

    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e0(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic M(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d0(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic N(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->f0(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic q(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lir;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    return-object p0
.end method

.method public static synthetic r(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->g0(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->h:Z

    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->h:Z

    .line 3
    return p1
.end method

.method public static synthetic u(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->g:Z

    .line 3
    return p0
.end method

.method public static synthetic v(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->g:Z

    .line 3
    return p1
.end method

.method public static synthetic w(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->S(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->W(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic y(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->V(Landroid/os/Message;)V

    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->U(Landroid/os/Message;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final O()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 4
    return-void
.end method

.method public final P()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k:Z

    .line 4
    return-void
.end method

.method public final Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->o:Z

    .line 9
    return-void
.end method

.method public R()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    return-object v0
.end method

.method public final S(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    check-cast p1, Ljava/lang/Boolean;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 17
    move-result p1

    .line 18
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 20
    const-string v1, "handleActivityCreate"

    .line 22
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 25
    :goto_0
    iget-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->i:Z

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 32
    const-string v3, "wait Application Init Success"

    .line 34
    new-array v2, v2, [Ljava/lang/Object;

    .line 36
    const-string v4, "Eaglet"

    .line 38
    invoke-interface {v0, v4, v3, v2}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    const-wide/16 v2, 0xa

    .line 43
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    nop

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    new-instance v0, Lch0;

    .line 51
    const-string v3, "Activity"

    .line 53
    const-string v4, "loadNativeCode"

    .line 55
    invoke-direct {v0, v3, p0, v4}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Lch0;->a()V

    .line 61
    iget-object v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 63
    const/4 v4, 0x1

    .line 64
    invoke-interface {v3, v4}, Lhr;->e(Z)V

    .line 67
    iget-object v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 69
    if-eqz v3, :cond_2

    .line 71
    invoke-virtual {v3, p1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->loadCodeNative(Z)J

    .line 74
    move-result-wide v3

    .line 75
    iput-wide v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 77
    :cond_2
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 79
    invoke-interface {p1, v2}, Lhr;->e(Z)V

    .line 82
    invoke-virtual {v0}, Lch0;->c()V

    .line 85
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 87
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 90
    const/16 p1, 0x9

    .line 92
    invoke-static {p1}, Lb7;->d(I)V

    .line 95
    :cond_3
    :goto_1
    return-void
.end method

.method public final T(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    iget-object v0, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 5
    if-eqz v0, :cond_6

    .line 7
    iget-object v2, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 9
    if-nez v2, :cond_0

    .line 11
    goto/16 :goto_1

    .line 13
    :cond_0
    const-string v2, "handleActivityDestroy"

    .line 15
    invoke-interface {v0, v2}, Lir;->j(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lch0;

    .line 20
    const-string v3, "Activity"

    .line 22
    const-string v4, "onDestroyNative"

    .line 24
    invoke-direct {v0, v3, v1, v4}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lch0;->a()V

    .line 30
    iget-object v3, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 32
    const/16 v4, 0x17

    .line 34
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    iget-object v3, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 39
    const/4 v4, 0x1

    .line 40
    invoke-interface {v3, v4}, Lhr;->c(Z)V

    .line 43
    const/4 v3, 0x0

    .line 44
    :try_start_0
    sget-object v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 46
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 48
    const-wide/16 v7, 0x1f4

    .line 50
    invoke-virtual {v5, v7, v8, v6}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 53
    move-result v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    const/4 v5, 0x0

    .line 56
    :goto_0
    :try_start_1
    iget-wide v6, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 58
    const-wide/16 v8, 0x0

    .line 60
    cmp-long v10, v6, v8

    .line 62
    if-eqz v10, :cond_3

    .line 64
    iget-object v6, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 66
    const-string v7, "Eaglet"

    .line 68
    new-instance v10, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    const-string v11, "handleActivityDestroy mDestroyLive: "

    .line 75
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-boolean v11, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->p:Z

    .line 80
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v10

    .line 87
    new-array v11, v3, [Ljava/lang/Object;

    .line 89
    invoke-interface {v6, v7, v10, v11}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v12, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 94
    if-eqz v12, :cond_2

    .line 96
    sget-boolean v6, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->p:Z

    .line 98
    if-eqz v6, :cond_1

    .line 100
    iget-wide v13, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 105
    move-result-wide v15

    .line 106
    const/16 v17, 0x1

    .line 108
    invoke-virtual/range {v12 .. v17}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onSurfaceDestroyedNative(JJZ)V

    .line 111
    :cond_1
    iget-object v6, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 113
    iget-wide v10, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 115
    invoke-virtual {v6, v10, v11}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->unloadCodeNative(J)V

    .line 118
    :cond_2
    iput-wide v8, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 120
    iget-object v6, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 122
    invoke-interface {v6, v3}, Lir;->b(Z)V

    .line 125
    invoke-static {v4}, Lte0;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    :cond_3
    if-eqz v5, :cond_4

    .line 130
    sget-object v4, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 132
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 135
    :cond_4
    iget-object v4, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 137
    invoke-interface {v4, v3}, Lhr;->c(Z)V

    .line 140
    invoke-virtual {v0}, Lch0;->c()V

    .line 143
    iget-object v0, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 145
    invoke-interface {v0, v2}, Lir;->l(Ljava/lang/String;)V

    .line 148
    const/16 v0, 0xe

    .line 150
    invoke-static {v0}, Lb7;->d(I)V

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    if-eqz v5, :cond_5

    .line 157
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 159
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 162
    :cond_5
    throw v0

    .line 163
    :cond_6
    :goto_1
    return-void
.end method

.method public final U(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v1, "handleActivityPause"

    .line 12
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v2}, Lhr;->j(Z)V

    .line 21
    new-instance v0, Lch0;

    .line 23
    const-string v2, "Activity"

    .line 25
    const-string v3, "onPauseNative"

    .line 27
    invoke-direct {v0, v2, p0, v3}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lch0;->a()V

    .line 33
    const/4 v2, 0x0

    .line 34
    :try_start_0
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    const-wide/16 v5, 0x1f4

    .line 40
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 43
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const/4 v3, 0x0

    .line 46
    :goto_0
    :try_start_1
    iget-wide v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 48
    const-wide/16 v6, 0x0

    .line 50
    cmp-long v8, v4, v6

    .line 52
    if-eqz v8, :cond_1

    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    check-cast p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 58
    iget-object p1, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 60
    check-cast p1, Ljava/lang/Boolean;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    move-result p1

    .line 66
    iget-object v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 68
    if-eqz v4, :cond_1

    .line 70
    iget-wide v5, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 72
    invoke-virtual {v4, v5, v6, p1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onPauseNative(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :cond_1
    if-eqz v3, :cond_2

    .line 77
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 79
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 84
    invoke-interface {p1, v2}, Lhr;->j(Z)V

    .line 87
    invoke-virtual {v0}, Lch0;->c()V

    .line 90
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 92
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 95
    const/16 p1, 0xd

    .line 97
    invoke-static {p1}, Lb7;->d(I)V

    .line 100
    return-void

    .line 101
    :catchall_0
    move-exception p1

    .line 102
    if-eqz v3, :cond_3

    .line 104
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 109
    :cond_3
    throw p1

    .line 110
    :cond_4
    :goto_1
    return-void
.end method

.method public final V(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz p1, :cond_4

    .line 5
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez p1, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v0, "handleActivityResume"

    .line 12
    invoke-interface {p1, v0}, Lir;->j(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-interface {p1, v1}, Lhr;->g(Z)V

    .line 21
    new-instance p1, Lch0;

    .line 23
    const-string v1, "Activity"

    .line 25
    const-string v2, "onResumeNative"

    .line 27
    invoke-direct {p1, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lch0;->a()V

    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_0
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    const-wide/16 v4, 0x1f4

    .line 40
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 43
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    :try_start_1
    iget-wide v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 48
    const-wide/16 v5, 0x0

    .line 50
    cmp-long v7, v3, v5

    .line 52
    if-eqz v7, :cond_1

    .line 54
    iget-object v5, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 56
    if-eqz v5, :cond_1

    .line 58
    invoke-virtual {v5, v3, v4}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onResumeNative(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_1
    if-eqz v2, :cond_2

    .line 63
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 70
    invoke-interface {v2, v1}, Lhr;->g(Z)V

    .line 73
    invoke-virtual {p1}, Lch0;->c()V

    .line 76
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 78
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V

    .line 81
    const/16 p1, 0xb

    .line 83
    invoke-static {p1}, Lb7;->d(I)V

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    if-eqz v2, :cond_3

    .line 90
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    :cond_3
    throw p1

    .line 96
    :cond_4
    :goto_1
    return-void
.end method

.method public final W(Landroid/os/Message;)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz p1, :cond_4

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    invoke-interface {p1, v0}, Lhr;->f(Z)V

    .line 14
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 16
    const-string v0, "handleActivityStart"

    .line 18
    invoke-interface {p1, v0}, Lir;->j(Ljava/lang/String;)V

    .line 21
    new-instance p1, Lch0;

    .line 23
    const-string v1, "Activity"

    .line 25
    const-string v2, "onStartNative"

    .line 27
    invoke-direct {p1, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p1}, Lch0;->a()V

    .line 33
    const/4 v1, 0x0

    .line 34
    :try_start_0
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    const-wide/16 v4, 0x1f4

    .line 40
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 43
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const/4 v2, 0x0

    .line 46
    :goto_0
    :try_start_1
    iget-wide v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 48
    const-wide/16 v5, 0x0

    .line 50
    cmp-long v7, v3, v5

    .line 52
    if-eqz v7, :cond_1

    .line 54
    iget-object v5, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 56
    if-eqz v5, :cond_1

    .line 58
    invoke-virtual {v5, v3, v4}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onStartNative(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_1
    if-eqz v2, :cond_2

    .line 63
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 68
    :cond_2
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 70
    invoke-interface {v2, v1}, Lhr;->f(Z)V

    .line 73
    invoke-virtual {p1}, Lch0;->c()V

    .line 76
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 78
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V

    .line 81
    const/16 p1, 0xa

    .line 83
    invoke-static {p1}, Lb7;->d(I)V

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p1

    .line 88
    if-eqz v2, :cond_3

    .line 90
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 92
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 95
    :cond_3
    throw p1

    .line 96
    :cond_4
    :goto_1
    return-void
.end method

.method public final X(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v1, "handleActivityStop"

    .line 12
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {v0, v2}, Lhr;->m(Z)V

    .line 21
    new-instance v0, Lch0;

    .line 23
    const-string v2, "Activity"

    .line 25
    const-string v3, "onStopNative"

    .line 27
    invoke-direct {v0, v2, p0, v3}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lch0;->a()V

    .line 33
    const/4 v2, 0x0

    .line 34
    :try_start_0
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 36
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 38
    const-wide/16 v5, 0x1f4

    .line 40
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 43
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_0

    .line 45
    :catch_0
    const/4 v3, 0x0

    .line 46
    :goto_0
    :try_start_1
    iget-wide v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 48
    const-wide/16 v6, 0x0

    .line 50
    cmp-long v8, v4, v6

    .line 52
    if-eqz v8, :cond_1

    .line 54
    iget-object v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 56
    if-eqz v4, :cond_1

    .line 58
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 60
    check-cast p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 62
    iget-object p1, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 64
    check-cast p1, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    move-result p1

    .line 70
    iget-object v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 72
    iget-wide v5, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 74
    invoke-virtual {v4, v5, v6, p1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onStopNative(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    :cond_1
    if-eqz v3, :cond_2

    .line 79
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    :cond_2
    invoke-virtual {v0}, Lch0;->c()V

    .line 87
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 89
    invoke-interface {p1, v2}, Lhr;->m(Z)V

    .line 92
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 94
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 97
    const/16 p1, 0xc

    .line 99
    invoke-static {p1}, Lb7;->d(I)V

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    if-eqz v3, :cond_3

    .line 106
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 111
    :cond_3
    throw p1

    .line 112
    :cond_4
    :goto_1
    return-void
.end method

.method public final Y(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const-string v1, "handleBinderApplication"

    .line 12
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 15
    new-instance v0, Lch0;

    .line 17
    const-string v2, "Activity"

    .line 19
    invoke-direct {v0, v2, p0, v1}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Lch0;->a()V

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 27
    invoke-interface {v2}, Lir;->a()Z

    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_1

    .line 33
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "Eaglet"

    .line 40
    const-string v5, "wait config init success"

    .line 42
    invoke-interface {v2, v4, v5, v3}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const-wide/16 v2, 0xa

    .line 47
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    nop

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 55
    if-eqz v2, :cond_2

    .line 57
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    check-cast p1, Landroid/content/Context;

    .line 61
    invoke-virtual {v2, p1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->initAutoApplicationNative(Landroid/content/Context;)V

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 66
    invoke-interface {p1}, Lhr;->b()V

    .line 69
    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->i:Z

    .line 72
    invoke-virtual {v0}, Lch0;->c()V

    .line 75
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 77
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 80
    const/16 p1, 0x17

    .line 82
    invoke-static {p1}, Lb7;->d(I)V

    .line 85
    :cond_3
    :goto_1
    return-void
.end method

.method public final Z(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onConfigurationChangedNative(J)V

    .line 10
    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/16 v1, 0x14

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 12
    return-void
.end method

.method public final a0(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    iget-wide v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onLowMemoryNative(J)V

    .line 10
    :cond_0
    return-void
.end method

.method public b(Lhr;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    return-void
.end method

.method public final b0()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "handleStartBackgroundService"

    .line 8
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->i0()Z

    .line 14
    move-result v0

    .line 15
    const-wide/32 v2, 0x493e0

    .line 18
    const/16 v4, 0x13

    .line 20
    const/4 v5, 0x0

    .line 21
    const-string v6, "Eaglet"

    .line 23
    if-nez v0, :cond_1

    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->g:Z

    .line 28
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 30
    const-string v7, "startAutoService checkPermissions fail"

    .line 32
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    invoke-interface {v0, v6, v7, v5}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 39
    invoke-interface {v0, v1}, Lir;->l(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 44
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 47
    move-result-object v0

    .line 48
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 50
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 53
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lte0;->b()Z

    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 60
    invoke-static {}, Lte0;->c()Z

    .line 63
    move-result v0

    .line 64
    iget-object v7, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 66
    new-instance v8, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v9, "isFirstRunUi : "

    .line 73
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v8

    .line 83
    new-array v5, v5, [Ljava/lang/Object;

    .line 85
    invoke-interface {v7, v6, v8, v5}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l0()V

    .line 93
    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 96
    invoke-virtual {v0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 99
    move-result-object v0

    .line 100
    iget-object v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 102
    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 105
    :goto_0
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 107
    const-wide/16 v2, 0x4e20

    .line 109
    invoke-interface {v0, v2, v3}, Lir;->f(J)V

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 115
    const-string v2, "StartUpData isBackGroundServiceReady "

    .line 117
    new-array v3, v5, [Ljava/lang/Object;

    .line 119
    invoke-interface {v0, v6, v2, v3}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :goto_1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 124
    invoke-interface {v0, v1}, Lir;->l(Ljava/lang/String;)V

    .line 127
    const/16 v0, 0x18

    .line 129
    invoke-static {v0}, Lb7;->d(I)V

    .line 132
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 5
    if-nez v0, :cond_0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 11
    move-result v0

    .line 12
    new-array v1, v0, [I

    .line 14
    new-array v2, v0, [F

    .line 16
    new-array v3, v0, [F

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_0
    if-ge v4, v0, :cond_1

    .line 21
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 24
    move-result v5

    .line 25
    aput v5, v1, v4

    .line 27
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    .line 30
    move-result v5

    .line 31
    aput v5, v2, v4

    .line 33
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    .line 36
    move-result v5

    .line 37
    aput v5, v3, v4

    .line 39
    add-int/lit8 v4, v4, 0x1

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 45
    move-result v0

    .line 46
    iget-object v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 48
    const/16 v5, 0x10

    .line 50
    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 53
    move-result-object v4

    .line 54
    new-instance v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 56
    const/4 v6, 0x0

    .line 57
    invoke-direct {v5, v6}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;-><init>(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$a;)V

    .line 60
    iput-object v1, v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 62
    iput-object v2, v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->b:Ljava/lang/Object;

    .line 64
    iput-object v3, v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->c:Ljava/lang/Object;

    .line 66
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->d:Ljava/lang/Object;

    .line 72
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 75
    move-result-wide v0

    .line 76
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 79
    move-result-object v0

    .line 80
    iput-object v0, v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->e:Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 85
    move-result p1

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object p1

    .line 90
    iput-object p1, v5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->f:Ljava/lang/Object;

    .line 92
    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 96
    invoke-virtual {p1, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    :cond_2
    :goto_1
    return-void
.end method

.method public final c0(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v1, "handleStartBackgroundServiceFramework"

    .line 12
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->i0()Z

    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_1

    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->h:Z

    .line 26
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 28
    const/4 v0, 0x0

    .line 29
    new-array v0, v0, [Ljava/lang/Object;

    .line 31
    const-string v2, "Eaglet"

    .line 33
    const-string v3, "handleStartBackgroundServiceFramework checkPermissions fail"

    .line 35
    invoke-interface {p1, v2, v3, v0}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 40
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 43
    return-void

    .line 44
    :cond_1
    new-instance p1, Lch0;

    .line 46
    const-string v0, "Activity"

    .line 48
    const-string v2, "handleStartBackgroundServiceFrame"

    .line 50
    invoke-direct {p1, v0, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p1}, Lch0;->a()V

    .line 56
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 58
    invoke-interface {v0}, Lhr;->a()V

    .line 61
    const-string v0, "handleStartUp"

    .line 63
    invoke-virtual {p1, v0}, Lch0;->d(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 68
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 71
    :cond_2
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 15
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 20
    return-void
.end method

.method public final d0(Landroid/os/Message;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_1

    .line 11
    :cond_0
    const-string v1, "handleSurfaceChange"

    .line 13
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lch0;

    .line 18
    const-string v1, "Activity"

    .line 20
    const-string v2, "handleSurfaceChange"

    .line 22
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lch0;->a()V

    .line 28
    new-instance v1, Lch0;

    .line 30
    const-string v2, "Activity"

    .line 32
    const-string v3, "handleSurfaceChange lock"

    .line 34
    invoke-direct {v1, v2, p0, v3}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lch0;->a()V

    .line 40
    :try_start_0
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 42
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 44
    const-wide/16 v4, 0x1f4

    .line 46
    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 49
    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-virtual {v1}, Lch0;->c()V

    .line 55
    const/4 v1, 0x1

    .line 56
    :try_start_1
    iget-wide v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 58
    const-wide/16 v5, 0x0

    .line 60
    cmp-long v7, v3, v5

    .line 62
    if-eqz v7, :cond_8

    .line 64
    iget-object v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 66
    invoke-interface {v3}, Lir;->p()Z

    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_2

    .line 72
    const-string p1, "isDestroyRunning"

    .line 74
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 79
    const-string v0, "handleSurfaceChange"

    .line 81
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 84
    if-eqz v2, :cond_1

    .line 86
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 88
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 91
    :cond_1
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 93
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 95
    monitor-enter p1

    .line 96
    :try_start_2
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 101
    monitor-exit p1

    .line 102
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw v0

    .line 106
    :cond_2
    :try_start_3
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 108
    if-nez v3, :cond_4

    .line 110
    const-string p1, "surface null "

    .line 112
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 115
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 117
    const-string v0, "handleSurfaceChange"

    .line 119
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V

    .line 122
    const-string p1, "mSurface == null"

    .line 124
    invoke-static {p1}, Lb7;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 127
    if-eqz v2, :cond_3

    .line 129
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 131
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 134
    :cond_3
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 136
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 138
    monitor-enter p1

    .line 139
    :try_start_4
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit p1

    .line 145
    return-void

    .line 146
    :catchall_1
    move-exception v0

    .line 147
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 148
    throw v0

    .line 149
    :cond_4
    :try_start_5
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 151
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    .line 154
    move-result v3

    .line 155
    if-nez v3, :cond_6

    .line 157
    new-instance p1, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string v3, "surface isValid "

    .line 164
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 169
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    .line 172
    move-result v3

    .line 173
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 183
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 185
    const-string v0, "handleSurfaceChange"

    .line 187
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V

    .line 190
    const-string p1, "surface isValid false"

    .line 192
    invoke-static {p1}, Lb7;->f(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 195
    if-eqz v2, :cond_5

    .line 197
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 199
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 202
    :cond_5
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 204
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 206
    monitor-enter p1

    .line 207
    :try_start_6
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 209
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 212
    monitor-exit p1

    .line 213
    return-void

    .line 214
    :catchall_2
    move-exception v0

    .line 215
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 216
    throw v0

    .line 217
    :cond_6
    :try_start_7
    sget v7, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->r:I

    .line 219
    sget v8, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->s:I

    .line 221
    sget v9, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->t:I

    .line 223
    new-instance v12, Lch0;

    .line 225
    const-string v3, "Activity"

    .line 227
    const-string v4, "onSurfaceChangedNative"

    .line 229
    invoke-direct {v12, v3, p0, v4}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    invoke-virtual {v12}, Lch0;->a()V

    .line 235
    iget-object v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 237
    if-eqz v3, :cond_7

    .line 239
    iget-wide v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 241
    sget-object v6, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 243
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 245
    check-cast p1, Ljava/lang/Long;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 250
    move-result-wide v10

    .line 251
    invoke-virtual/range {v3 .. v11}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onSurfaceChangedNative(JLandroid/view/Surface;IIIJ)V

    .line 254
    :cond_7
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 256
    invoke-interface {p1}, Lhr;->k()V

    .line 259
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->o:Z

    .line 261
    invoke-virtual {v12}, Lch0;->c()V

    .line 264
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 266
    invoke-interface {p1, v1}, Lir;->h(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 269
    :cond_8
    if-eqz v2, :cond_9

    .line 271
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 273
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 276
    :cond_9
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 278
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 280
    monitor-enter p1

    .line 281
    :try_start_8
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 283
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 286
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 287
    invoke-virtual {v0}, Lch0;->c()V

    .line 290
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 292
    const-string v0, "handleSurfaceChange"

    .line 294
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V

    .line 297
    const/16 p1, 0x10

    .line 299
    invoke-static {p1}, Lb7;->d(I)V

    .line 302
    return-void

    .line 303
    :catchall_3
    move-exception v0

    .line 304
    :try_start_9
    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 305
    throw v0

    .line 306
    :catchall_4
    move-exception p1

    .line 307
    if-eqz v2, :cond_a

    .line 309
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 311
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 314
    :cond_a
    iput-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z

    .line 316
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 318
    monitor-enter v0

    .line 319
    :try_start_a
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 324
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 325
    throw p1

    .line 326
    :catchall_5
    move-exception p1

    .line 327
    :try_start_b
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 328
    throw p1

    .line 329
    :cond_b
    :goto_1
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public final e0(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_b

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_1

    .line 11
    :cond_0
    const-string v1, "handleSurfaceCreate"

    .line 13
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lch0;

    .line 18
    const-string v2, "Activity"

    .line 20
    invoke-direct {v0, v2, p0, v1}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0}, Lch0;->a()V

    .line 26
    new-instance v3, Lch0;

    .line 28
    const-string v4, "handleSurfaceCreate lock"

    .line 30
    invoke-direct {v3, v2, p0, v4}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Lch0;->a()V

    .line 36
    :try_start_0
    sget-object v4, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    const-wide/16 v6, 0x1f4

    .line 42
    invoke-virtual {v4, v6, v7, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 45
    move-result v4
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    const/4 v4, 0x0

    .line 48
    :goto_0
    invoke-virtual {v3}, Lch0;->c()V

    .line 51
    :try_start_1
    iget-wide v5, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 53
    const-wide/16 v7, 0x0

    .line 55
    cmp-long v3, v5, v7

    .line 57
    if-eqz v3, :cond_8

    .line 59
    iget-object v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 61
    invoke-interface {v3}, Lir;->p()Z

    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 67
    const-string p1, "isDestroyRunning"

    .line 69
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 74
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz v4, :cond_1

    .line 79
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 81
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 84
    :cond_1
    return-void

    .line 85
    :cond_2
    :try_start_2
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 87
    if-nez v3, :cond_4

    .line 89
    const-string p1, "surface null "

    .line 91
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 94
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 96
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 99
    const-string p1, "mSurface == null"

    .line 101
    invoke-static {p1}, Lb7;->f(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    if-eqz v4, :cond_3

    .line 106
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 108
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 111
    :cond_3
    return-void

    .line 112
    :cond_4
    :try_start_3
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 114
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_6

    .line 120
    new-instance p1, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v2, "surface isValid "

    .line 127
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 132
    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    .line 135
    move-result v2

    .line 136
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {v0, p1}, Lch0;->d(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 148
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 151
    const-string p1, "surface isValid false"

    .line 153
    invoke-static {p1}, Lb7;->f(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 156
    if-eqz v4, :cond_5

    .line 158
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 160
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 163
    :cond_5
    return-void

    .line 164
    :cond_6
    :try_start_4
    new-instance v3, Lch0;

    .line 166
    const-string v5, "onSurfaceCreatedNative"

    .line 168
    invoke-direct {v3, v2, p0, v5}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Lch0;->a()V

    .line 174
    iget-object v6, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 176
    if-eqz v6, :cond_7

    .line 178
    iget-wide v7, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 180
    sget-object v9, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 182
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 184
    check-cast p1, Ljava/lang/Long;

    .line 186
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 189
    move-result-wide v10

    .line 190
    invoke-virtual/range {v6 .. v11}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onSurfaceCreatedNative(JLandroid/view/Surface;J)V

    .line 193
    :cond_7
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 195
    invoke-interface {p1}, Lhr;->d()V

    .line 198
    const/4 p1, 0x1

    .line 199
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->o:Z

    .line 201
    sput-boolean p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->p:Z

    .line 203
    invoke-virtual {v3}, Lch0;->c()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 206
    :cond_8
    if-eqz v4, :cond_9

    .line 208
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 210
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    :cond_9
    invoke-virtual {v0}, Lch0;->c()V

    .line 216
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 218
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 221
    const/16 p1, 0xf

    .line 223
    invoke-static {p1}, Lb7;->d(I)V

    .line 226
    return-void

    .line 227
    :catchall_0
    move-exception p1

    .line 228
    if-eqz v4, :cond_a

    .line 230
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 232
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 235
    :cond_a
    throw p1

    .line 236
    :cond_b
    :goto_1
    return-void
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/16 v1, 0x11

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8
    return-void
.end method

.method public final f0(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    if-eqz v0, :cond_5

    .line 5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto/16 :goto_1

    .line 11
    :cond_0
    const-string v1, "handleSurfaceDestroy"

    .line 13
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lch0;

    .line 18
    const-string v1, "Activity"

    .line 20
    const-string v2, "handleSurfaceDestroy"

    .line 22
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Lch0;->a()V

    .line 28
    new-instance v1, Lch0;

    .line 30
    const-string v2, "Activity"

    .line 32
    const-string v3, "handleSurfaceDestroy lock"

    .line 34
    invoke-direct {v1, v2, p0, v3}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Lch0;->a()V

    .line 40
    const/4 v2, 0x0

    .line 41
    :try_start_0
    sget-object v3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 45
    const-wide/16 v5, 0x1f4

    .line 47
    invoke-virtual {v3, v5, v6, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 50
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    const/4 v3, 0x0

    .line 53
    :goto_0
    invoke-virtual {v1}, Lch0;->c()V

    .line 56
    :try_start_1
    iget-wide v4, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 58
    const-wide/16 v6, 0x0

    .line 60
    cmp-long v1, v4, v6

    .line 62
    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 66
    invoke-interface {v1, v2}, Lir;->h(Z)V

    .line 69
    new-instance v1, Lch0;

    .line 71
    const-string v4, "Activity"

    .line 73
    const-string v5, "onSurfaceDestroyedNative"

    .line 75
    invoke-direct {v1, v4, p0, v5}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1}, Lch0;->a()V

    .line 81
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 83
    check-cast p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 85
    iget-object v4, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 87
    check-cast v4, Ljava/lang/Boolean;

    .line 89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 92
    move-result v10

    .line 93
    iget-object p1, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->b:Ljava/lang/Object;

    .line 95
    check-cast p1, Ljava/lang/Long;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 100
    move-result-wide v8

    .line 101
    iget-object v5, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 103
    if-eqz v5, :cond_1

    .line 105
    iget-wide v6, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 107
    invoke-virtual/range {v5 .. v10}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onSurfaceDestroyedNative(JJZ)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 112
    invoke-interface {p1}, Lhr;->l()V

    .line 115
    sput-boolean v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->p:Z

    .line 117
    invoke-virtual {v1}, Lch0;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    :cond_2
    if-eqz v3, :cond_3

    .line 122
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 124
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 127
    :cond_3
    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k:Z

    .line 130
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->j:Ljava/lang/Object;

    .line 132
    monitor-enter p1

    .line 133
    :try_start_2
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->j:Ljava/lang/Object;

    .line 135
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 138
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 139
    invoke-virtual {v0}, Lch0;->c()V

    .line 142
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 144
    const-string v0, "handleSurfaceDestroy"

    .line 146
    invoke-interface {p1, v0}, Lir;->l(Ljava/lang/String;)V

    .line 149
    const/16 p1, 0x11

    .line 151
    invoke-static {p1}, Lb7;->d(I)V

    .line 154
    return-void

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    throw v0

    .line 158
    :catchall_1
    move-exception p1

    .line 159
    if-eqz v3, :cond_4

    .line 161
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 163
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 166
    :cond_4
    throw p1

    .line 167
    :cond_5
    :goto_1
    return-void
.end method

.method public g(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/16 v1, 0x12

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 8
    move-result-object v0

    .line 9
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 11
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 14
    return-void
.end method

.method public final g0(Landroid/os/Message;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 8
    check-cast p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 10
    iget-object v0, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 12
    move-object v4, v0

    .line 13
    check-cast v4, [I

    .line 15
    iget-object v0, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->b:Ljava/lang/Object;

    .line 17
    move-object v5, v0

    .line 18
    check-cast v5, [F

    .line 20
    iget-object v0, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->c:Ljava/lang/Object;

    .line 22
    move-object v6, v0

    .line 23
    check-cast v6, [F

    .line 25
    iget-object v0, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->d:Ljava/lang/Object;

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v7

    .line 33
    iget-object v0, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->e:Ljava/lang/Object;

    .line 35
    check-cast v0, Ljava/lang/Long;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 40
    move-result-wide v8

    .line 41
    iget-object p1, p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->f:Ljava/lang/Object;

    .line 43
    check-cast p1, Ljava/lang/Integer;

    .line 45
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v10

    .line 49
    const-string p1, "AutoMainThread"

    .line 51
    const/4 v0, 0x3

    .line 52
    const/4 v1, 0x0

    .line 53
    if-ne v7, v0, :cond_1

    .line 55
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 57
    const-string v3, "Send ACTION_CANCEL Message"

    .line 59
    new-array v11, v1, [Ljava/lang/Object;

    .line 61
    invoke-interface {v2, p1, v3, v11}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 66
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v11, "handleTouchEvent mSurfaceState :"

    .line 73
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget v11, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->u:I

    .line 78
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v3

    .line 85
    new-array v11, v1, [Ljava/lang/Object;

    .line 87
    invoke-interface {v2, p1, v3, v11}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string v3, "onTouch isCanUseBackBtn="

    .line 99
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-object v3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 104
    invoke-interface {v3}, Lir;->d()Z

    .line 107
    move-result v3

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 111
    const-string v3, ", action:"

    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    const-string v3, "Eaglet"

    .line 127
    invoke-interface {p1, v3, v2, v1}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 132
    invoke-interface {p1}, Lir;->d()Z

    .line 135
    move-result p1

    .line 136
    if-eqz p1, :cond_2

    .line 138
    sget p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->u:I

    .line 140
    const/4 v1, 0x2

    .line 141
    if-ne p1, v1, :cond_3

    .line 143
    :cond_2
    if-ne v7, v0, :cond_4

    .line 145
    :cond_3
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 147
    if-eqz v1, :cond_4

    .line 149
    iget-wide v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 151
    invoke-virtual/range {v1 .. v10}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onTouchEventNative(J[I[F[FIJI)V

    .line 154
    :cond_4
    return-void
.end method

.method public h(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;-><init>(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$a;)V

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 20
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    return-void
.end method

.method public final h0(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "handleWindowFocusChange"

    .line 8
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    move-result p1

    .line 19
    iget-wide v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->d:J

    .line 21
    const-wide/16 v4, 0x0

    .line 23
    cmp-long v0, v2, v4

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, v2, v3, p1}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onWindowFocusChangedNative(JZ)V

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 36
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public i(Z)V
    .locals 9

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "Eaglet"

    .line 5
    const-string v2, "surfaceDestroyed"

    .line 7
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lch0;->a()V

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->P()V

    .line 16
    const/4 v4, 0x2

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v8, 0x0

    .line 21
    move-object v3, p0

    .line 22
    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k0(ILandroid/view/Surface;III)V

    .line 25
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 27
    const/16 v2, 0x9

    .line 29
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 32
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 34
    const/16 v2, 0xa

    .line 36
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 39
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 41
    const/16 v2, 0xc

    .line 43
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 46
    move-result-object v1

    .line 47
    new-instance v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v2, v3}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;-><init>(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$a;)V

    .line 53
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object p1

    .line 57
    iput-object p1, v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 66
    move-result-object p1

    .line 67
    iput-object p1, v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->b:Ljava/lang/Object;

    .line 69
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 71
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 76
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->p0()V

    .line 79
    invoke-virtual {v0}, Lch0;->c()V

    .line 82
    return-void
.end method

.method public final i0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 3
    const-string v1, "isNeedFrontMemory"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lhr;->o(Ljava/lang/String;Z)Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 14
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 16
    filled-new-array {v1}, [Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1}, Lir;->n([Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :cond_0
    xor-int/lit8 v0, v0, 0x1

    .line 27
    return v0
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public j0(Lir;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    return-void
.end method

.method public k(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-direct {v1, v2}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;-><init>(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$a;)V

    .line 14
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$c;->a:Ljava/lang/Object;

    .line 20
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 22
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 24
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 27
    return-void
.end method

.method public final k0(ILandroid/view/Surface;III)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    const-string v1, "setSurfaceState"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, v1}, Lir;->j(Ljava/lang/String;)V

    .line 10
    :cond_0
    :try_start_0
    sget-object v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 12
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    const-wide/16 v3, 0x1f4

    .line 16
    invoke-virtual {v0, v3, v4, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 19
    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    goto :goto_0

    .line 21
    :catch_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    :try_start_1
    sput-object p2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q:Landroid/view/Surface;

    .line 24
    sput p3, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->r:I

    .line 26
    sput p4, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->s:I

    .line 28
    sput p5, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->t:I

    .line 30
    sput p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->u:I

    .line 32
    iget-object p3, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->e:Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;

    .line 34
    if-eqz p3, :cond_1

    .line 36
    invoke-static {p1, p2}, Lcom/autonavi/eaglet/uisurface/EventProcessorImpl;->onSurfaceEventNative(ILandroid/view/Surface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :cond_1
    if-eqz v0, :cond_2

    .line 41
    sget-object p1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 48
    if-eqz p1, :cond_3

    .line 50
    invoke-interface {p1, v1}, Lir;->l(Ljava/lang/String;)V

    .line 53
    :cond_3
    return-void

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    if-eqz v0, :cond_4

    .line 57
    sget-object p2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v:Ljava/util/concurrent/locks/ReentrantLock;

    .line 59
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 62
    :cond_4
    throw p1
.end method

.method public l()V
    .locals 3

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "Activity"

    .line 5
    const-string v2, "onInitBackgrounndService"

    .line 7
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lch0;->a()V

    .line 13
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 15
    const/16 v2, 0x13

    .line 17
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 24
    invoke-virtual {v0}, Lch0;->c()V

    .line 27
    return-void
.end method

.method public final l0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/16 v1, 0x13

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    new-instance v0, Lch0;

    .line 10
    const-string v1, "Activity"

    .line 12
    const-string v2, "handleStartBackgroundService"

    .line 14
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lch0;->a()V

    .line 20
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->b:Lhr;

    .line 22
    if-eqz v1, :cond_0

    .line 24
    invoke-interface {v1}, Lhr;->n()V

    .line 27
    :cond_0
    invoke-virtual {v0}, Lch0;->c()V

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {v0}, Lte0;->e(Z)V

    .line 34
    return-void
.end method

.method public m(Landroid/view/Surface;III)V
    .locals 9

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "Eaglet"

    .line 5
    const-string v2, "surfaceChanged"

    .line 7
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lch0;->a()V

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->O()V

    .line 16
    const/4 v4, 0x0

    .line 17
    move-object v3, p0

    .line 18
    move-object v5, p1

    .line 19
    move v6, p2

    .line 20
    move v7, p3

    .line 21
    move v8, p4

    .line 22
    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k0(ILandroid/view/Surface;III)V

    .line 25
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 27
    const/16 p2, 0xa

    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide p2

    .line 37
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    iget-object p2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 45
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 48
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->o0()V

    .line 51
    invoke-virtual {v0}, Lch0;->c()V

    .line 54
    return-void
.end method

.method public final m0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 7
    return-void
.end method

.method public n(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 7
    move-result-object v0

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object p1

    .line 12
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    invoke-virtual {p0, v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->S(Landroid/os/Message;)V

    .line 17
    return-void
.end method

.method public final n0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lir;->c()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->c:Lir;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "waitForIncrementTimes:"

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    const-string v4, "AutoEventProcessor"

    .line 33
    invoke-interface {v1, v4, v2, v3}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v0, 0xc8

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 44
    :goto_1
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 46
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 49
    move-result v1

    .line 50
    if-ge v1, v0, :cond_1

    .line 52
    iget-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->o:Z

    .line 54
    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 58
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 61
    const-wide/16 v1, 0x5

    .line 63
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_1

    .line 67
    :catch_0
    nop

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    return-void
.end method

.method public o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public final o0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->l:Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v1
.end method

.method public onLowMemory()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 3
    const/4 v1, 0x7

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7
    return-void
.end method

.method public p(Landroid/view/Surface;)V
    .locals 9

    .line 1
    new-instance v0, Lch0;

    .line 3
    const-string v1, "Eaglet"

    .line 5
    const-string v2, "surfaceCreated"

    .line 7
    invoke-direct {v0, v1, p0, v2}, Lch0;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lch0;->a()V

    .line 13
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->Q()V

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v3, p0

    .line 21
    move-object v5, p1

    .line 22
    invoke-virtual/range {v3 .. v8}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k0(ILandroid/view/Surface;III)V

    .line 25
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;

    .line 27
    const/16 v1, 0x9

    .line 29
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 36
    move-result-wide v1

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object v1

    .line 41
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 46
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->n0()V

    .line 49
    invoke-virtual {p0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->m0()V

    .line 52
    invoke-virtual {v0}, Lch0;->c()V

    .line 55
    return-void
.end method

.method public final p0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->j:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :catch_0
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-nez v1, :cond_0

    .line 8
    :try_start_1
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->j:Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 18
    throw v1
.end method

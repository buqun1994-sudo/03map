.class public Lrv;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrv$d;
    }
.end annotation


# static fields
.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;


# instance fields
.field public A:Landroid/content/res/Configuration;

.field public final B:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public C:Lqs;

.field public D:Landroid/view/View$OnLayoutChangeListener;

.field public E:I

.field public F:Z

.field public G:Lk6$d;

.field public H:Ljava/util/HashMap;

.field public I:Ljava/util/HashMap;

.field public a:Ljava/lang/ref/WeakReference;

.field public final b:I

.field public c:Landroid/app/Application;

.field public d:Leq$a;

.field public e:Leq$a;

.field public f:Leq$a;

.field public g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public h:Landroid/content/Context;

.field public i:I

.field public j:I

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:Z

.field public p:Loy;

.field public q:Lfo;

.field public r:Ls20;

.field public s:I

.field public t:I

.field public u:I

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Landroid/os/HandlerThread;

.field public y:Landroid/os/Handler;

.field public z:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Lrv;->b:I

    .line 8
    new-instance v0, Leq$a;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object v0, p0, Lrv;->d:Leq$a;

    .line 16
    new-instance v0, Leq$a;

    .line 18
    invoke-direct {v0, v1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 21
    iput-object v0, p0, Lrv;->e:Leq$a;

    .line 23
    new-instance v0, Leq$a;

    .line 25
    invoke-direct {v0, v1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 28
    iput-object v0, p0, Lrv;->f:Leq$a;

    .line 30
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 36
    iput-object v0, p0, Lrv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lrv;->j:I

    .line 41
    iput-boolean v2, p0, Lrv;->k:Z

    .line 43
    iput-boolean v2, p0, Lrv;->l:Z

    .line 45
    iput-boolean v2, p0, Lrv;->m:Z

    .line 47
    const/4 v3, 0x1

    .line 48
    iput-boolean v3, p0, Lrv;->n:Z

    .line 50
    iput-boolean v2, p0, Lrv;->o:Z

    .line 52
    iput v2, p0, Lrv;->s:I

    .line 54
    iput-object v1, p0, Lrv;->v:Ljava/lang/String;

    .line 56
    const-string v4, ""

    .line 58
    iput-object v4, p0, Lrv;->w:Ljava/lang/String;

    .line 60
    iput-object v1, p0, Lrv;->x:Landroid/os/HandlerThread;

    .line 62
    iput-object v1, p0, Lrv;->y:Landroid/os/Handler;

    .line 64
    iput-object v1, p0, Lrv;->z:Ljava/lang/Object;

    .line 66
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 71
    iput-object v1, p0, Lrv;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v1, Lrv$a;

    .line 75
    invoke-direct {v1, p0}, Lrv$a;-><init>(Lrv;)V

    .line 78
    iput-object v1, p0, Lrv;->C:Lqs;

    .line 80
    new-instance v1, Lrv$b;

    .line 82
    invoke-direct {v1, p0}, Lrv$b;-><init>(Lrv;)V

    .line 85
    iput-object v1, p0, Lrv;->D:Landroid/view/View$OnLayoutChangeListener;

    .line 87
    iput v0, p0, Lrv;->E:I

    .line 89
    iput-boolean v3, p0, Lrv;->F:Z

    .line 91
    new-instance v0, Lrv$c;

    .line 93
    invoke-direct {v0, p0}, Lrv$c;-><init>(Lrv;)V

    .line 96
    iput-object v0, p0, Lrv;->G:Lk6$d;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    .line 100
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    iput-object v0, p0, Lrv;->H:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    .line 107
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    iput-object v0, p0, Lrv;->I:Ljava/util/HashMap;

    .line 112
    return-void
.end method

.method public static H()Lrv;
    .locals 1

    .line 1
    invoke-static {}, Lrv$d;->a()Lrv;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static N()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic a(Lrv;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lrv;->m:Z

    .line 3
    return p0
.end method

.method public static synthetic b(Lrv;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrv;->m:Z

    .line 3
    return p1
.end method

.method public static synthetic c(Lrv;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lrv;->n:Z

    .line 3
    return p0
.end method

.method public static synthetic d(Lrv;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrv;->n:Z

    .line 3
    return p1
.end method

.method public static synthetic e(Lrv;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lrv;->y:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static synthetic f(Lrv;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 1
    iput-object p1, p0, Lrv;->y:Landroid/os/Handler;

    .line 3
    return-object p1
.end method

.method public static synthetic g(Lrv;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lrv;->x:Landroid/os/HandlerThread;

    .line 3
    return-object p0
.end method

.method public static synthetic h(Lrv;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 1
    iput-object p1, p0, Lrv;->x:Landroid/os/HandlerThread;

    .line 3
    return-object p1
.end method

.method public static synthetic i(Lrv;)Loy;
    .locals 0

    .line 1
    iget-object p0, p0, Lrv;->p:Loy;

    .line 3
    return-object p0
.end method

.method public static synthetic j(Lrv;Loy;)Loy;
    .locals 0

    .line 1
    iput-object p1, p0, Lrv;->p:Loy;

    .line 3
    return-object p1
.end method

.method public static synthetic k(Lrv;)Lfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lrv;->q:Lfo;

    .line 3
    return-object p0
.end method

.method public static synthetic l(Lrv;Lfo;)Lfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lrv;->q:Lfo;

    .line 3
    return-object p1
.end method

.method public static synthetic m(Lrv;)I
    .locals 0

    .line 1
    iget p0, p0, Lrv;->t:I

    .line 3
    return p0
.end method

.method public static synthetic n(Lrv;I)I
    .locals 0

    .line 1
    iput p1, p0, Lrv;->t:I

    .line 3
    return p1
.end method

.method public static synthetic o(Lrv;)I
    .locals 0

    .line 1
    iget p0, p0, Lrv;->u:I

    .line 3
    return p0
.end method

.method public static synthetic p(Lrv;I)I
    .locals 0

    .line 1
    iput p1, p0, Lrv;->u:I

    .line 3
    return p1
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget v0, p0, Lrv;->s:I

    .line 3
    return v0
.end method

.method public B()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lrv;->j:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "JNIContext"

    .line 15
    const-string v2, "getChannelIconId mChannelIconId={?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lrv;->j:I

    .line 22
    return v0
.end method

.method public C()I
    .locals 4

    .line 1
    invoke-static {}, Lta0;->c()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    sget v1, La90;->a:I

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 10
    move-result v0

    if-gtz v0, :cond_0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    :cond_0
    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x4

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    const-string v2, "JNIContext"

    .line 23
    const-string v3, "customDensity:{?}"

    .line 25
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v0
.end method

.method public D(Landroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    return-object p1

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p0, p1}, Lrv;->T(Landroid/content/Context;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-static {p1}, Llj;->a(Landroid/content/Context;)Landroid/content/Context;

    .line 19
    move-result-object p1

    .line 20
    :cond_1
    return-object p1
.end method

.method public E(Ljava/lang/String;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lrv;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return p2

    .line 10
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 16
    return p2

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lrv;->H:Ljava/util/HashMap;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_2

    .line 40
    iget-object p1, p0, Lrv;->H:Ljava/util/HashMap;

    .line 42
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Ljava/lang/Integer;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result p1

    .line 52
    return p1

    .line 53
    :cond_2
    invoke-static {}, Lrv;->N()Z

    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 59
    invoke-static {}, Lrv;->H()Lrv;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 66
    move-result-object v1

    .line 67
    if-nez v1, :cond_3

    .line 69
    goto :goto_0

    .line 70
    :cond_3
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 85
    move-result p1

    .line 86
    iget-object v1, p0, Lrv;->H:Ljava/util/HashMap;

    .line 88
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v2

    .line 92
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return p1

    .line 96
    :catch_0
    move-exception p1

    .line 97
    const/4 v0, 0x0

    .line 98
    new-array v0, v0, [Ljava/lang/Object;

    .line 100
    const-string v1, "JNIContext"

    .line 102
    const-string v2, "occur an exception!"

    .line 104
    invoke-static {v1, v2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 107
    :cond_4
    :goto_0
    return p2
.end method

.method public F()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->a:Ljava/lang/ref/WeakReference;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 13
    :goto_0
    return-object v0
.end method

.method public G()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lrv;->i:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "JNIContext"

    .line 15
    const-string v2, "getIconId mLauncherIconId={?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget v0, p0, Lrv;->i:I

    .line 22
    return v0
.end method

.method public I()Lxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->p:Loy;

    .line 3
    return-object v0
.end method

.method public J()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lrv;->L()Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0
.end method

.method public K()Ls20;
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->r:Ls20;

    .line 3
    return-object v0
.end method

.method public declared-synchronized L()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lrv;->v:Ljava/lang/String;

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lrv;->v:Ljava/lang/String;

    .line 16
    :cond_0
    iget-object v0, p0, Lrv;->v:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit p0

    .line 19
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    monitor-exit p0

    .line 22
    throw v0
.end method

.method public M()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->w:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public O()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrv;->o:Z

    .line 3
    return v0
.end method

.method public P()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrv;->k:Z

    .line 3
    return v0
.end method

.method public Q()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lrv;->c:Landroid/app/Application;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 10
    move-result-object v0

    .line 11
    iget-object v2, p0, Lrv;->c:Landroid/app/Application;

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    const/16 v3, 0x80

    .line 19
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 27
    if-eqz v0, :cond_1

    .line 29
    const-string v2, "autonavi_carEnergyIgnore"

    .line 31
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 34
    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    move v1, v0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    :cond_1
    :goto_0
    return v1
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrv;->l:Z

    .line 3
    return v0
.end method

.method public S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->c:Landroid/app/Application;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0, v0}, Lrv;->T(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public T(Landroid/content/Context;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lrv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lrv;->f:Leq$a;

    .line 13
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lrv;->t(Landroid/content/Context;)V

    .line 22
    :cond_0
    iget-object v0, p0, Lrv;->f:Leq$a;

    .line 24
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 30
    iget-object p1, p0, Lrv;->f:Leq$a;

    .line 32
    invoke-virtual {p1}, Leq$a;->a()Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/Boolean;

    .line 38
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_1
    :try_start_0
    iget-object v0, p0, Lrv;->d:Leq$a;

    .line 45
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_3

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 58
    move-result-object p1

    .line 59
    const/16 v1, 0x80

    .line 61
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 67
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 69
    if-eqz p1, :cond_2

    .line 71
    const-string v0, "autonavi_directBootAware"

    .line 73
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 76
    move-result p1

    .line 77
    new-instance v0, Leq$a;

    .line 79
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    move-result-object p1

    .line 83
    invoke-direct {v0, p1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 86
    iput-object v0, p0, Lrv;->d:Leq$a;

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    new-instance p1, Leq$a;

    .line 91
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 93
    invoke-direct {p1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 96
    iput-object p1, p0, Lrv;->d:Leq$a;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 99
    :catch_0
    move-exception p1

    .line 100
    iget-object v0, p0, Lrv;->d:Leq$a;

    .line 102
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    invoke-virtual {v0, v1}, Leq$a;->c(Ljava/lang/Object;)V

    .line 107
    const-string v0, "JNIContext"

    .line 109
    const-string v1, "isDirectAware occur a NameNotFoundException e:{?}"

    .line 111
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 114
    :cond_3
    :goto_0
    iget-object p1, p0, Lrv;->d:Leq$a;

    .line 116
    invoke-virtual {p1}, Leq$a;->b()Z

    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lrv;->d:Leq$a;

    .line 124
    invoke-virtual {p1}, Leq$a;->a()Ljava/lang/Object;

    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Ljava/lang/Boolean;

    .line 130
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 133
    move-result p1

    .line 134
    if-eqz p1, :cond_4

    .line 136
    const/4 p1, 0x1

    .line 137
    goto :goto_1

    .line 138
    :cond_4
    const/4 p1, 0x0

    .line 139
    :goto_1
    return p1
.end method

.method public U()Z
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lrv;->e:Leq$a;

    .line 3
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lrv;->c:Landroid/app/Application;

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lrv;->c:Landroid/app/Application;

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    const/16 v2, 0x80

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 29
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 31
    if-eqz v0, :cond_0

    .line 33
    const-string v1, "autonavi_disableExternalFilesDir"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    new-instance v1, Leq$a;

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 48
    iput-object v1, p0, Lrv;->e:Leq$a;

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Leq$a;

    .line 53
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 55
    invoke-direct {v0, v1}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 58
    iput-object v0, p0, Lrv;->e:Leq$a;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    iget-object v1, p0, Lrv;->e:Leq$a;

    .line 64
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v1, v2}, Leq$a;->c(Ljava/lang/Object;)V

    .line 69
    const-string v1, "JNIContext"

    .line 71
    const-string v2, "isDisableExternalFilesDir occur a NameNotFoundException e:{?}"

    .line 73
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :cond_1
    :goto_0
    iget-object v0, p0, Lrv;->e:Leq$a;

    .line 78
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 84
    iget-object v0, p0, Lrv;->e:Leq$a;

    .line 86
    invoke-virtual {v0}, Leq$a;->a()Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Ljava/lang/Boolean;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_2

    .line 98
    const/4 v0, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v0, 0x0

    .line 101
    :goto_1
    return v0
.end method

.method public V()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrv;->F:Z

    .line 3
    return v0
.end method

.method public W()V
    .locals 7

    .line 1
    invoke-static {}, Lk6;->g()Lk6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lk6;->j()Z

    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "JNIContext"

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v0, "launchAuto isForeground == true"

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 25
    move-result-object v0

    .line 26
    const/16 v3, 0x274b

    .line 28
    invoke-virtual {v0, v3}, Lse;->getBooleanValue(I)Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const-string v0, "Custom launchAuto"

    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 42
    :cond_1
    const-string v0, "launchAuto"

    .line 44
    new-array v3, v1, [Ljava/lang/Object;

    .line 46
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 52
    move-result-object v0

    .line 53
    const-string v3, "androidauto://launch_do_nothing?sourceApplication=AutoStandradProtocal"

    .line 55
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object v3

    .line 59
    new-instance v4, Landroid/content/Intent;

    .line 61
    const-string v5, "android.intent.action.VIEW"

    .line 63
    invoke-direct {v4, v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 66
    const/high16 v3, 0x10000000

    .line 68
    invoke-virtual {v4, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 71
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :try_start_0
    const-string v3, "start act"

    .line 80
    new-array v5, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 88
    move-result-wide v5

    .line 89
    invoke-static {}, Lse;->c()Lse;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lse;->getCustomActivityOptions()Landroid/app/ActivityOptions;

    .line 96
    move-result-object v3

    .line 97
    if-eqz v3, :cond_2

    .line 99
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    .line 102
    move-result-object v3

    .line 103
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 110
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 113
    move-result-wide v3

    .line 114
    sub-long/2addr v3, v5

    .line 115
    const-string v0, "launch cost{?}"

    .line 117
    const/4 v5, 0x1

    .line 118
    new-array v5, v5, [Ljava/lang/Object;

    .line 120
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 123
    move-result-object v3

    .line 124
    aput-object v3, v5, v1

    .line 126
    invoke-static {v2, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    goto :goto_1

    .line 135
    :catch_1
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    :goto_1
    return-void
.end method

.method public X()V
    .locals 9

    .line 1
    const-string v0, "launchPendingAuto ocuur a error!"

    .line 3
    invoke-static {}, Lk6;->g()Lk6;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lk6;->j()Z

    .line 10
    move-result v1

    .line 11
    const-string v2, "JNIContext"

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 16
    const-string v0, "launchPendingAuto isForeground == true"

    .line 18
    new-array v1, v3, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 27
    move-result-object v1

    .line 28
    const/16 v4, 0x274b

    .line 30
    invoke-virtual {v1, v4}, Lse;->getBooleanValue(I)Z

    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 36
    const-string v0, "Custom launchPendingAuto"

    .line 38
    new-array v1, v3, [Ljava/lang/Object;

    .line 40
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void

    .line 44
    :cond_1
    const-string v1, "launchPendingAuto"

    .line 46
    new-array v4, v3, [Ljava/lang/Object;

    .line 48
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 54
    move-result-object v1

    .line 55
    const-string v4, "androidauto://launch_do_nothing?sourceApplication=AutoStandradProtocal"

    .line 57
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 60
    move-result-object v4

    .line 61
    new-instance v5, Landroid/content/Intent;

    .line 63
    const-string v6, "android.intent.action.VIEW"

    .line 65
    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 68
    const/high16 v4, 0x10000000

    .line 70
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 73
    const-string v4, "start act"

    .line 75
    new-array v6, v3, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    move-result-wide v6

    .line 84
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 86
    const/16 v8, 0x1f

    .line 88
    if-lt v4, v8, :cond_2

    .line 90
    const/high16 v4, 0x4000000

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const/4 v4, 0x0

    .line 94
    :goto_0
    invoke-static {v1, v3, v5, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_3

    .line 100
    :try_start_0
    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 106
    move-result-wide v4

    .line 107
    sub-long/2addr v4, v6

    .line 108
    const-string v1, "launch cost{?}"

    .line 110
    const/4 v6, 0x1

    .line 111
    new-array v6, v6, [Ljava/lang/Object;

    .line 113
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 116
    move-result-object v4

    .line 117
    aput-object v4, v6, v3

    .line 119
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception v1

    .line 124
    new-array v3, v3, [Ljava/lang/Object;

    .line 126
    invoke-static {v2, v0, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 129
    goto :goto_1

    .line 130
    :catch_1
    move-exception v1

    .line 131
    new-array v3, v3, [Ljava/lang/Object;

    .line 133
    invoke-static {v2, v0, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 136
    :cond_3
    :goto_1
    return-void
.end method

.method public Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v2, 0x1

    .line 8
    aput-object p2, v0, v2

    .line 10
    const/4 v3, 0x2

    .line 11
    aput-object p3, v0, v3

    .line 13
    const/4 v3, 0x3

    .line 14
    aput-object p4, v0, v3

    .line 16
    const/4 v3, 0x4

    .line 17
    aput-object p5, v0, v3

    .line 19
    const/4 v3, 0x5

    .line 20
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v4

    .line 24
    aput-object v4, v0, v3

    .line 26
    const-string v3, "JNIContext"

    .line 28
    const-string v4, "launchThirdAppActivity action = {?}, uriData = {?}, packageName = {?}, activityClassName = {?}, category = {?}, activityFlag = {?}"

    .line 30
    invoke-static {v3, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 36
    move-result-object v0

    .line 37
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_0

    .line 43
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 46
    move-result-object p2

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p2, 0x0

    .line 49
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 55
    if-eqz p2, :cond_1

    .line 57
    new-instance v4, Landroid/content/Intent;

    .line 59
    invoke-direct {v4, p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    new-instance v4, Landroid/content/Intent;

    .line 65
    invoke-direct {v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    new-instance v4, Landroid/content/Intent;

    .line 71
    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 74
    :goto_1
    invoke-virtual {v4, p5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    invoke-virtual {v4, p6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {v4, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    const-string p1, "launchThirdAppActivity start"

    .line 85
    new-array p2, v1, [Ljava/lang/Object;

    .line 87
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 93
    move-result-wide p1

    .line 94
    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 100
    move-result-wide p3

    .line 101
    sub-long/2addr p3, p1

    .line 102
    const-string p1, "launchThirdAppActivity cost{?}"

    .line 104
    new-array p2, v2, [Ljava/lang/Object;

    .line 106
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 109
    move-result-object p3

    .line 110
    aput-object p3, p2, v1

    .line 112
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    goto :goto_2

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    new-array p2, v1, [Ljava/lang/Object;

    .line 123
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    goto :goto_2

    .line 127
    :catch_1
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 131
    move-result-object p1

    .line 132
    new-array p2, v1, [Ljava/lang/Object;

    .line 134
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_2
    return-void
.end method

.method public Z()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeOnActivityCreated()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const-string v2, "JNIContext"

    .line 11
    const-string v3, "onActivityCreated execute GAdaAndroid.nativeOnActivityCreated occour an Exception!"

    .line 13
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    :goto_0
    return-void
.end method

.method public a0(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lrv;->o:Z

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p1

    .line 11
    aput-object p1, v0, v1

    .line 13
    const-string p1, "JNIContext"

    .line 15
    const-string v1, "onAttentionAgreed = {?}"

    .line 17
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean p1, p0, Lrv;->o:Z

    .line 22
    if-eqz p1, :cond_0

    .line 24
    invoke-static {}, Lse;->c()Lse;

    .line 27
    move-result-object p1

    .line 28
    const/16 v0, 0x2746

    .line 30
    invoke-virtual {p1, v0}, Lse;->getBooleanValue(I)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Lf30;->I()V

    .line 39
    :cond_0
    return-void
.end method

.method public b0(Landroid/content/res/Configuration;)V
    .locals 4

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2735

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lrv;->A:Landroid/content/res/Configuration;

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "JNIContext"

    .line 19
    if-nez v0, :cond_1

    .line 21
    const-string p1, "onConfigurationChanged, mAppConfig is null"

    .line 23
    new-array v0, v1, [Ljava/lang/Object;

    .line 25
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-void

    .line 29
    :cond_1
    invoke-virtual {p0, v0, p1}, Lrv;->q0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z

    .line 32
    move-result v0

    .line 33
    new-instance v3, Landroid/content/res/Configuration;

    .line 35
    invoke-direct {v3, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 38
    iput-object v3, p0, Lrv;->A:Landroid/content/res/Configuration;

    .line 40
    const/4 p1, 0x1

    .line 41
    new-array p1, p1, [Ljava/lang/Object;

    .line 43
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v3

    .line 47
    aput-object v3, p1, v1

    .line 49
    const-string v3, "onConfigurationChanged, themeChanged={?}"

    .line 51
    invoke-static {v2, v3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    if-eqz v0, :cond_4

    .line 56
    iget-object p1, p0, Lrv;->z:Ljava/lang/Object;

    .line 58
    if-eqz p1, :cond_2

    .line 60
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->getAssetManager()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_3

    .line 70
    :cond_2
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeUpdateAsset()V

    .line 73
    const-string p1, "nativeUpdateAsset"

    .line 75
    new-array v0, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_3
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->getAssetManager()Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lrv;->z:Ljava/lang/Object;

    .line 86
    :cond_4
    return-void
.end method

.method public c0(Ls20;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv;->r:Ls20;

    .line 3
    return-void
.end method

.method public d0(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iput-object v0, p0, Lrv;->a:Ljava/lang/ref/WeakReference;

    .line 8
    iget-object p1, p0, Lrv;->c:Landroid/app/Application;

    .line 10
    invoke-static {p1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lsi;->I()I

    .line 17
    invoke-virtual {p1}, Lsi;->H()I

    .line 20
    const/16 p1, 0x3f1

    .line 22
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetBooleanValue(I)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lrv;->o0(Z)V

    .line 32
    :cond_0
    return-void
.end method

.method public e0(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->D:Landroid/view/View$OnLayoutChangeListener;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    return-void
.end method

.method public f0(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lrv;->r:Ls20;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v0, "JNIContext NaviVoiceCallback.returnIfly"

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    const-string v3, "JNIContext"

    .line 12
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lrv;->r:Ls20;

    .line 17
    invoke-interface {v0, v1, p1, p2}, Ls20;->c(IILjava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method

.method public g0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->r:Ls20;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Ls20;->a(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public h0(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "JNIContext"

    .line 9
    const-string v2, "setAppVersion appVersion:{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sput-object p1, Lrv;->K:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sput-object p1, Lrv;->J:Ljava/lang/String;

    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object p1, v0, v1

    .line 9
    const-string p1, "JNIContext"

    .line 11
    const-string v1, "setAppVersionName: versionName == {?}"

    .line 13
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    return-void
.end method

.method public j0(Landroid/app/Application;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lrv;->c:Landroid/app/Application;

    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lrv;->m:Z

    .line 6
    invoke-static {}, Lk6;->g()Lk6;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lk6;->h(Landroid/app/Application;)V

    .line 13
    iget-object v1, p0, Lrv;->C:Lqs;

    .line 15
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->addServiceStartListener(Lqs;)V

    .line 18
    invoke-static {p1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lsi;->I()I

    .line 25
    move-result v1

    .line 26
    iput v1, p0, Lrv;->t:I

    .line 28
    invoke-static {p1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lsi;->H()I

    .line 35
    move-result v1

    .line 36
    iput v1, p0, Lrv;->u:I

    .line 38
    invoke-static {}, Lk6;->g()Lk6;

    .line 41
    move-result-object v1

    .line 42
    iget-object v2, p0, Lrv;->G:Lk6$d;

    .line 44
    invoke-virtual {v1, v2}, Lk6;->m(Lk6$d;)V

    .line 47
    iput-boolean v0, p0, Lrv;->m:Z

    .line 49
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 67
    new-instance v0, Landroid/content/res/Configuration;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 76
    move-result-object v1

    .line 77
    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 80
    iput-object v0, p0, Lrv;->A:Landroid/content/res/Configuration;

    .line 82
    :cond_0
    invoke-virtual {p0, p1}, Lrv;->t(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public k0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lrv;->s:I

    .line 3
    return-void
.end method

.method public l0(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lrv;->k:Z

    .line 3
    return-void
.end method

.method public m0(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lrv;->l:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Lrv;->k0(I)V

    .line 13
    :cond_0
    return-void
.end method

.method public n0(I)V
    .locals 0

    .line 1
    iput p1, p0, Lrv;->i:I

    .line 3
    return-void
.end method

.method public final o0(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lrv;->F()Landroid/app/Activity;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 15
    :cond_1
    const/16 v1, 0x80

    .line 17
    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 26
    :goto_0
    return-void
.end method

.method public p0(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrv;->w:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public q(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->D:Landroid/view/View$OnLayoutChangeListener;

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 6
    return-void
.end method

.method public final q0(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 4
    move-result p1

    .line 5
    const/high16 p2, -0x80000000

    .line 7
    and-int/2addr p1, p2

    .line 8
    if-ne p1, p2, :cond_0

    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public r(Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "JNIContext"

    .line 6
    const-string v3, "dispathIntent start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    if-nez p1, :cond_0

    .line 13
    const-string p1, "dispathIntent inent == null "

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Ll30;->g()Ll30;

    .line 24
    move-result-object v1

    .line 25
    const/16 v3, 0x1bc

    .line 27
    invoke-virtual {v1, v3}, Ll30;->b(I)Loc;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1, p1}, Loc;->k(Ljava/lang/Object;)V

    .line 34
    const-string p1, "dispathIntent end"

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method

.method public r0()V
    .locals 1

    .line 1
    invoke-static {}, Ltu;->c()Ltu;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltu;->y()V

    .line 8
    iget-object v0, p0, Lrv;->a:Ljava/lang/ref/WeakReference;

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lrv;->a:Ljava/lang/ref/WeakReference;

    .line 18
    :cond_0
    return-void
.end method

.method public s(Landroid/content/Intent;I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "JNIContext"

    .line 13
    const-string v4, "dispathIntent start displayId:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-ltz p2, :cond_0

    .line 20
    iput p2, p0, Lrv;->E:I

    .line 22
    iput-boolean v3, p0, Lrv;->F:Z

    .line 24
    :cond_0
    invoke-virtual {p0, p1}, Lrv;->r(Landroid/content/Intent;)V

    .line 27
    iput-boolean v0, p0, Lrv;->F:Z

    .line 29
    return-void
.end method

.method public final t(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    const/16 v3, 0x80

    .line 14
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v1

    .line 20
    const-string v2, "JNIContext"

    .line 22
    const-string v3, "occur an NameNotFoundException"

    .line 24
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 31
    if-eqz v0, :cond_2

    .line 33
    const-string v1, "autonavi_disableNSUDirectBootAware"

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_1

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    const/16 v1, 0x17

    .line 45
    if-lt v0, v1, :cond_1

    .line 47
    const-string v0, "user"

    .line 49
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/os/UserManager;

    .line 55
    iget-object v0, p0, Lrv;->f:Leq$a;

    .line 57
    invoke-static {p1}, Lpv;->a(Landroid/os/UserManager;)Z

    .line 60
    move-result p1

    .line 61
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {v0, p1}, Leq$a;->c(Ljava/lang/Object;)V

    .line 68
    :cond_1
    iget-object p1, p0, Lrv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    const/4 v0, 0x0

    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 75
    :cond_2
    return-void
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lrv;->u:I

    .line 3
    return v0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lrv;->K:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lrv;->J:Ljava/lang/String;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, ""

    .line 8
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 19
    move-result-object v2

    .line 20
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const/16 v3, 0x4000

    .line 27
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 30
    move-result-object v1

    .line 31
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 33
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 39
    move-result v1

    .line 40
    if-gtz v1, :cond_2

    .line 42
    :cond_1
    const-string v0, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    return-object v0

    .line 45
    :catchall_0
    move-exception v1

    .line 46
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 47
    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    const-string v2, "JNIContext"

    .line 51
    const-string v3, "getAppVersionName:"

    .line 53
    const/4 v4, 0x0

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    .line 56
    invoke-static {v2, v3, v1, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 59
    :cond_2
    sput-object v0, Lrv;->J:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lrv;->t:I

    .line 3
    return v0
.end method

.method public y()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Lrv;->c:Landroid/app/Application;

    .line 3
    return-object v0
.end method

.method public z()Landroid/content/Context;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lrv;->y()Landroid/app/Application;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lrv;->c:Landroid/app/Application;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {p0, v0}, Lrv;->T(Landroid/content/Context;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 22
    iget-object v0, p0, Lrv;->h:Landroid/content/Context;

    .line 24
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lrv;->c:Landroid/app/Application;

    .line 28
    invoke-static {v0}, Lqv;->a(Landroid/app/Application;)Landroid/content/Context;

    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lrv;->h:Landroid/content/Context;

    .line 34
    :cond_1
    iget-object v0, p0, Lrv;->h:Landroid/content/Context;

    .line 36
    return-object v0

    .line 37
    :cond_2
    invoke-virtual {p0}, Lrv;->y()Landroid/app/Application;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

.class public Lc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static l:I = 0x1

.field public static m:I

.field public static final n:Lc;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Landroid/media/MediaPlayer;

.field public e:Z

.field public f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public g:Ljava/util/Properties;

.field public h:Landroid/media/MediaPlayer$OnCompletionListener;

.field public i:Landroid/media/MediaPlayer$OnPreparedListener;

.field public j:Landroid/media/MediaPlayer$OnErrorListener;

.field public k:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc;

    .line 3
    invoke-direct {v0}, Lc;-><init>()V

    .line 6
    sput-object v0, Lc;->n:Lc;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lc;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lc;->b:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lc;->c:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 13
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 19
    iput-object v0, p0, Lc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    new-instance v0, Lc$a;

    .line 23
    invoke-direct {v0, p0}, Lc$a;-><init>(Lc;)V

    .line 26
    iput-object v0, p0, Lc;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 28
    new-instance v0, Lc$b;

    .line 30
    invoke-direct {v0, p0}, Lc$b;-><init>(Lc;)V

    .line 33
    iput-object v0, p0, Lc;->i:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 35
    new-instance v0, Lc$c;

    .line 37
    invoke-direct {v0, p0}, Lc$c;-><init>(Lc;)V

    .line 40
    iput-object v0, p0, Lc;->j:Landroid/media/MediaPlayer$OnErrorListener;

    .line 42
    sget v0, Lc;->m:I

    .line 44
    iput v0, p0, Lc;->k:I

    .line 46
    invoke-virtual {p0}, Lc;->s()V

    .line 49
    return-void
.end method

.method public static synthetic a(Lc;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lc;->b:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lc;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc;->z()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lc;Z)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc;->t(Z)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic d(Lc;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lc;->y()V

    .line 4
    return-void
.end method

.method public static synthetic e(Lc;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lc;->A(Z)V

    .line 4
    return-void
.end method

.method public static synthetic f(Lc;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    return-object p0
.end method

.method public static i()Lc;
    .locals 1

    .line 1
    sget-object v0, Lc;->n:Lc;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final A(Z)V
    .locals 10

    .line 1
    const-string v0, "end stopRecording "

    .line 3
    const-string v1, "stopRecording notifyPlayeStatus "

    .line 5
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 8
    iget-object v3, p0, Lc;->c:Ljava/lang/String;

    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 13
    const-string v3, "AIMMediaManager"

    .line 15
    const-string v5, "stopRecording mRecordFileName:{?}"

    .line 17
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    const/4 v2, 0x0

    .line 21
    const/16 v5, 0xa

    .line 23
    const/4 v6, 0x3

    .line 24
    :try_start_0
    iput-boolean v4, p0, Lc;->e:Z

    .line 26
    invoke-static {}, Lne0;->a()Lne0;

    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v7}, Lne0;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    new-array v7, v4, [Ljava/lang/Object;

    .line 35
    invoke-static {v3, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lc;->c:Ljava/lang/String;

    .line 42
    invoke-static {v5, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lc;->c:Ljava/lang/String;

    .line 48
    invoke-static {v6, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 51
    :goto_0
    iput-object v2, p0, Lc;->c:Ljava/lang/String;

    .line 53
    new-array p1, v4, [Ljava/lang/Object;

    .line 55
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    goto :goto_2

    .line 59
    :catchall_0
    move-exception v7

    .line 60
    goto :goto_3

    .line 61
    :catch_0
    move-exception v7

    .line 62
    :try_start_1
    const-string v8, "stopRecording failed"

    .line 64
    new-array v9, v4, [Ljava/lang/Object;

    .line 66
    invoke-static {v3, v8, v7, v9}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    new-array v7, v4, [Ljava/lang/Object;

    .line 71
    invoke-static {v3, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    if-eqz p1, :cond_1

    .line 76
    iget-object p1, p0, Lc;->c:Ljava/lang/String;

    .line 78
    invoke-static {v5, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 81
    goto :goto_1

    .line 82
    :cond_1
    iget-object p1, p0, Lc;->c:Ljava/lang/String;

    .line 84
    invoke-static {v6, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 87
    :goto_1
    iput-object v2, p0, Lc;->c:Ljava/lang/String;

    .line 89
    new-array p1, v4, [Ljava/lang/Object;

    .line 91
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :goto_2
    return-void

    .line 95
    :goto_3
    new-array v8, v4, [Ljava/lang/Object;

    .line 97
    invoke-static {v3, v1, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    if-eqz p1, :cond_2

    .line 102
    iget-object p1, p0, Lc;->c:Ljava/lang/String;

    .line 104
    invoke-static {v5, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 107
    goto :goto_4

    .line 108
    :cond_2
    iget-object p1, p0, Lc;->c:Ljava/lang/String;

    .line 110
    invoke-static {v6, p1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 113
    :goto_4
    iput-object v2, p0, Lc;->c:Ljava/lang/String;

    .line 115
    new-array p1, v4, [Ljava/lang/Object;

    .line 117
    invoke-static {v3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    throw v7
.end method

.method public g(IIIILjava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const v1, 0x5f5e1c4

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x0

    .line 12
    aput-object v2, v0, v3

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object p1

    .line 18
    const/4 v2, 0x1

    .line 19
    aput-object p1, v0, v2

    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p2

    .line 26
    aput-object p2, v0, p1

    .line 28
    const/4 p1, 0x3

    .line 29
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p2

    .line 33
    aput-object p2, v0, p1

    .line 35
    const/4 p1, 0x4

    .line 36
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object p2

    .line 40
    aput-object p2, v0, p1

    .line 42
    const/4 p1, 0x5

    .line 43
    aput-object p5, v0, p1

    .line 45
    const-string p1, "[%d][5][%d][%d][%d][%d][%s]"

    .line 47
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    move-result-object p1

    .line 51
    new-array p2, v2, [Ljava/lang/Object;

    .line 53
    aput-object p1, p2, v3

    .line 55
    const-string p3, "AIMMediaManager"

    .line 57
    const-string p4, "collectRecordData format={?}"

    .line 59
    invoke-static {p3, p4, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const-string p2, "AUTO_AL"

    .line 64
    const/16 p3, 0x32

    .line 66
    invoke-static {p2, v1, p1, p3}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 69
    return-void
.end method

.method public h(Ljava/lang/String;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lc;->g:Ljava/util/Properties;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return p1

    .line 14
    :catch_0
    const/4 v0, 0x1

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 17
    const/4 v1, 0x0

    .line 18
    aput-object p1, v0, v1

    .line 20
    const-string p1, "AIMMediaManager"

    .line 22
    const-string v1, "getDebugIntOption exception,key:{?}"

    .line 24
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    return p2
.end method

.method public j()Z
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lc;->e:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget v1, p0, Lc;->k:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v1, v0, v3

    .line 22
    const-string v1, "AIMMediaManager"

    .line 24
    const-string v4, "getMixModeTtsPause isRecording:{?} mMixMode:{?}"

    .line 26
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget-boolean v0, p0, Lc;->e:Z

    .line 31
    if-eqz v0, :cond_0

    .line 33
    return v3

    .line 34
    :cond_0
    return v2
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public l(I)I
    .locals 3

    .line 1
    const/4 p1, 0x0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iget-object v1, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    :goto_0
    move v0, p1

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    new-array v2, v0, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 26
    move-result-object v1

    .line 27
    aput-object v1, v2, p1

    .line 29
    const-string p1, "AIMMediaManager"

    .line 31
    const-string v1, "getStatus Exception ={?}"

    .line 33
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    :goto_1
    return v0
.end method

.method public final m()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public n()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    :try_start_0
    iget-object v2, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 5
    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 10
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    if-eqz v2, :cond_0

    .line 13
    return v1

    .line 14
    :catch_0
    move-exception v2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    aput-object v2, v1, v0

    .line 26
    const-string v2, "AIMMediaManager"

    .line 28
    const-string v3, "isPlaying Exception ={?}"

    .line 30
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc;->e:Z

    .line 3
    return v0
.end method

.method public p(ZLjava/lang/String;)V
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p2, v1, v2

    .line 14
    const-string v4, "AIMMediaManager"

    .line 16
    const-string v5, "onPlay start:{?} fileName:{?}"

    .line 18
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p0, v3}, Lc;->t(Z)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 29
    iput-object p2, p0, Lc;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p0}, Lc;->x()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0}, Lc;->z()V

    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lc;->b:Ljava/lang/String;

    .line 41
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object p1

    .line 47
    aput-object p1, v0, v3

    .line 49
    aput-object p2, v0, v2

    .line 51
    const-string p1, "End onPlay start:{?} fileName:{?}"

    .line 53
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public q(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lc;->r(ZZ)V

    .line 5
    return-void
.end method

.method public declared-synchronized r(ZZ)V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "AIMMediaManager"

    .line 4
    const-string v1, "onRecord start:{?} lossFocus:{?}"

    .line 6
    const/4 v2, 0x2

    .line 7
    new-array v2, v2, [Ljava/lang/Object;

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v2, v4

    .line 16
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    move-result-object v3

    .line 20
    const/4 v5, 0x1

    .line 21
    aput-object v3, v2, v5

    .line 23
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p0}, Lc;->n()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0}, Lc;->z()V

    .line 37
    const-string p1, "AIMMediaManager"

    .line 39
    const-string p2, "onRecord stopPlaying"

    .line 41
    new-array v0, v4, [Ljava/lang/Object;

    .line 43
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    monitor-exit p0

    .line 47
    return-void

    .line 48
    :cond_0
    :try_start_1
    new-instance v0, Lc$d;

    .line 50
    invoke-direct {v0, p0, p1, p2}, Lc$d;-><init>(Lc;ZZ)V

    .line 53
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 56
    if-nez p1, :cond_1

    .line 58
    invoke-static {}, Lo6;->j()Lo6;

    .line 61
    move-result-object p1

    .line 62
    const/4 p2, 0x3

    .line 63
    invoke-virtual {p1, p2}, Lo6;->a(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    :cond_1
    monitor-exit p0

    .line 67
    return-void

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    monitor-exit p0

    .line 70
    throw p1
.end method

.method public final s()V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, "RecordDebugOption.txt"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object v2, v1, v3

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 44
    move-result-object v2

    .line 45
    const/4 v4, 0x1

    .line 46
    aput-object v2, v1, v4

    .line 48
    const-string v2, "AIMMediaManager"

    .line 50
    const-string v4, "readDebugFile:{?}, exists:{?}"

    .line 52
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 61
    const/4 v1, 0x0

    .line 62
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    .line 64
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :try_start_1
    new-instance v0, Ljava/util/Properties;

    .line 69
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 72
    iput-object v0, p0, Lc;->g:Ljava/util/Properties;

    .line 74
    invoke-virtual {v0, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 77
    :goto_0
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 80
    goto :goto_3

    .line 81
    :catch_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :catchall_0
    move-exception v0

    .line 84
    goto :goto_2

    .line 85
    :catch_1
    move-exception v0

    .line 86
    move-object v4, v1

    .line 87
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    const-string v5, "exception"

    .line 92
    new-array v3, v3, [Ljava/lang/Object;

    .line 94
    invoke-static {v2, v5, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 97
    iput-object v1, p0, Lc;->g:Ljava/util/Properties;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 99
    goto :goto_0

    .line 100
    :catchall_1
    move-exception v0

    .line 101
    move-object v1, v4

    .line 102
    :goto_2
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 105
    throw v0

    .line 106
    :cond_0
    :goto_3
    return-void
.end method

.method public final t(Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AIMMediaManager"

    .line 6
    const-string v3, "requestFocus"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lc;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    invoke-static {}, Lo6;->j()Lo6;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-static {}, Lo6;->j()Lo6;

    .line 30
    move-result-object v3

    .line 31
    iget v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 33
    if-eqz p1, :cond_0

    .line 35
    const/4 p1, 0x3

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x2

    .line 38
    :goto_0
    invoke-virtual {v3, v1, p1}, Lo6;->D(II)I

    .line 41
    move-result p1

    .line 42
    if-ne p1, v2, :cond_2

    .line 44
    :cond_1
    const/4 v0, 0x1

    .line 45
    :cond_2
    return v0
.end method

.method public u(II)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    invoke-static {}, Lne0;->a()Lne0;

    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Lne0;->c(I)Z

    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    const/4 p1, 0x1

    .line 14
    return p1
.end method

.method public v(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc;->a:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public w(I)V
    .locals 0

    .line 1
    iput p1, p0, Lc;->k:I

    .line 3
    return-void
.end method

.method public final x()V
    .locals 6

    .line 1
    const-string v0, "startPlaying end"

    .line 3
    const-string v1, "AIMMediaManager"

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "startPlaying init"

    .line 8
    new-array v4, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    new-instance v3, Landroid/media/MediaPlayer;

    .line 15
    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    .line 18
    iput-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 20
    iget-object v4, p0, Lc;->j:Landroid/media/MediaPlayer$OnErrorListener;

    .line 22
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 25
    iget-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 27
    iget-object v4, p0, Lc;->h:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 29
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 32
    iget-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 34
    iget-object v4, p0, Lc;->i:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 36
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 39
    iget-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 41
    iget-object v4, p0, Lc;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 46
    invoke-virtual {p0}, Lc;->m()Z

    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 52
    invoke-static {}, Lo6;->j()Lo6;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 59
    move-result-object v3

    .line 60
    iget-boolean v3, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 62
    if-eqz v3, :cond_0

    .line 64
    iget-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 66
    invoke-static {}, Lo6;->j()Lo6;

    .line 69
    move-result-object v4

    .line 70
    const/4 v5, 0x2

    .line 71
    invoke-virtual {v4, v5}, Lo6;->g(I)Landroid/media/AudioAttributes;

    .line 74
    move-result-object v4

    .line 75
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 78
    const-string v3, "startPlaying  setAudioAttributes"

    .line 80
    new-array v4, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    goto :goto_0

    .line 86
    :cond_0
    iget-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 88
    invoke-static {}, Lo6;->j()Lo6;

    .line 91
    move-result-object v4

    .line 92
    invoke-virtual {v4}, Lo6;->m()I

    .line 95
    move-result v4

    .line 96
    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 99
    :goto_0
    const-string v3, "startPlaying start prepareAsync"

    .line 101
    new-array v4, v2, [Ljava/lang/Object;

    .line 103
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v3, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 108
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    goto :goto_1

    .line 117
    :catchall_0
    move-exception v3

    .line 118
    goto :goto_2

    .line 119
    :catch_0
    move-exception v3

    .line 120
    :try_start_1
    const-string v4, "startPlaying prepare() failed"

    .line 122
    new-array v5, v2, [Ljava/lang/Object;

    .line 124
    invoke-static {v1, v4, v3, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 127
    iget-object v3, p0, Lc;->b:Ljava/lang/String;

    .line 129
    const/4 v4, 0x5

    .line 130
    invoke-static {v4, v3}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lc;->z()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    new-array v2, v2, [Ljava/lang/Object;

    .line 138
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    :goto_1
    return-void

    .line 142
    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 144
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    throw v3
.end method

.method public final y()V
    .locals 8

    .line 1
    const-string v0, "end startRecording "

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "AIMMediaManager"

    .line 8
    const-string v4, "start startRecording "

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    const/16 v2, 0x8

    .line 15
    :try_start_0
    iget-object v4, p0, Lc;->a:Ljava/lang/String;

    .line 17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v4

    .line 21
    if-eqz v4, :cond_0

    .line 23
    const-string v4, "start startRecording has not set ditpath"

    .line 25
    new-array v5, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    new-array v1, v1, [Ljava/lang/Object;

    .line 35
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void

    .line 39
    :cond_0
    const/4 v4, 0x1

    .line 40
    :try_start_1
    iput-boolean v4, p0, Lc;->e:Z

    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    iget-object v6, p0, Lc;->a:Ljava/lang/String;

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v6, "/"

    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 60
    move-result-wide v6

    .line 61
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v6, ".amr"

    .line 66
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object v5

    .line 73
    iput-object v5, p0, Lc;->c:Ljava/lang/String;

    .line 75
    invoke-static {}, Lne0;->a()Lne0;

    .line 78
    move-result-object v5

    .line 79
    iget-object v6, p0, Lc;->c:Ljava/lang/String;

    .line 81
    invoke-virtual {v5, v6}, Lne0;->d(Ljava/lang/String;)V

    .line 84
    const-string v5, "startRecording outFileName:{?}"

    .line 86
    new-array v4, v4, [Ljava/lang/Object;

    .line 88
    iget-object v6, p0, Lc;->c:Ljava/lang/String;

    .line 90
    aput-object v6, v4, v1

    .line 92
    invoke-static {v3, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    new-array v1, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    .line 102
    goto :goto_1

    .line 103
    :catch_0
    move-exception v4

    .line 104
    :try_start_2
    iput-boolean v1, p0, Lc;->e:Z

    .line 106
    const-string v5, "startRecording prepare() failed"

    .line 108
    new-array v6, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {v3, v5, v4, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 113
    invoke-static {v2}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    :goto_0
    return-void

    .line 122
    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    throw v2
.end method

.method public final z()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x2

    .line 3
    :try_start_0
    iget-object v2, p0, Lc;->d:Landroid/media/MediaPlayer;

    .line 5
    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, p0, Lc;->d:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    :goto_0
    invoke-static {}, Lo6;->j()Lo6;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, v1}, Lo6;->a(I)Z

    .line 20
    iget-object v1, p0, Lc;->b:Ljava/lang/String;

    .line 22
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception v2

    .line 27
    goto :goto_2

    .line 28
    :catch_0
    move-exception v2

    .line 29
    :try_start_1
    const-string v3, "AIMMediaManager"

    .line 31
    const-string v4, "stopPlaying release() failed"

    .line 33
    const/4 v5, 0x0

    .line 34
    new-array v5, v5, [Ljava/lang/Object;

    .line 36
    invoke-static {v3, v4, v2, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    return-void

    .line 41
    :goto_2
    invoke-static {}, Lo6;->j()Lo6;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3, v1}, Lo6;->a(I)Z

    .line 48
    iget-object v1, p0, Lc;->b:Ljava/lang/String;

    .line 50
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/agroup/AIMGroupMediaNative;->notifyPlayeStatus(ILjava/lang/String;)V

    .line 53
    throw v2
.end method

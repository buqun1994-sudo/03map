.class public Lg6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static j:Z


# instance fields
.field public a:Ljava/lang/Runnable;

.field public b:I

.field public c:I

.field public d:Ljava/lang/Runnable;

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public i:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lg6;->a:Ljava/lang/Runnable;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lg6;->c:I

    .line 10
    new-instance v0, Lg6$a;

    .line 12
    invoke-direct {v0, p0}, Lg6$a;-><init>(Lg6;)V

    .line 15
    iput-object v0, p0, Lg6;->d:Ljava/lang/Runnable;

    .line 17
    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lg6;->e:J

    .line 21
    iput-wide v0, p0, Lg6;->f:J

    .line 23
    iput-wide v0, p0, Lg6;->g:J

    .line 25
    iput-wide v0, p0, Lg6;->h:J

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lg6;->i:Z

    .line 30
    iput p1, p0, Lg6;->b:I

    .line 32
    return-void
.end method

.method public static synthetic a(Lg6;)I
    .locals 0

    .line 1
    iget p0, p0, Lg6;->b:I

    .line 3
    return p0
.end method

.method public static g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lg6;->j:Z

    .line 4
    return-void
.end method


# virtual methods
.method public b(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lg6;->f:J

    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lg6;->f:J

    .line 6
    return-void
.end method

.method public c(III)J
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    iget-boolean v1, v0, Lg6;->i:Z

    .line 4
    const/4 v2, 0x0

    .line 5
    const-wide/16 v3, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 9
    iput-boolean v2, v0, Lg6;->i:Z

    .line 11
    return-wide v3

    .line 12
    :cond_0
    div-int/lit8 v1, p2, 0x2

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v5

    .line 18
    const/4 v7, 0x2

    .line 19
    new-array v8, v7, [Ljava/lang/Object;

    .line 21
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v9

    .line 25
    aput-object v9, v8, v2

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v9

    .line 31
    const/4 v10, 0x1

    .line 32
    aput-object v9, v8, v10

    .line 34
    const-string v9, "AudioBlockHelper"

    .line 36
    const-string v11, "checkDelayTime. currentPosition:{?}, lengthInFrames:{?}"

    .line 38
    invoke-static {v9, v11, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    move/from16 v8, p1

    .line 43
    if-lt v8, v1, :cond_3

    .line 45
    iget-wide v11, v0, Lg6;->h:J

    .line 47
    int-to-long v13, v1

    .line 48
    cmp-long v1, v11, v13

    .line 50
    if-ltz v1, :cond_1

    .line 52
    new-array v1, v7, [Ljava/lang/Object;

    .line 54
    iget-wide v11, v0, Lg6;->g:J

    .line 56
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 59
    move-result-object v8

    .line 60
    aput-object v8, v1, v2

    .line 62
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    move-result-object v8

    .line 66
    aput-object v8, v1, v10

    .line 68
    const-string v8, "checkDelayTime. makertime:{?}, currentTime:{?}"

    .line 70
    invoke-static {v9, v8, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-wide v11, v0, Lg6;->g:J

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    iget-wide v11, v0, Lg6;->e:J

    .line 78
    sub-long/2addr v5, v11

    .line 79
    div-int v1, p2, p3

    .line 81
    int-to-long v11, v1

    .line 82
    sub-long/2addr v5, v11

    .line 83
    iget-wide v11, v0, Lg6;->f:J

    .line 85
    :goto_0
    sub-long/2addr v5, v11

    .line 86
    cmp-long v1, v5, v3

    .line 88
    if-gez v1, :cond_2

    .line 90
    goto :goto_1

    .line 91
    :cond_2
    move-wide v3, v5

    .line 92
    :goto_1
    iget-wide v5, v0, Lg6;->f:J

    .line 94
    add-long/2addr v5, v3

    .line 95
    iput-wide v5, v0, Lg6;->f:J

    .line 97
    new-array v1, v7, [Ljava/lang/Object;

    .line 99
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 102
    move-result-object v5

    .line 103
    aput-object v5, v1, v2

    .line 105
    iget-wide v5, v0, Lg6;->f:J

    .line 107
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    move-result-object v2

    .line 111
    aput-object v2, v1, v10

    .line 113
    const-string v2, "checkDelayTime. currentDelayTime:{?},totalDelayedTime:{?}"

    .line 115
    invoke-static {v9, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :cond_3
    return-wide v3
.end method

.method public final d()I
    .locals 3

    .line 1
    iget v0, p0, Lg6;->c:I

    .line 3
    and-int/lit16 v0, v0, 0x3ff

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_0

    .line 8
    add-int/lit8 v1, v1, 0x1

    .line 10
    add-int/lit8 v2, v0, -0x1

    .line 12
    and-int/2addr v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    return v1
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lg6;->a:Ljava/lang/Runnable;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    const-string v1, "AudioBlockHelper"

    .line 11
    const-string v2, "logRemoveAudioBlockCheck"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    iget-object v0, p0, Lg6;->a:Ljava/lang/Runnable;

    .line 18
    invoke-static {v0}, Lbg0;->e(Ljava/lang/Runnable;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lg6;->a:Ljava/lang/Runnable;

    .line 24
    return-void
.end method

.method public f(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lg6;->e()V

    .line 4
    iget-object v0, p0, Lg6;->d:Ljava/lang/Runnable;

    .line 6
    iput-object v0, p0, Lg6;->a:Ljava/lang/Runnable;

    .line 8
    int-to-double v0, p1

    .line 9
    const-wide/high16 v2, 0x4040000000000000L    # 32.0

    .line 11
    div-double/2addr v0, v2

    .line 12
    double-to-int v0, v0

    .line 13
    mul-int/lit8 v1, v0, 0x3

    .line 15
    int-to-long v1, v1

    .line 16
    const-wide/16 v3, 0x2710

    .line 18
    cmp-long v5, v1, v3

    .line 20
    if-gez v5, :cond_0

    .line 22
    move-wide v1, v3

    .line 23
    :cond_0
    const/4 v3, 0x3

    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    aput-object p1, v3, v4

    .line 33
    const/4 p1, 0x1

    .line 34
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v0

    .line 38
    aput-object v0, v3, p1

    .line 40
    const/4 p1, 0x2

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object v0

    .line 45
    aput-object v0, v3, p1

    .line 47
    const-string p1, "AudioBlockHelper"

    .line 49
    const-string v0, "logStartAudioBlockCheck bufSize:{?} bufSizePlayTime:{?} blockInterval:{?}"

    .line 51
    invoke-static {p1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    iget-object p1, p0, Lg6;->a:Ljava/lang/Runnable;

    .line 56
    invoke-static {p1, v1, v2}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 59
    return-void
.end method

.method public h(I)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lg6;->g:J

    .line 7
    int-to-long v0, p1

    .line 8
    iput-wide v0, p0, Lg6;->h:J

    .line 10
    const/4 p1, 0x1

    .line 11
    new-array p1, p1, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object v0

    .line 18
    aput-object v0, p1, v2

    .line 20
    const-string v0, "AudioBlockHelper"

    .line 22
    const-string v1, "onMarkerReached:{?}"

    .line 24
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return-void
.end method

.method public i()V
    .locals 5

    .line 1
    const-string v0, "AudioBlockHelper"

    .line 3
    iget v1, p0, Lg6;->c:I

    .line 5
    shl-int/lit8 v1, v1, 0x1

    .line 7
    sget-boolean v2, Lg6;->j:Z

    .line 9
    or-int/2addr v1, v2

    .line 10
    iput v1, p0, Lg6;->c:I

    .line 12
    invoke-virtual {p0}, Lg6;->k()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->nativeNotifyVoiceBlockDynamic()V

    .line 22
    iput v2, p0, Lg6;->c:I

    .line 24
    :cond_0
    sput-boolean v2, Lg6;->j:Z

    .line 26
    const-wide/16 v3, 0x0

    .line 28
    iput-wide v3, p0, Lg6;->e:J

    .line 30
    iput-wide v3, p0, Lg6;->f:J

    .line 32
    iput-wide v3, p0, Lg6;->g:J

    .line 34
    iput-wide v3, p0, Lg6;->h:J

    .line 36
    :try_start_0
    sget v1, Li6;->f:I

    .line 38
    if-lez v1, :cond_1

    .line 40
    rem-int/lit8 v1, v1, 0xa

    .line 42
    if-nez v1, :cond_1

    .line 44
    sget v1, Li6;->l:I

    .line 46
    sget v3, Li6;->f:I

    .line 48
    invoke-static {v1, v3}, Li6;->y(II)Z

    .line 51
    const-string v1, "[onPlayEnd]decuple,uploadTtsEngineTtsCountTracking"

    .line 53
    new-array v3, v2, [Ljava/lang/Object;

    .line 55
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v1

    .line 60
    const-string v3, "[onPlayEnd]Exception"

    .line 62
    new-array v2, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {v0, v3, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lg6;->j:Z

    .line 4
    sput-boolean v0, Li6;->n:Z

    .line 6
    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lg6;->f:J

    .line 10
    iput-wide v0, p0, Lg6;->g:J

    .line 12
    iput-wide v0, p0, Lg6;->h:J

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    iput-wide v0, p0, Lg6;->e:J

    .line 20
    return-void
.end method

.method public final k()Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lg6;->d()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v3

    .line 12
    const/4 v4, 0x0

    .line 13
    aput-object v3, v2, v4

    .line 15
    const-string v3, "AudioBlockHelper"

    .line 17
    const-string v5, "shouldNotifyBlockState(). blockCount = {?}"

    .line 19
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    int-to-float v0, v0

    .line 23
    const/high16 v2, 0x42c80000    # 100.0f

    .line 25
    mul-float v0, v0, v2

    .line 27
    const/high16 v2, 0x41200000    # 10.0f

    .line 29
    div-float/2addr v0, v2

    .line 30
    float-to-double v2, v0

    .line 31
    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    .line 33
    cmpl-double v0, v2, v5

    .line 35
    if-ltz v0, :cond_0

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 v1, 0x0

    .line 39
    :goto_0
    return v1
.end method

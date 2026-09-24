.class public Lbf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lif0;


# instance fields
.field public a:Ljava/util/List;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Lgf0;

.field public f:Ljava/lang/Thread;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:I

.field public j:D


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lbf;->c:Z

    .line 7
    iput-boolean v0, p0, Lbf;->d:Z

    .line 9
    iput v0, p0, Lbf;->i:I

    .line 11
    int-to-double v1, v0

    .line 12
    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 14
    div-double/2addr v1, v3

    .line 15
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->pow(DD)D

    .line 18
    move-result-wide v1

    .line 19
    iput-wide v1, p0, Lbf;->j:D

    .line 21
    new-instance v1, Ljava/util/LinkedList;

    .line 23
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 26
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lbf;->a:Ljava/util/List;

    .line 32
    new-instance v1, Ljava/lang/Object;

    .line 34
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object v1, p0, Lbf;->g:Ljava/lang/Object;

    .line 39
    const/4 v1, 0x2

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    iget v2, p0, Lbf;->i:I

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    aput-object v2, v1, v0

    .line 50
    iget-wide v2, p0, Lbf;->j:D

    .line 52
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 55
    move-result-object v0

    .line 56
    const/4 v2, 0x1

    .line 57
    aput-object v0, v1, v2

    .line 59
    const-string v0, "[AMR]Codec"

    .line 61
    const-string v2, "init db:{?} factor:{?} "

    .line 63
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    new-instance v0, Ljava/lang/Object;

    .line 68
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object v0, p0, Lbf;->h:Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public a([SI)V
    .locals 9

    .line 1
    const/16 v0, 0xa0

    .line 3
    if-eq p2, v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-array v0, p2, [S

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    new-array p1, p2, [S

    .line 14
    :goto_0
    if-ge v1, p2, :cond_4

    .line 16
    aget-short v2, v0, v1

    .line 18
    int-to-double v2, v2

    .line 19
    iget-wide v4, p0, Lbf;->j:D

    .line 21
    mul-double v2, v2, v4

    .line 23
    const-wide/high16 v4, -0x3f20000000000000L    # -32768.0

    .line 25
    const-wide v6, 0x40dfffc000000000L    # 32767.0

    .line 30
    cmpg-double v8, v2, v6

    .line 32
    if-gez v8, :cond_1

    .line 34
    cmpl-double v8, v2, v4

    .line 36
    if-lez v8, :cond_1

    .line 38
    double-to-int v2, v2

    .line 39
    int-to-short v2, v2

    .line 40
    aput-short v2, p1, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    cmpl-double v8, v2, v6

    .line 45
    if-lez v8, :cond_2

    .line 47
    const/16 v2, 0x7fff

    .line 49
    aput-short v2, p1, v1

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    cmpg-double v6, v2, v4

    .line 54
    if-gez v6, :cond_3

    .line 56
    const/16 v2, -0x8000

    .line 58
    aput-short v2, p1, v1

    .line 60
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_4
    iget-object p2, p0, Lbf;->a:Ljava/util/List;

    .line 65
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object p1, p0, Lbf;->g:Ljava/lang/Object;

    .line 70
    monitor-enter p1

    .line 71
    :try_start_0
    iget-object p2, p0, Lbf;->g:Ljava/lang/Object;

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 76
    monitor-exit p1

    .line 77
    return-void

    .line 78
    :catchall_0
    move-exception p2

    .line 79
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    throw p2
.end method

.method public b(Lgf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbf;->e:Lgf0;

    .line 3
    return-void
.end method

.method public c(I)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "[AMR]Codec"

    .line 13
    const-string v4, "setIncreaseDb value:{?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-ltz p1, :cond_0

    .line 20
    iput p1, p0, Lbf;->i:I

    .line 22
    int-to-double v4, p1

    .line 23
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 25
    div-double/2addr v4, v6

    .line 26
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    .line 29
    move-result-wide v4

    .line 30
    iput-wide v4, p0, Lbf;->j:D

    .line 32
    const/4 p1, 0x2

    .line 33
    new-array p1, p1, [Ljava/lang/Object;

    .line 35
    iget v1, p0, Lbf;->i:I

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v1

    .line 41
    aput-object v1, p1, v3

    .line 43
    iget-wide v3, p0, Lbf;->j:D

    .line 45
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 48
    move-result-object v1

    .line 49
    aput-object v1, p1, v0

    .line 51
    const-string v1, "setIncreaseDb db:{?} factor:{?} "

    .line 53
    invoke-static {v2, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return v0

    .line 57
    :cond_0
    return v3
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lbf;->b:Z

    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const-string p1, "[AMR]Codec"

    .line 8
    const-string v1, "already started"

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iput-boolean v0, p0, Lbf;->d:Z

    .line 18
    const/16 p1, 0x1f40

    .line 20
    const/4 v1, 0x2

    .line 21
    invoke-static {p1, v1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    .line 24
    move-result p1

    .line 25
    const/16 v1, 0xa0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-ge p1, v1, :cond_1

    .line 30
    iput-boolean v2, p0, Lbf;->d:Z

    .line 32
    :cond_1
    const-string p1, "[AMR]Codec"

    .line 34
    const-string v1, "start succeed"

    .line 36
    new-array v3, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p1, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iput-boolean v2, p0, Lbf;->b:Z

    .line 43
    iget-object p1, p0, Lbf;->h:Ljava/lang/Object;

    .line 45
    monitor-enter p1

    .line 46
    :try_start_0
    invoke-static {}, Lib;->t()Z

    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 52
    invoke-static {v0}, Lio/kvh/media/amr/AmrEncoder;->init(I)V

    .line 55
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    iput-boolean v2, p0, Lbf;->c:Z

    .line 58
    new-instance p1, Ljava/lang/Thread;

    .line 60
    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 63
    iput-object p1, p0, Lbf;->f:Ljava/lang/Thread;

    .line 65
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception v0

    .line 70
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    throw v0
.end method

.method public e()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lbf;->b:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    const-string v0, "[AMR]Codec"

    .line 8
    const-string v2, "not running"

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    iput-boolean v1, p0, Lbf;->b:Z

    .line 18
    iget-object v0, p0, Lbf;->a:Ljava/util/List;

    .line 20
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    move-result v0

    .line 24
    const-string v2, "[AMR]Codec"

    .line 26
    const-string v3, "start succeed, mIsEncInited={?}, pcmSize={?}"

    .line 28
    const/4 v4, 0x2

    .line 29
    new-array v4, v4, [Ljava/lang/Object;

    .line 31
    iget-boolean v5, p0, Lbf;->c:Z

    .line 33
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v4, v1

    .line 39
    const/4 v5, 0x1

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v0

    .line 44
    aput-object v0, v4, v5

    .line 46
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-boolean v0, p0, Lbf;->c:Z

    .line 51
    if-eqz v0, :cond_3

    .line 53
    :cond_1
    :goto_0
    iget-object v0, p0, Lbf;->a:Ljava/util/List;

    .line 55
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    move-result v0

    .line 59
    if-lez v0, :cond_4

    .line 61
    iget-object v0, p0, Lbf;->a:Ljava/util/List;

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 67
    check-cast v0, [S

    .line 69
    array-length v2, v0

    .line 70
    new-array v2, v2, [B

    .line 72
    iget-object v3, p0, Lbf;->h:Ljava/lang/Object;

    .line 74
    monitor-enter v3

    .line 75
    :try_start_0
    invoke-static {}, Lib;->t()Z

    .line 78
    move-result v4

    .line 79
    if-nez v4, :cond_2

    .line 81
    sget-object v4, Lio/kvh/media/amr/AmrEncoder$a;->h:Lio/kvh/media/amr/AmrEncoder$a;

    .line 83
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 86
    move-result v4

    .line 87
    invoke-static {v4, v0, v2}, Lio/kvh/media/amr/AmrEncoder;->encode(I[S[B)I

    .line 90
    move-result v0

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    if-lez v0, :cond_1

    .line 96
    iget-object v3, p0, Lbf;->e:Lgf0;

    .line 98
    invoke-interface {v3, v2, v0}, Lgf0;->a([BI)V

    .line 101
    goto :goto_0

    .line 102
    :catchall_0
    move-exception v0

    .line 103
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    throw v0

    .line 105
    :cond_3
    :goto_2
    iget-object v0, p0, Lbf;->a:Ljava/util/List;

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 110
    move-result v0

    .line 111
    if-lez v0, :cond_4

    .line 113
    iget-object v0, p0, Lbf;->a:Ljava/util/List;

    .line 115
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, "[AMR]Codec"

    .line 3
    const-string v1, "run start"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :goto_0
    iget-boolean v0, p0, Lbf;->b:Z

    .line 13
    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lbf;->g:Ljava/lang/Object;

    .line 17
    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lbf;->a:Ljava/util/List;

    .line 20
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 24
    if-nez v1, :cond_0

    .line 26
    :try_start_1
    iget-object v1, p0, Lbf;->g:Ljava/lang/Object;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    goto :goto_2

    .line 32
    :catch_0
    move-exception v1

    .line 33
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    goto :goto_2

    .line 37
    :cond_0
    iget-boolean v1, p0, Lbf;->c:Z

    .line 39
    if-eqz v1, :cond_2

    .line 41
    iget-object v1, p0, Lbf;->a:Ljava/util/List;

    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, [S

    .line 49
    array-length v3, v1

    .line 50
    new-array v3, v3, [B

    .line 52
    iget-object v4, p0, Lbf;->h:Ljava/lang/Object;

    .line 54
    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :try_start_3
    invoke-static {}, Lib;->t()Z

    .line 58
    move-result v5

    .line 59
    if-nez v5, :cond_1

    .line 61
    sget-object v5, Lio/kvh/media/amr/AmrEncoder$a;->h:Lio/kvh/media/amr/AmrEncoder$a;

    .line 63
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 66
    move-result v5

    .line 67
    invoke-static {v5, v1, v3}, Lio/kvh/media/amr/AmrEncoder;->encode(I[S[B)I

    .line 70
    move-result v1

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    const/4 v1, 0x0

    .line 73
    :goto_1
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 74
    if-lez v1, :cond_2

    .line 76
    :try_start_4
    iget-object v4, p0, Lbf;->e:Lgf0;

    .line 78
    invoke-interface {v4, v3, v1}, Lgf0;->a([BI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 81
    goto :goto_2

    .line 82
    :catchall_0
    move-exception v1

    .line 83
    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 84
    :try_start_6
    throw v1

    .line 85
    :cond_2
    :goto_2
    monitor-exit v0

    .line 86
    goto :goto_0

    .line 87
    :catchall_1
    move-exception v1

    .line 88
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 89
    throw v1

    .line 90
    :cond_3
    iget-boolean v0, p0, Lbf;->d:Z

    .line 92
    if-nez v0, :cond_5

    .line 94
    iget-object v0, p0, Lbf;->h:Ljava/lang/Object;

    .line 96
    monitor-enter v0

    .line 97
    :try_start_7
    invoke-static {}, Lib;->t()Z

    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_4

    .line 103
    invoke-static {}, Lio/kvh/media/amr/AmrEncoder;->exit()V

    .line 106
    :cond_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 107
    const-string v0, "[AMR]Codec"

    .line 109
    const-string v1, "AmrEncoder.exit"

    .line 111
    new-array v3, v2, [Ljava/lang/Object;

    .line 113
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    iput-boolean v2, p0, Lbf;->c:Z

    .line 118
    goto :goto_3

    .line 119
    :catchall_2
    move-exception v1

    .line 120
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 121
    throw v1

    .line 122
    :cond_5
    const-string v0, "[AMR]Codec"

    .line 124
    const-string v1, "AmrEncoder.exit"

    .line 126
    new-array v2, v2, [Ljava/lang/Object;

    .line 128
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :goto_3
    return-void
.end method

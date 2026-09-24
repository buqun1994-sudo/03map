.class public Lf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lzq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf2$c;
    }
.end annotation


# instance fields
.field public a:Lia;

.field public b:Ljava/lang/String;

.field public c:Z

.field public final d:S

.field public e:Ljava/lang/StringBuilder;

.field public f:J

.field public g:Ljava/util/concurrent/ScheduledExecutorService;

.field public h:Lzq$a;

.field public final i:Ljava/lang/String;

.field public j:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lf2;->b:Ljava/lang/String;

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lf2;->c:Z

    .line 11
    const/16 v0, 0x800

    .line 13
    iput-short v0, p0, Lf2;->d:S

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 20
    iput-object v1, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 22
    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lf2;->f:J

    .line 26
    const/4 v0, 0x1

    .line 27
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lf2;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    const-string v0, "ChannelManager"

    .line 35
    iput-object v0, p0, Lf2;->i:Ljava/lang/String;

    .line 37
    new-instance v0, Lf2$a;

    .line 39
    invoke-direct {v0, p0}, Lf2$a;-><init>(Lf2;)V

    .line 42
    iput-object v0, p0, Lf2;->j:Landroid/content/ServiceConnection;

    .line 44
    invoke-static {}, Lrv;->H()Lrv;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p0, v0}, Lf2;->j(Landroid/content/Context;)V

    .line 55
    return-void
.end method

.method public static synthetic d(Lf2;Lia;)Lia;
    .locals 0

    .line 1
    iput-object p1, p0, Lf2;->a:Lia;

    .line 3
    return-object p1
.end method

.method public static synthetic e(Lf2;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lf2;->b:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic f(Lf2;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lf2;->f:J

    .line 3
    return-wide p1
.end method

.method public static synthetic g(Lf2;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lf2;->p(Z)V

    .line 4
    return-void
.end method

.method public static synthetic h(Lf2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2;->q()V

    .line 4
    return-void
.end method

.method public static synthetic i(Lf2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf2;->s()V

    .line 4
    return-void
.end method

.method public static m(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const/4 p1, 0x1

    .line 12
    aput-object p0, v0, p1

    .line 14
    const/4 p0, 0x2

    .line 15
    aput-object p3, v0, p0

    .line 17
    const/4 p0, 0x3

    .line 18
    aput-object p4, v0, p0

    .line 20
    const-string p0, "%d##%s:[%s]%s\n"

    .line 22
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static varargs n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 3
    const-string p0, ""

    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    if-nez p1, :cond_1

    .line 13
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    invoke-static {p0}, Lf2;->r(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    array-length v1, p0

    .line 26
    array-length v2, p1

    .line 27
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v1, :cond_2

    .line 34
    aget-object v3, p1, v2

    .line 36
    aget-object v4, p0, v2

    .line 38
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :goto_1
    array-length p1, p0

    .line 48
    if-ge v1, p1, :cond_3

    .line 50
    aget-object p1, p0, v1

    .line 52
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method public static o()Lf2;
    .locals 1

    .line 1
    new-instance v0, Lf2$c;

    .line 3
    invoke-direct {v0}, Lf2$c;-><init>()V

    .line 6
    return-object v0
.end method

.method public static r(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const-string v1, "{?}"

    .line 8
    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ltz v2, :cond_0

    .line 16
    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 23
    add-int/lit8 v4, v2, 0x3

    .line 25
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 28
    move-result v2

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 33
    move-result v1

    .line 34
    add-int/lit8 v1, v1, -0x1

    .line 36
    if-ge v4, v1, :cond_1

    .line 38
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 41
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    new-array p0, v3, [Ljava/lang/String;

    .line 47
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 51
    check-cast p0, [Ljava/lang/String;

    .line 53
    return-object p0
.end method


# virtual methods
.method public a(Lzq$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf2;->h:Lzq$a;

    .line 3
    return-void
.end method

.method public b(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public varargs c(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lf2;->a:Lia;

    .line 3
    const-string v1, "ChannelManager"

    .line 5
    const-string v2, "AidlConsole"

    .line 7
    if-nez v0, :cond_1

    .line 9
    const-string v0, "enqueue failed mAutoMsgServiceAIDL must not be null"

    .line 11
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p0}, Lf2;->l()Z

    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 28
    invoke-static {p5, p6}, Lf2;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    move-result-object p5

    .line 32
    invoke-static {p1, p2, p3, p4, p5}, Lf2;->m(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    :cond_0
    return-void

    .line 40
    :cond_1
    iget-object v0, p0, Lf2;->b:Ljava/lang/String;

    .line 42
    const-string v3, "enqueue failed mTopic must not be null"

    .line 44
    if-nez v0, :cond_2

    .line 46
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void

    .line 50
    :cond_2
    invoke-static {p5, p6}, Lf2;->n(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    move-result-object p5

    .line 54
    if-eqz p5, :cond_9

    .line 56
    const-string p6, ""

    .line 58
    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 64
    goto :goto_3

    .line 65
    :cond_3
    iget-object v0, p0, Lf2;->b:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_5

    .line 73
    if-eqz p5, :cond_4

    .line 75
    invoke-virtual {p6, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p6

    .line 79
    if-nez p6, :cond_4

    .line 81
    iget-object p6, p0, Lf2;->b:Ljava/lang/String;

    .line 83
    invoke-virtual {p5, p6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    move-result p6

    .line 87
    if-eqz p6, :cond_4

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    move-result p6

    .line 94
    if-eqz p6, :cond_8

    .line 96
    invoke-virtual {p0}, Lf2;->l()Z

    .line 99
    move-result p6

    .line 100
    if-nez p6, :cond_8

    .line 102
    iget-object p6, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 104
    invoke-static {p1, p2, p3, p4, p5}, Lf2;->m(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    goto :goto_2

    .line 112
    :cond_5
    :goto_0
    iget-object p6, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 114
    invoke-static {p1, p2, p3, p4, p5}, Lf2;->m(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {p0}, Lf2;->l()Z

    .line 124
    move-result p1

    .line 125
    if-nez p1, :cond_7

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 130
    move-result-wide p1

    .line 131
    iget-wide p3, p0, Lf2;->f:J

    .line 133
    sub-long/2addr p1, p3

    .line 134
    const-wide/16 p3, 0x1388

    .line 136
    cmp-long p5, p1, p3

    .line 138
    if-lez p5, :cond_6

    .line 140
    goto :goto_1

    .line 141
    :cond_6
    const-string p1, "to buffer"

    .line 143
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    goto :goto_2

    .line 147
    :cond_7
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lf2;->s()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_2

    .line 151
    :catch_0
    move-exception p1

    .line 152
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 155
    :cond_8
    :goto_2
    return-void

    .line 156
    :cond_9
    :goto_3
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return-void
.end method

.method public j(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-string v0, "AidlConsole"

    .line 3
    const-string v1, "bindService"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    const-string v1, "com.autonavi.cleaner.MSG"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    const-string v1, "com.autonavi.cleaner"

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    const-string v2, "com.autonavi.cleaner.analyze.MsgHubService"

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    iget-object v1, p0, Lf2;->j:Landroid/content/ServiceConnection;

    .line 30
    const/4 v2, 0x1

    .line 31
    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 34
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lf2;->a:Lia;

    .line 3
    invoke-interface {v0}, Lia;->i0()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object v0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    const-string v0, ""

    .line 14
    return-object v0
.end method

.method public final l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x79c

    .line 9
    if-lt v0, v1, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public final p(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lf2;->h:Lzq$a;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lzq$a;->a(Z)V

    .line 8
    :cond_0
    return-void
.end method

.method public final q()V
    .locals 7

    .line 1
    iget-object v0, p0, Lf2;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    new-instance v1, Lf2$b;

    .line 5
    invoke-direct {v1, p0}, Lf2$b;-><init>(Lf2;)V

    .line 8
    const-wide/16 v2, 0x0

    .line 10
    const-wide/16 v4, 0x1388

    .line 12
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 14
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 17
    return-void
.end method

.method public final s()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "write thread "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v1, "AidlConsole"

    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lf2;->a:Lia;

    .line 45
    invoke-interface {v1, v0}, Lia;->R(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lf2;->e:Ljava/lang/StringBuilder;

    .line 50
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 54
    move-result v2

    .line 55
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 61
    move-result-wide v0

    .line 62
    iput-wide v0, p0, Lf2;->f:J

    .line 64
    :cond_0
    return-void
.end method

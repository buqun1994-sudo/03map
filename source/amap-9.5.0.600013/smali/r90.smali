.class public Lr90;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public a:Ljava/net/DatagramSocket;

.field public b:Ljava/net/MulticastSocket;

.field public c:Ljava/net/InetAddress;

.field public d:Z

.field public e:I

.field public f:J

.field public g:J

.field public h:I

.field public i:I

.field public j:I

.field public k:Ljava/util/Random;

.field public l:I

.field public m:Z

.field public n:Z

.field public o:I

.field public p:Ll50;

.field public q:Lp90;

.field public r:Lo90;

.field public s:Lq90;

.field public t:Lr3;

.field public final u:Ljava/util/concurrent/locks/Lock;

.field public final v:Ljava/util/concurrent/locks/Condition;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public constructor <init>(Ljava/net/DatagramSocket;Ljava/net/DatagramSocket;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lr90;->a:Ljava/net/DatagramSocket;

    .line 7
    iput-object v0, p0, Lr90;->b:Ljava/net/MulticastSocket;

    .line 9
    iput-object v0, p0, Lr90;->c:Ljava/net/InetAddress;

    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, p0, Lr90;->d:Z

    .line 14
    iput v1, p0, Lr90;->e:I

    .line 16
    const-wide/16 v2, 0x0

    .line 18
    iput-wide v2, p0, Lr90;->g:J

    .line 20
    iput v1, p0, Lr90;->h:I

    .line 22
    iput v1, p0, Lr90;->i:I

    .line 24
    iput v1, p0, Lr90;->j:I

    .line 26
    iput-object v0, p0, Lr90;->k:Ljava/util/Random;

    .line 28
    const/16 v2, 0x1f40

    .line 30
    iput v2, p0, Lr90;->l:I

    .line 32
    iput-boolean v1, p0, Lr90;->m:Z

    .line 34
    const/4 v2, 0x1

    .line 35
    iput-boolean v2, p0, Lr90;->n:Z

    .line 37
    const/4 v2, 0x3

    .line 38
    iput v2, p0, Lr90;->o:I

    .line 40
    new-instance v2, Ll50;

    .line 42
    invoke-direct {v2, p0}, Ll50;-><init>(Lr90;)V

    .line 45
    iput-object v2, p0, Lr90;->p:Ll50;

    .line 47
    iput-object v0, p0, Lr90;->q:Lp90;

    .line 49
    iput-object v0, p0, Lr90;->r:Lo90;

    .line 51
    iput-object v0, p0, Lr90;->s:Lq90;

    .line 53
    iput-object v0, p0, Lr90;->t:Lr3;

    .line 55
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 60
    iput-object v2, p0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 62
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    .line 65
    move-result-object v2

    .line 66
    iput-object v2, p0, Lr90;->v:Ljava/util/concurrent/locks/Condition;

    .line 68
    iput-boolean v1, p0, Lr90;->w:Z

    .line 70
    iput-boolean v1, p0, Lr90;->x:Z

    .line 72
    iput-boolean v1, p0, Lr90;->y:Z

    .line 74
    iput v1, p0, Lr90;->z:I

    .line 76
    iput-object v0, p0, Lr90;->A:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lr90;->B:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lr90;->C:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lr90;->D:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lr90;->E:Ljava/lang/String;

    .line 86
    iput-object v0, p0, Lr90;->F:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lr90;->G:Ljava/lang/String;

    .line 90
    iput-object v0, p0, Lr90;->H:Ljava/lang/String;

    .line 92
    iput v1, p0, Lr90;->I:I

    .line 94
    const/4 v0, -0x1

    .line 95
    iput v0, p0, Lr90;->J:I

    .line 97
    iput v0, p0, Lr90;->K:I

    .line 99
    const/16 v2, 0x1388

    .line 101
    iput v2, p0, Lr90;->L:I

    .line 103
    const/16 v2, 0x3e8

    .line 105
    iput v2, p0, Lr90;->M:I

    .line 107
    iput v0, p0, Lr90;->N:I

    .line 109
    iput-boolean v1, p0, Lr90;->d:Z

    .line 111
    iput-object p1, p0, Lr90;->a:Ljava/net/DatagramSocket;

    .line 113
    invoke-virtual {p0}, Lr90;->e()V

    .line 116
    invoke-virtual {p0}, Lr90;->g()V

    .line 119
    new-instance p1, Lo90;

    .line 121
    invoke-direct {p1, p0, p2}, Lo90;-><init>(Lr90;Ljava/net/DatagramSocket;)V

    .line 124
    iput-object p1, p0, Lr90;->r:Lo90;

    .line 126
    const-wide/16 p1, 0x1

    .line 128
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception p1

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    .line 135
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    const-string v0, "RTPSession sleep failed E="

    .line 140
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    new-array p2, v1, [Ljava/lang/Object;

    .line 156
    const-string v0, "RTPSession"

    .line 158
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lp90;Ln90;Lzh;)I
    .locals 0

    .line 1
    iget-boolean p2, p0, Lr90;->x:Z

    .line 3
    const/4 p3, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 6
    const-string p1, "RTPSessionRegister(): Can\'t register another application!"

    .line 8
    new-array p2, p3, [Ljava/lang/Object;

    .line 10
    const-string p3, "RTPSession"

    .line 12
    invoke-static {p3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const/4 p1, -0x1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 p2, 0x1

    .line 18
    iput-boolean p2, p0, Lr90;->x:Z

    .line 20
    invoke-virtual {p0}, Lr90;->f()V

    .line 23
    iput-object p1, p0, Lr90;->q:Lp90;

    .line 25
    new-instance p2, Lq90;

    .line 27
    invoke-direct {p2, p0}, Lq90;-><init>(Lr90;)V

    .line 30
    iput-object p2, p0, Lr90;->s:Lq90;

    .line 32
    new-instance p2, Lr3;

    .line 34
    invoke-direct {p2, p0, p1}, Lr3;-><init>(Lr90;Lp90;)V

    .line 37
    iput-object p2, p0, Lr90;->t:Lr3;

    .line 39
    return p3
.end method

.method public b(Lk50;)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p1, Lk50;->a:Z

    .line 4
    iget-boolean v1, p0, Lr90;->d:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v0, p0, Lr90;->p:Ll50;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1, p1}, Ll50;->a(ILk50;)I

    .line 14
    move-result p1

    .line 15
    return p1

    .line 16
    :cond_0
    iget-object v1, p0, Lr90;->p:Ll50;

    .line 18
    invoke-virtual {v1, v0, p1}, Ll50;->a(ILk50;)I

    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final c()V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    move-result-wide v1

    .line 7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 10
    move-result-object v3

    .line 11
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    .line 14
    move-result-wide v3

    .line 15
    add-long/2addr v1, v3

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 23
    move-result v3

    .line 24
    int-to-long v3, v3

    .line 25
    sub-long/2addr v1, v3

    .line 26
    iget-object v3, p0, Lr90;->A:Ljava/lang/String;

    .line 28
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 31
    move-result v3

    .line 32
    int-to-long v3, v3

    .line 33
    add-long/2addr v1, v3

    .line 34
    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    .line 37
    iput-object v0, p0, Lr90;->k:Ljava/util/Random;

    .line 39
    return-void
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lr90;->w:Z

    .line 4
    iget-boolean v0, p0, Lr90;->d:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lr90;->b:Ljava/net/MulticastSocket;

    .line 10
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lr90;->a:Ljava/net/DatagramSocket;

    .line 16
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 19
    :goto_0
    iget-object v0, p0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 21
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    :try_start_0
    iget-object v0, p0, Lr90;->v:Ljava/util/concurrent/locks/Condition;

    .line 26
    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object v0, p0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 31
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 34
    iget-object v0, p0, Lr90;->r:Lo90;

    .line 36
    if-nez v0, :cond_3

    .line 38
    const-wide/16 v0, 0x32

    .line 40
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 43
    :catch_0
    iget-object v2, p0, Lr90;->t:Lr3;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 48
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    nop

    .line 53
    :goto_1
    iget-object v0, p0, Lr90;->r:Lo90;

    .line 55
    if-eqz v0, :cond_2

    .line 57
    iget-boolean v1, p0, Lr90;->d:Z

    .line 59
    if-eqz v1, :cond_1

    .line 61
    iget-object v0, v0, Lo90;->c:Ljava/net/MulticastSocket;

    .line 63
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 66
    goto :goto_2

    .line 67
    :cond_1
    iget-object v0, v0, Lo90;->b:Ljava/net/DatagramSocket;

    .line 69
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 72
    :cond_2
    :goto_2
    return-void

    .line 73
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 76
    const/4 v0, 0x0

    .line 77
    throw v0

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lr90;->u:Ljava/util/concurrent/locks/Lock;

    .line 81
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 84
    throw v0
.end method

.method public final e()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lr90;->d:Z

    .line 3
    const-string v1, ""

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lr90;->b:Ljava/net/MulticastSocket;

    .line 9
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    move-object v1, v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lr90;->a:Ljava/net/DatagramSocket;

    .line 23
    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalAddress()Ljava/net/InetAddress;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    invoke-virtual {v0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    const-string v2, "user.name"

    .line 40
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "@"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lr90;->A:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final declared-synchronized f()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lr90;->h:I

    .line 5
    const-string v1, "RTPSession"

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v3, "generateSeqNum seqNum = "

    .line 14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget v3, p0, Lr90;->h:I

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v2

    .line 26
    new-array v0, v0, [Ljava/lang/Object;

    .line 28
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public final g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lr90;->k:Ljava/util/Random;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lr90;->c()V

    .line 8
    :cond_0
    iget-object v0, p0, Lr90;->k:Ljava/util/Random;

    .line 10
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 13
    move-result v0

    .line 14
    int-to-long v0, v0

    .line 15
    iput-wide v0, p0, Lr90;->f:J

    .line 17
    const-wide/16 v2, 0x0

    .line 19
    cmp-long v4, v0, v2

    .line 21
    if-gez v4, :cond_1

    .line 23
    const-wide/16 v2, -0x1

    .line 25
    mul-long v0, v0, v2

    .line 27
    iput-wide v0, p0, Lr90;->f:J

    .line 29
    :cond_1
    return-void
.end method

.method public final declared-synchronized h()I
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lr90;->h:I

    .line 4
    add-int/lit8 v0, v0, 0x1

    .line 6
    iput v0, p0, Lr90;->h:I

    .line 8
    const/high16 v1, 0x10000

    .line 10
    const/4 v2, 0x0

    .line 11
    if-le v0, v1, :cond_0

    .line 13
    iput v2, p0, Lr90;->h:I

    .line 15
    :cond_0
    const-string v0, "RTPSession"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v3, "getNextSeqNum seqNum = "

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget v3, p0, Lr90;->h:I

    .line 29
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v1

    .line 36
    new-array v2, v2, [Ljava/lang/Object;

    .line 38
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget v0, p0, Lr90;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    .line 44
    return v0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    monitor-exit p0

    .line 47
    throw v0
.end method

.method public declared-synchronized i()I
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "RTPSession"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "getSeqNum seqNum = "

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    iget v2, p0, Lr90;->h:I

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x0

    .line 24
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    iget v0, p0, Lr90;->h:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit p0

    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0
.end method

.method public j()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RTPSession"

    .line 6
    const-string v3, "!!!!!!! Beginning SSRC conflict resolution !!!!!!!!!"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget v1, p0, Lr90;->z:I

    .line 13
    const/4 v3, 0x1

    .line 14
    add-int/2addr v1, v3

    .line 15
    iput v1, p0, Lr90;->z:I

    .line 17
    const/4 v4, 0x5

    .line 18
    if-ge v1, v4, :cond_0

    .line 20
    iput-boolean v3, p0, Lr90;->y:Z

    .line 22
    iget-object v1, p0, Lr90;->r:Lo90;

    .line 24
    invoke-virtual {v1}, Lo90;->c()V

    .line 27
    iget-object v1, p0, Lr90;->r:Lo90;

    .line 29
    invoke-virtual {v1}, Lo90;->a()V

    .line 32
    invoke-virtual {p0}, Lr90;->g()V

    .line 35
    iget-object v1, p0, Lr90;->r:Lo90;

    .line 37
    iput-boolean v3, v1, Lo90;->l:Z

    .line 39
    iput-boolean v0, p0, Lr90;->y:Z

    .line 41
    const-string v1, "SSRC conflict resolution complete"

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string v1, "Too many conflicts. There is probably a loop in the network."

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lr90;->d()V

    .line 59
    :goto_0
    return-void
.end method

.method public k([B)[J
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v2, v0, [[B

    .line 4
    const/4 v0, 0x0

    .line 5
    aput-object p1, v2, v0

    .line 7
    const/4 v3, 0x0

    .line 8
    const/4 v4, 0x0

    .line 9
    const-wide/16 v5, -0x1

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v1, p0

    .line 13
    invoke-virtual/range {v1 .. v7}, Lr90;->l([[B[J[ZJ[J)[[J

    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 19
    aget-object p1, p1, v0

    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public l([[B[J[ZJ[J)[[J
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    const-wide/16 v3, 0x0

    .line 9
    cmp-long v5, p4, v3

    .line 11
    if-gez v5, :cond_0

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v3

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-wide/from16 v3, p4

    .line 20
    :goto_0
    array-length v5, v0

    .line 21
    const/4 v6, 0x2

    .line 22
    filled-new-array {v5, v6}, [I

    .line 25
    move-result-object v5

    .line 26
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 28
    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    move-object v13, v5

    .line 33
    check-cast v13, [[J

    .line 35
    const/4 v14, 0x0

    .line 36
    const/4 v15, 0x0

    .line 37
    :goto_1
    array-length v5, v0

    .line 38
    if-ge v15, v5, :cond_9

    .line 40
    aget-object v12, v0, v15

    .line 42
    const/16 v16, 0x0

    .line 44
    if-nez v12, :cond_1

    .line 46
    return-object v16

    .line 47
    :cond_1
    if-eqz p3, :cond_2

    .line 49
    aget-boolean v5, p3, v15

    .line 51
    move v11, v5

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v11, 0x0

    .line 54
    :goto_2
    array-length v5, v12

    .line 55
    sget v6, Lmb0;->n:I

    .line 57
    const-string v10, "RTPSession"

    .line 59
    if-le v5, v6, :cond_3

    .line 61
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    const-string v6, "RTPSession.sendData() called with buffer exceeding "

    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    sget v6, Lmb0;->n:I

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v6, " bytes ("

    .line 78
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    array-length v6, v12

    .line 82
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string v6, ")"

    .line 87
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v5

    .line 94
    new-array v6, v14, [Ljava/lang/Object;

    .line 96
    invoke-static {v10, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_3
    aget-object v5, v13, v15

    .line 101
    aput-wide v3, v5, v14

    .line 103
    const/16 v17, 0x1

    .line 105
    if-nez p6, :cond_4

    .line 107
    invoke-virtual/range {p0 .. p0}, Lr90;->h()I

    .line 110
    move-result v6

    .line 111
    int-to-long v6, v6

    .line 112
    aput-wide v6, v5, v17

    .line 114
    goto :goto_3

    .line 115
    :cond_4
    aget-wide v6, p6, v15

    .line 117
    aput-wide v6, v5, v17

    .line 119
    :goto_3
    new-instance v8, Lmb0;

    .line 121
    iget-wide v6, v1, Lr90;->f:J

    .line 123
    aget-object v5, v13, v15

    .line 125
    move/from16 p5, v15

    .line 127
    aget-wide v14, v5, v17

    .line 129
    long-to-int v15, v14

    .line 130
    iget v14, v1, Lr90;->e:I

    .line 132
    move-object v5, v8

    .line 133
    move-wide/from16 v18, v6

    .line 135
    move-wide v6, v3

    .line 136
    move-object v0, v8

    .line 137
    move-wide/from16 v8, v18

    .line 139
    move-wide/from16 v18, v3

    .line 141
    move-object v3, v10

    .line 142
    move v10, v15

    .line 143
    move v4, v11

    .line 144
    move v11, v14

    .line 145
    invoke-direct/range {v5 .. v12}, Lmb0;-><init>(JJII[B)V

    .line 148
    if-eqz v2, :cond_5

    .line 150
    invoke-virtual {v0, v2}, Lmb0;->m([J)I

    .line 153
    :cond_5
    invoke-virtual {v0, v4}, Lmb0;->n(Z)V

    .line 156
    invoke-virtual {v0}, Lmb0;->b()[B

    .line 159
    move-result-object v0

    .line 160
    iget-boolean v4, v1, Lr90;->y:Z

    .line 162
    if-eqz v4, :cond_6

    .line 164
    const-string v0, "RTPSession.sendData() called while trying to resolve conflict."

    .line 166
    const/4 v2, 0x0

    .line 167
    new-array v2, v2, [Ljava/lang/Object;

    .line 169
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    return-object v16

    .line 173
    :cond_6
    iget-boolean v4, v1, Lr90;->d:Z

    .line 175
    const-string v5, "RTPSession.sendData() packet creation failed."

    .line 177
    if-eqz v4, :cond_7

    .line 179
    :try_start_0
    new-instance v4, Ljava/net/DatagramPacket;

    .line 181
    array-length v6, v0

    .line 182
    iget-object v7, v1, Lr90;->c:Ljava/net/InetAddress;

    .line 184
    iget-object v8, v1, Lr90;->b:Ljava/net/MulticastSocket;

    .line 186
    invoke-virtual {v8}, Ljava/net/DatagramSocket;->getPort()I

    .line 189
    move-result v8

    .line 190
    invoke-direct {v4, v0, v6, v7, v8}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    :try_start_1
    iget-object v0, v1, Lr90;->b:Ljava/net/MulticastSocket;

    .line 195
    invoke-virtual {v0, v4}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    goto :goto_5

    .line 199
    :catch_0
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    return-object v16

    .line 204
    :catch_1
    move-exception v0

    .line 205
    const/4 v2, 0x0

    .line 206
    new-array v2, v2, [Ljava/lang/Object;

    .line 208
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    return-object v16

    .line 215
    :cond_7
    iget-object v4, v1, Lr90;->p:Ll50;

    .line 217
    invoke-virtual {v4}, Ll50;->f()Ljava/util/Iterator;

    .line 220
    move-result-object v4

    .line 221
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_8

    .line 227
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v6

    .line 231
    check-cast v6, Lk50;

    .line 233
    iget-object v6, v6, Lk50;->b:Ljava/net/InetSocketAddress;

    .line 235
    :try_start_2
    new-instance v7, Ljava/net/DatagramPacket;

    .line 237
    array-length v8, v0

    .line 238
    invoke-direct {v7, v0, v8, v6}, Ljava/net/DatagramPacket;-><init>([BILjava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 241
    :try_start_3
    iget-object v6, v1, Lr90;->a:Ljava/net/DatagramSocket;

    .line 243
    invoke-virtual {v6, v7}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 246
    goto :goto_4

    .line 247
    :catch_2
    move-exception v0

    .line 248
    const-string v2, "RTPSession.sendData() unicast failed."

    .line 250
    const/4 v4, 0x0

    .line 251
    new-array v4, v4, [Ljava/lang/Object;

    .line 253
    invoke-static {v3, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 259
    return-object v16

    .line 260
    :catch_3
    move-exception v0

    .line 261
    const/4 v4, 0x0

    .line 262
    new-array v2, v4, [Ljava/lang/Object;

    .line 264
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    return-object v16

    .line 271
    :cond_8
    :goto_5
    const/4 v4, 0x0

    .line 272
    iget v0, v1, Lr90;->i:I

    .line 274
    add-int/lit8 v0, v0, 0x1

    .line 276
    iput v0, v1, Lr90;->i:I

    .line 278
    iget v0, v1, Lr90;->j:I

    .line 280
    add-int/lit8 v0, v0, 0x1

    .line 282
    iput v0, v1, Lr90;->j:I

    .line 284
    add-int/lit8 v15, p5, 0x1

    .line 286
    move-object/from16 v0, p1

    .line 288
    move-wide/from16 v3, v18

    .line 290
    const/4 v14, 0x0

    .line 291
    goto/16 :goto_1

    .line 293
    :cond_9
    return-object v13
.end method

.method public declared-synchronized m(I)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lr90;->h:I

    .line 4
    const-string v0, "RTPSession"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "setSeqNum seqNum = "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 23
    const/4 v1, 0x0

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    monitor-exit p0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    monitor-exit p0

    .line 33
    throw p1
.end method

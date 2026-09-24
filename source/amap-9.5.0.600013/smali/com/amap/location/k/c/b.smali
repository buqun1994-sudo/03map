.class public Lcom/amap/location/k/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/k/c/b$a;,
        Lcom/amap/location/k/c/b$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private c:I

.field private d:Lcom/amap/location/support/handler/AmapHandler;

.field private e:Lcom/amap/location/k/c/b$a;

.field private f:J

.field private g:Lcom/amap/location/k/c/b$b;

.field private h:I

.field private i:Ljava/util/concurrent/Executor;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/k/c/b;->a:I

    .line 7
    new-instance v1, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    iput v0, p0, Lcom/amap/location/k/c/b;->c:I

    .line 16
    return-void
.end method

.method private a(Lcom/amap/location/k/c/b$b;Lcom/amap/location/k/c/c;)V
    .locals 6

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 77
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    .line 78
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget v1, p2, Lcom/amap/location/k/c/c;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 p2, 0x67

    .line 80
    invoke-interface {v0, p2, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/16 p2, 0x68

    .line 81
    invoke-interface {v0, p2, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 82
    iget-wide v2, p2, Lcom/amap/location/k/c/c;->d:J

    const-wide/32 v4, 0x36ee80

    cmp-long p2, v2, v4

    if-lez p2, :cond_3

    const p2, 0x36ee80

    goto :goto_0

    :cond_3
    long-to-int p2, v2

    :goto_0
    const/16 v2, 0x6b

    .line 83
    invoke-interface {v0, v2, v1, p2, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(IIILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 85
    throw p1
.end method

.method public static synthetic a(Lcom/amap/location/k/c/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/k/c/b;Lcom/amap/location/k/c/b$b;Lcom/amap/location/k/c/c;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/amap/location/k/c/b;->a(Lcom/amap/location/k/c/b$b;Lcom/amap/location/k/c/c;)V

    return-void
.end method

.method private a(IIILjava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x66

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 31
    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collection upload limit\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UploadController"

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    if-eq p4, p1, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    iput-object v2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 35
    iget-object p1, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_1

    .line 36
    invoke-interface {p1, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit16 p3, p3, 0x3e8

    if-lez p2, :cond_7

    int-to-long p1, p3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/amap/location/k/c/b;->a(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 40
    throw p1

    .line 41
    :pswitch_1
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->d()V

    goto/16 :goto_0

    .line 42
    :pswitch_2
    iget-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    invoke-interface {p1}, Lcom/amap/location/k/c/b$a;->a()V

    goto/16 :goto_0

    .line 43
    :pswitch_3
    iget-object p1, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    if-eq p4, p1, :cond_2

    goto/16 :goto_0

    .line 44
    :cond_2
    iget-object p2, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    iget p3, p1, Lcom/amap/location/k/c/b$b;->e:I

    iget-object p1, p1, Lcom/amap/location/k/c/b$b;->d:Ljava/lang/Object;

    invoke-interface {p2, p3, p1}, Lcom/amap/location/k/c/b$a;->a(ILjava/lang/Object;)V

    .line 45
    iput-object v2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 46
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 47
    iget-object p1, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_3

    .line 48
    invoke-interface {p1, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 50
    iget p1, p0, Lcom/amap/location/k/c/b;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/amap/location/k/c/b;->h:I

    .line 51
    iget-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    invoke-interface {p1, v0}, Lcom/amap/location/k/c/b$a;->a(I)V

    .line 52
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 53
    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 54
    throw p1

    .line 55
    :pswitch_4
    move-object p1, p4

    check-cast p1, Lcom/amap/location/k/c/b$b;

    .line 56
    iget-object p2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    if-eq p4, p2, :cond_4

    goto :goto_0

    .line 57
    :cond_4
    iput-object v2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 58
    :try_start_2
    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 59
    iget-object p2, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p2, :cond_5

    .line 60
    invoke-interface {p2, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    :cond_5
    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 62
    iget-object p2, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    iget p3, p1, Lcom/amap/location/k/c/b$b;->e:I

    iget-object p4, p1, Lcom/amap/location/k/c/b$b;->d:Ljava/lang/Object;

    invoke-interface {p2, p3, p4}, Lcom/amap/location/k/c/b$a;->a(ILjava/lang/Object;)V

    .line 63
    iget-object p2, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    iget-object p1, p1, Lcom/amap/location/k/c/b$b;->d:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/amap/location/k/c/b$a;->b(Ljava/lang/Object;)V

    .line 64
    iget-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    invoke-interface {p1, v3}, Lcom/amap/location/k/c/b$a;->a(I)V

    .line 65
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->e()V

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 66
    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 67
    throw p1

    .line 68
    :pswitch_5
    iget-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    iget-object p2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    iget p3, p2, Lcom/amap/location/k/c/b$b;->e:I

    iget-object p2, p2, Lcom/amap/location/k/c/b$b;->d:Ljava/lang/Object;

    invoke-interface {p1, p3, p2}, Lcom/amap/location/k/c/b$a;->a(ILjava/lang/Object;)V

    .line 69
    iget-object p1, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    invoke-virtual {p1}, Lcom/amap/location/k/c/b$b;->a()V

    .line 70
    iput-object v2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 71
    iget p1, p0, Lcom/amap/location/k/c/b;->h:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/amap/location/k/c/b;->h:I

    .line 72
    iget-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/amap/location/k/c/b$a;->a(I)V

    .line 73
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    goto :goto_0

    :pswitch_6
    if-ne p2, v3, :cond_6

    .line 74
    iput v0, p0, Lcom/amap/location/k/c/b;->h:I

    .line 75
    :cond_6
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->e()V

    :cond_7
    :goto_0
    return v3

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic a(Lcom/amap/location/k/c/b;IIILjava/lang/Object;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/location/k/c/b;->a(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 3
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->b()V

    .line 6
    iget-object v0, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/amap/location/k/c/b$b;->a()V

    .line 13
    :cond_0
    iget v0, p0, Lcom/amap/location/k/c/b;->c:I

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 18
    iget-object v0, p0, Lcom/amap/location/k/c/b;->i:Ljava/util/concurrent/Executor;

    .line 20
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 22
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amap/location/k/c/b;->i:Ljava/util/concurrent/Executor;

    .line 28
    iput-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 30
    iput-object v0, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 32
    return-void
.end method

.method private e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/k/c/b;->j:Z

    .line 8
    if-eqz v0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 13
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->k()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 22
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 25
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->i()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 31
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_3

    .line 45
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 48
    return-void

    .line 49
    :cond_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 60
    move-result v0

    .line 61
    if-nez v0, :cond_4

    .line 63
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 66
    return-void

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 69
    invoke-interface {v1, v0}, Lcom/amap/location/k/c/b$a;->b(I)Z

    .line 72
    move-result v1

    .line 73
    if-nez v1, :cond_5

    .line 75
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 78
    return-void

    .line 79
    :cond_5
    iget-object v1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 81
    invoke-interface {v1, v0}, Lcom/amap/location/k/c/b$a;->c(I)J

    .line 84
    move-result-wide v1

    .line 85
    const-wide/16 v3, 0x0

    .line 87
    cmp-long v5, v1, v3

    .line 89
    if-gtz v5, :cond_6

    .line 91
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 94
    return-void

    .line 95
    :cond_6
    iget-object v5, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 97
    invoke-interface {v5}, Lcom/amap/location/k/c/b$a;->c()J

    .line 100
    move-result-wide v5

    .line 101
    cmp-long v7, v5, v3

    .line 103
    if-gtz v7, :cond_7

    .line 105
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 108
    return-void

    .line 109
    :cond_7
    iget-object v3, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 111
    invoke-interface {v3, v0}, Lcom/amap/location/k/c/b$a;->d(I)J

    .line 114
    move-result-wide v3

    .line 115
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 118
    move-result-wide v1

    .line 119
    cmp-long v3, v5, v1

    .line 121
    if-gez v3, :cond_8

    .line 123
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 126
    move-result-object v3

    .line 127
    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 130
    move-result-wide v3

    .line 131
    iget-wide v5, p0, Lcom/amap/location/k/c/b;->f:J

    .line 133
    sub-long/2addr v3, v5

    .line 134
    iget-object v5, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 136
    invoke-interface {v5}, Lcom/amap/location/k/c/b$a;->e()J

    .line 139
    move-result-wide v5

    .line 140
    cmp-long v7, v3, v5

    .line 142
    if-gez v7, :cond_8

    .line 144
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 147
    return-void

    .line 148
    :cond_8
    iget-object v3, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 150
    invoke-interface {v3, v1, v2}, Lcom/amap/location/k/c/b$a;->a(J)Ljava/lang/Object;

    .line 153
    move-result-object v1

    .line 154
    if-nez v1, :cond_9

    .line 156
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 159
    return-void

    .line 160
    :cond_9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 163
    move-result-object v2

    .line 164
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 167
    move-result-wide v2

    .line 168
    iput-wide v2, p0, Lcom/amap/location/k/c/b;->f:J

    .line 170
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 173
    move-result-object v2

    .line 174
    invoke-interface {v2}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 177
    move-result-object v2

    .line 178
    invoke-interface {v2}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 181
    move-result v2

    .line 182
    if-eq v0, v2, :cond_a

    .line 184
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 186
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->g()V

    .line 189
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->g()V

    .line 192
    return-void

    .line 193
    :cond_a
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 195
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 202
    iget-object v2, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 204
    if-eqz v2, :cond_b

    .line 206
    new-instance v2, Lcom/amap/location/k/c/b$b;

    .line 208
    iget-object v3, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 210
    invoke-direct {v2, p0, v3, v1, v0}, Lcom/amap/location/k/c/b$b;-><init>(Lcom/amap/location/k/c/b;Lcom/amap/location/k/c/b$a;Ljava/lang/Object;I)V

    .line 213
    iput-object v2, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 215
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->f()Ljava/util/concurrent/Executor;

    .line 218
    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/amap/location/k/c/b;->g:Lcom/amap/location/k/c/b$b;

    .line 221
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 224
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 226
    iget-object v1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 228
    invoke-interface {v1}, Lcom/amap/location/k/c/b$a;->f()I

    .line 231
    move-result v1

    .line 232
    int-to-long v1, v1

    .line 233
    const/16 v3, 0x66

    .line 235
    invoke-interface {v0, v3, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    :catchall_0
    :cond_b
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 240
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 243
    move-result-object v0

    .line 244
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 247
    return-void
.end method

.method private f()Ljava/util/concurrent/Executor;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/c/b;->i:Ljava/util/concurrent/Executor;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 8
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->h()Ljava/util/concurrent/Executor;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const/4 v1, 0x1

    .line 15
    iput v1, p0, Lcom/amap/location/k/c/b;->c:I

    .line 17
    iput-object v0, p0, Lcom/amap/location/k/c/b;->i:Ljava/util/concurrent/Executor;

    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 22
    const/4 v3, 0x1

    .line 23
    const/4 v4, 0x1

    .line 24
    const-wide/16 v5, 0x0

    .line 26
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 28
    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 30
    const/16 v1, 0x400

    .line 32
    invoke-direct {v8, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 35
    new-instance v9, Lcom/amap/location/k/c/b$2;

    .line 37
    invoke-direct {v9, p0}, Lcom/amap/location/k/c/b$2;-><init>(Lcom/amap/location/k/c/b;)V

    .line 40
    move-object v2, v0

    .line 41
    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 44
    iput-object v0, p0, Lcom/amap/location/k/c/b;->i:Ljava/util/concurrent/Executor;

    .line 46
    const/4 v1, 0x2

    .line 47
    iput v1, p0, Lcom/amap/location/k/c/b;->c:I

    .line 49
    return-object v0
.end method

.method private g()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 16
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->d()I

    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 22
    iget v0, p0, Lcom/amap/location/k/c/b;->h:I

    .line 24
    iget-object v1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 26
    invoke-interface {v1}, Lcom/amap/location/k/c/b$a;->d()I

    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_1

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 34
    const/16 v1, 0x65

    .line 36
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->hasMessages(I)Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 44
    const/16 v2, 0x65

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 51
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->e()J

    .line 54
    move-result-wide v6

    .line 55
    iget-object v0, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 57
    invoke-interface {v0}, Lcom/amap/location/k/c/b$a;->j()J

    .line 60
    move-result-wide v8

    .line 61
    add-long/2addr v6, v8

    .line 62
    invoke-interface/range {v1 .. v7}, Lcom/amap/location/support/handler/AmapHandler;->sendMessageDelayed(IIILjava/lang/Object;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 67
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 74
    return-void

    .line 75
    :catchall_0
    move-exception v0

    .line 76
    iget-object v1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 78
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 85
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 16
    iget v0, p0, Lcom/amap/location/k/c/b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/amap/location/k/c/b;->a:I

    .line 18
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    invoke-interface {v2}, Lcom/amap/location/support/handler/AmapHandler;->getLooper()Lcom/amap/location/support/handler/AmapLooper;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/handler/AmapLooper;->getAndroidLooperObject()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/amap/location/k/c/b;->d()V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    const/16 v2, 0x6a

    invoke-interface {v0, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    .line 22
    :goto_0
    iput-object v1, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 24
    throw v0
.end method

.method public a(J)V
    .locals 9

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 26
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    .line 27
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 28
    iget-object v2, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    const/16 v3, 0x65

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-wide v7, p1

    invoke-interface/range {v2 .. v8}, Lcom/amap/location/support/handler/AmapHandler;->sendMessageDelayed(IIILjava/lang/Object;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_0
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    throw p1
.end method

.method public a(Lcom/amap/location/k/c/b$a;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 5
    iget v0, p0, Lcom/amap/location/k/c/b;->a:I

    if-nez v0, :cond_1

    .line 6
    iput-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    .line 7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object p1

    new-instance v0, Lcom/amap/location/k/c/b$1;

    invoke-direct {v0, p0}, Lcom/amap/location/k/c/b$1;-><init>(Lcom/amap/location/k/c/b;)V

    invoke-interface {p1, p2, v0}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/amap/location/support/handler/AmapLooper;->getAndroidLooperObject()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/amap/location/k/c/b;->e:Lcom/amap/location/k/c/b$a;

    invoke-interface {p1}, Lcom/amap/location/k/c/b$a;->a()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    const/16 p2, 0x69

    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/amap/location/k/c/b;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 13
    throw p1

    .line 14
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "params not be null!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/location/k/c/b;->j:Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    iget-object v0, p0, Lcom/amap/location/k/c/b;->d:Lcom/amap/location/support/handler/AmapHandler;

    .line 15
    if-eqz v0, :cond_0

    .line 17
    const/16 v1, 0x65

    .line 19
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 24
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    iget-object v1, p0, Lcom/amap/location/k/c/b;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    throw v0
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/location/k/c/b;->j:Z

    .line 4
    const-wide/16 v0, 0x14

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/amap/location/k/c/b;->a(J)V

    .line 9
    return-void
.end method

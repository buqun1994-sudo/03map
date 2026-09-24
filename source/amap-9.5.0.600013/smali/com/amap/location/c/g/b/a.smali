.class public Lcom/amap/location/c/g/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/c/g/b/a$a;,
        Lcom/amap/location/c/g/b/a$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private c:Lcom/amap/location/support/handler/AmapHandler;

.field private d:Lcom/amap/location/c/g/b/a$a;

.field private e:J

.field private f:Lcom/amap/location/c/g/b/a$b;

.field private g:I

.field private h:Z

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/c/g/b/a;->a:I

    .line 7
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 14
    return-void
.end method

.method private a(Lcom/amap/location/c/g/b/a$b;Lcom/amap/location/c/g/b/d;)V
    .locals 6

    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 79
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_4

    if-nez p2, :cond_0

    .line 80
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    .line 81
    :cond_0
    :try_start_1
    iget v1, p2, Lcom/amap/location/c/g/b/d;->c:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const/16 p2, 0x67

    .line 82
    invoke-interface {v0, p2, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const/16 p2, 0x68

    .line 83
    invoke-interface {v0, p2, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(ILjava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    if-ne v1, v2, :cond_4

    .line 84
    iget-wide v2, p2, Lcom/amap/location/c/g/b/d;->d:J

    const-wide/32 v4, 0x36ee80

    cmp-long p2, v2, v4

    if-lez p2, :cond_3

    const p2, 0x36ee80

    goto :goto_0

    :cond_3
    long-to-int p2, v2

    :goto_0
    const/16 v2, 0x6b

    .line 85
    invoke-interface {v0, v2, v1, p2, p1}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(IIILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 87
    throw p1
.end method

.method public static synthetic a(Lcom/amap/location/c/g/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/c/g/b/a;Lcom/amap/location/c/g/b/a$b;Lcom/amap/location/c/g/b/d;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/amap/location/c/g/b/a;->a(Lcom/amap/location/c/g/b/a$b;Lcom/amap/location/c/g/b/d;)V

    return-void
.end method

.method private a(IIILjava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x66

    const-string v2, "UploadController"

    const/4 v3, 0x0

    const/4 v4, 0x1

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

    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    if-eq p4, p1, :cond_0

    goto/16 :goto_0

    .line 33
    :cond_0
    iput-object v3, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 35
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_1

    .line 36
    invoke-interface {p1, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit16 p3, p3, 0x3e8

    if-lez p2, :cond_7

    int-to-long p1, p3

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/amap/location/c/g/b/a;->a(J)V

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    .line 39
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 40
    throw p1

    .line 41
    :pswitch_1
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->d()V

    goto/16 :goto_0

    .line 42
    :pswitch_2
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    invoke-interface {p1}, Lcom/amap/location/c/g/b/a$a;->a()V

    goto/16 :goto_0

    :pswitch_3
    const-string p1, "collection upload fail"

    .line 43
    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    if-eq p4, p1, :cond_2

    goto/16 :goto_0

    .line 45
    :cond_2
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    iget p3, p1, Lcom/amap/location/c/g/b/a$b;->e:I

    iget-object p1, p1, Lcom/amap/location/c/g/b/a$b;->d:Ljava/lang/Object;

    invoke-interface {p2, p3, p1}, Lcom/amap/location/c/g/b/a$a;->a(ILjava/lang/Object;)V

    .line 46
    iput-object v3, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 47
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 48
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p1, :cond_3

    .line 49
    invoke-interface {p1, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :cond_3
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 51
    iget p1, p0, Lcom/amap/location/c/g/b/a;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/amap/location/c/g/b/a;->g:I

    .line 52
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    invoke-interface {p1, v0}, Lcom/amap/location/c/g/b/a$a;->a(I)V

    .line 53
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    goto/16 :goto_0

    :catchall_1
    move-exception p1

    .line 54
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 55
    throw p1

    :pswitch_4
    const-string p1, "collection upload success"

    .line 56
    invoke-static {v2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    move-object p1, p4

    check-cast p1, Lcom/amap/location/c/g/b/a$b;

    .line 58
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    if-eq p4, p2, :cond_4

    goto :goto_0

    .line 59
    :cond_4
    iput-object v3, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 60
    :try_start_2
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 61
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz p2, :cond_5

    .line 62
    invoke-interface {p2, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 63
    :cond_5
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 64
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    iget p3, p1, Lcom/amap/location/c/g/b/a$b;->e:I

    iget-object p4, p1, Lcom/amap/location/c/g/b/a$b;->d:Ljava/lang/Object;

    invoke-interface {p2, p3, p4}, Lcom/amap/location/c/g/b/a$a;->a(ILjava/lang/Object;)V

    .line 65
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    iget-object p1, p1, Lcom/amap/location/c/g/b/a$b;->d:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/amap/location/c/g/b/a$a;->b(Ljava/lang/Object;)V

    .line 66
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    invoke-interface {p1, v4}, Lcom/amap/location/c/g/b/a$a;->a(I)V

    .line 67
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->e()V

    goto :goto_0

    :catchall_2
    move-exception p1

    .line 68
    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 69
    throw p1

    .line 70
    :pswitch_5
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    iget p3, p2, Lcom/amap/location/c/g/b/a$b;->e:I

    iget-object p2, p2, Lcom/amap/location/c/g/b/a$b;->d:Ljava/lang/Object;

    invoke-interface {p1, p3, p2}, Lcom/amap/location/c/g/b/a$a;->a(ILjava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    invoke-virtual {p1}, Lcom/amap/location/c/g/b/a$b;->a()V

    .line 72
    iput-object v3, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 73
    iget p1, p0, Lcom/amap/location/c/g/b/a;->g:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/amap/location/c/g/b/a;->g:I

    .line 74
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/amap/location/c/g/b/a$a;->a(I)V

    .line 75
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    goto :goto_0

    :pswitch_6
    if-ne p2, v4, :cond_6

    .line 76
    iput v0, p0, Lcom/amap/location/c/g/b/a;->g:I

    .line 77
    :cond_6
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->e()V

    :cond_7
    :goto_0
    return v4

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

.method public static synthetic a(Lcom/amap/location/c/g/b/a;IIILjava/lang/Object;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amap/location/c/g/b/a;->a(IIILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/amap/location/c/g/b/a$b;->a()V

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 11
    iput-object v0, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 13
    return-void
.end method

.method private e()V
    .locals 9

    .line 1
    const-string v0, "UploadController"

    .line 3
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-boolean v1, p0, Lcom/amap/location/c/g/b/a;->h:Z

    .line 10
    if-eqz v1, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 15
    invoke-interface {v1}, Lcom/amap/location/c/g/b/a$a;->i()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_2

    .line 21
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 27
    invoke-interface {v1}, Lcom/amap/location/c/g/b/a$a;->g()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 33
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 40
    move-result-object v1

    .line 41
    invoke-interface {v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_3

    .line 47
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 50
    return-void

    .line 51
    :cond_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_4

    .line 65
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 68
    return-void

    .line 69
    :cond_4
    iget-object v2, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 71
    invoke-interface {v2, v1}, Lcom/amap/location/c/g/b/a$a;->b(I)Z

    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_5

    .line 77
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 80
    return-void

    .line 81
    :cond_5
    iget-object v2, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 83
    invoke-interface {v2, v1}, Lcom/amap/location/c/g/b/a$a;->c(I)J

    .line 86
    move-result-wide v2

    .line 87
    const-wide/16 v4, 0x0

    .line 89
    cmp-long v6, v2, v4

    .line 91
    if-gtz v6, :cond_7

    .line 93
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 96
    iget-boolean v0, p0, Lcom/amap/location/c/g/b/a;->i:Z

    .line 98
    if-nez v0, :cond_6

    .line 100
    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/amap/location/c/g/b/a;->i:Z

    .line 103
    const v0, 0x189c3

    .line 106
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 109
    :cond_6
    return-void

    .line 110
    :cond_7
    iget-object v6, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 112
    invoke-interface {v6}, Lcom/amap/location/c/g/b/a$a;->b()J

    .line 115
    move-result-wide v6

    .line 116
    cmp-long v8, v6, v4

    .line 118
    if-gtz v8, :cond_8

    .line 120
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 123
    return-void

    .line 124
    :cond_8
    iget-object v4, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 126
    invoke-interface {v4, v1}, Lcom/amap/location/c/g/b/a$a;->d(I)J

    .line 129
    move-result-wide v4

    .line 130
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 133
    move-result-wide v2

    .line 134
    cmp-long v4, v6, v2

    .line 136
    if-gez v4, :cond_9

    .line 138
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 141
    move-result-object v4

    .line 142
    invoke-interface {v4}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 145
    move-result-wide v4

    .line 146
    iget-wide v6, p0, Lcom/amap/location/c/g/b/a;->e:J

    .line 148
    sub-long/2addr v4, v6

    .line 149
    iget-object v6, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 151
    invoke-interface {v6}, Lcom/amap/location/c/g/b/a$a;->d()J

    .line 154
    move-result-wide v6

    .line 155
    cmp-long v8, v4, v6

    .line 157
    if-gez v8, :cond_9

    .line 159
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 162
    return-void

    .line 163
    :cond_9
    iget-object v4, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 165
    invoke-interface {v4, v2, v3}, Lcom/amap/location/c/g/b/a$a;->a(J)Ljava/lang/Object;

    .line 168
    move-result-object v4

    .line 169
    if-nez v4, :cond_a

    .line 171
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 174
    return-void

    .line 175
    :cond_a
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 178
    move-result-object v5

    .line 179
    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 182
    move-result-wide v5

    .line 183
    iput-wide v5, p0, Lcom/amap/location/c/g/b/a;->e:J

    .line 185
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 188
    move-result-object v5

    .line 189
    invoke-interface {v5}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 192
    move-result-object v5

    .line 193
    invoke-interface {v5}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 196
    move-result v5

    .line 197
    if-eq v1, v5, :cond_b

    .line 199
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 201
    invoke-interface {v0}, Lcom/amap/location/c/g/b/a$a;->f()V

    .line 204
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->f()V

    .line 207
    return-void

    .line 208
    :cond_b
    :try_start_0
    iget-object v5, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 210
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 213
    move-result-object v5

    .line 214
    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 217
    iget-object v5, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 219
    if-eqz v5, :cond_c

    .line 221
    new-instance v5, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string v6, "begin collect:"

    .line 228
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    move-result-object v2

    .line 238
    invoke-static {v0, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v2, Lcom/amap/location/c/g/b/a$b;

    .line 243
    iget-object v3, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 245
    invoke-direct {v2, p0, v3, v4, v1}, Lcom/amap/location/c/g/b/a$b;-><init>(Lcom/amap/location/c/g/b/a;Lcom/amap/location/c/g/b/a$a;Ljava/lang/Object;I)V

    .line 248
    iput-object v2, p0, Lcom/amap/location/c/g/b/a;->f:Lcom/amap/location/c/g/b/a$b;

    .line 250
    invoke-static {v2}, Lcom/amap/location/support/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 253
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 255
    iget-object v2, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 257
    invoke-interface {v2}, Lcom/amap/location/c/g/b/a$a;->e()I

    .line 260
    move-result v2

    .line 261
    int-to-long v2, v2

    .line 262
    const/16 v4, 0x66

    .line 264
    invoke-interface {v1, v4, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    goto :goto_0

    .line 268
    :catchall_0
    move-exception v1

    .line 269
    :try_start_1
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    :cond_c
    :goto_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 274
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 281
    return-void

    .line 282
    :catchall_1
    move-exception v0

    .line 283
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 285
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 288
    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 292
    throw v0
.end method

.method private f()V
    .locals 10

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 10
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 12
    if-eqz v0, :cond_2

    .line 14
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 16
    invoke-interface {v0}, Lcom/amap/location/c/g/b/a$a;->c()I

    .line 19
    move-result v0

    .line 20
    if-lez v0, :cond_0

    .line 22
    iget v0, p0, Lcom/amap/location/c/g/b/a;->g:I

    .line 24
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 26
    invoke-interface {v1}, Lcom/amap/location/c/g/b/a$a;->c()I

    .line 29
    move-result v1

    .line 30
    if-ge v0, v1, :cond_2

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 34
    const/16 v1, 0x65

    .line 36
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->hasMessages(I)Z

    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 44
    const/16 v2, 0x65

    .line 46
    const/4 v3, 0x0

    .line 47
    const/4 v4, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 51
    invoke-interface {v0}, Lcom/amap/location/c/g/b/a$a;->d()J

    .line 54
    move-result-wide v6

    .line 55
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 57
    invoke-interface {v0}, Lcom/amap/location/c/g/b/a$a;->h()J

    .line 60
    move-result-wide v8

    .line 61
    add-long/2addr v6, v8

    .line 62
    invoke-interface/range {v1 .. v7}, Lcom/amap/location/support/handler/AmapHandler;->sendMessageDelayed(IIILjava/lang/Object;J)Z

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcom/amap/location/c/g/b/a;->j:Z

    .line 67
    if-nez v0, :cond_2

    .line 69
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 71
    invoke-interface {v0}, Lcom/amap/location/c/g/b/a$a;->c()I

    .line 74
    move-result v0

    .line 75
    if-lez v0, :cond_2

    .line 77
    iget v0, p0, Lcom/amap/location/c/g/b/a;->g:I

    .line 79
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 81
    invoke-interface {v1}, Lcom/amap/location/c/g/b/a$a;->c()I

    .line 84
    move-result v1

    .line 85
    if-lt v0, v1, :cond_2

    .line 87
    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/amap/location/c/g/b/a;->j:Z

    .line 90
    const v0, 0x189c4

    .line 93
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :cond_2
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 98
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 105
    return-void

    .line 106
    :catchall_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 109
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 116
    throw v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 15
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 16
    iget v0, p0, Lcom/amap/location/c/g/b/a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 17
    iput v0, p0, Lcom/amap/location/c/g/b/a;->a:I

    .line 18
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    invoke-interface {v2}, Lcom/amap/location/support/handler/AmapHandler;->getLooper()Lcom/amap/location/support/handler/AmapLooper;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/handler/AmapLooper;->getAndroidLooperObject()Ljava/lang/Object;

    move-result-object v2

    if-ne v0, v2, :cond_0

    .line 20
    invoke-direct {p0}, Lcom/amap/location/c/g/b/a;->d()V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    const/16 v2, 0x6a

    invoke-interface {v0, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    .line 22
    :goto_0
    iput-object v1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 26
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    const/16 v1, 0x65

    .line 27
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 28
    iget-object v2, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

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
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 30
    throw p1
.end method

.method public a(Lcom/amap/location/c/g/b/a$a;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 5
    iget v0, p0, Lcom/amap/location/c/g/b/a;->a:I

    if-nez v0, :cond_1

    .line 6
    iput-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    .line 7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object p1

    new-instance v0, Lcom/amap/location/c/g/b/a$1;

    invoke-direct {v0, p0}, Lcom/amap/location/c/g/b/a$1;-><init>(Lcom/amap/location/c/g/b/a;)V

    invoke-interface {p1, p2, v0}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    .line 8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Lcom/amap/location/support/handler/AmapLooper;->getAndroidLooperObject()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    .line 9
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->d:Lcom/amap/location/c/g/b/a$a;

    invoke-interface {p1}, Lcom/amap/location/c/g/b/a$a;->a()V

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

    const/16 p2, 0x69

    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    :goto_0
    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lcom/amap/location/c/g/b/a;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/location/c/g/b/a;->h:Z

    .line 4
    const-wide/16 v0, 0x14

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/amap/location/c/g/b/a;->a(J)V

    .line 9
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/location/c/g/b/a;->h:Z

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 13
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->c:Lcom/amap/location/support/handler/AmapHandler;

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
    iget-object v0, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

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
    iget-object v1, p0, Lcom/amap/location/c/g/b/a;->b:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 35
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 42
    throw v0
.end method

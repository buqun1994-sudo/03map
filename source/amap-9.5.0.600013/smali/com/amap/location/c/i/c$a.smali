.class final Lcom/amap/location/c/i/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnHandleMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/c/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/i/c;


# direct methods
.method private constructor <init>(Lcom/amap/location/c/i/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amap/location/c/i/c;Lcom/amap/location/c/i/c$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/c/i/c$a;-><init>(Lcom/amap/location/c/i/c;)V

    return-void
.end method


# virtual methods
.method public handleMessage(IIILjava/lang/Object;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_2

    .line 3
    const/4 p2, 0x1

    .line 4
    if-eq p1, p2, :cond_1

    .line 6
    const/4 p2, 0x2

    .line 7
    if-eq p1, p2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 12
    invoke-static {p1}, Lcom/amap/location/c/i/c;->i(Lcom/amap/location/c/i/c;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 18
    invoke-static {p1}, Lcom/amap/location/c/i/c;->j(Lcom/amap/location/c/i/c;)V

    .line 21
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 23
    invoke-static {p1}, Lcom/amap/location/c/i/c;->f(Lcom/amap/location/c/i/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 36
    invoke-static {p1}, Lcom/amap/location/c/i/c;->b(Lcom/amap/location/c/i/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 39
    move-result-object p1

    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-interface {p1, p2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 46
    invoke-static {p1}, Lcom/amap/location/c/i/c;->f(Lcom/amap/location/c/i/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 57
    goto :goto_0

    .line 58
    :catchall_0
    move-exception p1

    .line 59
    iget-object p2, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 61
    invoke-static {p2}, Lcom/amap/location/c/i/c;->f(Lcom/amap/location/c/i/c;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 68
    move-result-object p2

    .line 69
    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 72
    throw p1

    .line 73
    :cond_2
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 75
    invoke-static {p1}, Lcom/amap/location/c/i/c;->h(Lcom/amap/location/c/i/c;)V

    .line 78
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 80
    invoke-static {p1}, Lcom/amap/location/c/i/c;->i(Lcom/amap/location/c/i/c;)V

    .line 83
    iget-object p1, p0, Lcom/amap/location/c/i/c$a;->a:Lcom/amap/location/c/i/c;

    .line 85
    invoke-static {p1}, Lcom/amap/location/c/i/c;->a(Lcom/amap/location/c/i/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 88
    goto :goto_0

    .line 89
    :catchall_1
    move-exception p1

    .line 90
    const-string p2, "WifiScanner"

    .line 92
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    :goto_0
    return-void
.end method

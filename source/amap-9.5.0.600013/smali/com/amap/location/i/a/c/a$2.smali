.class Lcom/amap/location/i/a/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/i/a/c/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/i/a/c/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/i/a/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/amap/location/i/a/c/a$a;

    .line 9
    iget-object v3, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 11
    invoke-direct {v2, v3, p1}, Lcom/amap/location/i/a/c/a$a;-><init>(Lcom/amap/location/i/a/c/a;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 14
    invoke-interface {v1, p1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lcom/amap/location/i/a/c/a;->a(Lcom/amap/location/i/a/c/a;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 23
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->d(Lcom/amap/location/i/a/c/a;)Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 27
    monitor-enter p1

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 30
    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->d(Lcom/amap/location/i/a/c/a;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 37
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 38
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 40
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 47
    move-result-wide v0

    .line 48
    invoke-static {p1, v0, v1}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;J)J

    .line 51
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 53
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 64
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 66
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 72
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 75
    move-result-object p1

    .line 76
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 82
    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->e(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 88
    invoke-static {v1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 91
    move-result-object v1

    .line 92
    invoke-interface {v1}, Lcom/amap/location/support/handler/AmapHandler;->getLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 95
    move-result-object v1

    .line 96
    invoke-interface {p1, v0, v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 99
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 101
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 104
    move-result-object p1

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 109
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 111
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 114
    move-result-object p1

    .line 115
    iget-object v1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 117
    invoke-static {v1}, Lcom/amap/location/i/a/c/a;->f(Lcom/amap/location/i/a/c/a;)I

    .line 120
    move-result v1

    .line 121
    invoke-static {v1}, Lcom/amap/location/support/util/PeakTimesHelper;->getDelayRadomTime(I)I

    .line 124
    move-result v1

    .line 125
    int-to-long v1, v1

    .line 126
    const-wide/16 v3, 0x2710

    .line 128
    add-long/2addr v1, v3

    .line 129
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 132
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 134
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 137
    move-result-object p1

    .line 138
    const/4 v0, 0x5

    .line 139
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 142
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 144
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 147
    move-result-object p1

    .line 148
    const-wide/32 v1, 0xea60

    .line 151
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 154
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 156
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 159
    move-result-object p1

    .line 160
    const/4 v0, 0x1

    .line 161
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 164
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 166
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 169
    move-result-object p1

    .line 170
    iget-object v1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 172
    invoke-static {v1}, Lcom/amap/location/i/a/c/a;->f(Lcom/amap/location/i/a/c/a;)I

    .line 175
    move-result v1

    .line 176
    invoke-static {v1}, Lcom/amap/location/support/util/PeakTimesHelper;->getDelayRadomTime(I)I

    .line 179
    move-result v1

    .line 180
    int-to-long v1, v1

    .line 181
    add-long/2addr v1, v3

    .line 182
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 185
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 187
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 190
    move-result-object p1

    .line 191
    const/4 v0, 0x3

    .line 192
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeMessages(I)V

    .line 195
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 197
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->c(Lcom/amap/location/i/a/c/a;)Lcom/amap/location/support/handler/AmapHandler;

    .line 200
    move-result-object p1

    .line 201
    const-wide/16 v1, 0x3a98

    .line 203
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 206
    :cond_0
    iget-object p1, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 208
    invoke-static {p1}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 211
    move-result-object p1

    .line 212
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 219
    return-void

    .line 220
    :catchall_0
    move-exception p1

    .line 221
    iget-object v0, p0, Lcom/amap/location/i/a/c/a$2;->a:Lcom/amap/location/i/a/c/a;

    .line 223
    invoke-static {v0}, Lcom/amap/location/i/a/c/a;->b(Lcom/amap/location/i/a/c/a;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 226
    move-result-object v0

    .line 227
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 234
    throw p1

    .line 235
    :catchall_1
    move-exception v0

    .line 236
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 237
    throw v0
.end method

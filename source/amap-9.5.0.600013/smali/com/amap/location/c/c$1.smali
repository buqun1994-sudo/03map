.class Lcom/amap/location/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/handler/OnLooperPrepared;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/c/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/c/c;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onAmapLooperPrepared(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 3
    invoke-static {v0, p1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;

    .line 6
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 8
    invoke-static {p1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;)Lcom/amap/location/c/g/a;

    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 14
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 16
    new-instance v0, Lcom/amap/location/c/g/a;

    .line 18
    invoke-static {p1}, Lcom/amap/location/c/c;->b(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 21
    move-result-object v1

    .line 22
    iget-object v2, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 24
    invoke-static {v2}, Lcom/amap/location/c/c;->c(Lcom/amap/location/c/c;)Lcom/amap/location/c/b;

    .line 27
    move-result-object v2

    .line 28
    invoke-direct {v0, v1, v2}, Lcom/amap/location/c/g/a;-><init>(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/c/b;)V

    .line 31
    invoke-static {p1, v0}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;Lcom/amap/location/c/g/a;)Lcom/amap/location/c/g/a;

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 36
    invoke-static {p1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;)Lcom/amap/location/c/g/a;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/amap/location/c/g/a;->a()V

    .line 43
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 45
    invoke-static {p1}, Lcom/amap/location/c/c;->d(Lcom/amap/location/c/c;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 49
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 50
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 52
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 55
    move-result-object v1

    .line 56
    iget-object v2, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 58
    invoke-static {v2}, Lcom/amap/location/c/c;->b(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 61
    move-result-object v2

    .line 62
    new-instance v3, Lcom/amap/location/c/c$a;

    .line 64
    iget-object v4, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 66
    invoke-direct {v3, v4}, Lcom/amap/location/c/c$a;-><init>(Lcom/amap/location/c/c;)V

    .line 69
    invoke-interface {v1, v2, v3}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 72
    move-result-object v1

    .line 73
    invoke-static {v0, v1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;

    .line 76
    iget-object v0, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 78
    invoke-static {v0}, Lcom/amap/location/c/c;->e(Lcom/amap/location/c/c;)Z

    .line 81
    move-result v0

    .line 82
    const/4 v1, 0x0

    .line 83
    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 87
    invoke-static {v0, v1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;Z)Z

    .line 90
    iget-object v0, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 92
    invoke-static {v0}, Lcom/amap/location/c/c;->f(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapHandler;

    .line 95
    move-result-object v0

    .line 96
    const/4 v2, 0x1

    .line 97
    invoke-interface {v0, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    .line 100
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 104
    move-result p1

    .line 105
    const/16 v0, 0xf

    .line 107
    if-ne p1, v0, :cond_2

    .line 109
    const-string p1, "https://aloc-gnss-eph.aimap.com/collect-hot-grid"

    .line 111
    invoke-static {p1}, Lcom/amap/location/c/b$a;->a(Ljava/lang/String;)V

    .line 114
    :cond_2
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 116
    invoke-static {p1}, Lcom/amap/location/c/c;->g(Lcom/amap/location/c/c;)V

    .line 119
    invoke-static {}, Lcom/amap/location/c/b$a;->j()Z

    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_3

    .line 125
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 127
    new-instance v0, Lcom/amap/location/c/f/c;

    .line 129
    invoke-static {p1}, Lcom/amap/location/c/c;->b(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 132
    move-result-object v2

    .line 133
    invoke-direct {v0, v2}, Lcom/amap/location/c/f/c;-><init>(Lcom/amap/location/support/handler/AmapLooper;)V

    .line 136
    invoke-static {p1, v0}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/c;Lcom/amap/location/c/f/c;)Lcom/amap/location/c/f/c;

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 141
    invoke-static {p1}, Lcom/amap/location/c/c;->c(Lcom/amap/location/c/c;)Lcom/amap/location/c/b;

    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/amap/location/c/b;->a()Z

    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_4

    .line 151
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 154
    move-result-object p1

    .line 155
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 158
    move-result-object p1

    .line 159
    iget-object v0, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 161
    invoke-static {v0}, Lcom/amap/location/c/c;->h(Lcom/amap/location/c/c;)Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 164
    move-result-object v0

    .line 165
    iget-object v2, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 167
    invoke-static {v2}, Lcom/amap/location/c/c;->b(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapLooper;

    .line 170
    move-result-object v2

    .line 171
    invoke-interface {p1, v0, v2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 174
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 177
    move-result-object p1

    .line 178
    invoke-interface {p1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 181
    move-result-object p1

    .line 182
    invoke-interface {p1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_4

    .line 188
    return-void

    .line 189
    :cond_4
    const-string p1, "sp_silent_switch"

    .line 191
    invoke-static {p1, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->getBoolean(Ljava/lang/String;Z)Z

    .line 194
    move-result p1

    .line 195
    if-eqz p1, :cond_5

    .line 197
    return-void

    .line 198
    :cond_5
    iget-object p1, p0, Lcom/amap/location/c/c$1;->a:Lcom/amap/location/c/c;

    .line 200
    invoke-static {p1}, Lcom/amap/location/c/c;->i(Lcom/amap/location/c/c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    .line 205
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 206
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    :catchall_1
    move-exception p1

    .line 208
    const-string v0, "CollectionManager"

    .line 210
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :goto_0
    return-void
.end method

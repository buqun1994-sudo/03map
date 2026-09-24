.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;->init(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    iput-object p3, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->a:Landroid/content/Intent;

    .line 5
    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .locals 7

    .line 1
    const-string v0, "mainmgrproxy"

    .line 3
    const-string v1, "loc main process looper ok"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 14
    new-instance v2, Landroid/os/Handler;

    .line 16
    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 19
    invoke-static {v1, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Landroid/os/Handler;)Landroid/os/Handler;

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-static {v0, v1}, Lcom/amap/location/sdk/a;->a(Landroid/os/Looper;Z)V

    .line 26
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 28
    new-instance v3, Lcom/amap/location/sdk/fusion/b;

    .line 30
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 33
    move-result-object v4

    .line 34
    invoke-direct {v3, v4, v0}, Lcom/amap/location/sdk/fusion/b;-><init>(Lcom/amap/location/support/signal/gnss/AmapLocationListener;Landroid/os/Looper;)V

    .line 37
    invoke-static {v2, v3}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/fusion/a;)Lcom/amap/location/sdk/fusion/a;

    .line 40
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 42
    new-instance v3, Lcom/amap/location/sdk/fusion/c;

    .line 44
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->b(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/content/Context;

    .line 47
    move-result-object v4

    .line 48
    iget-object v5, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 50
    invoke-static {v5}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/c$a;

    .line 53
    move-result-object v5

    .line 54
    iget-object v6, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->a:Landroid/content/Intent;

    .line 56
    invoke-direct {v3, v4, v5, v6, v0}, Lcom/amap/location/sdk/fusion/c;-><init>(Landroid/content/Context;Lcom/amap/location/sdk/fusion/c$a;Landroid/content/Intent;Landroid/os/Looper;)V

    .line 59
    invoke-static {v2, v3}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->b(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/fusion/a;)Lcom/amap/location/sdk/fusion/a;

    .line 62
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 64
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->d(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 67
    move-result-object v2

    .line 68
    invoke-static {v0, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/fusion/a;)Lcom/amap/location/sdk/fusion/a;

    .line 71
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 73
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->e(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/ILocationExternalProvider;

    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 81
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 84
    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 89
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 95
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->g(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    .line 98
    move-result-object v2

    .line 99
    invoke-interface {v0, v2}, Lcom/amap/location/sdk/fusion/a;->a(Lcom/amap/location/sdk/fusion/ILocationAosProvider;)V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 104
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->h(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    .line 107
    move-result-object v0

    .line 108
    monitor-enter v0

    .line 109
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 111
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->h(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    .line 114
    move-result-object v2

    .line 115
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 118
    move-result v2

    .line 119
    if-lez v2, :cond_2

    .line 121
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 123
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->h(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    .line 126
    move-result-object v2

    .line 127
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 130
    move-result-object v2

    .line 131
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 134
    move-result v3

    .line 135
    if-eqz v3, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Ljava/lang/Runnable;

    .line 143
    iget-object v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 145
    invoke-static {v4}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 152
    goto :goto_0

    .line 153
    :cond_1
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 155
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->h(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    .line 158
    move-result-object v2

    .line 159
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 162
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    const v0, 0x18783

    .line 166
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 169
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 171
    const-string v2, "sp_silent_switch"

    .line 173
    invoke-static {v2, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->getBoolean(Ljava/lang/String;Z)Z

    .line 176
    move-result v2

    .line 177
    invoke-static {v0, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 180
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 182
    const-string v2, "sp_rec_block_switch"

    .line 184
    invoke-static {v2, v1}, Lcom/amap/location/support/app/GlobalStorageSync;->getBoolean(Ljava/lang/String;Z)Z

    .line 187
    move-result v1

    .line 188
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->b(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 191
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 193
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->j(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 201
    new-instance v1, Lcom/amap/location/sdk/i/b;

    .line 203
    const-string v2, "locationThread"

    .line 205
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    .line 208
    move-result-object v3

    .line 209
    const-wide/32 v4, 0xea60

    .line 212
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/amap/location/sdk/i/b;-><init>(Ljava/lang/String;JLandroid/os/Handler;)V

    .line 215
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/i/b;)Lcom/amap/location/sdk/i/b;

    .line 218
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 220
    new-instance v1, Lcom/amap/location/sdk/i/b;

    .line 222
    const-string v2, "main"

    .line 224
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->k(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    .line 227
    move-result-object v3

    .line 228
    invoke-direct {v1, v2, v4, v5, v3}, Lcom/amap/location/sdk/i/b;-><init>(Ljava/lang/String;JLandroid/os/Handler;)V

    .line 231
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->b(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/i/b;)Lcom/amap/location/sdk/i/b;

    .line 234
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 236
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->m(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 239
    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$1;->b:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 242
    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->l(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 245
    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/i/b;->a(Lcom/amap/location/sdk/i/b;)V

    .line 249
    :cond_3
    return-void

    .line 250
    :catchall_0
    move-exception v1

    .line 251
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 252
    throw v1
.end method

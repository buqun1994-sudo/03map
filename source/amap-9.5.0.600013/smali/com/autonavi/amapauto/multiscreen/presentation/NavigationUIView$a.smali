.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getUISurfaceCreateLock()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 13
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 21
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_4

    .line 31
    monitor-enter v0

    .line 32
    const/4 v1, 0x0

    .line 33
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 36
    :try_start_1
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 38
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x1

    .line 43
    if-eqz v2, :cond_2

    .line 45
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 47
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;

    .line 50
    move-result-object v2

    .line 51
    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 55
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 61
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 63
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    .line 69
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 71
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 83
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 86
    move-result-object v2

    .line 87
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 89
    invoke-static {v4}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;

    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v2, v4}, Lhl;->q(Landroid/view/Surface;)V

    .line 96
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 98
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 101
    move-result-object v2

    .line 102
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 104
    invoke-static {v4}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)I

    .line 107
    move-result v4

    .line 108
    iput v4, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 110
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 112
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 115
    move-result-object v2

    .line 116
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 118
    invoke-static {v4}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)I

    .line 121
    move-result v4

    .line 122
    iput v4, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 124
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 126
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 129
    move-result-object v2

    .line 130
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 132
    if-gtz v2, :cond_0

    .line 134
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 136
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 139
    move-result-object v2

    .line 140
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 142
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 145
    move-result-object v4

    .line 146
    invoke-static {v4}, Lsi;->q(Landroid/content/Context;)F

    .line 149
    move-result v4

    .line 150
    float-to-int v4, v4

    .line 151
    iput v4, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 153
    const-string v2, "NavigationUIView"

    .line 155
    const-string v4, "mViewInfo.dpi :{?}"

    .line 157
    new-array v5, v3, [Ljava/lang/Object;

    .line 159
    iget-object v6, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 161
    invoke-static {v6}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 164
    move-result-object v6

    .line 165
    iget v6, v6, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 167
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v6

    .line 171
    aput-object v6, v5, v1

    .line 173
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    invoke-static {}, Lse;->c()Lse;

    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lse;->getIPLDpi()I

    .line 183
    move-result v2

    .line 184
    if-lez v2, :cond_0

    .line 186
    const-string v4, "NavigationUIView"

    .line 188
    const-string v5, "iIPLDpi :{?}"

    .line 190
    new-array v3, v3, [Ljava/lang/Object;

    .line 192
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v6

    .line 196
    aput-object v6, v3, v1

    .line 198
    invoke-static {v4, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 203
    invoke-static {v3}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 206
    move-result-object v3

    .line 207
    iput v2, v3, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 209
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 211
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 214
    move-result-object v2

    .line 215
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 217
    invoke-static {v3}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 220
    move-result-object v3

    .line 221
    invoke-virtual {v2, v3}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 224
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 226
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 229
    move-result-object v3

    .line 230
    invoke-static {v2, v3}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->i(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;Landroid/os/Handler;)Landroid/os/Handler;

    .line 233
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 235
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/os/Handler;

    .line 238
    move-result-object v2

    .line 239
    if-eqz v2, :cond_1

    .line 241
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 243
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 246
    move-result-object v2

    .line 247
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 249
    invoke-static {v2, v1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 252
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 254
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/os/Handler;

    .line 257
    move-result-object v1

    .line 258
    new-instance v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a$a;

    .line 260
    invoke-direct {v2, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;)V

    .line 263
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :cond_1
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 268
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->j(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 271
    move-result v1

    .line 272
    if-eqz v1, :cond_3

    .line 274
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 276
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 279
    move-result v1

    .line 280
    if-nez v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 284
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/lang/Object;

    .line 287
    move-result-object v1

    .line 288
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 289
    :try_start_2
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 291
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/lang/Object;

    .line 294
    move-result-object v2

    .line 295
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 298
    monitor-exit v1

    .line 299
    goto :goto_1

    .line 300
    :catchall_0
    move-exception v2

    .line 301
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 302
    :try_start_3
    throw v2

    .line 303
    :cond_2
    const-string v2, "NavigationUIView"

    .line 305
    const-string v4, "NavigationUIView in createRunnable mExtScreen:{?},mSurface:{?},isDetachFromActvity"

    .line 307
    const/4 v5, 0x3

    .line 308
    new-array v5, v5, [Ljava/lang/Object;

    .line 310
    iget-object v6, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 312
    invoke-static {v6}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 315
    move-result-object v6

    .line 316
    aput-object v6, v5, v1

    .line 318
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 320
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;

    .line 323
    move-result-object v1

    .line 324
    aput-object v1, v5, v3

    .line 326
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 328
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 331
    move-result v1

    .line 332
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    move-result-object v1

    .line 336
    const/4 v3, 0x2

    .line 337
    aput-object v1, v5, v3

    .line 339
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    :cond_3
    :goto_1
    monitor-exit v0

    .line 343
    goto/16 :goto_0

    .line 345
    :catchall_1
    move-exception v1

    .line 346
    goto :goto_2

    .line 347
    :catch_0
    move-exception v2

    .line 348
    const-string v3, "NavigationUIView"

    .line 350
    const-string v4, "createThread InterruptedException"

    .line 352
    new-array v1, v1, [Ljava/lang/Object;

    .line 354
    invoke-static {v3, v4, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 359
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 360
    throw v1

    .line 361
    :cond_4
    return-void
.end method

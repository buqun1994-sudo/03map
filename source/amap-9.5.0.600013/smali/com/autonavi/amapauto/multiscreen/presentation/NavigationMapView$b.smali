.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->getMapSurfaceCreateLock()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    :goto_0
    if-eqz v0, :cond_4

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 13
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_4

    .line 19
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 21
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/util/concurrent/atomic/AtomicBoolean;

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
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 38
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x2

    .line 43
    const/4 v4, 0x1

    .line 44
    if-eqz v2, :cond_2

    .line 46
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 48
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_2

    .line 54
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 56
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 59
    move-result v2

    .line 60
    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 64
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_2

    .line 70
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 72
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 79
    move-result v2

    .line 80
    if-nez v2, :cond_2

    .line 82
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 84
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 87
    move-result-object v2

    .line 88
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 90
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v2, v5}, Lhl;->p(Landroid/view/Surface;)V

    .line 97
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 99
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 102
    move-result-object v2

    .line 103
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 105
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 108
    move-result v5

    .line 109
    iput v5, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 111
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 113
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 116
    move-result-object v2

    .line 117
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 119
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 122
    move-result v5

    .line 123
    iput v5, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 125
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 127
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 130
    move-result-object v2

    .line 131
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 133
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 136
    move-result-object v5

    .line 137
    invoke-virtual {v2, v5}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 140
    const-string v2, "NavigationMapView"

    .line 142
    new-instance v5, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    const-string v6, "NavigationMapView surface: "

    .line 149
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v6, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 154
    invoke-static {v6}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 157
    move-result-object v6

    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    move-result-object v5

    .line 165
    new-array v6, v1, [Ljava/lang/Object;

    .line 167
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    const-string v2, "Eaglet "

    .line 172
    const-string v5, "PresentationMapView  surfaceCreated"

    .line 174
    invoke-static {v2, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 179
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 182
    move-result-object v5

    .line 183
    iput-object v5, v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b:Landroid/os/Handler;

    .line 185
    const-string v2, "NavigationMapView"

    .line 187
    const-string v5, "MultiScreenNative.surfaceCreated id = {?}, isSynMultiScreenNotify = {?}"

    .line 189
    new-array v3, v3, [Ljava/lang/Object;

    .line 191
    iget-object v6, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 193
    invoke-static {v6}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 196
    move-result-object v6

    .line 197
    iget v6, v6, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 199
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    move-result-object v6

    .line 203
    aput-object v6, v3, v1

    .line 205
    iget-object v6, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 207
    invoke-static {v6}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 210
    move-result-object v6

    .line 211
    iget-boolean v6, v6, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 213
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 216
    move-result-object v6

    .line 217
    aput-object v6, v3, v4

    .line 219
    invoke-static {v2, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 224
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 227
    move-result-object v2

    .line 228
    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 230
    if-eqz v2, :cond_0

    .line 232
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 234
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 237
    move-result-object v2

    .line 238
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 240
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 242
    invoke-static {v3}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 245
    move-result-object v3

    .line 246
    iget v3, v3, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 248
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 250
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 253
    move-result-object v5

    .line 254
    invoke-static {v2, v3, v5}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 257
    goto :goto_1

    .line 258
    :cond_0
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 260
    iget-object v2, v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b:Landroid/os/Handler;

    .line 262
    if-eqz v2, :cond_1

    .line 264
    new-instance v3, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;

    .line 266
    invoke-direct {v3, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;)V

    .line 269
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    :cond_1
    :goto_1
    const-string v2, "NavigationMapView"

    .line 274
    const-string v3, "MultiScreenNative.surfaceCreated format={?}"

    .line 276
    new-array v4, v4, [Ljava/lang/Object;

    .line 278
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 280
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 283
    move-result v5

    .line 284
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v5

    .line 288
    aput-object v5, v4, v1

    .line 290
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 295
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 298
    move-result v1

    .line 299
    const/16 v2, -0x9

    .line 301
    if-eq v2, v1, :cond_3

    .line 303
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 305
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 308
    move-result v1

    .line 309
    if-nez v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 313
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/Object;

    .line 316
    move-result-object v1

    .line 317
    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 318
    :try_start_2
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 320
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/Object;

    .line 323
    move-result-object v2

    .line 324
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 327
    monitor-exit v1

    .line 328
    goto :goto_2

    .line 329
    :catchall_0
    move-exception v2

    .line 330
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 331
    :try_start_3
    throw v2

    .line 332
    :cond_2
    const-string v2, "NavigationMapView"

    .line 334
    const-string v5, "NavigationMapView in createRunnable mExtScreen:{?},this:{?},mSurface:{?},isDetachFromActvity"

    .line 336
    const/4 v6, 0x4

    .line 337
    new-array v6, v6, [Ljava/lang/Object;

    .line 339
    iget-object v7, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 341
    invoke-static {v7}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 344
    move-result-object v7

    .line 345
    aput-object v7, v6, v1

    .line 347
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 349
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/String;

    .line 352
    move-result-object v1

    .line 353
    aput-object v1, v6, v4

    .line 355
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 357
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 360
    move-result-object v1

    .line 361
    aput-object v1, v6, v3

    .line 363
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 365
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 368
    move-result v1

    .line 369
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 372
    move-result-object v1

    .line 373
    const/4 v3, 0x3

    .line 374
    aput-object v1, v6, v3

    .line 376
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_3
    :goto_2
    monitor-exit v0

    .line 380
    goto/16 :goto_0

    .line 382
    :catchall_1
    move-exception v1

    .line 383
    goto :goto_3

    .line 384
    :catch_0
    move-exception v2

    .line 385
    const-string v3, "NavigationMapView"

    .line 387
    const-string v4, "createThread InterruptedException"

    .line 389
    new-array v1, v1, [Ljava/lang/Object;

    .line 391
    invoke-static {v3, v4, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 396
    :goto_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 397
    throw v1

    .line 398
    :cond_4
    return-void
.end method

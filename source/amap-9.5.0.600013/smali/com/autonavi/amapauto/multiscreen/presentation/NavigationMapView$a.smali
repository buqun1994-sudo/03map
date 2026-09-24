.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;
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
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 19
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 31
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    monitor-enter v0

    .line 36
    const/4 v1, 0x0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 39
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 48
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 56
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 64
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 72
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 80
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 92
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 98
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lhl;->p(Landroid/view/Surface;)V

    .line 105
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 107
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 113
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 116
    move-result v2

    .line 117
    iput v2, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 119
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 121
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 124
    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 127
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 130
    move-result v2

    .line 131
    iput v2, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 133
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 135
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 138
    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 141
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 144
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 148
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 150
    iget-object v1, v1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b:Landroid/os/Handler;

    .line 152
    if-eqz v1, :cond_1

    .line 154
    new-instance v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;

    .line 156
    invoke-direct {v2, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;)V

    .line 159
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    goto :goto_1

    .line 163
    :cond_0
    const-string v2, "NavigationMapView"

    .line 165
    const-string v3, "NavigationMapView in changeRunnable mExtScreen:{?},this:{?},mSurface:{?},isDetachFromActvity"

    .line 167
    const/4 v4, 0x4

    .line 168
    new-array v4, v4, [Ljava/lang/Object;

    .line 170
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 172
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lhl;

    .line 175
    move-result-object v5

    .line 176
    aput-object v5, v4, v1

    .line 178
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 180
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Ljava/lang/String;

    .line 183
    move-result-object v1

    .line 184
    const/4 v5, 0x1

    .line 185
    aput-object v1, v4, v5

    .line 187
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 189
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 192
    move-result-object v1

    .line 193
    const/4 v5, 0x2

    .line 194
    aput-object v1, v4, v5

    .line 196
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 198
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Z

    .line 201
    move-result v1

    .line 202
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 205
    move-result-object v1

    .line 206
    const/4 v5, 0x3

    .line 207
    aput-object v1, v4, v5

    .line 209
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :cond_1
    :goto_1
    monitor-exit v0

    .line 213
    goto/16 :goto_0

    .line 215
    :catchall_0
    move-exception v1

    .line 216
    goto :goto_2

    .line 217
    :catch_0
    move-exception v2

    .line 218
    const-string v3, "NavigationMapView"

    .line 220
    const-string v4, "changeThread InterruptedException"

    .line 222
    new-array v1, v1, [Ljava/lang/Object;

    .line 224
    invoke-static {v3, v4, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 227
    monitor-exit v0

    .line 228
    return-void

    .line 229
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 230
    throw v1

    .line 231
    :cond_2
    return-void
.end method

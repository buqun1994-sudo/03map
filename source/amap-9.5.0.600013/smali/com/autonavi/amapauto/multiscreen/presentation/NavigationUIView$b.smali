.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;
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
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

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
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 17
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 19
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 31
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/lang/Object;

    .line 34
    move-result-object v0

    .line 35
    monitor-enter v0

    .line 36
    const/4 v1, 0x0

    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 39
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->k(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :try_start_1
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 48
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 56
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;

    .line 59
    move-result-object v2

    .line 60
    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 64
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_0

    .line 70
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 72
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    .line 78
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 80
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 87
    move-result v2

    .line 88
    if-nez v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 92
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 95
    move-result-object v1

    .line 96
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 98
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)I

    .line 101
    move-result v2

    .line 102
    iput v2, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 104
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 106
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 109
    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 112
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)I

    .line 115
    move-result v2

    .line 116
    iput v2, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 118
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 120
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 123
    move-result-object v1

    .line 124
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 126
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v1, v2}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 133
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 135
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/os/Handler;

    .line 138
    move-result-object v1

    .line 139
    if-eqz v1, :cond_1

    .line 141
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 143
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/os/Handler;

    .line 146
    move-result-object v1

    .line 147
    new-instance v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;

    .line 149
    invoke-direct {v2, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;)V

    .line 152
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    goto :goto_1

    .line 156
    :cond_0
    const-string v2, "NavigationUIView"

    .line 158
    const-string v3, "NavigationUIView in changeRunnable mExtScreen:{?},mSurface:{?},isDetachFromActvity"

    .line 160
    const/4 v4, 0x3

    .line 161
    new-array v4, v4, [Ljava/lang/Object;

    .line 163
    iget-object v5, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 165
    invoke-static {v5}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lhl;

    .line 168
    move-result-object v5

    .line 169
    aput-object v5, v4, v1

    .line 171
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 173
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;

    .line 176
    move-result-object v1

    .line 177
    const/4 v5, 0x1

    .line 178
    aput-object v1, v4, v5

    .line 180
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 182
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Z

    .line 185
    move-result v1

    .line 186
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 189
    move-result-object v1

    .line 190
    const/4 v5, 0x2

    .line 191
    aput-object v1, v4, v5

    .line 193
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_1
    :goto_1
    monitor-exit v0

    .line 197
    goto/16 :goto_0

    .line 199
    :catchall_0
    move-exception v1

    .line 200
    goto :goto_2

    .line 201
    :catch_0
    move-exception v2

    .line 202
    const-string v3, "NavigationUIView"

    .line 204
    const-string v4, "changeThread InterruptedException"

    .line 206
    new-array v1, v1, [Ljava/lang/Object;

    .line 208
    invoke-static {v3, v4, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 211
    monitor-exit v0

    .line 212
    return-void

    .line 213
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    throw v1

    .line 215
    :cond_2
    return-void
.end method

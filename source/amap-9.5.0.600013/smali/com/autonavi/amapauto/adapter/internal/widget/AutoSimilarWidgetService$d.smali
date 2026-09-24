.class public Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;
.super Lmq$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 3
    invoke-direct {p0}, Lmq$a;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public H0()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " isMapRunning: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    const-string v2, "AutoSimilarWidgetService"

    .line 29
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public Q0(Lqq;)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    sget-object v1, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 12
    move-result v1

    .line 13
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 20
    const-string v1, "AutoSimilarWidgetService"

    .line 22
    const-string v2, " setWidgetStateControl, stateProvider:{?}, sIsMapStart:{?}"

    .line 24
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {p1}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->m(Lqq;)Lqq;

    .line 30
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    aput-object v1, v0, v3

    .line 26
    const-string v1, "AutoSimilarWidgetService"

    .line 28
    const-string v3, "onTouch, ev.x={?}, ev.y={?}"

    .line 30
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    const-string v0, "widgetExtScreen.onTouch"

    .line 41
    new-array v2, v2, [Ljava/lang/Object;

    .line 43
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, p1}, Lhl;->n(Landroid/view/MotionEvent;)V

    .line 53
    :cond_0
    return-void
.end method

.method public p0(Landroid/view/Surface;I)V
    .locals 11

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->o()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "remove"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const-string v0, "AutoSimilarWidgetService"

    .line 16
    const-string v2, "removedSurface.addSurface no match"

    .line 18
    new-array v3, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 v0, 0x4

    .line 24
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 27
    :cond_0
    const-string v0, "remove"

    .line 29
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->r(J)J

    .line 39
    const-string v0, "AutoSimilarWidgetService"

    .line 41
    const-string v2, "removedSurface. mRemovesurfaceTime:{?};mAddsurfaceTime:{?}"

    .line 43
    const/4 v3, 0x2

    .line 44
    new-array v4, v3, [Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q()J

    .line 49
    move-result-wide v5

    .line 50
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v4, v1

    .line 56
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->s()J

    .line 59
    move-result-wide v5

    .line 60
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x1

    .line 65
    aput-object v5, v4, v6

    .line 67
    invoke-static {v0, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q()J

    .line 73
    move-result-wide v4

    .line 74
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->s()J

    .line 77
    move-result-wide v7

    .line 78
    sub-long/2addr v4, v7

    .line 79
    const-wide/16 v7, 0x3e8

    .line 81
    cmp-long v0, v4, v7

    .line 83
    if-gez v0, :cond_1

    .line 85
    const-string v0, "AutoSimilarWidgetService"

    .line 87
    const-string v2, "removedSurface. time = {?} < 1000ms"

    .line 89
    new-array v4, v6, [Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q()J

    .line 94
    move-result-wide v7

    .line 95
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->s()J

    .line 98
    move-result-wide v9

    .line 99
    sub-long/2addr v7, v9

    .line 100
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object v5

    .line 104
    aput-object v5, v4, v1

    .line 106
    invoke-static {v0, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const/4 v0, 0x6

    .line 110
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 113
    :cond_1
    const-string v0, "AutoSimilarWidgetService"

    .line 115
    const-string v2, " removedSurface type={?}, widgetExtScreen = {?};aSurface:{?}"

    .line 117
    const/4 v4, 0x3

    .line 118
    new-array v4, v4, [Ljava/lang/Object;

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object p2

    .line 124
    aput-object p2, v4, v1

    .line 126
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 129
    move-result-object p2

    .line 130
    aput-object p2, v4, v6

    .line 132
    aput-object p1, v4, v3

    .line 134
    invoke-static {v0, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 142
    const-string p1, "AutoSimilarWidgetService"

    .line 144
    const-string p2, " removedSurface aSurface.release()"

    .line 146
    new-array v0, v1, [Ljava/lang/Object;

    .line 148
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :cond_2
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->v()Ljava/lang/Object;

    .line 154
    move-result-object p1

    .line 155
    monitor-enter p1

    .line 156
    :try_start_0
    iget-object p2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 158
    invoke-static {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->w(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V

    .line 161
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->c()Landroid/view/Surface;

    .line 164
    move-result-object p2

    .line 165
    if-eqz p2, :cond_3

    .line 167
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->c()Landroid/view/Surface;

    .line 170
    move-result-object p2

    .line 171
    invoke-virtual {p2}, Landroid/view/Surface;->release()V

    .line 174
    const/4 p2, 0x0

    .line 175
    invoke-static {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d(Landroid/view/Surface;)Landroid/view/Surface;

    .line 178
    const-string p2, "AutoSimilarWidgetService"

    .line 180
    const-string v0, "removedSurface, mSurface = null.please notice!"

    .line 182
    new-array v1, v1, [Ljava/lang/Object;

    .line 184
    invoke-static {p2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    goto :goto_0

    .line 188
    :cond_3
    const-string p2, "AutoSimilarWidgetService"

    .line 190
    const-string v0, "removedSurface widgetExtScreen == null"

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    .line 194
    invoke-static {p2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    :goto_0
    monitor-exit p1

    .line 198
    return-void

    .line 199
    :catchall_0
    move-exception p2

    .line 200
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    throw p2
.end method

.method public p1(Landroid/view/Surface;I)V
    .locals 12

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->o()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "add"

    .line 7
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x3

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string v0, "AutoSimilarWidgetService"

    .line 17
    const-string v3, "addSurface.removedSurface no match"

    .line 19
    new-array v4, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {v1}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 27
    :cond_0
    const-string v0, "add"

    .line 29
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 35
    move-result-wide v3

    .line 36
    invoke-static {v3, v4}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->t(J)J

    .line 39
    const-string v0, "AutoSimilarWidgetService"

    .line 41
    const-string v3, "addSurface mAddsurfaceTime:{?};mRemovesurfaceTime:{?}"

    .line 43
    const/4 v4, 0x2

    .line 44
    new-array v5, v4, [Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->s()J

    .line 49
    move-result-wide v6

    .line 50
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v6

    .line 54
    aput-object v6, v5, v2

    .line 56
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q()J

    .line 59
    move-result-wide v6

    .line 60
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    move-result-object v6

    .line 64
    const/4 v7, 0x1

    .line 65
    aput-object v6, v5, v7

    .line 67
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->s()J

    .line 73
    move-result-wide v5

    .line 74
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q()J

    .line 77
    move-result-wide v8

    .line 78
    sub-long/2addr v5, v8

    .line 79
    const-wide/16 v8, 0x3e8

    .line 81
    cmp-long v0, v5, v8

    .line 83
    if-gez v0, :cond_1

    .line 85
    const-string v0, "AutoSimilarWidgetService"

    .line 87
    const-string v3, "addSurface time = {?} < 1000ms"

    .line 89
    new-array v5, v7, [Ljava/lang/Object;

    .line 91
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->s()J

    .line 94
    move-result-wide v8

    .line 95
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->q()J

    .line 98
    move-result-wide v10

    .line 99
    sub-long/2addr v8, v10

    .line 100
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    move-result-object v6

    .line 104
    aput-object v6, v5, v2

    .line 106
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    const/4 v0, 0x5

    .line 110
    invoke-static {v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 113
    :cond_1
    if-eqz p1, :cond_7

    .line 115
    invoke-static {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->e(I)I

    .line 118
    const-string v0, "AutoSimilarWidgetService"

    .line 120
    const-string v3, " addSurface aSurface = {?} mode = {?}"

    .line 122
    new-array v5, v4, [Ljava/lang/Object;

    .line 124
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    .line 127
    move-result-object v6

    .line 128
    aput-object v6, v5, v2

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object p2

    .line 134
    aput-object p2, v5, v7

    .line 136
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->v()Ljava/lang/Object;

    .line 142
    move-result-object p2

    .line 143
    monitor-enter p2

    .line 144
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->c()Landroid/view/Surface;

    .line 147
    move-result-object v0

    .line 148
    if-ne v0, p1, :cond_2

    .line 150
    const-string p1, "AutoSimilarWidgetService"

    .line 152
    const-string v0, "addSurface aSurface == mSurface, surface the same,no need startRender!"

    .line 154
    new-array v1, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    monitor-exit p2

    .line 160
    return-void

    .line 161
    :cond_2
    const-string v0, "AutoSimilarWidgetService"

    .line 163
    const-string v3, " addSurface mSurface = aSurface"

    .line 165
    new-array v5, v2, [Ljava/lang/Object;

    .line 167
    invoke-static {v0, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    invoke-static {p1}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->d(Landroid/view/Surface;)Landroid/view/Surface;

    .line 173
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 174
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->b()Ljava/lang/Object;

    .line 177
    move-result-object p1

    .line 178
    monitor-enter p1

    .line 179
    :try_start_1
    const-string p2, "AutoSimilarWidgetService"

    .line 181
    const-string v0, " addSurface(). widgetExtScreen = {?}, isInvalid = {?}, isWaitScreen = {?}"

    .line 183
    new-array v1, v1, [Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 188
    move-result-object v3

    .line 189
    aput-object v3, v1, v2

    .line 191
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->f()Z

    .line 194
    move-result v3

    .line 195
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 198
    move-result-object v3

    .line 199
    aput-object v3, v1, v7

    .line 201
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g()Z

    .line 204
    move-result v3

    .line 205
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 208
    move-result-object v3

    .line 209
    aput-object v3, v1, v4

    .line 211
    invoke-static {p2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->u()Lhl;

    .line 217
    move-result-object p2

    .line 218
    if-nez p2, :cond_4

    .line 220
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->g()Z

    .line 223
    move-result p2

    .line 224
    if-nez p2, :cond_6

    .line 226
    iget-object p2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 228
    invoke-static {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->i(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 231
    move-result-object p2

    .line 232
    invoke-virtual {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->a()Z

    .line 235
    move-result p2

    .line 236
    if-nez p2, :cond_3

    .line 238
    iget-object p2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 240
    invoke-static {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->i(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 243
    move-result-object p2

    .line 244
    invoke-virtual {p2, v7}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;->b(Z)V

    .line 247
    :cond_3
    iget-object p2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 249
    new-instance v0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 251
    invoke-direct {v0, p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;-><init>(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)V

    .line 254
    invoke-static {p2, v0}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->j(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 257
    iget-object p2, p0, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$d;->a:Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;

    .line 259
    invoke-static {p2}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->i(Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;)Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService$f;

    .line 262
    move-result-object p2

    .line 263
    invoke-static {p2}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 266
    goto :goto_0

    .line 267
    :cond_4
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->f()Z

    .line 270
    move-result p2

    .line 271
    if-nez p2, :cond_5

    .line 273
    const-string p2, "AutoSimilarWidgetService"

    .line 275
    const-string v0, "addSurface startRender"

    .line 277
    new-array v1, v2, [Ljava/lang/Object;

    .line 279
    invoke-static {p2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-static {}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->a()V

    .line 285
    goto :goto_0

    .line 286
    :cond_5
    invoke-static {v4}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 289
    :cond_6
    :goto_0
    monitor-exit p1

    .line 290
    return-void

    .line 291
    :catchall_0
    move-exception p2

    .line 292
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    throw p2

    .line 294
    :catchall_1
    move-exception p1

    .line 295
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 296
    throw p1

    .line 297
    :cond_7
    const-string p1, "AutoSimilarWidgetService"

    .line 299
    const-string p2, " addSurface aSurface == null throw new SecurityException()"

    .line 301
    new-array v0, v2, [Ljava/lang/Object;

    .line 303
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    invoke-static {v7}, Lcom/autonavi/amapauto/adapter/internal/widget/AutoSimilarWidgetService;->n(I)V

    .line 309
    new-instance p1, Ljava/lang/SecurityException;

    .line 311
    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    .line 314
    throw p1
.end method

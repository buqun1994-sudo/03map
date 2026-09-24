.class public Lp2;
.super Lhl;
.source "SourceFile"


# instance fields
.field public i:Landroid/os/Handler;

.field public j:I

.field public k:Lhl$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lp2$b;

    .line 6
    invoke-direct {p1, p0}, Lp2$b;-><init>(Lp2;)V

    .line 9
    iput-object p1, p0, Lp2;->k:Lhl$a;

    .line 11
    return-void
.end method

.method public static synthetic A(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method

.method public static synthetic B(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method

.method public static synthetic C(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method

.method public static synthetic D(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method

.method public static synthetic v(Lp2;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lp2;->E()V

    .line 4
    return-void
.end method

.method public static synthetic w(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method

.method public static synthetic x(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method

.method public static synthetic y(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lp2;->j:I

    .line 3
    return p0
.end method

.method public static synthetic z(Lp2;)I
    .locals 0

    .line 1
    iget p0, p0, Lhl;->a:I

    .line 3
    return p0
.end method


# virtual methods
.method public final E()V
    .locals 9

    .line 1
    invoke-static {}, La20;->l()La20;

    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lhl;->a:I

    .line 7
    invoke-virtual {v0, v1}, La20;->k(I)Lhl;

    .line 10
    move-result-object v0

    .line 11
    iget v1, p0, Lp2;->j:I

    .line 13
    const/4 v2, 0x1

    .line 14
    if-nez v1, :cond_0

    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_0
    const/4 v3, 0x4

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v5

    .line 25
    aput-object v5, v3, v4

    .line 27
    iget v5, p0, Lhl;->a:I

    .line 29
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v5

    .line 33
    aput-object v5, v3, v2

    .line 35
    iget v5, p0, Lp2;->j:I

    .line 37
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v5

    .line 41
    const/4 v6, 0x2

    .line 42
    aput-object v5, v3, v6

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v5

    .line 48
    const/4 v7, 0x3

    .line 49
    aput-object v5, v3, v7

    .line 51
    const-string v5, "AidlWidgetExternalScreen"

    .line 53
    const-string v8, "operateType={?}, screenWindow={?}, screenMode={?}, mode = {?}"

    .line 55
    invoke-static {v5, v8, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    if-eqz v0, :cond_1

    .line 60
    iget-object v2, p0, Lp2;->k:Lhl$a;

    .line 62
    invoke-virtual {v0, v4, v1, v2}, Lhl;->l(IILhl$a;)Z

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-array v0, v7, [Ljava/lang/Object;

    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v3

    .line 72
    aput-object v3, v0, v4

    .line 74
    iget v3, p0, Lhl;->a:I

    .line 76
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v3

    .line 80
    aput-object v3, v0, v2

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v2

    .line 86
    aput-object v2, v0, v6

    .line 88
    const-string v2, "null srceen . excute === operateType={?}, screenWindow={?}, screenMode={?}"

    .line 90
    invoke-static {v5, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget v0, p0, Lhl;->a:I

    .line 95
    invoke-static {v4, v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onOperateExscreenNotified(III)V

    .line 98
    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    .line 1
    return-void
.end method

.method public f()Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->g:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    move-result v3

    .line 5
    new-array v4, v3, [I

    .line 7
    new-array v5, v3, [F

    .line 9
    new-array v6, v3, [F

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v3, :cond_0

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 18
    move-result v2

    .line 19
    aput v2, v4, v1

    .line 21
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 24
    move-result v2

    .line 25
    aput v2, v5, v1

    .line 27
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 30
    move-result v2

    .line 31
    aput v2, v6, v1

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 39
    move-result v2

    .line 40
    const/4 p1, 0x3

    .line 41
    new-array p1, p1, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 46
    move-result-object v1

    .line 47
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v1

    .line 53
    aput-object v1, p1, v0

    .line 55
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v0

    .line 59
    const/4 v1, 0x1

    .line 60
    aput-object v0, p1, v1

    .line 62
    const/4 v0, 0x2

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    move-result-object v1

    .line 67
    aput-object v1, p1, v0

    .line 69
    const-string v0, "AidlWidgetExternalScreen"

    .line 71
    const-string v1, "onTouch id={?}, action={?}, pointerNumber={?}"

    .line 73
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_1

    .line 82
    new-instance v7, Lp2$d;

    .line 84
    move-object v0, v7

    .line 85
    move-object v1, p0

    .line 86
    invoke-direct/range {v0 .. v6}, Lp2$d;-><init>(Lp2;II[I[F[F)V

    .line 89
    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_1
    return-void
.end method

.method public s()V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lp2;->t(I)V

    .line 5
    return-void
.end method

.method public t(I)V
    .locals 8

    .line 1
    iput p1, p0, Lp2;->j:I

    .line 3
    invoke-virtual {p0}, Lhl;->e()Landroid/view/Surface;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 10
    move-result-object v1

    .line 11
    const-string v2, "AidlWidgetExternalScreen"

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 16
    if-eqz v1, :cond_3

    .line 18
    iget-object v4, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->p:Ljava/util/List;

    .line 20
    const/4 v5, -0x1

    .line 21
    const/4 v6, 0x1

    .line 22
    if-eq p1, v5, :cond_1

    .line 24
    if-eqz v4, :cond_1

    .line 26
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 29
    move-result v5

    .line 30
    if-lez v5, :cond_1

    .line 32
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v4

    .line 36
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v5

    .line 40
    if-eqz v5, :cond_1

    .line 42
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v5

    .line 46
    check-cast v5, Lcom/autonavi/extscreen/dto/ViewModeInfo;

    .line 48
    if-eqz v5, :cond_0

    .line 50
    iget v7, v5, Lcom/autonavi/extscreen/dto/ViewModeInfo;->mode:I

    .line 52
    if-ne p1, v7, :cond_0

    .line 54
    iget p1, v5, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceWidth:I

    .line 56
    iput p1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 58
    iget p1, v5, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceHeight:I

    .line 60
    iput p1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 62
    new-array p1, v6, [Ljava/lang/Object;

    .line 64
    invoke-virtual {v5}, Lcom/autonavi/extscreen/dto/ViewModeInfo;->toString()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    aput-object v4, p1, v3

    .line 70
    const-string v4, "viewModeInfo:{?}"

    .line 72
    invoke-static {v2, v4, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_1
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lp2;->i:Landroid/os/Handler;

    .line 81
    if-eqz p1, :cond_2

    .line 83
    iget p1, p0, Lhl;->a:I

    .line 85
    invoke-static {p1, v3}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 88
    iget-object p1, p0, Lp2;->i:Landroid/os/Handler;

    .line 90
    new-instance v4, Lp2$a;

    .line 92
    invoke-direct {v4, p0, v1, v0}, Lp2$a;-><init>(Lp2;Lcom/autonavi/amapauto/jni/ViewInfo;Landroid/view/Surface;)V

    .line 95
    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 98
    :cond_2
    new-array p1, v6, [Ljava/lang/Object;

    .line 100
    iget v4, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 102
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v4

    .line 106
    aput-object v4, p1, v3

    .line 108
    const-string v4, "MapSurfaceView.nativeSurfaceCreated id={?}"

    .line 110
    invoke-static {v2, v4, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget p1, p0, Lhl;->a:I

    .line 115
    iget v2, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 117
    invoke-static {p1, v2, v0}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 120
    iget p1, p0, Lhl;->a:I

    .line 122
    iget v2, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 124
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 126
    invoke-static {p1, v0, v3, v2, v1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    const-string p1, "startRender failed. null"

    .line 132
    new-array v0, v3, [Ljava/lang/Object;

    .line 134
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :goto_0
    return-void
.end method

.method public u()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lhl;->e()Landroid/view/Surface;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "AidlWidgetExternalScreen"

    .line 12
    if-eqz v0, :cond_2

    .line 14
    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 19
    move-result-object v4

    .line 20
    iput-object v4, p0, Lp2;->i:Landroid/os/Handler;

    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v5, v4, [Ljava/lang/Object;

    .line 25
    iget-boolean v6, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 27
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    move-result-object v6

    .line 31
    aput-object v6, v5, v2

    .line 33
    const-string v6, "MultiScreenNative.surfaceDestroyed isSynMultiScreenNotify={?}"

    .line 35
    invoke-static {v3, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    iget v5, p0, Lhl;->a:I

    .line 40
    invoke-static {v5, v0}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 43
    iget v0, p0, Lhl;->a:I

    .line 45
    invoke-static {v0, v4}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 48
    iget-boolean v0, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 50
    if-eqz v0, :cond_0

    .line 52
    iget v0, p0, Lhl;->a:I

    .line 54
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lp2;->i:Landroid/os/Handler;

    .line 60
    if-eqz v0, :cond_1

    .line 62
    new-instance v5, Lp2$c;

    .line 64
    invoke-direct {v5, p0, v1}, Lp2$c;-><init>(Lp2;Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 67
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    :cond_1
    :goto_0
    new-array v0, v4, [Ljava/lang/Object;

    .line 72
    iget v5, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v5

    .line 78
    aput-object v5, v0, v2

    .line 80
    const-string v5, "MapSurfaceView.nativeSurfaceDestroyed id={?}"

    .line 82
    invoke-static {v3, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    new-array v0, v4, [Ljava/lang/Object;

    .line 87
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 89
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v1

    .line 93
    aput-object v1, v0, v2

    .line 95
    const-string v1, "MapSurfaceView.nativeSurfaceDestroyed id={?}. after wait"

    .line 97
    invoke-static {v3, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const-string v0, "stopRender failed. null"

    .line 103
    new-array v1, v2, [Ljava/lang/Object;

    .line 105
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    :goto_1
    return-void
.end method

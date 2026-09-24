.class public Lsf0;
.super Lhl;
.source "SourceFile"


# instance fields
.field public i:Landroid/view/Display;

.field public j:Lkf0;

.field public k:I

.field public l:Z

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lsf0;->k:I

    .line 7
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lsf0;->m:Z

    .line 10
    iput-object p2, p0, Lsf0;->i:Landroid/view/Display;

    .line 12
    return-void
.end method

.method public static synthetic A(Lsf0;I)I
    .locals 0

    .line 1
    iput p1, p0, Lsf0;->k:I

    .line 3
    return p1
.end method

.method public static synthetic B(Lsf0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsf0;->m:Z

    .line 3
    return p0
.end method

.method public static synthetic C(Lsf0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lsf0;->E()V

    .line 4
    return-void
.end method

.method public static synthetic v(Lsf0;)Landroid/view/Display;
    .locals 0

    .line 1
    iget-object p0, p0, Lsf0;->i:Landroid/view/Display;

    .line 3
    return-object p0
.end method

.method public static synthetic w(Lsf0;)Lkf0;
    .locals 0

    .line 1
    iget-object p0, p0, Lsf0;->j:Lkf0;

    .line 3
    return-object p0
.end method

.method public static synthetic x(Lsf0;Lkf0;)Lkf0;
    .locals 0

    .line 1
    iput-object p1, p0, Lsf0;->j:Lkf0;

    .line 3
    return-object p1
.end method

.method public static synthetic y(Lsf0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lhl;->b:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static synthetic z(Lsf0;)I
    .locals 0

    .line 1
    iget p0, p0, Lsf0;->k:I

    .line 3
    return p0
.end method


# virtual methods
.method public D()Landroid/view/Display;
    .locals 1

    .line 1
    iget-object v0, p0, Lsf0;->i:Landroid/view/Display;

    .line 3
    return-object v0
.end method

.method public final E()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SystemPresentationScreen"

    .line 6
    const-string v3, "toEagletSurfaceDestory"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    return-void

    .line 18
    :cond_0
    iget v3, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 20
    const/4 v4, 0x1

    .line 21
    invoke-static {v3, v4}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 24
    iget-boolean v3, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 26
    if-eqz v3, :cond_1

    .line 28
    iget v0, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 30
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_2

    .line 40
    const-string v3, "toEagletSurfaceDestory post"

    .line 42
    new-array v0, v0, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    new-instance v0, Lsf0$c;

    .line 49
    invoke-direct {v0, p0}, Lsf0$c;-><init>(Lsf0;)V

    .line 52
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    :cond_2
    :goto_0
    return-void
.end method

.method public b(IZ)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "SystemPresentationScreen"

    .line 6
    const-string v2, "controlSurfaceVisivility"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2}, Lhl;->b(IZ)V

    .line 14
    iget-object v0, p0, Lsf0;->j:Lkf0;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {v0, p1, p2}, Lkf0;->h(IZ)V

    .line 21
    :cond_0
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
    sget-object v0, Ld20;->d:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1
    return-void
.end method

.method public l(IILhl$a;)Z
    .locals 11

    .line 1
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->p:Ljava/util/List;

    .line 9
    const/4 v1, -0x1

    .line 10
    if-eq p2, v1, :cond_1

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;

    .line 36
    if-eqz v1, :cond_0

    .line 38
    iget v2, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->mode:I

    .line 40
    if-ne p2, v2, :cond_0

    .line 42
    iget v6, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceLeft:I

    .line 44
    iget v7, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceTop:I

    .line 46
    iget v8, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceWidth:I

    .line 48
    iget v9, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceHeight:I

    .line 50
    const/4 v0, 0x3

    .line 51
    new-array v0, v0, [Ljava/lang/Object;

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v3

    .line 58
    aput-object v3, v0, v2

    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v3

    .line 65
    aput-object v3, v0, v2

    .line 67
    const/4 v2, 0x2

    .line 68
    invoke-virtual {v1}, Lcom/autonavi/extscreen/dto/ViewModeInfo;->toString()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    aput-object v1, v0, v2

    .line 74
    const-string v1, "SystemPresentationScreen"

    .line 76
    const-string v2, "operateType:{?}, mode:{?}, viewModeInfo:{?}"

    .line 78
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    iget-object v3, p0, Lsf0;->j:Lkf0;

    .line 83
    if-eqz v3, :cond_1

    .line 85
    if-lez v8, :cond_1

    .line 87
    if-lez v9, :cond_1

    .line 89
    move v4, p1

    .line 90
    move v5, p2

    .line 91
    move-object v10, p3

    .line 92
    invoke-virtual/range {v3 .. v10}, Lkf0;->g(IIIIIILhl$a;)Z

    .line 95
    move-result p1

    .line 96
    return p1

    .line 97
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lhl;->l(IILhl$a;)Z

    .line 100
    move-result p1

    .line 101
    return p1
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lsf0;->i:Landroid/view/Display;

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string v1, "null"

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 18
    iget-boolean v1, p0, Lsf0;->l:Z

    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x1

    .line 25
    aput-object v1, v0, v2

    .line 27
    const-string v1, "SystemPresentationScreen"

    .line 29
    const-string v3, "startRender, Display is {?}, isStarted = {?}"

    .line 31
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lsf0;->i:Landroid/view/Display;

    .line 36
    if-eqz v0, :cond_2

    .line 38
    iget-boolean v0, p0, Lsf0;->l:Z

    .line 40
    if-eqz v0, :cond_1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    iput-boolean v2, p0, Lsf0;->l:Z

    .line 45
    new-instance v0, Lsf0$a;

    .line 47
    invoke-direct {v0, p0, p0}, Lsf0$a;-><init>(Lsf0;Lsf0;)V

    .line 50
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 53
    :cond_2
    :goto_1
    return-void
.end method

.method public t(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsf0;->k:I

    .line 3
    invoke-virtual {p0}, Lsf0;->s()V

    .line 6
    return-void
.end method

.method public u()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsf0;->l:Z

    .line 3
    iput-boolean v0, p0, Lsf0;->m:Z

    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lsf0;->l:Z

    .line 8
    iput-boolean v0, p0, Lhl;->h:Z

    .line 10
    new-instance v0, Lsf0$b;

    .line 12
    invoke-direct {v0, p0}, Lsf0$b;-><init>(Lsf0;)V

    .line 15
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 18
    return-void
.end method

.class public Lz10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Les;


# static fields
.field public static final b:Ljava/lang/String; = "z10"


# instance fields
.field public a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I
    .locals 4

    .line 1
    sget-object v0, Lz10;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "onSurfaceCreated, handler"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p3}, Lz10;->f(Lcom/autonavi/amapauto/jni/ViewInfo;)Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;

    .line 35
    move-result-object p3

    .line 36
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 38
    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;->handleSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_0
    return v2
.end method

.method public b(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I
    .locals 4

    .line 1
    sget-object v0, Lz10;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "onSurfaceChanged, handler"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0, p3}, Lz10;->f(Lcom/autonavi/amapauto/jni/ViewInfo;)Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;

    .line 35
    move-result-object p3

    .line 36
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 38
    invoke-interface {v0, p1, p2, p3}, Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;->handleSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I

    .line 41
    move-result p1

    .line 42
    return p1

    .line 43
    :cond_0
    return v2
.end method

.method public c(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;->handleSurfaceStatusChanged(II)V

    .line 8
    :cond_0
    return-void
.end method

.method public d(I[I[F[FI)V
    .locals 6

    .line 1
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v3, p3

    .line 8
    move-object v4, p4

    .line 9
    move v5, p5

    .line 10
    invoke-interface/range {v0 .. v5}, Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;->handleTouchEvent(I[I[F[FI)V

    .line 13
    :cond_0
    return-void
.end method

.method public e(I)I
    .locals 4

    .line 1
    sget-object v0, Lz10;->b:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "onSurfaceDestroyed, handler"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v3, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1}, Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;->handleSurfaceDestroy(I)I

    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_0
    return v2
.end method

.method public final f(Lcom/autonavi/amapauto/jni/ViewInfo;)Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;

    .line 7
    invoke-direct {v0}, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;-><init>()V

    .line 10
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->a:Ljava/lang/String;

    .line 12
    iput-object v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->name:Ljava/lang/String;

    .line 14
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->b:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->pluginName:Ljava/lang/String;

    .line 18
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 20
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->id:I

    .line 22
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->d:I

    .line 24
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->left:I

    .line 26
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->e:I

    .line 28
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->top:I

    .line 30
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 32
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->width:I

    .line 34
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 36
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->height:I

    .line 38
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 40
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->dpi:I

    .line 42
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->i:I

    .line 44
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->type:I

    .line 46
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->j:I

    .line 48
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->eglAlphaSize:I

    .line 50
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->k:I

    .line 52
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->removeSurface:I

    .line 54
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 56
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->isSeparateRender:I

    .line 58
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->m:I

    .line 60
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->isMainScreenForegroundStopRender:I

    .line 62
    iget v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->n:I

    .line 64
    iput v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->createSurfaceWhenInit:I

    .line 66
    iget-boolean v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 68
    iput-boolean v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->isSynMultiScreenNotify:Z

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    iput-object v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->viewModeInfoList:Ljava/util/List;

    .line 77
    iget-object v1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->p:Ljava/util/List;

    .line 79
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    move-result v1

    .line 83
    if-lez v1, :cond_1

    .line 85
    iget-object p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->p:Ljava/util/List;

    .line 87
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object p1

    .line 91
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_1

    .line 97
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 101
    check-cast v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;

    .line 103
    new-instance v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;

    .line 105
    invoke-direct {v2}, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;-><init>()V

    .line 108
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->mode:I

    .line 110
    iput v3, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->mode:I

    .line 112
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceLeft:I

    .line 114
    iput v3, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->surfaceLeft:I

    .line 116
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceTop:I

    .line 118
    iput v3, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->surfaceTop:I

    .line 120
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceWidth:I

    .line 122
    iput v3, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->surfaceWidth:I

    .line 124
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->surfaceHeight:I

    .line 126
    iput v3, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->surfaceHeight:I

    .line 128
    iget v3, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->viewLeft:I

    .line 130
    iput v3, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->viewLeft:I

    .line 132
    iget v1, v1, Lcom/autonavi/extscreen/dto/ViewModeInfo;->viewTop:I

    .line 134
    iput v1, v2, Lcom/autonavi/eaglet/multiscreen/EagletViewModeInfo;->viewTop:I

    .line 136
    iget-object v1, v0, Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;->viewModeInfoList:Ljava/util/List;

    .line 138
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    return-object v0
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lz10;->b:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "initMultiScreen start"

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->setMulitScreenObserver(Les;)V

    .line 14
    invoke-static {}, Ltk;->d()Ltk;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ltk;->g()Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lz10;->a:Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;

    .line 24
    return-void
.end method

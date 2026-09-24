.class public Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public c:Lhl;

.field public d:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-string p1, "PresentationUIView"

    .line 6
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 22
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 25
    move-result-object p2

    .line 26
    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 29
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c:Lhl;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 5
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "onSizeChanged:"

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 14
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v1, "surfaceChanged:"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const/4 v1, 0x0

    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 31
    invoke-static {p2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    move-result-object p1

    .line 38
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c:Lhl;

    .line 40
    invoke-virtual {p2, p1}, Lhl;->q(Landroid/view/Surface;)V

    .line 43
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 45
    iput p3, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 47
    iput p4, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 49
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c:Lhl;

    .line 51
    invoke-virtual {p3, p2}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 54
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->d:Landroid/os/Handler;

    .line 56
    if-eqz p2, :cond_0

    .line 58
    new-instance p3, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;

    .line 60
    invoke-direct {p3, p0, p1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;Landroid/view/Surface;)V

    .line 63
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "surfaceCreated\uff1a"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v3, 0x0

    .line 23
    new-array v4, v3, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 41
    move-result v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, ","

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 53
    move-result v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    move-result-object v1

    .line 61
    new-array v2, v3, [Ljava/lang/Object;

    .line 63
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 69
    move-result-object p1

    .line 70
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c:Lhl;

    .line 72
    invoke-virtual {v0, p1}, Lhl;->q(Landroid/view/Surface;)V

    .line 75
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 77
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 80
    move-result v1

    .line 81
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 83
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 88
    move-result v1

    .line 89
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 91
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 93
    iget v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 95
    if-gtz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 100
    move-result-object v1

    .line 101
    invoke-static {v1}, Lsi;->q(Landroid/content/Context;)F

    .line 104
    move-result v1

    .line 105
    float-to-int v1, v1

    .line 106
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 108
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 110
    const/4 v1, 0x1

    .line 111
    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 115
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 117
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v2

    .line 121
    aput-object v2, v1, v3

    .line 123
    const-string v2, "mViewInfo.dpi :{?}"

    .line 125
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c:Lhl;

    .line 130
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 132
    invoke-virtual {v0, v1}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 135
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->d:Landroid/os/Handler;

    .line 141
    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 145
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 147
    invoke-static {v0, v3}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 150
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->d:Landroid/os/Handler;

    .line 152
    new-instance v1, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$a;

    .line 154
    invoke-direct {v1, p0, p1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;Landroid/view/Surface;)V

    .line 157
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_1
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, " surfaceDestroyed"

    .line 8
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->c:Lhl;

    .line 17
    invoke-virtual {v0, p1}, Lhl;->q(Landroid/view/Surface;)V

    .line 20
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 22
    const/4 v0, 0x2

    .line 23
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 27
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object v2

    .line 33
    aput-object v2, v0, v1

    .line 35
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 37
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 39
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    aput-object v1, v0, v2

    .line 46
    const-string v1, "MultiScreenNative.surfaceDestroyed id={?}, isSynMultiScreenNotify = {?}"

    .line 48
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 53
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 55
    invoke-static {p1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 58
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 60
    iget-boolean v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 62
    if-eqz v0, :cond_0

    .line 64
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 66
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->d:Landroid/os/Handler;

    .line 72
    if-eqz p1, :cond_1

    .line 74
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$c;

    .line 76
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$c;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "PresentationUIView{TAG=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mViewInfo="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const/16 v1, 0x7d

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

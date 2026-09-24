.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;
.super Landroid/view/SurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field public a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public b:Lhl;

.field public c:Landroid/os/Handler;

.field public d:Landroid/view/Surface;

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 7
    move-result-object p1

    .line 8
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setZOrderMediaOverlay(Z)V

    .line 18
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 25
    const/4 p1, 0x0

    .line 26
    new-array p1, p1, [Ljava/lang/Object;

    .line 28
    const-string p2, "NavigationLatchUIView"

    .line 30
    const-string v0, "construct NavigationLatchUIView !!"

    .line 32
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)Landroid/view/Surface;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 3
    return-object p0
.end method


# virtual methods
.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NavigationLatchUIView"

    .line 6
    const-string v2, "onDetachedFromWindow"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 14
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 32
    const-string v1, "NavigationLatchUIView"

    .line 34
    const-string v2, "onSizeChanged:w:{?},h:{?},oldw:{?},oldh:{?}"

    .line 36
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 42
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "surfaceChanged:"

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string p3, ","

    .line 16
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    const/4 p3, 0x0

    .line 27
    new-array p4, p3, [Ljava/lang/Object;

    .line 29
    const-string v0, "NavigationLatchUIView"

    .line 31
    invoke-static {v0, p2, p4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 43
    move-result p1

    .line 44
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->e:I

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 49
    move-result p1

    .line 50
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->f:I

    .line 52
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->b:Lhl;

    .line 54
    if-eqz p2, :cond_2

    .line 56
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 58
    if-eqz p2, :cond_2

    .line 60
    iget p4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->e:I

    .line 62
    iput p4, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 64
    iput p1, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 66
    iget p1, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 68
    if-gtz p1, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 73
    move-result-object p1

    .line 74
    invoke-static {p1}, Lsi;->q(Landroid/content/Context;)F

    .line 77
    move-result p1

    .line 78
    float-to-int p1, p1

    .line 79
    iput p1, p2, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 81
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->b:Lhl;

    .line 83
    iget-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 85
    invoke-virtual {p1, p2}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 88
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 90
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 92
    if-eqz p1, :cond_1

    .line 94
    const-string p1, "MultiScreenNative.surfaceChanged handle sync !!!"

    .line 96
    new-array p2, p3, [Ljava/lang/Object;

    .line 98
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 103
    iget p2, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 105
    iget-object p3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 107
    invoke-static {p2, p3, p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 110
    goto :goto_0

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->c:Landroid/os/Handler;

    .line 113
    if-eqz p1, :cond_2

    .line 115
    new-instance p2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$b;

    .line 117
    invoke-direct {p2, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$b;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)V

    .line 120
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 123
    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "surfaceCreated\uff1a"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v2, 0x0

    .line 21
    new-array v3, v2, [Ljava/lang/Object;

    .line 23
    const-string v4, "NavigationLatchUIView"

    .line 25
    invoke-static {v4, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ","

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    new-array v1, v2, [Ljava/lang/Object;

    .line 61
    invoke-static {v4, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 70
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 73
    move-result p1

    .line 74
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->e:I

    .line 76
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 79
    move-result p1

    .line 80
    iput p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->f:I

    .line 82
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->b:Lhl;

    .line 84
    if-eqz p1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 88
    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 92
    invoke-virtual {p1, v0}, Lhl;->q(Landroid/view/Surface;)V

    .line 95
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 97
    iget v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->e:I

    .line 99
    iput v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 101
    iget v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->f:I

    .line 103
    iput v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 105
    iget v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 107
    if-gtz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 112
    move-result-object v0

    .line 113
    invoke-static {v0}, Lsi;->q(Landroid/content/Context;)F

    .line 116
    move-result v0

    .line 117
    float-to-int v0, v0

    .line 118
    iput v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 120
    const/4 p1, 0x1

    .line 121
    new-array p1, p1, [Ljava/lang/Object;

    .line 123
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 125
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->h:I

    .line 127
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v0

    .line 131
    aput-object v0, p1, v2

    .line 133
    const-string v0, "mViewInfo.dpi :{?}"

    .line 135
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->b:Lhl;

    .line 140
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 142
    invoke-virtual {p1, v0}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 145
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 147
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 149
    if-eqz p1, :cond_1

    .line 151
    const-string p1, "MultiScreenNative.surfaceCreated handle sync !!!"

    .line 153
    new-array v0, v2, [Ljava/lang/Object;

    .line 155
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 160
    iget v0, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 162
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 164
    invoke-static {v0, v1, p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 167
    goto :goto_0

    .line 168
    :cond_1
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 171
    move-result-object p1

    .line 172
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->c:Landroid/os/Handler;

    .line 174
    if-eqz p1, :cond_2

    .line 176
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 178
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 180
    invoke-static {p1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 183
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->c:Landroid/os/Handler;

    .line 185
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;

    .line 187
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)V

    .line 190
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    :cond_2
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NavigationLatchUIView"

    .line 6
    const-string v3, " surfaceDestroyed"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->d:Landroid/view/Surface;

    .line 17
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->b:Lhl;

    .line 19
    if-eqz p1, :cond_1

    .line 21
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 23
    if-eqz p1, :cond_1

    .line 25
    const/4 v1, 0x2

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 30
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object p1

    .line 34
    aput-object p1, v1, v0

    .line 36
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 38
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 40
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 43
    move-result-object p1

    .line 44
    const/4 v3, 0x1

    .line 45
    aput-object p1, v1, v3

    .line 47
    const-string p1, "MultiScreenNative.surfaceDestroyed id={?}, isSynMultiScreenNotify = {?}"

    .line 49
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 54
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 56
    invoke-static {p1, v3}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 59
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 61
    iget-boolean p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 63
    if-eqz p1, :cond_0

    .line 65
    const-string p1, "MultiScreenNative.surfaceDestroy handle sync !!!"

    .line 67
    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 74
    iget p1, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 76
    invoke-static {p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->c:Landroid/os/Handler;

    .line 82
    if-eqz p1, :cond_1

    .line 84
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$c;

    .line 86
    invoke-direct {v0, p0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$c;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)V

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
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
    const-string v1, "NavigationLatchUIView{TAG=\'NavigationLatchUIView\', mViewInfo="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x7d

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

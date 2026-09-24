.class public Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;
.super Lcom/autonavi/amapauto/MapSurfaceView;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public c:Landroid/os/Handler;

.field public d:Lhl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/MapSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p1, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 19
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 5
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 4
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "PresentationMapView onSizeChanged:"

    .line 8
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 14
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "PresentationMapView surfaceChanged:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, ","

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x0

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 37
    move-result-object v5

    .line 38
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 40
    invoke-virtual {p1, v5}, Lhl;->p(Landroid/view/Surface;)V

    .line 43
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 45
    iput p3, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 47
    iput p4, p1, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 49
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 51
    invoke-virtual {v0, p1}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 54
    iget-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->c:Landroid/os/Handler;

    .line 56
    if-eqz p1, :cond_0

    .line 58
    new-instance v0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$b;

    .line 60
    move-object v3, v0

    .line 61
    move-object v4, p0

    .line 62
    move v6, p2

    .line 63
    move v7, p3

    .line 64
    move v8, p4

    .line 65
    invoke-direct/range {v3 .. v8}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$b;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;Landroid/view/Surface;III)V

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 71
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "PresentationMapView surfaceCreated\uff1a"

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
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 68
    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 72
    if-eqz v0, :cond_1

    .line 74
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 77
    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 80
    invoke-virtual {v0, p1}, Lhl;->p(Landroid/view/Surface;)V

    .line 83
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 85
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 88
    move-result v1

    .line 89
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 91
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 96
    move-result v1

    .line 97
    iput v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 99
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 101
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 103
    invoke-virtual {v0, v1}, Lhl;->r(Lcom/autonavi/amapauto/jni/ViewInfo;)V

    .line 106
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string v2, "PresentationMapView surface: "

    .line 115
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v1

    .line 125
    new-array v2, v3, [Ljava/lang/Object;

    .line 127
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-string v0, "Eaglet "

    .line 132
    const-string v1, "PresentationMapView  surfaceCreated"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 140
    move-result-object v0

    .line 141
    iput-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->c:Landroid/os/Handler;

    .line 143
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 145
    const/4 v1, 0x3

    .line 146
    new-array v1, v1, [Ljava/lang/Object;

    .line 148
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 150
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 152
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object v2

    .line 156
    aput-object v2, v1, v3

    .line 158
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 160
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v2

    .line 166
    const/4 v3, 0x1

    .line 167
    aput-object v2, v1, v3

    .line 169
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 171
    iget-boolean v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 173
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 176
    move-result-object v2

    .line 177
    const/4 v3, 0x2

    .line 178
    aput-object v2, v1, v3

    .line 180
    const-string v2, "MultiScreenNative.surfaceCreated id = {?}, isSeparateRender = {?}, isSynMultiScreenNotify = {?}"

    .line 182
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 187
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 189
    if-eqz v1, :cond_0

    .line 191
    iget v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 193
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 195
    invoke-static {v1, v0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 198
    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->c:Landroid/os/Handler;

    .line 201
    if-eqz v0, :cond_1

    .line 203
    new-instance v1, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;

    .line 205
    invoke-direct {v1, p0, p1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;Landroid/view/Surface;)V

    .line 208
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    :cond_1
    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    new-instance v3, Ljava/lang/Throwable;

    .line 8
    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    .line 11
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    move-result-object v3

    .line 15
    const/4 v4, 0x0

    .line 16
    aput-object v3, v2, v4

    .line 18
    const-string v3, " surfaceDestroyed stacktrace={?}"

    .line 20
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->d:Lhl;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {v0, p1}, Lhl;->p(Landroid/view/Surface;)V

    .line 34
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

    .line 36
    const/4 v2, 0x2

    .line 37
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 41
    iget v3, v3, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 43
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v3

    .line 47
    aput-object v3, v2, v4

    .line 49
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 51
    iget-boolean v3, v3, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 53
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object v3

    .line 57
    aput-object v3, v2, v1

    .line 59
    const-string v1, "MultiScreenNative.surfaceDestroy id = {?}, isSynMultiScreenNotify = {?}"

    .line 61
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 66
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 68
    if-eqz v1, :cond_0

    .line 70
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 72
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->c:Landroid/os/Handler;

    .line 78
    if-eqz v0, :cond_1

    .line 80
    new-instance v1, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;

    .line 82
    invoke-direct {v1, p0, p1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;-><init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;Landroid/view/Surface;)V

    .line 85
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
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
    const-string v1, "PresentationMapView{TAG=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b:Lcom/autonavi/amapauto/jni/ViewInfo;

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

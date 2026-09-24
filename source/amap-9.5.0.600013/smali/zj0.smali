.class public Lzj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Landroid/view/Surface;

.field public c:Landroid/os/Handler;

.field public d:Lhl;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lzj0;->b:Landroid/view/Surface;

    .line 7
    invoke-virtual {p0, p1}, Lzj0;->c(I)V

    .line 10
    return-void
.end method

.method public static synthetic a(Lzj0;)I
    .locals 0

    .line 1
    iget p0, p0, Lzj0;->a:I

    .line 3
    return p0
.end method

.method public static synthetic b(Lzj0;)Lhl;
    .locals 0

    .line 1
    iget-object p0, p0, Lzj0;->d:Lhl;

    .line 3
    return-object p0
.end method


# virtual methods
.method public final c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lzj0;->a:I

    .line 3
    return-void
.end method

.method public d(Landroid/view/Surface;Lhl;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, " onSurfaceCreated\uff1a"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/view/Surface;->toString()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "null"

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, " id="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lzj0;->a:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    new-array v2, v1, [Ljava/lang/Object;

    .line 40
    const-string v3, "VedioPresentationMapView"

    .line 42
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    iput-object p2, p0, Lzj0;->d:Lhl;

    .line 47
    iput-object p1, p0, Lzj0;->b:Landroid/view/Surface;

    .line 49
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p0, Lzj0;->c:Landroid/os/Handler;

    .line 55
    if-eqz p2, :cond_1

    .line 57
    iget p2, p0, Lzj0;->a:I

    .line 59
    invoke-static {p2, v1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 62
    iget-object p2, p0, Lzj0;->c:Landroid/os/Handler;

    .line 64
    new-instance v0, Lzj0$a;

    .line 66
    invoke-direct {v0, p0, p1}, Lzj0$a;-><init>(Lzj0;Landroid/view/Surface;)V

    .line 69
    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :cond_1
    const/4 p2, 0x1

    .line 73
    new-array p2, p2, [Ljava/lang/Object;

    .line 75
    iget v0, p0, Lzj0;->a:I

    .line 77
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v0

    .line 81
    aput-object v0, p2, v1

    .line 83
    const-string v0, "MapSurfaceView.nativeSurfaceCreated id={?}"

    .line 85
    invoke-static {v3, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget p2, p0, Lzj0;->a:I

    .line 90
    iget-object v0, p0, Lzj0;->d:Lhl;

    .line 92
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 95
    move-result-object v0

    .line 96
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 98
    invoke-static {p2, v0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 101
    iget p2, p0, Lzj0;->a:I

    .line 103
    iget-object v0, p0, Lzj0;->d:Lhl;

    .line 105
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 108
    move-result-object v0

    .line 109
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->f:I

    .line 111
    iget-object v2, p0, Lzj0;->d:Lhl;

    .line 113
    invoke-virtual {v2}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 116
    move-result-object v2

    .line 117
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->g:I

    .line 119
    invoke-static {p2, p1, v1, v0, v2}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 122
    return-void
.end method

.method public e()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "VedioPresentationMapView"

    .line 6
    const-string v3, " surfaceDestroyed"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lzj0;->b:Landroid/view/Surface;

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 18
    move-result-object v1

    .line 19
    iput-object v1, p0, Lzj0;->c:Landroid/os/Handler;

    .line 21
    iget v1, p0, Lzj0;->a:I

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-static {v1, v3}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceStatus(II)V

    .line 27
    const/4 v1, 0x2

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    iget v4, p0, Lzj0;->a:I

    .line 32
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v4

    .line 36
    aput-object v4, v1, v0

    .line 38
    iget-object v0, p0, Lzj0;->d:Lhl;

    .line 40
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 43
    move-result-object v0

    .line 44
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 46
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v0

    .line 50
    aput-object v0, v1, v3

    .line 52
    const-string v0, "MultiScreenNative.surfaceDestroyed id = {?}, isSynMultiScreenNotify = {?}"

    .line 54
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lzj0;->d:Lhl;

    .line 59
    invoke-virtual {v0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 62
    move-result-object v0

    .line 63
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->o:Z

    .line 65
    if-eqz v0, :cond_0

    .line 67
    iget v0, p0, Lzj0;->a:I

    .line 69
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object v0, p0, Lzj0;->c:Landroid/os/Handler;

    .line 75
    if-eqz v0, :cond_1

    .line 77
    new-instance v1, Lzj0$b;

    .line 79
    invoke-direct {v1, p0}, Lzj0$b;-><init>(Lzj0;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    :cond_1
    :goto_0
    iget v0, p0, Lzj0;->a:I

    .line 87
    iget-object v1, p0, Lzj0;->b:Landroid/view/Surface;

    .line 89
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 92
    iget-object v0, p0, Lzj0;->b:Landroid/view/Surface;

    .line 94
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 97
    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lzj0;->b:Landroid/view/Surface;

    .line 100
    :cond_2
    return-void
.end method

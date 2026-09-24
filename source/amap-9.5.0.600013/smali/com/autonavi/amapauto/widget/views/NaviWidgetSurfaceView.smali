.class public Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;
.super Lcom/autonavi/amapauto/MapSurfaceView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$d;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroid/os/Handler;

.field public c:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public d:Lhl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/amapauto/MapSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-string p1, "NaviWidgetSurfaceView"

    .line 6
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 15
    return-void
.end method

.method public static synthetic a(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->c:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Lhl;Lcom/autonavi/amapauto/jni/ViewInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->d:Lhl;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->c:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 5
    return-void
.end method

.method public setClickListener(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$d;)V
    .locals 0

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->c:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 8
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v1, v2

    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    aput-object v3, v1, v2

    .line 31
    const-string v2, "surfaceChanged:{?},{?},{?}"

    .line 33
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 39
    move-result-object v5

    .line 40
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->b:Landroid/os/Handler;

    .line 42
    if-eqz p1, :cond_0

    .line 44
    new-instance v0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;

    .line 46
    move-object v3, v0

    .line 47
    move-object v4, p0

    .line 48
    move v6, p2

    .line 49
    move v7, p3

    .line 50
    move v8, p4

    .line 51
    invoke-direct/range {v3 .. v8}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;-><init>(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;Landroid/view/Surface;III)V

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 57
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x3

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->c:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 8
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    aput-object v2, v1, v3

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 31
    move-result v2

    .line 32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v2

    .line 36
    const/4 v3, 0x2

    .line 37
    aput-object v2, v1, v3

    .line 39
    const-string v2, "surfaceCreated:{?},{?},{?}"

    .line 41
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lvo;->a()Landroid/os/Handler;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->b:Landroid/os/Handler;

    .line 50
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 53
    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->b:Landroid/os/Handler;

    .line 56
    if-eqz v0, :cond_0

    .line 58
    new-instance v1, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;

    .line 60
    invoke-direct {v1, p0, p1}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;-><init>(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;Landroid/view/Surface;)V

    .line 63
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 66
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-object v2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->c:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 8
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    const-string v2, " surfaceDestroyed:{?}"

    .line 19
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    .line 25
    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->b:Landroid/os/Handler;

    .line 28
    if-eqz v0, :cond_0

    .line 30
    new-instance v1, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$c;

    .line 32
    invoke-direct {v1, p0, p1}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$c;-><init>(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;Landroid/view/Surface;)V

    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 38
    :cond_0
    return-void
.end method

.class public Ljf0$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljf0;


# direct methods
.method public constructor <init>(Ljf0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ljf0$h;->a:Ljf0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Surface;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 5
    return-void
.end method

.method public b(I)V
    .locals 1

    .line 1
    invoke-static {}, Lk6;->g()Lk6;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lk6;->o(I)V

    .line 8
    return-void
.end method

.method public c(Lqt;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljf0$h;->h()Lcom/autonavi/amapauto/view/MapSurfaceViewEx;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;->setSurfaceCallback(Lqt;)V

    .line 8
    return-void
.end method

.method public d(Landroid/view/Surface;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceRedrawNeeded(ILandroid/view/Surface;)V

    .line 5
    return-void
.end method

.method public e(Landroid/view/Surface;II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1, v0, p2, p3}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 5
    return-void
.end method

.method public f(Landroid/view/Surface;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1, p1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 6
    return-void
.end method

.method public g(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0$h;->a:Ljf0;

    .line 3
    invoke-virtual {v0, p1, p2}, Ljf0;->q(II)V

    .line 6
    return-void
.end method

.method public h()Lcom/autonavi/amapauto/view/MapSurfaceViewEx;
    .locals 1

    .line 1
    iget-object v0, p0, Ljf0$h;->a:Ljf0;

    .line 3
    iget-object v0, v0, Ljf0;->f:Lxt;

    .line 5
    invoke-interface {v0}, Lxt;->c()Landroid/view/SurfaceView;

    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/autonavi/amapauto/view/MapSurfaceViewEx;

    .line 11
    return-object v0
.end method

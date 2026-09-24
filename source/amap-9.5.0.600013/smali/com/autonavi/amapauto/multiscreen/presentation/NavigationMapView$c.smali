.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$c;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "NavigationMapView"

    .line 6
    const-string v2, "nativeSurfaceDestroyed in asynchronous code"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$c;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 13
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 19
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$c;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 21
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 28
    return-void
.end method

.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;

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
    const-string v2, "MultiScreenNative.surfaceCreated in asynchronous code"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;

    .line 13
    iget-object v0, v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 15
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 18
    move-result-object v0

    .line 19
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;

    .line 23
    iget-object v1, v1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 25
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 31
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;

    .line 33
    iget-object v2, v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 35
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 38
    move-result-object v2

    .line 39
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 42
    return-void
.end method

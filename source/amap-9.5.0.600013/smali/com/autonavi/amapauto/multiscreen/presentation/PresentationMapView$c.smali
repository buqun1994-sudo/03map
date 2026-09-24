.class public Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;->a:Landroid/view/Surface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "MultiScreenNative.surfaceDestroy in asynchronous code"

    .line 12
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 23
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$c;->a:Landroid/view/Surface;

    .line 25
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceDestroyed(ILandroid/view/Surface;)V

    .line 28
    return-void
.end method

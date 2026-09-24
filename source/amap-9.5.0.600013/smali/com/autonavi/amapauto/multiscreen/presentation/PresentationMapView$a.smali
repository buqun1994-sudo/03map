.class public Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
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
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;->a:Landroid/view/Surface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "MultiScreenNative.surfaceCreated in asynchronous code"

    .line 12
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 23
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;

    .line 25
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 28
    move-result-object v1

    .line 29
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 31
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationMapView$a;->a:Landroid/view/Surface;

    .line 33
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 36
    return-void
.end method

.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;

    .line 3
    iput p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 9
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;

    .line 11
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)Landroid/view/Surface;

    .line 14
    move-result-object v1

    .line 15
    iget v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->a:I

    .line 17
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;

    .line 19
    invoke-static {v3}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->c(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)I

    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;

    .line 25
    invoke-static {v4}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchMapView;)I

    .line 28
    move-result v4

    .line 29
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 32
    return-void
.end method

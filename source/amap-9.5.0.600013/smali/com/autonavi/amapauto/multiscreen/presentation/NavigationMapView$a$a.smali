.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 3
    iget-object v0, v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 5
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->g(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 8
    move-result-object v0

    .line 9
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 13
    iget-object v1, v1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 15
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->f(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)Landroid/view/Surface;

    .line 18
    move-result-object v1

    .line 19
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 21
    iget-object v2, v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 23
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->j(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 26
    move-result v2

    .line 27
    iget-object v3, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 29
    iget-object v3, v3, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 31
    invoke-static {v3}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->h(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 34
    move-result v3

    .line 35
    iget-object v4, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;

    .line 37
    iget-object v4, v4, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;

    .line 39
    invoke-static {v4}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;->i(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationMapView;)I

    .line 42
    move-result v4

    .line 43
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 46
    return-void
.end method

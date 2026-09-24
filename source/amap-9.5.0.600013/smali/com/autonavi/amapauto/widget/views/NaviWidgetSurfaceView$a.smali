.class public Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;->b:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;->a:Landroid/view/Surface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;->b:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 9
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;->b:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 11
    invoke-static {v1}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 14
    move-result-object v1

    .line 15
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->l:I

    .line 17
    iget-object v2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$a;->a:Landroid/view/Surface;

    .line 19
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/MapSurfaceView;->nativeSurfaceCreated(IILandroid/view/Surface;)V

    .line 22
    return-void
.end method

.class public Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;Landroid/view/Surface;III)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->e:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->a:Landroid/view/Surface;

    .line 5
    iput p3, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->b:I

    .line 7
    iput p4, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->c:I

    .line 9
    iput p5, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->d:I

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->e:Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;->a(Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 9
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->a:Landroid/view/Surface;

    .line 11
    iget v2, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->b:I

    .line 13
    iget v3, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->c:I

    .line 15
    iget v4, p0, Lcom/autonavi/amapauto/widget/views/NaviWidgetSurfaceView$b;->d:I

    .line 17
    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/MapSurfaceView;->nativesurfaceChanged(ILandroid/view/Surface;III)V

    .line 20
    return-void
.end method

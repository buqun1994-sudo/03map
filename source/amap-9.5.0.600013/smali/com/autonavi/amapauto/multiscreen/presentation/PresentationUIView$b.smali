.class public Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 3
    iput-object p2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->a:Landroid/view/Surface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 12
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 15
    move-result-object v2

    .line 16
    iget v2, v2, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 25
    const-string v2, "MultiScreenNative.surfaceChanged id={?}"

    .line 27
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 32
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 38
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->a:Landroid/view/Surface;

    .line 40
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$b;->b:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 42
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 49
    return-void
.end method

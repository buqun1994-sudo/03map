.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;

    .line 6
    iget-object v1, v1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 8
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 11
    move-result-object v1

    .line 12
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    aput-object v1, v0, v2

    .line 21
    const-string v1, "NavigationUIView"

    .line 23
    const-string v2, "MultiScreenNative.surfaceChanged id={?}"

    .line 25
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;

    .line 30
    iget-object v0, v0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 32
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 38
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;

    .line 40
    iget-object v1, v1, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 42
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->d(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Landroid/view/Surface;

    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;

    .line 48
    iget-object v2, v2, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView$b;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;

    .line 50
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;->e(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 53
    move-result-object v2

    .line 54
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 57
    return-void
.end method

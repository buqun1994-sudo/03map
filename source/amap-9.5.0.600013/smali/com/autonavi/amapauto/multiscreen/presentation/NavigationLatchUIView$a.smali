.class public Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->surfaceCreated(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;

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
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;

    .line 6
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 9
    move-result-object v1

    .line 10
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 12
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v1, v0, v2

    .line 19
    const-string v1, "NavigationLatchUIView"

    .line 21
    const-string v2, "MultiScreenNative.surfaceCreated id={?}"

    .line 23
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;

    .line 28
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 34
    iget-object v1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;

    .line 36
    invoke-static {v1}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)Landroid/view/Surface;

    .line 39
    move-result-object v1

    .line 40
    iget-object v2, p0, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView$a;->a:Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;

    .line 42
    invoke-static {v2}, Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;->a(Lcom/autonavi/amapauto/multiscreen/presentation/NavigationLatchUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 45
    move-result-object v2

    .line 46
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 49
    return-void
.end method

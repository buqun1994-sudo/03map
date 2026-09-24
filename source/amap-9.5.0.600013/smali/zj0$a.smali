.class public Lzj0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj0;->d(Landroid/view/Surface;Lhl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/Surface;

.field public final synthetic b:Lzj0;


# direct methods
.method public constructor <init>(Lzj0;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzj0$a;->b:Lzj0;

    .line 3
    iput-object p2, p0, Lzj0$a;->a:Landroid/view/Surface;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
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
    iget-object v1, p0, Lzj0$a;->b:Lzj0;

    .line 6
    invoke-static {v1}, Lzj0;->a(Lzj0;)I

    .line 9
    move-result v1

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v1

    .line 14
    const/4 v2, 0x0

    .line 15
    aput-object v1, v0, v2

    .line 17
    const-string v1, "VedioPresentationMapView"

    .line 19
    const-string v2, "MultiScreenNative.surfaceCreated id={?}"

    .line 21
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lzj0$a;->b:Lzj0;

    .line 26
    invoke-static {v0}, Lzj0;->a(Lzj0;)I

    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lzj0$a;->a:Landroid/view/Surface;

    .line 32
    iget-object v2, p0, Lzj0$a;->b:Lzj0;

    .line 34
    invoke-static {v2}, Lzj0;->b(Lzj0;)Lhl;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 41
    move-result-object v2

    .line 42
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 45
    iget-object v0, p0, Lzj0$a;->b:Lzj0;

    .line 47
    invoke-static {v0}, Lzj0;->a(Lzj0;)I

    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lzj0$a;->a:Landroid/view/Surface;

    .line 53
    iget-object v2, p0, Lzj0$a;->b:Lzj0;

    .line 55
    invoke-static {v2}, Lzj0;->b(Lzj0;)Lhl;

    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 62
    move-result-object v2

    .line 63
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 66
    return-void
.end method

.class public Lp2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp2;->t(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/jni/ViewInfo;

.field public final synthetic b:Landroid/view/Surface;

.field public final synthetic c:Lp2;


# direct methods
.method public constructor <init>(Lp2;Lcom/autonavi/amapauto/jni/ViewInfo;Landroid/view/Surface;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp2$a;->c:Lp2;

    .line 3
    iput-object p2, p0, Lp2$a;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 5
    iput-object p3, p0, Lp2$a;->b:Landroid/view/Surface;

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lp2$a;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    iget v1, v1, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    const/4 v1, 0x1

    .line 16
    iget-object v2, p0, Lp2$a;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 18
    aput-object v2, v0, v1

    .line 20
    const-string v1, "AidlWidgetExternalScreen"

    .line 22
    const-string v2, "MultiScreenNative.surfaceCreated id={?} viewInfo ={?}"

    .line 24
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lp2$a;->c:Lp2;

    .line 29
    invoke-static {v0}, Lp2;->v(Lp2;)V

    .line 32
    iget-object v0, p0, Lp2$a;->c:Lp2;

    .line 34
    invoke-static {v0}, Lp2;->w(Lp2;)I

    .line 37
    move-result v0

    .line 38
    iget-object v1, p0, Lp2$a;->b:Landroid/view/Surface;

    .line 40
    iget-object v2, p0, Lp2$a;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 42
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 45
    iget-object v0, p0, Lp2$a;->c:Lp2;

    .line 47
    invoke-static {v0}, Lp2;->x(Lp2;)I

    .line 50
    move-result v0

    .line 51
    iget-object v1, p0, Lp2$a;->b:Landroid/view/Surface;

    .line 53
    iget-object v2, p0, Lp2$a;->a:Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 55
    invoke-static {v0, v1, v2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 58
    return-void
.end method

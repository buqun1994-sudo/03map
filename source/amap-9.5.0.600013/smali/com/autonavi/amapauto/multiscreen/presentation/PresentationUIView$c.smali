.class public Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$c;->a:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView$c;->a:Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;->b(Lcom/autonavi/amapauto/multiscreen/presentation/PresentationUIView;)Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 6
    move-result-object v0

    .line 7
    iget v0, v0, Lcom/autonavi/amapauto/jni/ViewInfo;->c:I

    .line 9
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onSurfaceDestroyed(I)I

    .line 12
    return-void
.end method

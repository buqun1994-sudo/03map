.class public Lzd$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzd;->X()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzd;


# direct methods
.method public constructor <init>(Lzd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzd$e;->a:Lzd;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzd$e;->a:Lzd;

    .line 3
    invoke-static {v0}, Lzd;->x(Lzd;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne v1, v0, :cond_0

    .line 14
    iget-object v0, p0, Lzd$e;->a:Lzd;

    .line 16
    invoke-static {v0, v1}, Lzd;->A(Lzd;Z)Z

    .line 19
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/CameraManagerNative;->notifyCameraRestartEnd()V

    .line 22
    iget-object v0, p0, Lzd$e;->a:Lzd;

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Lzd;->b(I)Z

    .line 28
    :cond_0
    return-void
.end method

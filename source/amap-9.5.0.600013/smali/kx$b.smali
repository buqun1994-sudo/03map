.class public Lkx$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkx;


# direct methods
.method public constructor <init>(Lkx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkx$b;->a:Lkx;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lkx$b;->a:Lkx;

    .line 3
    sget-object v1, Lbq$b;->a:Lbq$b;

    .line 5
    iput-object v1, v0, Lhx;->a:Lbq$b;

    .line 7
    invoke-virtual {v0}, Lmx;->w()Lbs;

    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x3

    .line 12
    invoke-interface {v0, v1}, Lbs;->b(I)V

    .line 15
    iget-object v0, p0, Lkx$b;->a:Lkx;

    .line 17
    invoke-static {v0}, Lkx;->G(Lkx;)Ljava/lang/ref/WeakReference;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    const-string v0, "cbRunDestroy start "

    .line 25
    invoke-static {v0}, Lkx;->f(Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lkx$b;->a:Lkx;

    .line 30
    invoke-virtual {v0}, Lmx;->w()Lbs;

    .line 33
    move-result-object v0

    .line 34
    iget-object v1, p0, Lkx$b;->a:Lkx;

    .line 36
    invoke-static {v1}, Lkx;->G(Lkx;)Ljava/lang/ref/WeakReference;

    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Landroid/view/Surface;

    .line 46
    invoke-interface {v0, v1}, Lbs;->a(Landroid/view/Surface;)V

    .line 49
    :cond_0
    return-void
.end method

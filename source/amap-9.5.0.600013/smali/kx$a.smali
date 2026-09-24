.class public Lkx$a;
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
    iput-object p1, p0, Lkx$a;->a:Lkx;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "cbRunChanged start "

    .line 3
    invoke-static {v0}, Lkx;->f(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lkx$a;->a:Lkx;

    .line 8
    sget-object v1, Lbq$b;->c:Lbq$b;

    .line 10
    iput-object v1, v0, Lhx;->a:Lbq$b;

    .line 12
    invoke-virtual {v0}, Lhx;->i()Landroid/os/Handler;

    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lkx$a;->a:Lkx;

    .line 18
    iget-object v1, v1, Lkx;->p:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 23
    iget-object v0, p0, Lkx$a;->a:Lkx;

    .line 25
    iget v1, v0, Lmx;->k:I

    .line 27
    if-lez v1, :cond_0

    .line 29
    iget v1, v0, Lmx;->l:I

    .line 31
    if-lez v1, :cond_0

    .line 33
    invoke-virtual {v0}, Lmx;->w()Lbs;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x2

    .line 38
    invoke-interface {v0, v1}, Lbs;->b(I)V

    .line 41
    iget-object v0, p0, Lkx$a;->a:Lkx;

    .line 43
    invoke-static {v0}, Lkx;->E(Lkx;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lkx$a;->a:Lkx;

    .line 51
    invoke-virtual {v0}, Lmx;->w()Lbs;

    .line 54
    move-result-object v0

    .line 55
    iget-object v1, p0, Lkx$a;->a:Lkx;

    .line 57
    invoke-virtual {v1}, Lkx;->m()Landroid/view/Surface;

    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lkx$a;->a:Lkx;

    .line 63
    iget v3, v2, Lmx;->k:I

    .line 65
    iget v2, v2, Lmx;->l:I

    .line 67
    invoke-interface {v0, v1, v3, v2}, Lbs;->e(Landroid/view/Surface;II)V

    .line 70
    iget-object v0, p0, Lkx$a;->a:Lkx;

    .line 72
    const/4 v1, 0x0

    .line 73
    invoke-static {v0, v1}, Lkx;->F(Lkx;Z)Z

    .line 76
    :cond_0
    return-void
.end method

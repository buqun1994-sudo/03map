.class public Lnm$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnm;->j(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lnm;


# direct methods
.method public constructor <init>(Lnm;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnm$e;->b:Lnm;

    .line 3
    iput p2, p0, Lnm$e;->a:I

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnm$e;->b:Lnm;

    .line 3
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lnm$e;->b:Lnm;

    .line 11
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 14
    move-result-object v0

    .line 15
    instance-of v0, v0, Lkm;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lnm$e;->b:Lnm;

    .line 21
    invoke-static {v0}, Lnm;->a(Lnm;)Lfc;

    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lkm;

    .line 27
    sget-object v1, Lkm$f;->d:Lkm$f;

    .line 29
    invoke-virtual {v0, v1}, Lkm;->x(Lkm$f;)V

    .line 32
    iget-object v0, p0, Lnm$e;->b:Lnm;

    .line 34
    invoke-static {v0}, Lnm;->c(Lnm;)Landroid/os/Handler;

    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lnm$e;->b:Lnm;

    .line 40
    invoke-static {v1}, Lnm;->b(Lnm;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lnm$e;->b:Lnm;

    .line 49
    invoke-static {v0}, Lnm;->c(Lnm;)Landroid/os/Handler;

    .line 52
    move-result-object v0

    .line 53
    new-instance v1, Lnm$e$a;

    .line 55
    invoke-direct {v1, p0}, Lnm$e$a;-><init>(Lnm$e;)V

    .line 58
    iget-object v2, p0, Lnm$e;->b:Lnm;

    .line 60
    invoke-static {v2}, Lnm;->b(Lnm;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 64
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 67
    move-result-wide v3

    .line 68
    iget v5, p0, Lnm$e;->a:I

    .line 70
    mul-int/lit16 v5, v5, 0x3e8

    .line 72
    int-to-long v5, v5

    .line 73
    add-long/2addr v3, v5

    .line 74
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 77
    :cond_0
    return-void
.end method

.class public Lhx$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lhx;


# direct methods
.method public constructor <init>(Lhx;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx$a;->a:Lhx;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhx$a;->a:Lhx;

    .line 3
    iget-object v1, v0, Lhx;->a:Lbq$b;

    .line 5
    sget-object v2, Lbq$b;->a:Lbq$b;

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    const-string v0, "cbEnableNext SurfaceStatus.Destroyed"

    .line 11
    invoke-static {v0}, Lhx;->f(Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {v0}, Lhx;->j()Lhx;

    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const-string v0, "cbEnableNext run"

    .line 23
    invoke-static {v0}, Lhx;->f(Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lhx$a;->a:Lhx;

    .line 28
    invoke-virtual {v0}, Lhx;->j()Lhx;

    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x1

    .line 33
    invoke-virtual {v0, v1}, Lhx;->g(Z)V

    .line 36
    :cond_1
    return-void
.end method

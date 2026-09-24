.class public Lum0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lum0$a;,
        Lum0$b;
    }
.end annotation


# static fields
.field public static volatile a:Lum0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static d()Lum0;
    .locals 2

    .line 1
    sget-object v0, Lum0;->a:Lum0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lum0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lum0;->a:Lum0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lum0;

    .line 14
    invoke-direct {v1}, Lum0;-><init>()V

    .line 17
    sput-object v1, Lum0;->a:Lum0;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lum0;->a:Lum0;

    .line 26
    return-object v0
.end method


# virtual methods
.method public a(Lym0;)V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ltm0;->x(Lym0;)V

    .line 8
    return-void
.end method

.method public b(Lym0;ZI)V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Ltm0;->C(Lym0;ZI)V

    .line 8
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ltm0;->G(Z)V

    .line 8
    return-void
.end method

.method public e()Lym0;
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltm0;->J()Lym0;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltm0;->K()I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public g(Landroid/content/Context;Lum0$b;)Z
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ltm0;->L(Landroid/content/Context;Lum0$b;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public h(Landroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ltm0;->R(Landroid/content/Context;)Z

    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public i(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ltm0;->V(Landroid/content/Context;)V

    .line 8
    return-void
.end method

.method public j(I)V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ltm0;->X(I)V

    .line 8
    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltm0;->a0()V

    .line 8
    return-void
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltm0;->c0()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public m(Lym0;)V
    .locals 1

    .line 1
    invoke-static {}, Ltm0;->I()Ltm0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Ltm0;->e0(Lym0;)V

    .line 8
    return-void
.end method

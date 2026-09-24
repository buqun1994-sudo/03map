.class public Lqb;
.super Lhl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lhl;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 p1, 0x0

    .line 5
    new-array p1, p1, [Ljava/lang/Object;

    .line 7
    const-string v0, "AuxiliaryNavigationScreen"

    .line 9
    invoke-static {v0, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public b(IZ)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array p1, p1, [Ljava/lang/Object;

    .line 4
    const-string p2, "AuxiliaryNavigationScreen"

    .line 6
    const-string v0, "controlSurfaceVisivility"

    .line 8
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AuxiliaryNavigationScreen"

    .line 6
    const-string v2, "destory"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public f()Ld20;
    .locals 1

    .line 1
    sget-object v0, Ld20;->h:Ld20;

    .line 3
    return-object v0
.end method

.method public i()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AuxiliaryNavigationScreen"

    .line 6
    const-string v2, "initExtScreen"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public n(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s()V
    .locals 6

    .line 1
    const-string v0, "AuxiliaryNavigationScreen"

    .line 3
    const-string v1, "startRender"

    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lse;->initAuxiliaryNavigation()Z

    .line 18
    move-result v0

    .line 19
    const-string v1, "AuxiliaryNavigationScreen"

    .line 21
    const-string v3, "startRender hadInitedFlag:{?}"

    .line 23
    const/4 v4, 0x1

    .line 24
    new-array v4, v4, [Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v5

    .line 30
    aput-object v5, v4, v2

    .line 32
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-static {}, Lse;->c()Lse;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0}, Lse;->getMapSurfaceCreateLock()Ljava/lang/Object;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 47
    monitor-enter v0

    .line 48
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 51
    monitor-exit v0

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw v1

    .line 56
    :cond_0
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lse;->getUISurfaceCreateLock()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    monitor-enter v0

    .line 67
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 70
    monitor-exit v0

    .line 71
    goto :goto_1

    .line 72
    :catchall_1
    move-exception v1

    .line 73
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 74
    throw v1

    .line 75
    :cond_1
    :goto_1
    return-void
.end method

.method public t(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, "AuxiliaryNavigationScreen"

    .line 13
    const-string v1, "startRender mode:{?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0}, Lqb;->s()V

    .line 21
    return-void
.end method

.method public u()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AuxiliaryNavigationScreen"

    .line 6
    const-string v2, "stopRender"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lse;->stopDimRender()V

    .line 18
    return-void
.end method

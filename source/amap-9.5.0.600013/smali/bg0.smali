.class public abstract Lbg0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lag0;)Lcg0;
    .locals 0

    .line 1
    invoke-static {p0}, Leg0;->a(Lag0;)Lcg0;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 13
    move-result-object v0

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    move-result-object v1

    .line 18
    if-ne v0, v1, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Leg0;->a:Leg0$a;

    .line 26
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Leg0;->a:Leg0$a;

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
.end method

.method public static d(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Leg0;->a:Leg0$a;

    .line 6
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 9
    return-void
.end method

.method public static e(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Leg0;->a:Leg0$a;

    .line 6
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public static f(Ljava/lang/Runnable;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Leg0;->b:Lcg0;

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "TaskManager"

    .line 9
    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcg0;->b()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 17
    sget-object v0, Leg0;->b:Lcg0;

    .line 19
    invoke-virtual {v0, p0}, Lcg0;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-void

    .line 23
    :cond_1
    const-string v0, "Executor is Full"

    .line 25
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-array v3, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    :cond_2
    const-string v0, "run by new Thread"

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    new-instance v0, Ljava/lang/Thread;

    .line 42
    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 45
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 48
    return-void
.end method

.method public static g(Lag0;)V
    .locals 0

    .line 1
    invoke-static {p0}, Leg0;->b(Lag0;)V

    .line 4
    return-void
.end method

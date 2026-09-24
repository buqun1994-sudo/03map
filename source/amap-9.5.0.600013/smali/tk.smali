.class public Ltk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltk$b;,
        Ltk$c;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Application;

.field public b:Lir;

.field public volatile c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p0}, Ltk;->h()V

    return-void
.end method

.method public synthetic constructor <init>(Ltk$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltk;-><init>()V

    return-void
.end method

.method public static d()Ltk;
    .locals 1

    .line 1
    invoke-static {}, Ltk$b;->a()Ltk;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Runnable;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 7
    invoke-virtual {v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->R()Landroid/os/Handler;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    :cond_0
    return-void
.end method

.method public b()Landroid/app/Application;
    .locals 1

    .line 1
    iget-object v0, p0, Ltk;->a:Landroid/app/Application;

    .line 3
    return-object v0
.end method

.method public c()Lir;
    .locals 1

    .line 1
    iget-object v0, p0, Ltk;->b:Lir;

    .line 3
    return-object v0
.end method

.method public e()Landroid/os/Handler;
    .locals 1

    .line 1
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 7
    invoke-virtual {v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->R()Landroid/os/Handler;

    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return-object v0
.end method

.method public f()Las;
    .locals 1

    .line 1
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 3
    return-object v0
.end method

.method public g()Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;
    .locals 1

    .line 1
    invoke-static {}, Ltk$c;->a()Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final h()V
    .locals 4

    .line 1
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    if-nez v1, :cond_0

    .line 12
    :try_start_1
    const-class v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 14
    sget-boolean v2, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->p:Z

    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v3, v2, [Ljava/lang/Class;

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 35
    iput-object v1, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v1

    .line 39
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    throw v1

    .line 47
    :cond_1
    :goto_1
    return-void
.end method

.method public i(Landroid/app/Application;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltk;->a:Landroid/app/Application;

    .line 3
    return-void
.end method

.method public j(Lir;)V
    .locals 1

    .line 1
    iput-object p1, p0, Ltk;->b:Lir;

    .line 3
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Ltk;->c:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 9
    invoke-virtual {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->j0(Lir;)V

    .line 12
    :cond_0
    return-void
.end method

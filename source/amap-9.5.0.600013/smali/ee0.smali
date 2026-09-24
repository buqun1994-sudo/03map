.class public Lee0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lee0$b;
    }
.end annotation


# static fields
.field public static c:Lee0;


# instance fields
.field public a:Landroid/os/Handler;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lee0;->a:Landroid/os/Handler;

    .line 7
    new-instance v0, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    iput-object v0, p0, Lee0;->b:Landroid/os/Handler;

    .line 18
    new-instance v0, Landroid/os/HandlerThread;

    .line 20
    const-string v1, "skinThread"

    .line 22
    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 28
    new-instance v1, Landroid/os/Handler;

    .line 30
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    move-result-object v0

    .line 34
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    iput-object v1, p0, Lee0;->a:Landroid/os/Handler;

    .line 39
    return-void
.end method

.method public static synthetic a(Lee0;Ljava/util/List;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lee0;->h(Ljava/util/List;Z)V

    .line 4
    return-void
.end method

.method public static synthetic b(Lee0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lee0;->b:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static declared-synchronized c()Lee0;
    .locals 2

    .line 1
    const-class v0, Lee0;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lee0;->c:Lee0;

    .line 6
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Lee0;

    .line 10
    invoke-direct {v1}, Lee0;-><init>()V

    .line 13
    sput-object v1, Lee0;->c:Lee0;

    .line 15
    :cond_0
    sget-object v1, Lee0;->c:Lee0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final e(Landroid/view/View;Ljava/util/List;ZZ)V
    .locals 3

    .line 1
    instance-of v0, p1, Lmt;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lmt;

    .line 8
    invoke-interface {v0}, Lmt;->getAdpter()Lmt$a;

    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {v0, p1}, Lmt$a;->b(Landroid/view/View;)V

    .line 17
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    if-nez p4, :cond_1

    .line 22
    return-void

    .line 23
    :cond_1
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-ge v1, v0, :cond_2

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {p0, v2, p2, p3, p4}, Lee0;->e(Landroid/view/View;Ljava/util/List;ZZ)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    return-void
.end method

.method public f(Landroid/view/View;Z)Lee0$b;
    .locals 1

    .line 1
    invoke-static {}, Ln30;->a()Z

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, v0, p2}, Lee0;->g(Landroid/view/View;ZZ)Lee0$b;

    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public g(Landroid/view/View;ZZ)Lee0$b;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    .line 7
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 10
    invoke-virtual {p0, p1, v0, p2, p3}, Lee0;->e(Landroid/view/View;Ljava/util/List;ZZ)V

    .line 13
    invoke-virtual {p0, v0, p2}, Lee0;->h(Ljava/util/List;Z)V

    .line 16
    new-instance p1, Lee0$a;

    .line 18
    invoke-direct {p1, p0, v0, p2}, Lee0$a;-><init>(Lee0;Ljava/util/List;Z)V

    .line 21
    return-object p1
.end method

.method public final h(Ljava/util/List;Z)V
    .locals 1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lmt$a;

    .line 17
    invoke-interface {v0, p2}, Lmt$a;->a(Z)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

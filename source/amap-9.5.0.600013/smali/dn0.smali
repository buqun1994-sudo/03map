.class public Ldn0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldn0$b;
    }
.end annotation


# static fields
.field public static c:Ldn0;


# instance fields
.field public a:Ljava/util/List;

.field public b:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Ldn0;->a:Ljava/util/List;

    .line 11
    new-instance v0, Ldn0$a;

    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 16
    move-result-object v1

    .line 17
    invoke-direct {v0, p0, v1}, Ldn0$a;-><init>(Ldn0;Landroid/os/Looper;)V

    .line 20
    iput-object v0, p0, Ldn0;->b:Landroid/os/Handler;

    .line 22
    return-void
.end method

.method public static synthetic a(Ldn0;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldn0;->d()V

    .line 4
    return-void
.end method

.method public static synthetic b(Ldn0;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Ldn0;->b:Landroid/os/Handler;

    .line 3
    return-object p0
.end method

.method public static e()Ldn0;
    .locals 1

    .line 1
    sget-object v0, Ldn0;->c:Ldn0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ldn0;

    .line 7
    invoke-direct {v0}, Ldn0;-><init>()V

    .line 10
    sput-object v0, Ldn0;->c:Ldn0;

    .line 12
    :cond_0
    sget-object v0, Ldn0;->c:Ldn0;

    .line 14
    return-object v0
.end method


# virtual methods
.method public c(Ldn0$b;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Ldn0;->a:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Ldn0;->a:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .line 1
    iget-object v0, p0, Ldn0;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ldn0$b;

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-interface {v1}, Ldn0$b;->e()V

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    return-void
.end method

.method public f(Ldn0$b;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Ldn0;->a:Ljava/util/List;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Ldn0;->a:Ljava/util/List;

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectTimer"

    .line 6
    const-string v2, "startTimer"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ldn0;->b:Landroid/os/Handler;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 17
    iget-object v0, p0, Ldn0;->b:Landroid/os/Handler;

    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 23
    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WifiDirectTimer"

    .line 6
    const-string v2, "stopTimer"

    .line 8
    invoke-static {v1, v2, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Ldn0;->b:Landroid/os/Handler;

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 17
    return-void
.end method

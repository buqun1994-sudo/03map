.class public Lf$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf$c$d;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public final b:Ljava/lang/Object;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lf$c;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lf$c;->b:Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lf$c;->i()V

    return-void
.end method

.method public synthetic constructor <init>(Lf$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf$c;-><init>()V

    return-void
.end method

.method public static synthetic a()Lf$c;
    .locals 1

    .line 1
    invoke-static {}, Lf$c;->h()Lf$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lf$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf$c;->k()V

    .line 4
    return-void
.end method

.method public static synthetic c(Lf$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lf$c;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic d(Lf$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lf$c;->g()V

    .line 4
    return-void
.end method

.method public static synthetic e(Lf$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lf$c;->a:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static h()Lf$c;
    .locals 1

    .line 1
    invoke-static {}, Lf$c$d;->a()Lf$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public varargs f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v5

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 12
    move-result-object v7

    .line 13
    iget-object v8, p0, Lf$c;->a:Ljava/util/List;

    .line 15
    new-instance v9, Lf$c$a;

    .line 17
    move-object v0, v9

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p2

    .line 20
    move-object v3, p3

    .line 21
    move-object v4, p1

    .line 22
    invoke-direct/range {v0 .. v7}, Lf$c$a;-><init>(Lf$c;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;JLjava/lang/String;)V

    .line 25
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lf$c;->j()V

    .line 31
    return-void
.end method

.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf$c;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    :try_start_0
    iget-object v0, p0, Lf$c;->a:Ljava/util/List;

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Ljava/lang/Runnable;

    .line 18
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lf$c;->b:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    :goto_0
    :try_start_1
    iget-object v1, p0, Lf$c;->a:Ljava/util/List;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    iget-object v1, p0, Lf$c;->b:Ljava/lang/Object;

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    monitor-exit v0

    .line 40
    :catchall_0
    :goto_1
    return-void

    .line 41
    :catchall_1
    move-exception v1

    .line 42
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    throw v1
.end method

.method public final i()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lf$c;->c:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 6
    new-instance v1, Lf$c$c;

    .line 8
    invoke-direct {v1, p0}, Lf$c$c;-><init>(Lf$c;)V

    .line 11
    const-string v2, "ALLoggerThread"

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lf$c;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lf$c;->b:Ljava/lang/Object;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 9
    monitor-exit v0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    :catchall_1
    :goto_0
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    const/16 v0, 0x13

    .line 3
    :try_start_0
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :catchall_0
    return-void
.end method

.method public varargs l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v3

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 12
    move-result-object v5

    .line 13
    iget-object v8, p0, Lf$c;->a:Ljava/util/List;

    .line 15
    new-instance v9, Lf$c$b;

    .line 17
    move-object v0, v9

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move-object v6, p2

    .line 21
    move-object v7, p3

    .line 22
    invoke-direct/range {v0 .. v7}, Lf$c$b;-><init>(Lf$c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lf$c;->j()V

    .line 31
    return-void
.end method

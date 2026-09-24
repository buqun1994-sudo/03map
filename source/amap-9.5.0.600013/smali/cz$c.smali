.class public Lcz$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcz$c$g;,
        Lcz$c$f;
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;

.field public final b:Ljava/lang/Object;

.field public c:Z

.field public d:La;

.field public e:Lcz$c$g;

.field public f:Lcz$c$g;


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

    iput-object v0, p0, Lcz$c;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcz$c;->b:Ljava/lang/Object;

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, La;->a(Landroid/content/Context;)La;

    move-result-object v0

    iput-object v0, p0, Lcz$c;->d:La;

    .line 6
    new-instance v0, Lcz$c$a;

    invoke-direct {v0, p0}, Lcz$c$a;-><init>(Lcz$c;)V

    iput-object v0, p0, Lcz$c;->e:Lcz$c$g;

    .line 7
    new-instance v0, Lcz$c$b;

    invoke-direct {v0, p0}, Lcz$c$b;-><init>(Lcz$c;)V

    iput-object v0, p0, Lcz$c;->f:Lcz$c$g;

    .line 8
    invoke-virtual {p0}, Lcz$c;->m()V

    return-void
.end method

.method public synthetic constructor <init>(Lcz$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcz$c;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcz$c;
    .locals 1

    .line 1
    invoke-static {}, Lcz$c;->l()Lcz$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcz$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz$c;->a:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcz$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcz$c;->o()V

    .line 4
    return-void
.end method

.method public static synthetic d(Lcz$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcz$c;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic e(Lcz$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcz$c;->k()V

    .line 4
    return-void
.end method

.method public static synthetic f(Lcz$c;)Lcz$c$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz$c;->e:Lcz$c$g;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcz$c;Lcz$c$g;)Lcz$c$g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcz$c;->e:Lcz$c$g;

    .line 3
    return-object p1
.end method

.method public static synthetic h(Lcz$c;)Lcz$c$g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcz$c;->f:Lcz$c$g;

    .line 3
    return-object p0
.end method

.method public static varargs j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "["

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "]:["

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string p0, "]"

    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {v0, p1, p3}, Lcz;->f(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static l()Lcz$c;
    .locals 1

    .line 1
    invoke-static {}, Lcz$c$f;->a()Lcz$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
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
    iget-object v8, p0, Lcz$c;->a:Ljava/util/List;

    .line 15
    new-instance v9, Lcz$c$c;

    .line 17
    move-object v0, v9

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    move-object v3, p2

    .line 21
    move-object v4, p3

    .line 22
    invoke-direct/range {v0 .. v7}, Lcz$c$c;-><init>(Lcz$c;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;JLjava/lang/String;)V

    .line 25
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lcz$c;->n()V

    .line 31
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcz$c;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcz$c;->a:Ljava/util/List;

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
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    iget-object v0, p0, Lcz$c;->b:Ljava/lang/Object;

    .line 29
    monitor-enter v0

    .line 30
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcz$c;->a:Ljava/util/List;

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 38
    iget-object v1, p0, Lcz$c;->b:Ljava/lang/Object;

    .line 40
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    monitor-exit v0

    .line 45
    :goto_1
    return-void

    .line 46
    :catchall_1
    move-exception v1

    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 48
    throw v1
.end method

.method public final m()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcz$c;->c:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 6
    new-instance v1, Lcz$c$e;

    .line 8
    invoke-direct {v1, p0}, Lcz$c$e;-><init>(Lcz$c;)V

    .line 11
    const-string v2, "ALLoggerThread"

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcz$c;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcz$c;->b:Ljava/lang/Object;

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

.method public final o()V
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

.method public varargs p(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
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
    iget-object v8, p0, Lcz$c;->a:Ljava/util/List;

    .line 15
    new-instance v9, Lcz$c$d;

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
    invoke-direct/range {v0 .. v7}, Lcz$c$d;-><init>(Lcz$c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Lcz$c;->n()V

    .line 31
    return-void
.end method

.method public varargs q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v1, p2, :cond_0

    .line 12
    invoke-static {p3, p4, v0, p5}, Lcz$c;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p2

    .line 16
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/AndroidALCLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v1, 0x2

    .line 21
    if-ne v1, p2, :cond_1

    .line 23
    invoke-static {p3, p4, v0, p5}, Lcz$c;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 27
    invoke-static {p1, p2}, Lcom/autonavi/amapauto/jni/AndroidALCLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    :goto_0
    return-void
.end method

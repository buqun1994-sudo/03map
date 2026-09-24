.class public Ldz$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static e:Ldz$a;


# instance fields
.field public a:Ljava/util/List;

.field public b:Ljava/lang/Object;

.field public c:Z

.field public d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    .line 6
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Ldz$a;->a:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Ldz$a;->b:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Ldz$a;->d:Z

    .line 25
    invoke-virtual {p0}, Ldz$a;->h()V

    .line 28
    return-void
.end method

.method public static synthetic a(Ldz$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldz$a;->j()V

    .line 4
    return-void
.end method

.method public static synthetic b(Ldz$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Ldz$a;->c:Z

    .line 3
    return p0
.end method

.method public static synthetic c(Ldz$a;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ldz$a;->f()V

    .line 4
    return-void
.end method

.method public static g()Ldz$a;
    .locals 1

    .line 1
    sget-object v0, Ldz$a;->e:Ldz$a;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ldz$a;

    .line 7
    invoke-direct {v0}, Ldz$a;-><init>()V

    .line 10
    sput-object v0, Ldz$a;->e:Ldz$a;

    .line 12
    :cond_0
    sget-object v0, Ldz$a;->e:Ldz$a;

    .line 14
    return-object v0
.end method


# virtual methods
.method public varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    iget-object v0, p0, Ldz$a;->a:Ljava/util/List;

    .line 6
    new-instance v1, Ldz$a$a;

    .line 8
    invoke-direct {v1, p0, p2, p3, p1}, Ldz$a$a;-><init>(Ldz$a;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {p0}, Ldz$a;->i()V

    .line 17
    return-void
.end method

.method public varargs e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    iget-object v0, p0, Ldz$a;->a:Ljava/util/List;

    .line 6
    new-instance v7, Ldz$a$b;

    .line 8
    move-object v1, v7

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p1

    .line 14
    invoke-direct/range {v1 .. v6}, Ldz$a$b;-><init>(Ldz$a;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Ldz$a;->i()V

    .line 23
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Ldz$a;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 10
    :try_start_0
    iget-object v0, p0, Ldz$a;->a:Ljava/util/List;

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
    goto :goto_0

    .line 22
    :catchall_0
    const-string v0, "tag_auto"

    .line 24
    const-string v1, "log record error"

    .line 26
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Ldz$a;->b:Ljava/lang/Object;

    .line 32
    monitor-enter v0

    .line 33
    const/4 v2, 0x1

    .line 34
    :try_start_1
    iput-boolean v2, p0, Ldz$a;->d:Z

    .line 36
    iget-object v2, p0, Ldz$a;->b:Ljava/lang/Object;

    .line 38
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 41
    iput-boolean v1, p0, Ldz$a;->d:Z

    .line 43
    monitor-exit v0

    .line 44
    :goto_0
    return-void

    .line 45
    :catchall_1
    move-exception v1

    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 47
    throw v1
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ldz$a;->c:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 6
    new-instance v1, Ldz$a$d;

    .line 8
    invoke-direct {v1, p0}, Ldz$a$d;-><init>(Ldz$a;)V

    .line 11
    const-string v2, "LoggerThread"

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Ldz$a;->d:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Ldz$a;->b:Ljava/lang/Object;

    .line 7
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, p0, Ldz$a;->b:Ljava/lang/Object;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 13
    monitor-exit v0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    :catchall_1
    :cond_0
    :goto_0
    return-void
.end method

.method public final j()V
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

.method public varargs k(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v3

    .line 5
    iget-object v7, p0, Ldz$a;->a:Ljava/util/List;

    .line 7
    new-instance v8, Ldz$a$c;

    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move-object v5, p2

    .line 13
    move-object v6, p3

    .line 14
    invoke-direct/range {v0 .. v6}, Ldz$a$c;-><init>(Ldz$a;Ljava/lang/String;JLjava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p0}, Ldz$a;->i()V

    .line 23
    return-void
.end method

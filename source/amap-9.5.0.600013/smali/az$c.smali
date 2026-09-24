.class public Laz$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static e:Laz$c;


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
    iput-object v0, p0, Laz$c;->a:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Laz$c;->b:Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Laz$c;->d:Z

    .line 25
    invoke-virtual {p0}, Laz$c;->h()V

    .line 28
    return-void
.end method

.method public static synthetic a()Laz$c;
    .locals 1

    .line 1
    invoke-static {}, Laz$c;->g()Laz$c;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Laz$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Laz$c;->f()V

    .line 4
    return-void
.end method

.method public static synthetic c(Laz$c;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Laz$c;->j()V

    .line 4
    return-void
.end method

.method public static synthetic d(Laz$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Laz$c;->c:Z

    .line 3
    return p0
.end method

.method public static g()Laz$c;
    .locals 1

    .line 1
    sget-object v0, Laz$c;->e:Laz$c;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Laz$c;

    .line 7
    invoke-direct {v0}, Laz$c;-><init>()V

    .line 10
    sput-object v0, Laz$c;->e:Laz$c;

    .line 12
    :cond_0
    sget-object v0, Laz$c;->e:Laz$c;

    .line 14
    return-object v0
.end method


# virtual methods
.method public varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Laz$c;->a:Ljava/util/List;

    .line 3
    new-instance v1, Laz$c$a;

    .line 5
    invoke-direct {v1, p0, p2, p3, p1}, Laz$c$a;-><init>(Laz$c;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {p0}, Laz$c;->i()V

    .line 14
    return-void
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Laz$c;->a:Ljava/util/List;

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
    iget-object v0, p0, Laz$c;->a:Ljava/util/List;

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
    :cond_0
    iget-object v0, p0, Laz$c;->b:Ljava/lang/Object;

    .line 24
    monitor-enter v0

    .line 25
    const/4 v2, 0x1

    .line 26
    :try_start_1
    iput-boolean v2, p0, Laz$c;->d:Z

    .line 28
    iget-object v2, p0, Laz$c;->b:Ljava/lang/Object;

    .line 30
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 33
    iput-boolean v1, p0, Laz$c;->d:Z

    .line 35
    monitor-exit v0

    .line 36
    :catchall_0
    :goto_0
    return-void

    .line 37
    :catchall_1
    move-exception v1

    .line 38
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 39
    throw v1
.end method

.method public final h()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Laz$c;->c:Z

    .line 4
    new-instance v0, Ljava/lang/Thread;

    .line 6
    new-instance v1, Laz$c$c;

    .line 8
    invoke-direct {v1, p0}, Laz$c$c;-><init>(Laz$c;)V

    .line 11
    const-string v2, "LaunchLoggerThread"

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
    iget-boolean v0, p0, Laz$c;->d:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Laz$c;->b:Ljava/lang/Object;

    .line 7
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    iget-object v1, p0, Laz$c;->b:Ljava/lang/Object;

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
    iget-object v8, p0, Laz$c;->a:Ljava/util/List;

    .line 15
    new-instance v9, Laz$c$b;

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
    invoke-direct/range {v0 .. v7}, Laz$c$b;-><init>(Laz$c;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-virtual {p0}, Laz$c;->i()V

    .line 31
    return-void
.end method

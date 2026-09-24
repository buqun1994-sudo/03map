.class public Lcg0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:I

.field public static final d:I

.field public static final e:Ljava/util/Comparator;


# instance fields
.field public final a:Ljava/util/concurrent/BlockingQueue;

.field public final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 8
    move-result v0

    .line 9
    sput v0, Lcg0;->c:I

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 15
    sput v0, Lcg0;->d:I

    .line 17
    new-instance v0, Lcg0$a;

    .line 19
    invoke-direct {v0}, Lcg0$a;-><init>()V

    .line 22
    sput-object v0, Lcg0;->e:Ljava/util/Comparator;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lfg0;

    const-string v1, "Defalut"

    invoke-direct {v0, v1}, Lfg0;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcg0;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    sget v2, Lcg0;->d:I

    sget-object v0, Lcg0;->e:Ljava/util/Comparator;

    invoke-direct {v6, v2, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    iput-object v6, p0, Lcg0;->a:Ljava/util/concurrent/BlockingQueue;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    sget v1, Lcg0;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v1, "TaskPriorityExecutor"

    const-string v3, "init poolSize:{?} CPU_COUNT:{?} MAXIMUM_POOL_SIZE:{?}"

    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1e

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, v8

    move v1, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcg0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 1
    iget-object v0, p0, Lcg0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    return-object v0
.end method

.method public b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcg0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcg0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    mul-int/lit8 v1, v1, 0x2

    .line 16
    const/4 v3, 0x1

    .line 17
    const/4 v4, 0x0

    .line 18
    if-lt v0, v1, :cond_0

    .line 20
    const/4 v5, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v5, 0x0

    .line 23
    :goto_0
    const/4 v6, 0x3

    .line 24
    new-array v6, v6, [Ljava/lang/Object;

    .line 26
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v7

    .line 30
    aput-object v7, v6, v4

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    move-result-object v0

    .line 36
    aput-object v0, v6, v3

    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v0

    .line 42
    aput-object v0, v6, v2

    .line 44
    const-string v0, "TaskPriorityExecutor"

    .line 46
    const-string v1, "isFull:{?} activeCount:{?} poolSize:{?}"

    .line 48
    invoke-static {v0, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return v5
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const-string v1, "TaskPriorityExecutor"

    .line 9
    const-string v2, "execute runnable:{?} "

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v0, p0, Lcg0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public isShutdown()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcg0;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->isShutdown()Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v3

    .line 15
    aput-object v3, v1, v2

    .line 17
    const-string v2, "TaskPriorityExecutor"

    .line 19
    const-string v3, "isShutdown:{?} "

    .line 21
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return v0
.end method

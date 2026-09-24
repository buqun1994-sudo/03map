.class public Ldv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile c:Ldv;


# instance fields
.field public final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    const/4 v1, 0x5

    .line 7
    const/16 v2, 0xa

    .line 9
    const-wide/16 v3, 0x1

    .line 11
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 13
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 15
    const/16 v0, 0x64

    .line 17
    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 20
    move-object v0, v7

    .line 21
    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 24
    iput-object v7, p0, Ldv;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 26
    return-void
.end method

.method public static a()Ldv;
    .locals 2

    .line 1
    sget-object v0, Ldv;->c:Ldv;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Ldv;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Ldv;->c:Ldv;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Ldv;

    .line 14
    invoke-direct {v1}, Ldv;-><init>()V

    .line 17
    sput-object v1, Ldv;->c:Ldv;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Ldv;->c:Ldv;

    .line 26
    return-object v0
.end method


# virtual methods
.method public b(I)V
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
    const-string p1, "InteractionManager"

    .line 13
    const-string v1, "notifyOnNaviStatusChanged status = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string p1, ":8721"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Ldv;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

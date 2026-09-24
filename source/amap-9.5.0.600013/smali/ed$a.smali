.class public Led$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Led;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Led;


# direct methods
.method public constructor <init>(Led;)V
    .locals 0

    .line 1
    iput-object p1, p0, Led$a;->a:Led;

    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    iget-object v2, p0, Led$a;->a:Led;

    .line 10
    invoke-virtual {v2}, Led;->d()V

    .line 13
    iget-object v2, p0, Led$a;->a:Led;

    .line 15
    invoke-virtual {v2}, Led;->b()Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    monitor-enter v2

    .line 20
    :try_start_0
    iget-object v3, p0, Led$a;->a:Led;

    .line 22
    const/4 v4, 0x1

    .line 23
    invoke-virtual {v3, v4}, Led;->g(Z)V

    .line 26
    iget-object v3, p0, Led$a;->a:Led;

    .line 28
    invoke-virtual {v3}, Led;->b()Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 35
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    const-string v2, "[ALSimulate] BroadcastAssertAnnotationProcessor"

    .line 38
    const-string v3, "InitAnnotationDataThread init annotation data completed,over time is:{?}"

    .line 40
    new-array v4, v4, [Ljava/lang/Object;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 45
    move-result-wide v5

    .line 46
    sub-long/2addr v5, v0

    .line 47
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 50
    move-result-object v0

    .line 51
    const/4 v1, 0x0

    .line 52
    aput-object v0, v4, v1

    .line 54
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    throw v0
.end method

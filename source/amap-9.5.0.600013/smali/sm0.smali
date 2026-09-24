.class public Lsm0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsm0$b;
    }
.end annotation


# static fields
.field public static volatile c:Lsm0;


# instance fields
.field public a:J

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lsm0;->a:J

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    iput-object v0, p0, Lsm0;->b:Ljava/util/Map;

    .line 17
    return-void
.end method

.method public static b()Lsm0;
    .locals 2

    .line 1
    sget-object v0, Lsm0;->c:Lsm0;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lsm0;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lsm0;->c:Lsm0;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lsm0;

    .line 14
    invoke-direct {v1}, Lsm0;-><init>()V

    .line 17
    sput-object v1, Lsm0;->c:Lsm0;

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
    sget-object v0, Lsm0;->c:Lsm0;

    .line 26
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    if-eqz p2, :cond_1

    .line 5
    if-nez p3, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lsm0$b;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Lsm0$b;-><init>(Lsm0$a;)V

    .line 14
    iput-object p1, v0, Lsm0$b;->a:Ljava/lang/String;

    .line 16
    iput-object p2, v0, Lsm0$b;->b:Ljava/lang/String;

    .line 18
    iput-object p3, v0, Lsm0$b;->c:Ljava/lang/String;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide p2

    .line 24
    iput-wide p2, v0, Lsm0$b;->d:J

    .line 26
    iget-object p2, p0, Lsm0;->b:Ljava/util/Map;

    .line 28
    monitor-enter p2

    .line 29
    :try_start_0
    iget-object p3, p0, Lsm0;->b:Ljava/util/Map;

    .line 31
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    monitor-exit p2

    .line 35
    return-void

    .line 36
    :catchall_0
    move-exception p1

    .line 37
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1

    .line 39
    :cond_1
    :goto_0
    return-void
.end method

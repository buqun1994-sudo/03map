.class public Lqe0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqe0;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    const-wide/16 v2, 0x3c

    .line 6
    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v1

    .line 11
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    new-array v2, v0, [Ljava/lang/Object;

    .line 17
    const-string v3, "SpyUtils"

    .line 19
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :goto_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetNetworkTime()J

    .line 25
    move-result-wide v1

    .line 26
    const-wide/16 v3, 0x3e8

    .line 28
    div-long/2addr v1, v3

    .line 29
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeGetGPSTime()J

    .line 32
    move-result-wide v5

    .line 33
    div-long/2addr v5, v3

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v3

    .line 38
    const/4 v7, 0x4

    .line 39
    new-array v7, v7, [Ljava/lang/Object;

    .line 41
    const v8, 0x5f5e186

    .line 44
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v9

    .line 48
    aput-object v9, v7, v0

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x1

    .line 55
    aput-object v0, v7, v1

    .line 57
    const/4 v0, 0x2

    .line 58
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    move-result-object v2

    .line 62
    aput-object v2, v7, v0

    .line 64
    const/4 v0, 0x3

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    move-result-object v2

    .line 69
    aput-object v2, v7, v0

    .line 71
    const-string v0, "[%d][3][%d][%d][%d]"

    .line 73
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    const-string v2, "AUTO_AL"

    .line 79
    invoke-static {v2, v8, v0, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 82
    return-void
.end method

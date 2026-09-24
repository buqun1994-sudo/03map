.class public abstract Lq7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z = false

.field public static b:I = 0x1


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static declared-synchronized a()I
    .locals 12

    .line 1
    const-class v0, Lq7;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Lq7;->a:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    sget v1, Lq7;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    monitor-exit v0

    .line 11
    return v1

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    :try_start_1
    sput-boolean v1, Lq7;->a:Z

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    const/16 v4, 0x64

    .line 21
    const/4 v5, 0x0

    .line 22
    :try_start_2
    invoke-static {}, Lcom/autonavi/amapauto/jni/GAdaAndroid;->nativeStartHook()V

    .line 25
    sput v5, Lq7;->b:I

    .line 27
    const-string v6, "AutoHook"

    .line 29
    const-string v7, "nativeInit initStatus:{?}, initCostMs:{?}"

    .line 31
    const/4 v8, 0x2

    .line 32
    new-array v9, v8, [Ljava/lang/Object;

    .line 34
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v10

    .line 38
    aput-object v10, v9, v5

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 43
    move-result-wide v10

    .line 44
    sub-long/2addr v10, v2

    .line 45
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v9, v1

    .line 51
    invoke-static {v6, v7, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 56
    const-string v3, "[100000364][8][%d][%s][%s][%s][%s][%s][%s][%s]"

    .line 58
    const/16 v6, 0x8

    .line 60
    new-array v6, v6, [Ljava/lang/Object;

    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v7

    .line 66
    aput-object v7, v6, v5

    .line 68
    const-string v7, "inithook"

    .line 70
    aput-object v7, v6, v1

    .line 72
    const-string v1, ""

    .line 74
    aput-object v1, v6, v8

    .line 76
    sget v1, Lq7;->b:I

    .line 78
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    const/4 v7, 0x3

    .line 83
    aput-object v1, v6, v7

    .line 85
    const-string v1, ""

    .line 87
    const/4 v7, 0x4

    .line 88
    aput-object v1, v6, v7

    .line 90
    const-string v1, ""

    .line 92
    const/4 v7, 0x5

    .line 93
    aput-object v1, v6, v7

    .line 95
    const-string v1, ""

    .line 97
    const/4 v7, 0x6

    .line 98
    aput-object v1, v6, v7

    .line 100
    const-string v1, ""

    .line 102
    const/4 v7, 0x7

    .line 103
    aput-object v1, v6, v7

    .line 105
    invoke-static {v2, v3, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    const-string v2, "AUTO_AL"

    .line 111
    const v3, 0x5f5e26c

    .line 114
    invoke-static {v2, v3, v1, v4}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v1

    .line 119
    :try_start_3
    sput v4, Lq7;->b:I

    .line 121
    const-string v2, "AutoHook"

    .line 123
    const-string v3, "init. exception="

    .line 125
    new-array v4, v5, [Ljava/lang/Object;

    .line 127
    invoke-static {v2, v3, v1, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 130
    :goto_0
    sget v1, Lq7;->b:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 132
    monitor-exit v0

    .line 133
    return v1

    .line 134
    :catchall_1
    move-exception v1

    .line 135
    monitor-exit v0

    .line 136
    throw v1
.end method

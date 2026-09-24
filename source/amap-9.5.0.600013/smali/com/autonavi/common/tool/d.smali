.class public Lcom/autonavi/common/tool/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field public static a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field public static volatile b:Z

.field public static volatile c:Ljava/lang/Thread;

.field public static d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/common/tool/d;->c:Ljava/lang/Thread;

    .line 3
    return-object p0
.end method

.method public static b(Landroid/app/Application;)V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    instance-of v0, p0, Lcom/autonavi/common/tool/d;

    .line 9
    if-nez v0, :cond_0

    .line 11
    sput-object p0, Lcom/autonavi/common/tool/d;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 13
    new-instance p0, Lcom/autonavi/common/tool/d;

    .line 15
    invoke-direct {p0}, Lcom/autonavi/common/tool/d;-><init>()V

    .line 18
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 21
    :cond_0
    return-void
.end method

.method public static c()V
    .locals 2

    .line 1
    const-class v0, Lcom/autonavi/common/tool/d;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/autonavi/common/tool/d;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception v1

    .line 11
    goto :goto_1

    .line 12
    :catch_0
    move-exception v1

    .line 13
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    :goto_0
    monitor-exit v0

    .line 17
    return-void

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v1
.end method

.method public static d(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object v0

    .line 7
    const-class v1, Ljava/util/concurrent/TimeoutException;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    const-string v0, "uncaught_ex"

    .line 17
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 31
    move-result-object p1

    .line 32
    if-ne p0, p1, :cond_0

    .line 34
    invoke-static {}, Lcom/autonavi/common/tool/d;->e()V

    .line 37
    :cond_0
    return-void

    .line 38
    :cond_1
    invoke-static {p1}, Lcom/autonavi/common/tool/d;->g(Ljava/lang/Throwable;)Z

    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_2

    .line 44
    return-void

    .line 45
    :cond_2
    invoke-static {}, Lxf0;->m()V

    .line 48
    new-instance v0, Lcom/autonavi/common/tool/d$a;

    .line 50
    invoke-direct {v0, p1, p0}, Lcom/autonavi/common/tool/d$a;-><init>(Ljava/lang/Throwable;Ljava/lang/Thread;)V

    .line 53
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 56
    move-result-object p0

    .line 57
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 64
    move-result-object p1

    .line 65
    if-ne p0, p1, :cond_3

    .line 67
    new-instance p0, Ljava/lang/Thread;

    .line 69
    const-string p1, "CrashTask"

    .line 71
    invoke-direct {p0, v0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 77
    invoke-static {}, Lcom/autonavi/common/tool/d;->e()V

    .line 80
    goto :goto_0

    .line 81
    :cond_3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 84
    :goto_0
    return-void
.end method

.method public static e()V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :goto_0
    invoke-static {}, Llj0;->e()V

    .line 7
    goto :goto_1

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1, v0}, Lcom/autonavi/common/tool/d;->d(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    goto :goto_0

    .line 17
    :goto_1
    return-void

    .line 18
    :catchall_1
    move-exception v0

    .line 19
    invoke-static {}, Llj0;->e()V

    .line 22
    throw v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Thread;Z)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "on Dump end"

    .line 5
    const-string v3, "finish native Exception"

    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-static {v4}, Lcom/autonavi/common/tool/d;->g(Ljava/lang/Throwable;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    return-void

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    const-string v5, "DumpcrashVersion: ndk27.4.0.0.9 begin native exception crashThread: "

    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    if-nez p1, :cond_1

    .line 27
    const-string v5, "null"

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    .line 33
    move-result-object v5

    .line 34
    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lxf0;->m()V

    .line 47
    const/4 v5, 0x1

    .line 48
    const/4 v6, 0x0

    .line 49
    if-nez p1, :cond_2

    .line 51
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 54
    move-result-object v0

    .line 55
    move-object v12, v0

    .line 56
    const/4 v7, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object/from16 v12, p1

    .line 60
    const/4 v7, 0x0

    .line 61
    :goto_1
    if-eqz p2, :cond_3

    .line 63
    move-object v8, v4

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-virtual {v12}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 68
    move-result-object v0

    .line 69
    move-object v8, v0

    .line 70
    :goto_2
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 73
    move-result-object v0

    .line 74
    invoke-interface {v0}, Lbr;->k()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception v0

    .line 79
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v9, "exception info file "

    .line 89
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0}, Lbz;->a(Ljava/lang/String;)V

    .line 102
    new-instance v0, Ljava/io/File;

    .line 104
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lbh;->s()Lbh;

    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v0}, Lbh;->k(Ljava/io/File;)Lbh$f;

    .line 114
    move-result-object v14

    .line 115
    const-string v0, "buildNativeErrorInfoInner"

    .line 117
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 120
    if-eqz v14, :cond_7

    .line 122
    iget-object v1, v14, Lbh$f;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 124
    :try_start_2
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 127
    move-result-object v0

    .line 128
    invoke-interface {v0, v4, v4, v1}, Lbr;->g0(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)Z

    .line 131
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 132
    if-nez v0, :cond_4

    .line 134
    :try_start_3
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 137
    move-result-object v0

    .line 138
    invoke-interface {v0}, Lbr;->z()V

    .line 141
    :goto_4
    invoke-static {v2}, Lbz;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 144
    invoke-static {v3}, Lbz;->a(Ljava/lang/String;)V

    .line 147
    sput-object v4, Lcom/autonavi/common/tool/d;->c:Ljava/lang/Thread;

    .line 149
    return-void

    .line 150
    :catchall_1
    move-exception v0

    .line 151
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 154
    :cond_4
    const-string v0, "onDumpStartEx end"

    .line 156
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 159
    invoke-static {}, Lbh;->s()Lbh;

    .line 162
    move-result-object v0

    .line 163
    invoke-static {}, Lcom/autonavi/common/tool/b;->x()Z

    .line 166
    move-result v9

    .line 167
    if-eqz v9, :cond_6

    .line 169
    if-nez v7, :cond_5

    .line 171
    goto :goto_5

    .line 172
    :cond_5
    const/4 v5, 0x0

    .line 173
    :cond_6
    :goto_5
    invoke-static {v1, v12, v8, v5}, Lcom/autonavi/common/tool/dumpcrash;->collectMoreInfo(Ljava/lang/String;Ljava/lang/Thread;[Ljava/lang/StackTraceElement;Z)Ljava/lang/String;

    .line 176
    move-result-object v8

    .line 177
    const/4 v9, 0x0

    .line 178
    const/4 v10, 0x0

    .line 179
    const/4 v11, 0x0

    .line 180
    const/4 v15, 0x0

    .line 181
    move-object v7, v0

    .line 182
    move/from16 v13, p2

    .line 184
    invoke-virtual/range {v7 .. v15}, Lbh;->L(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;Z)V

    .line 187
    const-string v0, "finish CrashLog.recordCrash"

    .line 189
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 192
    :try_start_5
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 195
    move-result-object v0

    .line 196
    invoke-interface {v0}, Lbr;->z()V

    .line 199
    invoke-static {v2}, Lbz;->d(Ljava/lang/String;)V

    .line 202
    goto :goto_6

    .line 203
    :cond_7
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 206
    move-result-object v0

    .line 207
    invoke-interface {v0}, Lbr;->z()V

    .line 210
    goto :goto_4

    .line 211
    :catchall_2
    move-exception v0

    .line 212
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 215
    move-result-object v1

    .line 216
    invoke-interface {v1}, Lbr;->z()V

    .line 219
    invoke-static {v2}, Lbz;->d(Ljava/lang/String;)V

    .line 222
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 223
    :catchall_3
    :goto_6
    invoke-static {v3}, Lbz;->a(Ljava/lang/String;)V

    .line 226
    sput-object v4, Lcom/autonavi/common/tool/d;->c:Ljava/lang/Thread;

    .line 228
    return-void
.end method

.method public static g(Ljava/lang/Throwable;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Llj0;->a(Ljava/lang/Throwable;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 9
    sget p0, Lcom/autonavi/common/tool/d;->d:I

    .line 11
    const/4 v0, 0x3

    .line 12
    if-le p0, v0, :cond_0

    .line 14
    return v1

    .line 15
    :cond_0
    add-int/2addr p0, v2

    .line 16
    sput p0, Lcom/autonavi/common/tool/d;->d:I

    .line 18
    return v2

    .line 19
    :cond_1
    const-class v0, Lcom/autonavi/common/tool/d;

    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    sget-boolean v3, Lcom/autonavi/common/tool/d;->b:Z

    .line 24
    sget-boolean v4, Lcom/autonavi/common/tool/d;->b:Z

    .line 26
    if-eqz v4, :cond_2

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    sput-boolean v2, Lcom/autonavi/common/tool/d;->b:Z

    .line 31
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    move-result-object v4

    .line 35
    sput-object v4, Lcom/autonavi/common/tool/d;->c:Ljava/lang/Thread;

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eqz v3, :cond_7

    .line 40
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_3

    .line 46
    const-string v0, "CrashAgain"

    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v2}, Ljava/lang/Thread;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {v0, v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 59
    :cond_3
    sget-object v0, Lcom/autonavi/common/tool/d;->c:Ljava/lang/Thread;

    .line 61
    if-eqz v0, :cond_4

    .line 63
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 66
    move-result-object v0

    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 74
    move-result-object v2

    .line 75
    if-ne v0, v2, :cond_4

    .line 77
    invoke-static {}, Lcom/autonavi/common/tool/d;->e()V

    .line 80
    return v1

    .line 81
    :cond_4
    sget-object v0, Lcom/autonavi/common/tool/d;->c:Ljava/lang/Thread;

    .line 83
    if-nez v0, :cond_5

    .line 85
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 88
    move-result-object v0

    .line 89
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 96
    move-result-object v2

    .line 97
    if-ne v0, v2, :cond_5

    .line 99
    invoke-static {}, Llj0;->e()V

    .line 102
    return v1

    .line 103
    :cond_5
    if-nez p0, :cond_6

    .line 105
    invoke-static {}, Lcom/autonavi/common/tool/d;->c()V

    .line 108
    :cond_6
    return v1

    .line 109
    :cond_7
    return v2

    .line 110
    :catchall_0
    move-exception p0

    .line 111
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    throw p0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/autonavi/common/tool/d;->d(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 4
    return-void
.end method

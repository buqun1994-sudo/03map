.class public Lcom/autonavi/core/network/util/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/util/Logger$ILogger;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x3

.field public static final ERROR:I = 0x6

.field public static final INFO:I = 0x4

.field public static final VERBOSE:I = 0x2

.field public static final WARN:I = 0x5

.field private static sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger; = null

.field private static sLogLevel:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/autonavi/core/network/util/Logger$ILogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    const/4 v1, 0x6

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/autonavi/core/network/util/Logger$ILogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    const/4 v1, 0x4

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/autonavi/core/network/util/Logger$ILogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static isLogEnable(I)Z
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    if-lt p0, v0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    return-void
.end method

.method public static declared-synchronized setLogger(Lcom/autonavi/core/network/util/Logger$ILogger;)V
    .locals 2

    .line 1
    const-class v0, Lcom/autonavi/core/network/util/Logger;

    .line 3
    monitor-enter v0

    .line 4
    if-eqz p0, :cond_0

    .line 6
    :try_start_0
    sget-object v1, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;

    .line 8
    if-nez v1, :cond_0

    .line 10
    sput-object p0, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0

    .line 16
    :cond_0
    :goto_0
    monitor-exit v0

    .line 17
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    const/4 v1, 0x2

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/autonavi/core/network/util/Logger$ILogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lcom/autonavi/core/network/util/Logger;->sLogLevel:I

    .line 3
    const/4 v1, 0x5

    .line 4
    if-le v0, v1, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/autonavi/core/network/util/Logger;->sDelegateLogger:Lcom/autonavi/core/network/util/Logger$ILogger;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-interface {v0, p0, p1}, Lcom/autonavi/core/network/util/Logger$ILogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    return-void
.end method

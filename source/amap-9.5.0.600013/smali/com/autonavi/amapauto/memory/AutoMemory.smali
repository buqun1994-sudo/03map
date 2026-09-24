.class public Lcom/autonavi/amapauto/memory/AutoMemory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessMemoryInfo()Lcom/autonavi/amapauto/memory/ProcessMemoryInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/memory/ProcessMemoryInfo;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/memory/ProcessMemoryInfo;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 10
    move-result v2

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v3

    .line 19
    const-string v4, "activity"

    .line 21
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/app/ActivityManager;

    .line 27
    if-eqz v3, :cond_0

    .line 29
    filled-new-array {v2}, [I

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v3, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    .line 36
    move-result-object v2

    .line 37
    aget-object v2, v2, v1

    .line 39
    invoke-virtual {v2}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 42
    move-result v2

    .line 43
    iput v2, v0, Lcom/autonavi/amapauto/memory/ProcessMemoryInfo;->totalPrivateDirty:I

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iput v1, v0, Lcom/autonavi/amapauto/memory/ProcessMemoryInfo;->totalPrivateDirty:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v2

    .line 50
    const-string v3, "getProcessMemeryInfo Exception:"

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    const-string v4, "AutoMemory"

    .line 56
    invoke-static {v4, v3, v2, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 59
    :goto_0
    return-object v0
.end method

.method public static getSystemMemoryInfo()Lcom/autonavi/amapauto/memory/SystemMemoryInfo;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/memory/SystemMemoryInfo;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/memory/SystemMemoryInfo;-><init>()V

    .line 6
    invoke-static {}, Lrv;->H()Lrv;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "activity"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/app/ActivityManager;

    .line 22
    new-instance v2, Landroid/app/ActivityManager$MemoryInfo;

    .line 24
    invoke-direct {v2}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 27
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 32
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 34
    iput-wide v3, v0, Lcom/autonavi/amapauto/memory/SystemMemoryInfo;->totalSize:J

    .line 36
    iget-wide v3, v2, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 38
    iput-wide v3, v0, Lcom/autonavi/amapauto/memory/SystemMemoryInfo;->availSize:J

    .line 40
    iget-wide v1, v2, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 42
    iput-wide v1, v0, Lcom/autonavi/amapauto/memory/SystemMemoryInfo;->lowThresholdSize:J

    .line 44
    :cond_0
    return-object v0
.end method

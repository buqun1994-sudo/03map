.class public Lcom/dingtalk/mars/comm/WakerLock;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "bifrost.WakerLock"


# instance fields
.field private wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 7
    const-string v0, "bifrost.WakerLock"

    .line 9
    if-nez p1, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 14
    move-result-object p1

    .line 15
    :cond_0
    const-string v1, "power"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Landroid/os/PowerManager;

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-virtual {p1, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    const-string v1, "WakerLock error"

    .line 38
    invoke-static {v0, v1, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :goto_0
    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/dingtalk/mars/comm/WakerLock;->unLock()V

    .line 4
    return-void
.end method

.method public isLocking()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public lock()V
    .locals 3

    .line 5
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwchmng()Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;->enableBifrostUseWakeLock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    return-void

    .line 7
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "bifrost.WakerLock"

    const-string v2, "WakerLock acquire error"

    .line 8
    invoke-static {v1, v2, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public lock(J)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->getSwchmng()Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;->enableBifrostUseWakeLock()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "bifrost.WakerLock"

    const-string v0, "WakerLock acquire error"

    .line 4
    invoke-static {p2, v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unLock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/dingtalk/mars/comm/WakerLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 17
    :cond_1
    return-void
.end method

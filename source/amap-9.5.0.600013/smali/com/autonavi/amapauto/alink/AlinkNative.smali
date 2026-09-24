.class public Lcom/autonavi/amapauto/alink/AlinkNative;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALINK_LOG_DIRNAME:Ljava/lang/String; = "Alink"

.field private static mAlinkState:I = 0x1


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

.method public static asyncProbe(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AlinkNative"

    .line 9
    const-string v2, "asyncProbe serviceType = {?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->asyncProbe(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public static createDirPath(Ljava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 17
    move-result p0

    .line 18
    if-nez p0, :cond_2

    .line 20
    new-instance p0, Ljava/io/File;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    move-result-wide v4

    .line 38
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 51
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 54
    move-result p0

    .line 55
    if-eqz p0, :cond_0

    .line 57
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/utils/FileUtils;->createFile(Ljava/io/File;Z)V

    .line 60
    const/4 v1, 0x1

    .line 61
    :cond_0
    move v2, v1

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/utils/FileUtils;->createFile(Ljava/io/File;Z)V

    .line 66
    :cond_2
    :goto_0
    return v2
.end method

.method public static getAlinkLogPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->e()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "Alink"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public static getAlinkState()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/amapauto/alink/AlinkNative;->mAlinkState:I

    .line 3
    return v0
.end method

.method public static native nativeNotifyRunningState(I)V
.end method

.method public static notifyState(I)V
    .locals 0

    .line 1
    sput p0, Lcom/autonavi/amapauto/alink/AlinkNative;->mAlinkState:I

    .line 3
    invoke-static {p0}, Lcom/autonavi/amapauto/alink/AlinkNative;->nativeNotifyRunningState(I)V

    .line 6
    return-void
.end method

.method public static native onEventReceived(Lcom/autonavi/amapauto/alink/data/ServiceNameData;)I
.end method

.method public static sendCommandToAlink(I)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, "AlinkNative"

    .line 13
    const-string v4, "sendCommandToAlink command = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eqz p0, :cond_5

    .line 20
    if-eq p0, v0, :cond_4

    .line 22
    const/4 v1, 0x2

    .line 23
    if-eq p0, v1, :cond_3

    .line 25
    const/4 v0, 0x3

    .line 26
    if-eq p0, v0, :cond_2

    .line 28
    const/4 v0, 0x4

    .line 29
    if-eq p0, v0, :cond_1

    .line 31
    const/4 v0, 0x5

    .line 32
    if-eq p0, v0, :cond_0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 42
    move-result-object p0

    .line 43
    invoke-interface {p0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->disConnectCamera()V

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 54
    move-result-object p0

    .line 55
    invoke-interface {p0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->connectCamera()V

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->uninit()V

    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0, v0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->updateProjectionStatus(I)V

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 86
    move-result-object p0

    .line 87
    invoke-interface {p0, v3}, Lcom/autonavi/amapauto/alink/IAlinkClient;->updateProjectionStatus(I)V

    .line 90
    goto :goto_0

    .line 91
    :cond_5
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 94
    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->initAlinkClient()V

    .line 98
    :goto_0
    return-void
.end method

.method public static sendConnect(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "AlinkNative"

    .line 16
    const-string v2, "sendConnect deviceId={?},isConnect={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p0, p1}, Lcom/autonavi/amapauto/alink/IAlinkClient;->sendConnect(Ljava/lang/String;Z)Z

    .line 32
    return-void
.end method

.method public static startWithWifiP2P(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AlinkNative"

    .line 9
    const-string v2, "startWithWifiP2P macAddress={?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getInstance()Lcom/autonavi/amapauto/alink/AlinkClientManager;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/autonavi/amapauto/alink/AlinkClientManager;->getAlinkClient()Lcom/autonavi/amapauto/alink/IAlinkClient;

    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p0}, Lcom/autonavi/amapauto/alink/IAlinkClient;->startWithWifiP2P(Ljava/lang/String;)V

    .line 25
    return-void
.end method

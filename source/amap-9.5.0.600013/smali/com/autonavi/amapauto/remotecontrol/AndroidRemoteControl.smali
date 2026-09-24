.class public Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidRemoteControl"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static activeConnectBluetooth(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->b(Ljava/lang/String;)V

    .line 8
    return-void
.end method

.method public static addBluetoothConnectChangeListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->c()V

    .line 8
    return-void
.end method

.method public static addWifiConnectChangeListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->d()V

    .line 8
    return-void
.end method

.method public static destoryRemoteControl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->e()V

    .line 8
    return-void
.end method

.method public static getBluetoothAdapterAddress()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->f()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static native getLoginUserNickName()Ljava/lang/String;
.end method

.method public static getTrafficCount(I)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidRemoteControl"

    .line 13
    const-string v2, "[getTrafficCount] type = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 21
    invoke-static {p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->i(I)J

    .line 24
    move-result-wide v0

    .line 25
    return-wide v0
.end method

.method public static getWifiDirectDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->j()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getWifiDirectFeatureCode()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->k()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getWifiDirectState()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidRemoteControl"

    .line 6
    const-string v2, "[getWifiDirectState]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 14
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->l()I

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public static initBluetoothServer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->n()V

    .line 8
    return-void
.end method

.method public static initHttpServer(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->o(I)V

    .line 8
    return-void
.end method

.method public static initRemoteControl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->m()V

    .line 8
    return-void
.end method

.method public static initWifiServer()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->q()V

    .line 8
    return-void
.end method

.method public static isBluetoothAdapterEnabled()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->r()Z

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public static isInBluetoothParied(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->s(Ljava/lang/String;)Z

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static isLinkNetDevice()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidRemoteControl"

    .line 6
    const-string v2, "[isLinkNetDevice]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 14
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->t()Z

    .line 17
    move-result v0

    .line 18
    return v0
.end method

.method public static isSysBluetoothConnected()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidRemoteControl"

    .line 6
    const-string v3, "[isSysBluetoothConnected]"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v1

    .line 15
    const/16 v3, 0x2722

    .line 17
    invoke-virtual {v1, v3}, Lse;->getBooleanValue(I)Z

    .line 20
    move-result v1

    .line 21
    const/4 v3, 0x1

    .line 22
    new-array v4, v3, [Ljava/lang/Object;

    .line 24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 27
    move-result-object v5

    .line 28
    aput-object v5, v4, v0

    .line 30
    const-string v5, "[isSysBluetoothConnected]isSupportGetContactsWhenBtDisconnect:{?}"

    .line 32
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-nez v1, :cond_0

    .line 37
    invoke-static {}, Lse;->c()Lse;

    .line 40
    move-result-object v1

    .line 41
    const/16 v4, 0x2723

    .line 43
    invoke-virtual {v1, v4}, Lse;->getBooleanValue(I)Z

    .line 46
    move-result v1

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 52
    move-result-object v4

    .line 53
    aput-object v4, v3, v0

    .line 55
    const-string v0, "[isSysBluetoothConnected]isBluetoothConnected:{?}"

    .line 57
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v1

    .line 61
    :cond_0
    return v3
.end method

.method public static netProxyState(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidRemoteControl"

    .line 13
    const-string v2, "[netProxyState] state = {?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 21
    invoke-static {p0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->u(I)V

    .line 24
    return-void
.end method

.method public static native notifyBluetoothConnectChange(ILjava/lang/String;Ljava/lang/String;)V
.end method

.method public static native notifyLinkWifiChange(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native notifySystemBluetoothChange(I)V
.end method

.method public static native notifySystemWifiChange(I)V
.end method

.method public static native onHttpResponse(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)Lcom/autonavi/amapauto/remotecontrol/RemoteControlResponse;
.end method

.method public static openBluetooth()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->v()V

    .line 8
    return-void
.end method

.method public static registerSystemBluetoothReceiver()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->w()V

    .line 8
    return-void
.end method

.method public static registerSystemWifiReceiver()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->p()V

    .line 8
    return-void
.end method

.method public static removeBluetoothConnectChangeListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->x()V

    .line 8
    return-void
.end method

.method public static removeWifiConnectChangeListener()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->y()V

    .line 8
    return-void
.end method

.method public static stopBluetoothLink()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->z()V

    .line 8
    return-void
.end method

.method public static stopWifiLink()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->A()V

    .line 8
    return-void
.end method

.method public static unRegisterSystemBluetoothReceiver()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->B()V

    .line 8
    return-void
.end method

.method public static unRegisterSystemWifiReceiver()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->C()V

    .line 8
    return-void
.end method

.method public static wifiDirectConnectConfirm(ILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object p1, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p2, v0, v1

    .line 17
    const/4 v1, 0x3

    .line 18
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v2

    .line 22
    aput-object v2, v0, v1

    .line 24
    const-string v1, "AndroidRemoteControl"

    .line 26
    const-string v2, "operate = {?},arg1 = {?},arg2 = {?},arg3 = {?}"

    .line 28
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->D(ILjava/lang/String;Ljava/lang/String;Z)V

    .line 38
    return-void
.end method

.class public Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BluetoothReceiver"
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    .line 1
    const-string p1, "RemoteControlManager"

    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 6
    const-string p2, "[RemoteControlManager] BluetoothReceiver intent=null"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x2

    .line 23
    new-array v4, v3, [Ljava/lang/Object;

    .line 25
    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 28
    move-result-object v5

    .line 29
    aput-object v5, v4, v0

    .line 31
    const/4 v5, 0x1

    .line 32
    aput-object v2, v4, v5

    .line 34
    const-string v6, "[RemoteControlManager] BluetoothReceiver intent={?}, action={?}"

    .line 36
    invoke-static {p1, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-string v4, "android.bluetooth.device.action.ACL_CONNECTED"

    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v4

    .line 45
    const-string v6, "[RemoteControlManager] BluetoothReceiver"

    .line 47
    const-string v7, ""

    .line 49
    const-string v8, "android.bluetooth.device.extra.DEVICE"

    .line 51
    if-eqz v4, :cond_2

    .line 53
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    move-result-object p2

    .line 57
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 59
    if-eqz p2, :cond_1

    .line 61
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 64
    move-result-object v7

    .line 65
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, " ACTION_ACL_CONNECTED"

    .line 78
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p2

    .line 85
    new-array v1, v0, [Ljava/lang/Object;

    .line 87
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 93
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 99
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 105
    if-eqz p2, :cond_3

    .line 107
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    .line 110
    move-result-object v7

    .line 111
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    const-string v1, " ACTION_ACL_DISCONNECTED"

    .line 124
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p2

    .line 131
    new-array v1, v0, [Ljava/lang/Object;

    .line 133
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    const/4 v3, 0x0

    .line 137
    goto :goto_0

    .line 138
    :cond_4
    if-eqz v1, :cond_5

    .line 140
    const-string p2, "android.bluetooth.adapter.extra.STATE"

    .line 142
    invoke-virtual {v1, p2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 145
    move-result v3

    .line 146
    iget-object p2, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 148
    invoke-static {p2}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)Landroid/os/Handler;

    .line 151
    move-result-object p2

    .line 152
    if-eqz p2, :cond_6

    .line 154
    iget-object p2, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 156
    invoke-static {p2}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)Landroid/os/Handler;

    .line 159
    move-result-object p2

    .line 160
    const/16 v1, 0x3ea

    .line 162
    invoke-virtual {p2, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 165
    move-result p2

    .line 166
    if-eqz p2, :cond_6

    .line 168
    const/16 p2, 0xc

    .line 170
    if-ne v3, p2, :cond_6

    .line 172
    iget-object p2, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$BluetoothReceiver;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 174
    invoke-static {p2}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->a(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)Landroid/os/Handler;

    .line 177
    move-result-object p2

    .line 178
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    const-string p2, "[RemoteControlManager] BluetoothReceiver removeMessages WHAT_BT_CHECK_TIMEOUT"

    .line 183
    new-array v1, v0, [Ljava/lang/Object;

    .line 185
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    goto :goto_0

    .line 189
    :cond_5
    const/4 v3, -0x1

    .line 190
    :cond_6
    :goto_0
    new-array p2, v5, [Ljava/lang/Object;

    .line 192
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    move-result-object v1

    .line 196
    aput-object v1, p2, v0

    .line 198
    const-string v0, "[RemoteControlManager] BluetoothReceiver onReceive:{?}"

    .line 200
    invoke-static {p1, v0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    invoke-static {v3}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifySystemBluetoothChange(I)V

    .line 206
    return-void
.end method

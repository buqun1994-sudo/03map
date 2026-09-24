.class public Lyc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lyc$a;

    .line 6
    invoke-direct {v0, p0}, Lyc$a;-><init>(Lyc;)V

    .line 9
    iput-object v0, p0, Lyc;->a:Landroid/content/BroadcastReceiver;

    .line 11
    return-void
.end method

.method public static synthetic a(Lyc;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lyc;->e(Landroid/content/Context;)V

    .line 4
    return-void
.end method


# virtual methods
.method public final b(IIII)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const v2, 0x5f5e101

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v1, v4

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p1

    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object p1, v1, v3

    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p2

    .line 28
    aput-object p2, v1, p1

    .line 30
    const/4 p1, 0x3

    .line 31
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p2

    .line 35
    aput-object p2, v1, p1

    .line 37
    const/4 p1, 0x4

    .line 38
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p2

    .line 42
    aput-object p2, v1, p1

    .line 44
    const-string p1, "[%s][4][%d][%d][%d][%d]"

    .line 46
    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    move-result-object p1

    .line 50
    new-array p2, v3, [Ljava/lang/Object;

    .line 52
    aput-object p1, p2, v4

    .line 54
    const-string p3, "BluetoothInfoCollection"

    .line 56
    const-string p4, "collectionInfo = {?}"

    .line 58
    invoke-static {p3, p4, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const-string p2, "AUTO_CONNECT"

    .line 63
    invoke-static {p2, v2, p1, v3}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 66
    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lyc;->a:Landroid/content/BroadcastReceiver;

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    :catch_0
    return-void
.end method

.method public d(Landroid/content/Context;)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "android.hardware.bluetooth"

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-nez v0, :cond_1

    .line 17
    invoke-virtual {p0, v1, v1, v1, v1}, Lyc;->b(IIII)V

    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_2

    .line 27
    const-string v0, "bluetooth"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 35
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 38
    move-result-object v0

    .line 39
    if-nez v0, :cond_2

    .line 41
    invoke-virtual {p0, v1, v1, v1, v1}, Lyc;->b(IIII)V

    .line 44
    return-void

    .line 45
    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_6

    .line 51
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 57
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 60
    move-result v0

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x0

    .line 63
    :goto_0
    invoke-static {}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->g()Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;->f()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v3

    .line 75
    const/4 v4, 0x1

    .line 76
    if-nez v3, :cond_4

    .line 78
    const-string v3, "02:00:00:00:00:00"

    .line 80
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 83
    move-result v2

    .line 84
    if-nez v2, :cond_4

    .line 86
    const/4 v2, 0x1

    .line 87
    goto :goto_1

    .line 88
    :cond_4
    const/4 v2, 0x0

    .line 89
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 92
    move-result-object p1

    .line 93
    const-string v3, "android.hardware.bluetooth_le"

    .line 95
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_5

    .line 101
    const/4 v1, 0x1

    .line 102
    :cond_5
    invoke-virtual {p0, v4, v0, v1, v2}, Lyc;->b(IIII)V

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    invoke-virtual {p0, p1}, Lyc;->c(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    :goto_2
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lyc;->a:Landroid/content/BroadcastReceiver;

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    return-void
.end method

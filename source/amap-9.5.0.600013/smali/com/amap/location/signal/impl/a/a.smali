.class public Lcom/amap/location/signal/impl/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/signal/impl/a/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;

.field private h:Landroid/bluetooth/BluetoothAdapter;

.field private i:Landroid/bluetooth/le/BluetoothLeScanner;

.field private j:Landroid/content/IntentFilter;

.field private k:Lcom/amap/location/support/handler/AmapHandler;

.field private l:Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;

.field private m:Lcom/amap/location/signal/impl/a/a$a;

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "mix"

    .line 6
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/a;->a:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->b:Ljava/util/Map;

    .line 15
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 20
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->c:Ljava/util/List;

    .line 22
    new-instance v1, Landroid/content/IntentFilter;

    .line 24
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 27
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->j:Landroid/content/IntentFilter;

    .line 29
    new-instance v1, Lcom/amap/location/signal/impl/a/a$a;

    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-direct {v1, p0, v2}, Lcom/amap/location/signal/impl/a/a$a;-><init>(Lcom/amap/location/signal/impl/a/a;Lcom/amap/location/signal/impl/a/a$1;)V

    .line 35
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 37
    new-instance v1, Lcom/amap/location/signal/impl/a/a$1;

    .line 39
    invoke-direct {v1, p0}, Lcom/amap/location/signal/impl/a/a$1;-><init>(Lcom/amap/location/signal/impl/a/a;)V

    .line 42
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->n:Landroid/content/BroadcastReceiver;

    .line 44
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 47
    move-result-object v1

    .line 48
    new-instance v3, Lorg/json/JSONObject;

    .line 50
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 53
    const-string v4, "indoorconfig"

    .line 55
    invoke-virtual {v1, v4, v3}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 58
    move-result-object v1

    .line 59
    const-string v3, "ble_str"

    .line 61
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/a;->a:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->j:Landroid/content/IntentFilter;

    .line 69
    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 71
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->j:Landroid/content/IntentFilter;

    .line 76
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->j:Landroid/content/IntentFilter;

    .line 83
    const-string v1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 85
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 95
    move-result-object v1

    .line 96
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 99
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/a;->k:Lcom/amap/location/support/handler/AmapHandler;

    .line 102
    return-void
.end method

.method private a(Landroid/bluetooth/le/ScanResult;)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/le/ScanResult;I)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/bluetooth/le/ScanResult;I)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;
    .locals 7

    .line 30
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v0

    .line 31
    invoke-virtual {p1}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 32
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/a;->a(Landroid/bluetooth/le/ScanRecord;)[B

    move-result-object v6

    if-nez v6, :cond_0

    .line 33
    new-instance v0, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;

    invoke-direct {v0}, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    invoke-direct {v0}, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;-><init>()V

    :goto_0
    move-object v1, p0

    move-object v3, v0

    move v4, p2

    move-object v5, p1

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;ILandroid/bluetooth/le/ScanResult;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    const-string p2, "sysblueprd"

    .line 35
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/a;Landroid/bluetooth/le/ScanResult;)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/le/ScanResult;)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/a;Landroid/bluetooth/le/ScanResult;I)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/le/ScanResult;I)Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;ILandroid/bluetooth/le/ScanResult;[B)V
    .locals 5

    if-eqz p1, :cond_d

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    if-eqz p4, :cond_1

    .line 36
    :try_start_0
    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 37
    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getTimestampNanos()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    iput-wide v0, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->systemTickTime:J

    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->systemTickTime:J

    :goto_0
    if-eqz p3, :cond_2

    .line 39
    iput p3, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->rssi:I

    .line 40
    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amap/location/support/util/MacUtils;->macToLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mac:J

    .line 41
    instance-of p3, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    if-eqz p3, :cond_5

    const/16 p1, 0xa

    .line 42
    iput p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->type:I

    if-eqz p4, :cond_3

    .line 43
    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 44
    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->name:Ljava/lang/String;

    :cond_3
    if-eqz p5, :cond_4

    .line 45
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    invoke-static {p5}, Lcom/amap/location/signal/impl/util/a;->b([B)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->uuid:Ljava/lang/String;

    .line 46
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    invoke-static {p5}, Lcom/amap/location/signal/impl/util/a;->e([B)I

    move-result p3

    iput p3, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->major:I

    .line 47
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    invoke-static {p5}, Lcom/amap/location/signal/impl/util/a;->d([B)I

    move-result p3

    iput p3, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->minor:I

    .line 48
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    invoke-static {p5}, Lcom/amap/location/signal/impl/util/a;->c([B)I

    move-result p3

    iput p3, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;->txPower:I

    .line 49
    :cond_4
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    iget p1, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;->txPower:I

    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->rssi:I

    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/a;->a(I)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 50
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    move-object p3, p2

    check-cast p3, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    iget p3, p3, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;->txPower:I

    iget p2, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->rssi:I

    invoke-static {p3, p2}, Lcom/amap/location/signal/impl/util/a;->a(II)D

    move-result-wide p2

    iput-wide p2, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->distance:D

    goto/16 :goto_3

    .line 51
    :cond_5
    instance-of p3, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;

    if-eqz p3, :cond_8

    if-eqz p4, :cond_d

    .line 52
    iget p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->rssi:I

    if-nez p1, :cond_6

    .line 53
    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result p1

    iput p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->rssi:I

    .line 54
    :cond_6
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_7

    .line 55
    move-object p1, p2

    check-cast p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;

    invoke-static {p4}, Lto0;->a(Landroid/bluetooth/le/ScanResult;)I

    move-result p3

    iput p3, p1, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;->txPower:I

    .line 56
    :cond_7
    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 57
    check-cast p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;

    invoke-virtual {p4}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object p1

    iput-object p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothBLE;->bytes:[B

    goto :goto_3

    .line 58
    :cond_8
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1f

    const/4 p5, 0x1

    if-ge p3, p4, :cond_a

    const-string p3, "android.permission.BLUETOOTH"

    invoke-static {p3}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_9

    goto :goto_1

    :cond_9
    const/4 p3, 0x0

    goto :goto_2

    :cond_a
    :goto_1
    const/4 p3, 0x1

    :goto_2
    if-eqz p3, :cond_d

    .line 59
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->e()Z

    move-result p3

    if-eqz p3, :cond_d

    .line 60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p3

    .line 61
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->name:Ljava/lang/String;

    .line 62
    iput p3, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->type:I

    .line 63
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p3

    if-eqz p3, :cond_b

    .line 64
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result p4

    iput p4, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mainDeviceType:I

    .line 65
    invoke-virtual {p3}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p3

    iput p3, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->subDeviceType:I

    .line 66
    :cond_b
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    iput-boolean p1, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->connected:Z

    .line 67
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    .line 68
    iget-wide v0, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mac:J

    iget-wide p3, p3, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mac:J

    cmp-long v2, v0, p3

    if-nez v2, :cond_c

    .line 69
    iput-boolean p5, p2, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->bonded:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "sysblueprd"

    .line 70
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_3
    return-void
.end method

.method private declared-synchronized a(Landroid/content/Intent;)V
    .locals 2

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->k:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    .line 18
    new-instance v1, Lcom/amap/location/signal/impl/a/a$2;

    invoke-direct {v1, p0, p1}, Lcom/amap/location/signal/impl/a/a$2;-><init>(Lcom/amap/location/signal/impl/a/a;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/a;Landroid/bluetooth/BluetoothDevice;Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;ILandroid/bluetooth/le/ScanResult;[B)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;ILandroid/bluetooth/le/ScanResult;[B)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/a;Landroid/content/Intent;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 20
    :try_start_0
    iget-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->f:Z

    if-nez p1, :cond_2

    .line 21
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p1, v0, :cond_0

    .line 22
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->n:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->j:Landroid/content/IntentFilter;

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Ler0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->n:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->j:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->f:Z

    goto :goto_1

    .line 25
    :cond_1
    iget-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->f:Z

    if-eqz p1, :cond_2

    .line 26
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "sysblueprd"

    .line 28
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private declared-synchronized a()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 8
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 9
    monitor-exit p0

    return v0

    .line 10
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const/4 v1, 0x1

    .line 11
    invoke-direct {p0, v1}, Lcom/amap/location/signal/impl/a/a;->a(Z)V

    .line 12
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 13
    iput-boolean v1, p0, Lcom/amap/location/signal/impl/a/a;->d:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "sysblueprd"

    .line 15
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method private a(I)Z
    .locals 1

    .line 1
    const/16 v0, -0x7f

    if-lt p1, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4

    const/4 v0, 0x0

    .line 71
    :try_start_0
    const-class v1, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "isConnected"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 73
    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 74
    instance-of v1, p1, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 75
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "sysblueprd"

    .line 76
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/a;)Z
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->e()Z

    move-result p0

    return p0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/a;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->e:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/signal/impl/a/a;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/a;->b:Ljava/util/Map;

    return-object p0
.end method

.method private declared-synchronized b()Z
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Lcom/amap/location/signal/impl/a/a;->a(Z)V

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/a;->d:Z

    .line 6
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "sysblueprd"

    .line 8
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public static synthetic c(Lcom/amap/location/signal/impl/a/a;)Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/a;->l:Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;

    return-object p0
.end method

.method private c()Z
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->d()Z

    move-result v0

    const-string v1, "sysblueprd"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "no scan permission"

    .line 3
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->f()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "no loc permission"

    .line 5
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/a;->isBluetoothOn()Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic d(Lcom/amap/location/signal/impl/a/a;)Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/a;->i:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object p0
.end method

.method private d()Z
    .locals 3

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.BLUETOOTH_SCAN"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_0
    const-string v0, "android.permission.BLUETOOTH"

    .line 4
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const-string v0, "android.permission.BLUETOOTH_ADMIN"

    .line 5
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private e()Z
    .locals 2

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic e(Lcom/amap/location/signal/impl/a/a;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/amap/location/signal/impl/a/a;)Lcom/amap/location/signal/impl/a/a$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    return-object p0
.end method

.method private f()Z
    .locals 1

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 2
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized g()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->g:Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->b:Ljava/util/Map;

    .line 8
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 11
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->b:Ljava/util/Map;

    .line 18
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :try_start_1
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->g:Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;

    .line 27
    const/4 v2, 0x1

    .line 28
    invoke-interface {v1, v2, v0}, Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;->onBluetoothChanged(ILjava/util/List;)V

    .line 31
    const/4 v1, 0x2

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v3

    .line 38
    const/4 v4, 0x0

    .line 39
    aput-object v3, v1, v4

    .line 41
    aput-object v0, v1, v2

    .line 43
    const-wide/16 v2, 0x20

    .line 45
    invoke-static {v2, v3, v1}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendSignal(J[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_2
    const-string v1, "sysblueprd"

    .line 52
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 55
    :cond_0
    :goto_0
    monitor-exit p0

    .line 56
    return-void

    .line 57
    :catchall_0
    move-exception v0

    .line 58
    monitor-exit p0

    .line 59
    throw v0
.end method


# virtual methods
.method public addBluetoothChangedListener(Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/a;->g:Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;

    .line 3
    const/4 p1, 0x1

    .line 4
    return p1
.end method

.method public declared-synchronized getBondBluetooth()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->e()Z

    .line 12
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    if-nez v0, :cond_0

    .line 15
    monitor-exit p0

    .line 16
    return-object v1

    .line 17
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 22
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    .line 24
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    .line 27
    move-result-object v2

    .line 28
    invoke-interface {v2}, Ljava/util/Set;->size()I

    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_1

    .line 34
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v2

    .line 38
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 44
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 48
    move-object v5, v3

    .line 49
    check-cast v5, Landroid/bluetooth/BluetoothDevice;

    .line 51
    new-instance v3, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    .line 53
    invoke-direct {v3}, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;-><init>()V

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    move-object v4, p0

    .line 60
    move-object v6, v3

    .line 61
    invoke-direct/range {v4 .. v9}, Lcom/amap/location/signal/impl/a/a;->a(Landroid/bluetooth/BluetoothDevice;Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;ILandroid/bluetooth/le/ScanResult;[B)V

    .line 64
    const/4 v4, 0x1

    .line 65
    iput-boolean v4, v3, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->bonded:Z

    .line 67
    iget-wide v4, v3, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mac:J

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    move-result-object v4

    .line 73
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    goto :goto_0

    .line 77
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 79
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 82
    move-result-object v0

    .line 83
    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    monitor-exit p0

    .line 87
    return-object v2

    .line 88
    :catch_0
    move-exception v0

    .line 89
    :try_start_2
    const-string v2, "sysblueprd"

    .line 91
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    monitor-exit p0

    .line 95
    return-object v1

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    monitor-exit p0

    .line 98
    throw v0
.end method

.method public getClassicBluetoothNow(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/location/signal/impl/a/a$a;->c(I)Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getIBeaconNow(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->a:Ljava/lang/String;

    .line 3
    const-string v1, "mix"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 13
    invoke-virtual {v0, p1}, Lcom/amap/location/signal/impl/a/a$a;->b(I)Ljava/util/List;

    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 20
    invoke-virtual {v0, p1}, Lcom/amap/location/signal/impl/a/a$a;->a(I)Ljava/util/List;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public hasBluetoothPermission()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->d()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isBluetoothEnable()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public isBluetoothOn()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    .line 4
    if-nez v1, :cond_0

    .line 6
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    .line 14
    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 19
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    if-eqz v1, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    :catchall_0
    :cond_1
    return v0
.end method

.method public isSupportBle()Z
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.hardware.bluetooth_le"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 10
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const-string v1, "sysblueprd"

    .line 15
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    return v0
.end method

.method public removeBluetoothChangedListener(Lcom/amap/location/support/signal/bluetooth/AmapBluetoothListener;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/a;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/4 p1, 0x1

    .line 6
    return p1

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "sysblueprd"

    .line 10
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    return p1
.end method

.method public removeIBeaconUpdate(Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;)Z
    .locals 3

    .line 1
    const-string p1, "sysblueprd"

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    const-string v1, "remove ibeacon"

    .line 6
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/a;->isSupportBle()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->i:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 24
    if-eqz v1, :cond_1

    .line 26
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 28
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 31
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/a;->e:Z

    .line 33
    :cond_1
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 35
    invoke-static {v1}, Lcom/amap/location/signal/impl/a/a$a;->b(Lcom/amap/location/signal/impl/a/a$a;)V

    .line 38
    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lcom/amap/location/signal/impl/a/a;->l:Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_2
    :goto_0
    const-string v1, "iBeacon not ready"

    .line 45
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-static {p1, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 53
    return v0
.end method

.method public requestIBeaconUpdate(Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 4

    .line 1
    const-string p2, "sysblueprd"

    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    const-string v1, "req ibeacon"

    .line 6
    invoke-static {p2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->c()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/a;->isSupportBle()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/a;->l:Lcom/amap/location/support/signal/bluetooth/AmapIBeaconListener;

    .line 24
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->i:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 26
    if-nez p1, :cond_1

    .line 28
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->h:Landroid/bluetooth/BluetoothAdapter;

    .line 30
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/a;->i:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->i:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 38
    if-eqz p1, :cond_3

    .line 40
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 42
    invoke-static {p1}, Lcom/amap/location/signal/impl/a/a$a;->a(Lcom/amap/location/signal/impl/a/a$a;)V

    .line 45
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->i:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 47
    new-instance v1, Landroid/bluetooth/le/ScanSettings$Builder;

    .line 49
    invoke-direct {v1}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 52
    const/4 v2, 0x2

    .line 53
    invoke-virtual {v1, v2}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/a;->m:Lcom/amap/location/signal/impl/a/a$a;

    .line 63
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p1, v3, v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    .line 67
    const/4 p1, 0x1

    .line 68
    iput-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->e:Z

    .line 70
    return p1

    .line 71
    :cond_2
    :goto_0
    const-string p1, "iBeacon not ready"

    .line 73
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    return v0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_3
    return v0
.end method

.method public declared-synchronized startScan(I)Z
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "sysblueprd"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v2, "startScan:"

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v2, ","

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v2, p0, Lcom/amap/location/signal/impl/a/a;->d:Z

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ","

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-boolean v2, p0, Lcom/amap/location/signal/impl/a/a;->e:Z

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    const/4 v0, 0x0

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eq p1, v1, :cond_0

    .line 48
    monitor-exit p0

    .line 49
    return v0

    .line 50
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->d:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    if-eqz p1, :cond_1

    .line 54
    monitor-exit p0

    .line 55
    return v1

    .line 56
    :cond_1
    :try_start_2
    iget-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->e:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    if-eqz p1, :cond_2

    .line 60
    monitor-exit p0

    .line 61
    return v0

    .line 62
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/a;->c:Ljava/util/List;

    .line 64
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 67
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/a;->getBondBluetooth()Ljava/util/List;

    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_3

    .line 73
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 76
    move-result v0

    .line 77
    if-lez v0, :cond_3

    .line 79
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a;->c:Ljava/util/List;

    .line 81
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    goto :goto_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    :try_start_4
    const-string v0, "sysblueprd"

    .line 88
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 91
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->a()Z

    .line 94
    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 95
    monitor-exit p0

    .line 96
    return p1

    .line 97
    :catchall_0
    move-exception p1

    .line 98
    monitor-exit p0

    .line 99
    throw p1
.end method

.method public stopScan(I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "stopScan:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, ","

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-boolean v1, p0, Lcom/amap/location/signal/impl/a/a;->d:Z

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v1, "sysblueprd"

    .line 30
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    .line 34
    if-eq p1, v0, :cond_0

    .line 36
    const/4 p1, 0x0

    .line 37
    return p1

    .line 38
    :cond_0
    iget-boolean p1, p0, Lcom/amap/location/signal/impl/a/a;->d:Z

    .line 40
    if-nez p1, :cond_1

    .line 42
    return v0

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->b()Z

    .line 46
    move-result p1

    .line 47
    invoke-direct {p0}, Lcom/amap/location/signal/impl/a/a;->g()V

    .line 50
    return p1
.end method

.class Lcom/amap/location/signal/impl/a/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/signal/impl/a/a;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/amap/location/signal/impl/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/signal/impl/a/a;Landroid/content/Intent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/a$2;->b:Lcom/amap/location/signal/impl/a/a;

    .line 3
    iput-object p2, p0, Lcom/amap/location/signal/impl/a/a$2;->a:Landroid/content/Intent;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a$2;->a:Landroid/content/Intent;

    .line 3
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 9
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a$2;->a:Landroid/content/Intent;

    .line 17
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 22
    move-result-object v0

    .line 23
    move-object v2, v0

    .line 24
    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 26
    if-eqz v2, :cond_3

    .line 28
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a$2;->b:Lcom/amap/location/signal/impl/a/a;

    .line 30
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/a;->a(Lcom/amap/location/signal/impl/a/a;)Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getType()I

    .line 39
    move-result v0

    .line 40
    const/4 v1, 0x1

    .line 41
    if-eq v0, v1, :cond_0

    .line 43
    const/4 v1, 0x3

    .line 44
    if-ne v0, v1, :cond_3

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a$2;->a:Landroid/content/Intent;

    .line 48
    const-string v1, "android.bluetooth.device.extra.RSSI"

    .line 50
    const/16 v3, 0x7f

    .line 52
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    .line 55
    move-result v4

    .line 56
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 66
    return-void

    .line 67
    :cond_1
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/amap/location/support/util/MacUtils;->macToLong(Ljava/lang/String;)J

    .line 74
    move-result-wide v7

    .line 75
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/a$2;->b:Lcom/amap/location/signal/impl/a/a;

    .line 77
    invoke-static {v0}, Lcom/amap/location/signal/impl/a/a;->b(Lcom/amap/location/signal/impl/a/a;)Ljava/util/Map;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    .line 91
    if-nez v0, :cond_2

    .line 93
    new-instance v0, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    .line 95
    invoke-direct {v0}, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;-><init>()V

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a$2;->b:Lcom/amap/location/signal/impl/a/a;

    .line 100
    const/4 v5, 0x0

    .line 101
    const/4 v6, 0x0

    .line 102
    move-object v3, v0

    .line 103
    invoke-static/range {v1 .. v6}, Lcom/amap/location/signal/impl/a/a;->a(Lcom/amap/location/signal/impl/a/a;Landroid/bluetooth/BluetoothDevice;Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;ILandroid/bluetooth/le/ScanResult;[B)V

    .line 106
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/a$2;->b:Lcom/amap/location/signal/impl/a/a;

    .line 108
    invoke-static {v1}, Lcom/amap/location/signal/impl/a/a;->b(Lcom/amap/location/signal/impl/a/a;)Ljava/util/Map;

    .line 111
    move-result-object v1

    .line 112
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    move-result-object v2

    .line 116
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    const-string v1, "sysblueprd"

    .line 123
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    :cond_3
    :goto_0
    return-void
.end method

.class public Lcom/autonavi/link/transmit/impl/BluetoothConnection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/link/transmit/inter/Connection;


# static fields
.field private static final MAX_SEND_BUF:I = 0x200


# instance fields
.field private final bluetoothSocket:Landroid/bluetooth/BluetoothSocket;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothSocket;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 6
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read([BII)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    .line 10
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 p1, -0x1

    .line 13
    :goto_0
    return p1
.end method

.method public write([BII)I
    .locals 4

    .line 1
    const/16 v0, 0x200

    .line 3
    if-le p3, v0, :cond_1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    sub-int v2, p3, v1

    .line 8
    if-le v2, v0, :cond_0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 12
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 15
    move-result-object v2

    .line 16
    add-int v3, p2, v1

    .line 18
    invoke-virtual {v2, p1, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 21
    add-int/lit16 v1, v1, 0x200

    .line 23
    const-wide/16 v2, 0x2

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 31
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 34
    move-result-object v0

    .line 35
    add-int/2addr p2, v1

    .line 36
    invoke-virtual {v0, p1, p2, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    iget-object v0, p0, Lcom/autonavi/link/transmit/impl/BluetoothConnection;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    .line 42
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_1
    return p3

    .line 50
    :catch_0
    const/4 p1, -0x1

    .line 51
    return p1
.end method

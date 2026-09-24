.class Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/link/transmit/inter/LinkProxyError;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;


# direct methods
.method public constructor <init>(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread$1;->this$1:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onError(I)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v2, "mLinkProxyError onError:"

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    new-array v2, v2, [Ljava/lang/Object;

    .line 25
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread$1;->this$1:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;

    .line 30
    iget-object v0, v0, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService$AcceptThread;->i:Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;

    .line 32
    invoke-static {v0}, Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;->c(Lcom/autonavi/link/connect/bluetooth/BluetoothSppService;)Landroid/os/Handler;

    .line 35
    move-result-object v0

    .line 36
    const/4 v1, 0x2

    .line 37
    const/4 v2, -0x1

    .line 38
    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 45
    const/4 p1, 0x1

    .line 46
    return p1
.end method

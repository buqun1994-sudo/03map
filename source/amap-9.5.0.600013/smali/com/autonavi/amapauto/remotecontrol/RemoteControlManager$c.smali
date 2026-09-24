.class public Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$c;->a:Ljava/lang/ref/WeakReference;

    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$c;->a:Ljava/lang/ref/WeakReference;

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/bluetooth/BluetoothAdapter;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 15
    move-result-object v2

    .line 16
    const/16 v3, 0x2727

    .line 18
    invoke-virtual {v2, v3}, Lse;->getBooleanValue(I)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    invoke-static {}, Lse;->c()Lse;

    .line 27
    move-result-object v0

    .line 28
    const/16 v2, 0x2729

    .line 30
    invoke-virtual {v0, v2}, Lse;->getBooleanValue(I)Z

    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 38
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    const-string v2, "Exception"

    .line 43
    new-array v3, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, v0, v3}, Lcz;->b(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    const/4 v2, 0x1

    .line 50
    new-array v2, v2, [Ljava/lang/Object;

    .line 52
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    move-result-object v3

    .line 56
    aput-object v3, v2, v1

    .line 58
    const-string v3, "RemoteControlManager"

    .line 60
    const-string v4, "[RemoteControlMainFragment] openBluetooth mAdapter.enable():{?}"

    .line 62
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    if-nez v0, :cond_1

    .line 67
    const-string v0, "[RemoteControlMainFragment] openBluetooth mAdapter enabled false"

    .line 69
    new-array v1, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/16 v0, 0xa

    .line 76
    invoke-static {v0}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifySystemBluetoothChange(I)V

    .line 79
    :cond_1
    return-void
.end method

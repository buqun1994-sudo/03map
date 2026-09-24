.class public Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$a;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "RemoteControlManager"

    .line 6
    const-string v3, "[RemoteControlManager][mHandler]enter handleMessage"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 14
    const/4 v1, 0x1

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    iget v3, p1, Landroid/os/Message;->what:I

    .line 19
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v3

    .line 23
    aput-object v3, v1, v0

    .line 25
    const-string v0, "[RemoteControlManager] handleMessage what:{?}"

    .line 27
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget p1, p1, Landroid/os/Message;->what:I

    .line 32
    const/16 v0, 0x3e8

    .line 34
    if-eq p1, v0, :cond_0

    .line 36
    const/16 v0, 0x3ea

    .line 38
    if-eq p1, v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 p1, 0xa

    .line 43
    invoke-static {p1}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifySystemBluetoothChange(I)V

    .line 46
    :goto_0
    return-void
.end method

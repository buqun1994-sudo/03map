.class public Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$b;
.super Landroid/content/BroadcastReceiver;
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
.method public constructor <init>(Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager$b;->a:Lcom/autonavi/amapauto/remotecontrol/RemoteControlManager;

    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    const/4 p2, 0x1

    .line 9
    new-array v0, p2, [Ljava/lang/Object;

    .line 11
    const/4 v1, 0x0

    .line 12
    aput-object p1, v0, v1

    .line 14
    const-string v1, "RemoteControlManager"

    .line 16
    const-string v2, "[RemoteControlManager] myNetReceiver action == {?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    invoke-static {p2}, Lcom/autonavi/amapauto/remotecontrol/AndroidRemoteControl;->notifySystemWifiChange(I)V

    .line 32
    :cond_1
    return-void
.end method

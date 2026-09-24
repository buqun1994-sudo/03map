.class Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/common/imageloader/Dispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkBroadcastReceiver"
.end annotation


# static fields
.field static final EXTRA_AIRPLANE_STATE:Ljava/lang/String; = "state"


# instance fields
.field private final dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;


# direct methods
.method public constructor <init>(Lcom/autonavi/common/imageloader/Dispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 16
    const-string p1, "state"

    .line 18
    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 31
    move-result p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchAirplaneModeChange(Z)V

    .line 35
    goto :goto_0

    .line 36
    :cond_2
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_4

    .line 44
    const-string p2, "connectivity"

    .line 46
    invoke-static {p1, p2}, Lcom/autonavi/common/imageloader/Utils;->getService(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 52
    if-nez p1, :cond_3

    .line 54
    return-void

    .line 55
    :cond_3
    iget-object p2, p0, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 57
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p2, p1}, Lcom/autonavi/common/imageloader/Dispatcher;->dispatchNetworkStateChange(Landroid/net/NetworkInfo;)V

    .line 64
    :cond_4
    :goto_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 13
    iget-boolean v1, v1, Lcom/autonavi/common/imageloader/Dispatcher;->scansNetworkChanges:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 19
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 24
    iget-object v1, v1, Lcom/autonavi/common/imageloader/Dispatcher;->context:Landroid/content/Context;

    .line 26
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 29
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/common/imageloader/Dispatcher$NetworkBroadcastReceiver;->dispatcher:Lcom/autonavi/common/imageloader/Dispatcher;

    .line 3
    iget-object v0, v0, Lcom/autonavi/common/imageloader/Dispatcher;->context:Landroid/content/Context;

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    return-void
.end method

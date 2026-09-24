.class public Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    const/4 v1, 0x0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 17
    const-string v2, "ChannelCustomReceiver"

    .line 19
    const-string v3, "[destroy]unregisterReceiver"

    .line 21
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 24
    :goto_0
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 3
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 6
    invoke-static {}, Lse;->c()Lse;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lse;->a()Leq;

    .line 13
    move-result-object v1

    .line 14
    instance-of v2, v1, Lbc;

    .line 16
    if-eqz v2, :cond_1

    .line 18
    check-cast v1, Lbc;

    .line 20
    invoke-virtual {v1}, Lbc;->getDynamicReceiverActionList()Ljava/util/List;

    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 29
    move-result v2

    .line 30
    if-lez v2, :cond_1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object v1

    .line 36
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Ljava/lang/String;

    .line 48
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v3

    .line 52
    if-nez v3, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/16 v1, 0x3e8

    .line 60
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 63
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    const/4 v2, 0x0

    .line 80
    aput-object v0, v1, v2

    .line 82
    const-string v0, "ChannelCustomReceiver"

    .line 84
    const-string v2, "Exception"

    .line 86
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "ChannelCustomReceiver"

    .line 4
    if-eqz p1, :cond_1

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v2, 0x1

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 15
    move-result-object v3

    .line 16
    aput-object v3, v2, v0

    .line 18
    const-string v0, "intent:{?}"

    .line 20
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lse;->c()Lse;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1, p2}, Lse;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 30
    return-void

    .line 31
    :cond_1
    :goto_0
    const-string p1, "[onReceive] context== null || intent == null."

    .line 33
    new-array p2, v0, [Ljava/lang/Object;

    .line 35
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    return-void
.end method

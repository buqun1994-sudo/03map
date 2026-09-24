.class public Lcom/autonavi/amapauto/adapter/internal/AmapAutoBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const-string v0, "[standardReceiver] AmapAutoBroadcastReceiver"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoBroadcastReceiver;->a:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "[standardReceiver] AmapAutoBroadcastReceiver"

    .line 4
    if-eqz p1, :cond_3

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_2

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    move-result-object v2

    .line 13
    iput-object v2, p0, Lcom/autonavi/amapauto/adapter/internal/AmapAutoBroadcastReceiver;->b:Landroid/content/Context;

    .line 15
    const/4 v2, 0x1

    .line 16
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 21
    move-result-object v3

    .line 22
    aput-object v3, v2, v0

    .line 24
    const-string v0, "AmapAutoBroadcastReceiver receiveClientRequest intent:{?}"

    .line 26
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 41
    const-string v1, "com.autonavi.amapauto.receiver_test"

    .line 43
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-static {}, Lse;->c()Lse;

    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, p1, p2}, Lse;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    :goto_0
    invoke-static {}, Ll30;->g()Ll30;

    .line 61
    move-result-object p1

    .line 62
    const/16 v0, 0x14d

    .line 64
    invoke-virtual {p1, v0}, Ll30;->b(I)Loc;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1, p2}, Loc;->k(Ljava/lang/Object;)V

    .line 71
    :goto_1
    return-void

    .line 72
    :cond_3
    :goto_2
    const-string p1, "[onReceive] context== null || intent == null."

    .line 74
    new-array p2, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

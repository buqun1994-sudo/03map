.class public Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const-string v0, "TimeBroadcastReceiver"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;->a:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    invoke-static {}, Ldh0;->b()I

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Ldh0;->a()Ljava/lang/String;

    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v1, v2, v3

    .line 15
    const/4 v3, 0x1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v4

    .line 20
    aput-object v4, v2, v3

    .line 22
    const-string v3, "TimeBroadcastReceiver"

    .line 24
    const-string v4, "notifyAL time={?}; type={?}"

    .line 26
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-static {v1, v0}, Lcom/autonavi/amapauto/settings/AndroidSystemSetting;->notifyTimeChange(Ljava/lang/String;I)V

    .line 32
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    const-string v0, "TimeBroadcastReceiver"

    .line 4
    if-nez p2, :cond_0

    .line 6
    const-string p2, "[onReceive] intent == null"

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 17
    move-result-object p2

    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    aput-object p2, v1, p1

    .line 23
    const-string p1, "onReceive action={\uff1f}"

    .line 25
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    const-string p1, "android.intent.action.TIME_SET"

    .line 35
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 41
    invoke-virtual {p0}, Lcom/autonavi/amapauto/settings/TimeBroadcastReceiver;->a()V

    .line 44
    :cond_1
    return-void
.end method

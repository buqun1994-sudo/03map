.class public static Lfloatapp/trafficlight/CruiseTrafficLightVoice$SpeedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_0

    const-string v2, "KEY_TYPE"

    const/4 p0, -0x1

    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x2711

    if-ne v0, v2, :cond_0

    const-string v2, "CUR_SPEED"

    const/4 p0, 0x0

    invoke-virtual {p2, v2, p0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lfloatapp/trafficlight/CruiseTrafficLightVoice;->updateCurrentSpeed(I)V

    :cond_0
    return-void
.end method

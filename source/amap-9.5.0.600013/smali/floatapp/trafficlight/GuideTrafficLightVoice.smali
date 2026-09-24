.class public Lfloatapp/trafficlight/GuideTrafficLightVoice;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final AUTONAVI_STANDARD_BROADCAST_SEND:Ljava/lang/String; = "AUTONAVI_STANDARD_BROADCAST_SEND"

.field private static final KEY_TYPE:Ljava/lang/String; = "KEY_TYPE"

.field private static final TAG:Ljava/lang/String; = "GuideTrafficLightVoice"

.field private static final TYPE_SPEED_INFO:I = 0x2711

.field private static final TYPE_TRAFFIC_LIGHT:I = 0xeaa9

.field private static volatile currentSpeed:I = -0x1

.field private static lastAnnouncementKey:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_SEND"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lfloatapp/trafficlight/GuideTrafficLightVoice;

    invoke-direct {v1}, Lfloatapp/trafficlight/GuideTrafficLightVoice;-><init>()V

    iput-object p0, v1, Lfloatapp/trafficlight/GuideTrafficLightVoice;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static playTrafficLightAnnouncement(Landroid/content/Context;II)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    const-string v1, "\u5de6\u8f6c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    const-string v1, "\u53f3\u8f6c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    const-string v1, "\u76f4\u884c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    const-string v1, "\u8c03\u5934"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const-string v1, "\u5373\u5c06\u7eff\u706f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    const-string v1, "\u5373\u5c06\u7ea2\u706f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lfloatapp/trafficlight/GuideTrafficLightVoice;->lastAnnouncementKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    sput-object v1, Lfloatapp/trafficlight/GuideTrafficLightVoice;->lastAnnouncementKey:Ljava/lang/String;

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v3

    iget-boolean v3, v3, Lfloatapp/tts/ttsService;->f:Z

    if-nez v3, :cond_5

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lfloatapp/tts/ttsService;->d(Landroid/content/Context;)V

    :cond_5
    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfloatapp/tts/ttsService;->e(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static playTrafficLightAnnouncementWithRemaining(Landroid/content/Context;III)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    if-ne p2, v1, :cond_3

    const-string v1, "\u5de6\u8f6c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    const-string v1, "\u7ea2\u706f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    const-string v1, "\u5269\u4f59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u79d2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lfloatapp/trafficlight/GuideTrafficLightVoice;->lastAnnouncementKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sput-object v1, Lfloatapp/trafficlight/GuideTrafficLightVoice;->lastAnnouncementKey:Ljava/lang/String;

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v3

    iget-boolean v3, v3, Lfloatapp/tts/ttsService;->f:Z

    if-nez v3, :cond_1

    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v3

    invoke-virtual {v3, p0}, Lfloatapp/tts/ttsService;->d(Landroid/content/Context;)V

    :cond_1
    invoke-static {}, Lfloatapp/tts/ttsService;->c()Lfloatapp/tts/ttsService;

    move-result-object v3

    invoke-virtual {v3, v1}, Lfloatapp/tts/ttsService;->e(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v1, 0x2

    if-ne p2, v1, :cond_4

    const-string v1, "\u53f3\u8f6c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    const/4 v1, 0x4

    if-ne p2, v1, :cond_5

    const-string v1, "\u76f4\u884c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    const-string v1, "\u8c03\u5934"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const-string v1, "\u7eff\u706f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/16 v8, 0x3f

    const/16 v7, 0x21

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/4 v4, 0x0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "KEY_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x2711

    if-eq v0, v3, :cond_2

    const v3, 0xeaa9

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_2
    const-string v3, "CUR_SPEED"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sput v3, Lfloatapp/trafficlight/GuideTrafficLightVoice;->currentSpeed:I

    goto :goto_0

    :cond_3
    const-string v3, "trafficLightStatus"

    const/4 v0, -0x1

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "dir"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "redLightCountDownSeconds"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    sget v0, Lfloatapp/trafficlight/GuideTrafficLightVoice;->currentSpeed:I

    const/16 v4, 0x6e

    if-le v0, v4, :cond_4

    goto :goto_0

    :cond_4
    const/16 v0, 0xa

    if-gt v3, v0, :cond_5

    if-lez v3, :cond_5

    const/4 v0, 0x5

    if-ne v3, v0, :cond_0

    invoke-static {p1, v2, v1}, Lfloatapp/trafficlight/GuideTrafficLightVoice;->playTrafficLightAnnouncement(Landroid/content/Context;II)V

    goto :goto_0

    :cond_5
    const/16 v0, 0xb

    if-lt v3, v0, :cond_6

    const/16 v0, 0x28

    if-gt v3, v0, :cond_6

    if-ne v3, v7, :cond_0

    const/16 v0, 0x1e

    invoke-static {p1, v2, v1, v0}, Lfloatapp/trafficlight/GuideTrafficLightVoice;->playTrafficLightAnnouncementWithRemaining(Landroid/content/Context;III)V

    goto :goto_0

    :cond_6
    goto :goto_0
.end method

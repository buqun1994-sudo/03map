.class public Lcom/autonavi/amapauto/audio/VolumeChangeReceiver;
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
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 1
    const/4 p1, 0x0

    .line 2
    const-string v0, "VolumeChangeReceiver"

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
    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 26
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    .line 28
    const/4 v2, 0x1

    .line 29
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 32
    move-result v1

    .line 33
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    .line 35
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 38
    move-result p2

    .line 39
    invoke-static {}, Lo6;->j()Lo6;

    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3}, Lo6;->m()I

    .line 46
    move-result v3

    .line 47
    const/4 v4, 0x2

    .line 48
    new-array v4, v4, [Ljava/lang/Object;

    .line 50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v4, p1

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v5

    .line 60
    aput-object v5, v4, v2

    .line 62
    const-string v5, "onReceive naviStreamType:{?}  streamType:{?}"

    .line 64
    invoke-static {v0, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-eq v1, v3, :cond_1

    .line 69
    return-void

    .line 70
    :cond_1
    new-array v1, v2, [Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v3

    .line 76
    aput-object v3, v1, p1

    .line 78
    const-string v3, "VolumeChangeReceiver streamVolume = "

    .line 80
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    new-array v1, v2, [Ljava/lang/Object;

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    move-result-object v2

    .line 89
    aput-object v2, v1, p1

    .line 91
    const-string p1, " onReceive volume change to:{?}"

    .line 93
    invoke-static {v0, p1, v1}, Lza;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lo6;->j()Lo6;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {}, Lse;->c()Lse;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, p2}, Lse;->getCustomChannelVolume(I)I

    .line 107
    move-result v0

    .line 108
    invoke-virtual {p1, v0}, Lo6;->y(I)V

    .line 111
    if-nez p2, :cond_2

    .line 113
    invoke-static {}, Li6;->p()V

    .line 116
    :cond_2
    return-void
.end method

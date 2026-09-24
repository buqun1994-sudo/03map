.class public abstract Lxc0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/net/Uri;)Lcom/autonavi/amapauto/user/Send2CarMessage;
    .locals 13

    .line 1
    const-string v0, "lon"

    .line 3
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "lat"

    .line 9
    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "messageId"

    .line 15
    invoke-virtual {p0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    const/4 v3, 0x3

    .line 20
    new-array v4, v3, [Ljava/lang/Object;

    .line 22
    const/4 v5, 0x0

    .line 23
    aput-object v0, v4, v5

    .line 25
    const/4 v6, 0x1

    .line 26
    aput-object v1, v4, v6

    .line 28
    const/4 v7, 0x2

    .line 29
    aput-object v2, v4, v7

    .line 31
    const-string v8, "Send2CarUtils"

    .line 33
    const-string v9, "converUri lat:{?};name:{?};messageid:{?}"

    .line 35
    invoke-static {v8, v9, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const-wide/16 v9, 0x0

    .line 40
    invoke-static {v0, v9, v10}, Lah;->j(Ljava/lang/String;D)D

    .line 43
    move-result-wide v11

    .line 44
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 47
    move-result-object v0

    .line 48
    invoke-static {v1, v9, v10}, Lah;->j(Ljava/lang/String;D)D

    .line 51
    move-result-wide v9

    .line 52
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 55
    move-result-object v1

    .line 56
    const-wide/16 v9, 0x0

    .line 58
    invoke-static {v2, v9, v10}, Lah;->l(Ljava/lang/String;J)J

    .line 61
    move-result-wide v9

    .line 62
    new-instance v2, Lcom/autonavi/amapauto/user/Send2CarMessage;

    .line 64
    invoke-direct {v2}, Lcom/autonavi/amapauto/user/Send2CarMessage;-><init>()V

    .line 67
    const-string v4, "name"

    .line 69
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    move-result-object v4

    .line 73
    iput-object v4, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->name:Ljava/lang/String;

    .line 75
    const-string v4, "address"

    .line 77
    invoke-virtual {p0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v4

    .line 81
    iput-object v4, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->address:Ljava/lang/String;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    .line 86
    move-result-wide v11

    .line 87
    iput-wide v11, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->lon:D

    .line 89
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    .line 92
    move-result-wide v0

    .line 93
    iput-wide v0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->lat:D

    .line 95
    iput-wide v9, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->messageId:J

    .line 97
    const-string v0, "bizType"

    .line 99
    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    iput-object p0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->bizType:Ljava/lang/String;

    .line 105
    const/4 p0, 0x6

    .line 106
    new-array p0, p0, [Ljava/lang/Object;

    .line 108
    iget-object v0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->name:Ljava/lang/String;

    .line 110
    aput-object v0, p0, v5

    .line 112
    iget-object v0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->address:Ljava/lang/String;

    .line 114
    aput-object v0, p0, v6

    .line 116
    iget-wide v0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->lon:D

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 121
    move-result-object v0

    .line 122
    aput-object v0, p0, v7

    .line 124
    iget-wide v0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->lat:D

    .line 126
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 129
    move-result-object v0

    .line 130
    aput-object v0, p0, v3

    .line 132
    iget-wide v0, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->messageId:J

    .line 134
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 137
    move-result-object v0

    .line 138
    const/4 v1, 0x4

    .line 139
    aput-object v0, p0, v1

    .line 141
    const/4 v0, 0x5

    .line 142
    iget-object v1, v2, Lcom/autonavi/amapauto/user/Send2CarMessage;->bizType:Ljava/lang/String;

    .line 144
    aput-object v1, p0, v0

    .line 146
    const-string v0, "converUri end message.name:{?};message.address:{?};message.lon:{?};message.lat:{?};message.messageId:{?};message.bizType:{?}"

    .line 148
    invoke-static {v8, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    return-object v2
.end method

.method public static b(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "notification"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    const/16 v2, 0x1a

    .line 23
    if-lt v1, v2, :cond_1

    .line 25
    invoke-static {}, Lq6;->a()V

    .line 28
    const/4 v1, 0x0

    .line 29
    if-eqz p1, :cond_0

    .line 31
    const/4 p1, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-static {p0, p0, p1}, Ly6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 37
    move-result-object p0

    .line 38
    invoke-static {p0, v1}, Ls6;->a(Landroid/app/NotificationChannel;Z)V

    .line 41
    invoke-static {p0, v1}, Lt6;->a(Landroid/app/NotificationChannel;Z)V

    .line 44
    invoke-static {p0, v1}, Lu6;->a(Landroid/app/NotificationChannel;Z)V

    .line 47
    invoke-static {v0, p0}, Lw6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 50
    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 7

    .line 1
    new-instance v0, Lr30;

    .line 3
    invoke-direct {v0, p0}, Lr30;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lr30;->f(Z)Lr30;

    .line 10
    invoke-virtual {v0, p1}, Lr30;->i(Ljava/lang/CharSequence;)Lr30;

    .line 13
    invoke-virtual {v0, p2}, Lr30;->o(Ljava/lang/CharSequence;)Lr30;

    .line 16
    invoke-virtual {v0, p2}, Lr30;->h(Ljava/lang/CharSequence;)Lr30;

    .line 19
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 21
    invoke-static {}, Lta0;->c()Landroid/content/res/Resources;

    .line 24
    move-result-object v3

    .line 25
    invoke-static {}, Lrv;->H()Lrv;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lrv;->G()I

    .line 32
    move-result v4

    .line 33
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Lr30;->l(Landroid/graphics/Bitmap;)Lr30;

    .line 40
    sget v3, Lt80;->s:I

    .line 42
    invoke-virtual {v0, v3}, Lr30;->n(I)Lr30;

    .line 45
    const/4 v3, -0x1

    .line 46
    invoke-virtual {v0, v3}, Lr30;->j(I)Lr30;

    .line 49
    new-instance v3, Landroid/content/Intent;

    .line 51
    const-string v4, "android.intent.action.VIEW"

    .line 53
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v4

    .line 60
    const/4 v5, 0x0

    .line 61
    if-nez v4, :cond_1

    .line 63
    const-string v4, "androidauto"

    .line 65
    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result v4

    .line 69
    if-nez v4, :cond_0

    .line 71
    const-string v4, "amapauto"

    .line 73
    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v4

    .line 77
    if-eqz v4, :cond_1

    .line 79
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    move-result-object v4

    .line 83
    const-string v6, "com.autonavi.amapauto.MainMapActivity"

    .line 85
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/high16 v4, 0x10000000

    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 93
    const-string v4, "key_caller"

    .line 95
    const-string v6, "value_caller_push"

    .line 97
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    const-string v4, "key_message_id"

    .line 102
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string p3, "key_task_id"

    .line 107
    invoke-virtual {v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string p3, "key_message"

    .line 112
    invoke-virtual {v3, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string p2, "key_title"

    .line 117
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 127
    new-array p1, v1, [Ljava/lang/Object;

    .line 129
    aput-object p5, p1, v5

    .line 131
    const-string p2, "Send2CarUtils"

    .line 133
    const-string p3, "getNotifaction actionUri:{?}"

    .line 135
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_1
    const/16 p1, 0x1f

    .line 140
    if-lt v2, p1, :cond_2

    .line 142
    const/high16 p1, 0xc000000

    .line 144
    goto :goto_0

    .line 145
    :cond_2
    const/high16 p1, 0x8000000

    .line 147
    :goto_0
    invoke-static {p0, v5, v3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 150
    move-result-object p0

    .line 151
    invoke-virtual {v0, p0}, Lr30;->g(Landroid/app/PendingIntent;)Lr30;

    .line 154
    invoke-virtual {v0}, Lr30;->b()Landroid/app/Notification;

    .line 157
    move-result-object p0

    .line 158
    return-object p0
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 7

    .line 1
    const-string v0, "AutoBackgroundService"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lxc0;->b(Ljava/lang/String;Z)V

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v3, 0x1a

    .line 11
    if-lt v2, v3, :cond_3

    .line 13
    invoke-static {p0, v0}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 20
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 23
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 26
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 29
    invoke-static {}, Lta0;->c()Landroid/content/res/Resources;

    .line 32
    move-result-object v3

    .line 33
    invoke-static {}, Lrv;->H()Lrv;

    .line 36
    move-result-object v4

    .line 37
    invoke-virtual {v4}, Lrv;->G()I

    .line 40
    move-result v4

    .line 41
    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 48
    sget v3, Lt80;->s:I

    .line 50
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 53
    const/4 v3, -0x1

    .line 54
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 57
    new-instance v3, Landroid/content/Intent;

    .line 59
    const-string v4, "android.intent.action.VIEW"

    .line 61
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x0

    .line 69
    if-nez v4, :cond_1

    .line 71
    const-string v4, "androidauto"

    .line 73
    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_0

    .line 79
    const-string v4, "amapauto"

    .line 81
    invoke-virtual {p5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 84
    move-result v4

    .line 85
    if-eqz v4, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 90
    move-result-object v4

    .line 91
    const-string v6, "com.autonavi.amapauto.MainMapActivity"

    .line 93
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 96
    const/high16 v4, 0x10000000

    .line 98
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 101
    const-string v4, "key_caller"

    .line 103
    const-string v6, "value_caller_push"

    .line 105
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v4, "key_message_id"

    .line 110
    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string p3, "key_task_id"

    .line 115
    invoke-virtual {v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const-string p3, "key_message"

    .line 120
    invoke-virtual {v3, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string p2, "key_title"

    .line 125
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v3, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 135
    new-array p1, v1, [Ljava/lang/Object;

    .line 137
    aput-object p5, p1, v5

    .line 139
    const-string p2, "Send2CarUtils"

    .line 141
    const-string p3, "getNotifaction_SDK26 actionUri:{?}"

    .line 143
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    :cond_1
    const/16 p1, 0x1f

    .line 148
    if-lt v2, p1, :cond_2

    .line 150
    const/high16 p1, 0xc000000

    .line 152
    invoke-static {p0, v5, v3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 155
    move-result-object p0

    .line 156
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 159
    goto :goto_0

    .line 160
    :cond_2
    const/high16 p1, 0x8000000

    .line 162
    invoke-static {p0, v5, v3, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 165
    move-result-object p0

    .line 166
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 169
    :goto_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 172
    move-result-object p0

    .line 173
    return-object p0

    .line 174
    :cond_3
    const/4 p0, 0x0

    .line 175
    return-object p0
.end method

.method public static e(Landroid/app/Notification;)V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "notification"

    .line 11
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/app/NotificationManager;

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    move-result-wide v1

    .line 21
    long-to-int v2, v1

    .line 22
    invoke-virtual {v0, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 25
    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    aput-object p2, v0, v1

    .line 10
    const/4 v1, 0x2

    .line 11
    aput-object p3, v0, v1

    .line 13
    const/4 v1, 0x3

    .line 14
    aput-object p4, v0, v1

    .line 16
    const/4 v1, 0x4

    .line 17
    aput-object p5, v0, v1

    .line 19
    const-string v1, "Send2CarUtils"

    .line 21
    const-string v2, "sendNotifaction title:{?};message:{?};messageId:{?};taskId:{?};actionUri:{?}"

    .line 23
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    const/16 v1, 0x1a

    .line 30
    if-lt v0, v1, :cond_0

    .line 32
    invoke-static/range {p0 .. p5}, Lxc0;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 35
    move-result-object p0

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static/range {p0 .. p5}, Lxc0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 40
    move-result-object p0

    .line 41
    :goto_0
    invoke-static {p0}, Lxc0;->e(Landroid/app/Notification;)V

    .line 44
    return-void
.end method

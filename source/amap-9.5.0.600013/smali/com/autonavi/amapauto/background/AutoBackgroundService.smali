.class public Lcom/autonavi/amapauto/background/AutoBackgroundService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/background/AutoBackgroundService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x7f0d00e0

    .line 4
    invoke-static {v0}, Lta0;->d(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/autonavi/amapauto/background/AutoBackgroundService;->a:Ljava/lang/String;

    .line 10
    const-string v0, "com.autonavi.amapauto"

    .line 12
    sput-object v0, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    return-void
.end method

.method public static e()Z
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isNeedServiceStartForeground"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static f()Z
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isNeedForegroundNotification"

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoBackgroundService"

    .line 6
    const-string v2, "stopAutoBackgroundService()"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    const-class v1, Lcom/autonavi/amapauto/background/AutoBackgroundService;

    .line 15
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 21
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->c()Landroid/app/NotificationManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lz6;->a()V

    .line 8
    const v1, 0x7f0d00df

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "111"

    .line 17
    invoke-static {v2, v1}, Lx6;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/app/NotificationChannelGroup;

    .line 20
    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lr6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannelGroup;)V

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-static {}, Lq6;->a()V

    .line 29
    sget-object v1, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b:Ljava/lang/String;

    .line 31
    sget-object v3, Lcom/autonavi/amapauto/background/AutoBackgroundService;->a:Ljava/lang/String;

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz p1, :cond_0

    .line 36
    const/4 p1, 0x4

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p1, 0x0

    .line 39
    :goto_0
    invoke-static {v1, v3, p1}, Ly6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1, v4}, Ls6;->a(Landroid/app/NotificationChannel;Z)V

    .line 46
    invoke-static {p1, v4}, Lt6;->a(Landroid/app/NotificationChannel;Z)V

    .line 49
    invoke-static {p1, v4}, Lu6;->a(Landroid/app/NotificationChannel;Z)V

    .line 52
    invoke-static {p1, v2}, Lv6;->a(Landroid/app/NotificationChannel;Ljava/lang/String;)V

    .line 55
    invoke-static {v0, p1}, Lw6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 58
    :cond_1
    return-void
.end method

.method public final b()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->d()Z

    .line 4
    const/4 v0, 0x1

    .line 5
    return v0
.end method

.method public final c()Landroid/app/NotificationManager;
    .locals 1

    .line 1
    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    return-object v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final g()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoBackgroundService"

    .line 6
    const-string v3, "startForegroundInner() START"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Landroid/content/Intent;

    .line 13
    const-class v3, Lcom/autonavi/auto/remote/fill/UsbFillActivity;

    .line 15
    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 18
    const/high16 v3, 0x4000000

    .line 20
    invoke-static {p0, v0, v1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->f()Z

    .line 27
    move-result v3

    .line 28
    if-nez v3, :cond_0

    .line 30
    const-string v1, "startForegroundInner() FC_KEY_IS_NO_NEED_FOREGROUND_NOTIFICATION true"

    .line 32
    new-array v3, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    goto/16 :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lod;->a()Z

    .line 42
    move-result v3

    .line 43
    const v4, 0x7f070201

    .line 46
    if-eqz v3, :cond_2

    .line 48
    const-string v3, "startForegroundInner() hasOreaVersion"

    .line 50
    new-array v5, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-virtual {p0, v3}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->a(Z)V

    .line 59
    invoke-static {}, Lc40;->a()V

    .line 62
    sget-object v5, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b:Ljava/lang/String;

    .line 64
    invoke-static {p0, v5}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 71
    move-result-object v4

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    move-result-wide v5

    .line 76
    invoke-virtual {v4, v5, v6}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 79
    move-result-object v4

    .line 80
    const v5, 0x7f0d00fe

    .line 83
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 98
    move-result-object v4

    .line 99
    const v5, 0x7f0d00fd

    .line 102
    invoke-virtual {p0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 105
    move-result-object v5

    .line 106
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->d()Z

    .line 117
    move-result v4

    .line 118
    if-nez v4, :cond_1

    .line 120
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 123
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->c()Landroid/app/NotificationManager;

    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 134
    goto :goto_1

    .line 135
    :cond_2
    invoke-static {}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->e()Z

    .line 138
    move-result v3

    .line 139
    if-eqz v3, :cond_3

    .line 141
    const-string v3, "startForegroundInner() isForegroundConfig"

    .line 143
    new-array v5, v0, [Ljava/lang/Object;

    .line 145
    invoke-static {v2, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    new-instance v3, Lr30;

    .line 150
    invoke-direct {v3, p0}, Lr30;-><init>(Landroid/content/Context;)V

    .line 153
    invoke-virtual {v3, v4}, Lr30;->n(I)Lr30;

    .line 156
    move-result-object v3

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 160
    move-result-wide v4

    .line 161
    invoke-virtual {v3, v4, v5}, Lr30;->p(J)Lr30;

    .line 164
    move-result-object v3

    .line 165
    const-string v4, "Auto Foreground Service Started."

    .line 167
    invoke-virtual {v3, v4}, Lr30;->o(Ljava/lang/CharSequence;)Lr30;

    .line 170
    move-result-object v3

    .line 171
    const-string v4, "Auto Foreground Service"

    .line 173
    invoke-virtual {v3, v4}, Lr30;->i(Ljava/lang/CharSequence;)Lr30;

    .line 176
    move-result-object v3

    .line 177
    const-string v4, "Foreground Service Started."

    .line 179
    invoke-virtual {v3, v4}, Lr30;->h(Ljava/lang/CharSequence;)Lr30;

    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, v1}, Lr30;->g(Landroid/app/PendingIntent;)Lr30;

    .line 186
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Lr30;->b()Landroid/app/Notification;

    .line 190
    move-result-object v1

    .line 191
    goto :goto_1

    .line 192
    :cond_3
    :goto_0
    const/4 v1, 0x0

    .line 193
    :goto_1
    if-eqz v1, :cond_5

    .line 195
    const-string v3, "startForegroundInner() startForeground"

    .line 197
    new-array v4, v0, [Ljava/lang/Object;

    .line 199
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 204
    const/16 v4, 0x1d

    .line 206
    if-lt v3, v4, :cond_4

    .line 208
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b()I

    .line 211
    move-result v3

    .line 212
    const/16 v4, 0xc8

    .line 214
    invoke-static {p0, v3, v1, v4}, Lp6;->a(Lcom/autonavi/amapauto/background/AutoBackgroundService;ILandroid/app/Notification;I)V

    .line 217
    goto :goto_2

    .line 218
    :cond_4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b()I

    .line 221
    move-result v3

    .line 222
    invoke-virtual {p0, v3, v1}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_2

    .line 226
    :catch_0
    move-exception v1

    .line 227
    const-string v3, "startForeground exception"

    .line 229
    new-array v4, v0, [Ljava/lang/Object;

    .line 231
    invoke-static {v2, v3, v1, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 234
    :cond_5
    :goto_2
    const-string v1, "startForegroundInner() END"

    .line 236
    new-array v0, v0, [Ljava/lang/Object;

    .line 238
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public final h()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->f()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lod;->a()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const-string v0, "onStartCommand() fix startForeground"

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    .line 18
    const-string v3, "AutoBackgroundService"

    .line 20
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p0, v1}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->a(Z)V

    .line 26
    :try_start_0
    invoke-static {}, Lc40;->a()V

    .line 29
    sget-object v0, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b:Ljava/lang/String;

    .line 31
    invoke-static {p0, v0}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 34
    move-result-object v0

    .line 35
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lrv;->G()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 50
    move-result-object v0

    .line 51
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 53
    const/16 v4, 0x1d

    .line 55
    if-lt v2, v4, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b()I

    .line 60
    move-result v2

    .line 61
    const/16 v4, 0xc8

    .line 63
    invoke-static {p0, v2, v0, v4}, Lp6;->a(Lcom/autonavi/amapauto/background/AutoBackgroundService;ILandroid/app/Notification;I)V

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->b()I

    .line 70
    move-result v2

    .line 71
    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 74
    :goto_0
    const/4 v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Landroid/app/Service;->stopForeground(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    const-string v2, "startForegroundLock exception:"

    .line 82
    new-array v1, v1, [Ljava/lang/Object;

    .line 84
    invoke-static {v3, v2, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 87
    :cond_1
    :goto_1
    return-void
.end method

.method public final j()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoBackgroundService"

    .line 6
    const-string v3, "stopForegroundInner() START"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->e()Z

    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const-string v1, "stopForegroundInner() stopForeground"

    .line 19
    new-array v3, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    const/4 v1, 0x1

    .line 25
    invoke-virtual {p0, v1}, Landroid/app/Service;->stopForeground(Z)V

    .line 28
    :cond_0
    const-string v1, "stopForegroundInner() END"

    .line 30
    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 1
    new-instance p1, Lcom/autonavi/amapauto/background/AutoBackgroundService$a;

    .line 3
    invoke-direct {p1, p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService$a;-><init>(Lcom/autonavi/amapauto/background/AutoBackgroundService;)V

    .line 6
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AutoBackgroundService"

    .line 9
    const-string v2, "onCreate():{?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->h()V

    .line 20
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p0, v1, v2

    .line 7
    const-string v2, "AutoBackgroundService"

    .line 9
    const-string v3, "onDestroy():{?}"

    .line 11
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->j()V

    .line 20
    invoke-static {}, Lxa;->a()Lxa;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, v0}, Lxa;->b(I)V

    .line 27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .line 1
    const/4 p2, 0x1

    .line 2
    new-array p3, p2, [Ljava/lang/Object;

    .line 4
    const/4 v0, 0x0

    .line 5
    aput-object p0, p3, v0

    .line 7
    const-string v1, "AutoBackgroundService"

    .line 9
    const-string v2, "onStartCommand():{?}"

    .line 11
    invoke-static {v1, v2, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->h()V

    .line 17
    const/4 p3, 0x2

    .line 18
    if-nez p1, :cond_0

    .line 20
    const-string p1, "onStartCommand intent==null(\u91cd\u542f\u65f6 intent\u4e3anull)\u3002"

    .line 22
    new-array p2, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    return p3

    .line 28
    :cond_0
    invoke-static {}, Lxa;->a()Lxa;

    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1, p2}, Lxa;->c(I)V

    .line 35
    invoke-static {}, La7;->c()La7;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, La7;->b()V

    .line 42
    invoke-virtual {p0}, Lcom/autonavi/amapauto/background/AutoBackgroundService;->g()V

    .line 45
    return p3
.end method

.class public Lcom/autonavi/amapauto/jni/AndroidNotificationNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;
    }
.end annotation


# static fields
.field private static final ACTION_NOTICE_RECEIVE:Ljava/lang/String; = "com.autonavi.amapauto.intent.action_notify_reveive"

.field private static final ACTION_NOTICE_SLICE_RECEIVE:Ljava/lang/String; = "com.autonavi.amapauto.intent.action_notify_slice_reveive"

.field private static final CHANNEL_ID:Ljava/lang/String;

.field private static final CHANNEL_NAME:Ljava/lang/String; = "AndroidNotification"

.field private static final CLEAR_ALL_SLICE_ACTION:I = -0x9

.field private static final PARAM_NOTICE_ID:Ljava/lang/String; = "notice_id"

.field private static final PARAM_REQUEST_CODE:Ljava/lang/String; = "request_code"

.field private static final TAG:Ljava/lang/String; = "AndroidNotificationNative"

.field private static sNotifyReceivePendingIntent:Landroid/app/PendingIntent;

.field private static sPendingIntentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field

.field public static sSliceNoticeActionHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;",
            ">;"
        }
    .end annotation
.end field

.field private static sSlicePendingIntentHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x414d4150

    .line 4
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->CHANNEL_ID:Ljava/lang/String;

    .line 10
    const/4 v0, 0x0

    .line 11
    sput-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sNotifyReceivePendingIntent:Landroid/app/PendingIntent;

    .line 13
    new-instance v0, Ljava/util/HashMap;

    .line 15
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    sput-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sPendingIntentHashMap:Ljava/util/HashMap;

    .line 20
    new-instance v0, Ljava/util/HashMap;

    .line 22
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    sput-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sSlicePendingIntentHashMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    .line 29
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 32
    sput-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sSliceNoticeActionHashMap:Ljava/util/HashMap;

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bindNotifyReceiver()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidNotificationNative"

    .line 6
    const-string v2, "bindNotifyClickReceiver "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method private static bindNotifySliceReceiver()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidNotificationNative"

    .line 6
    const-string v2, "bindNotifySliceReceiver "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method private static createNotificationChannel(ZLjava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getNotificationManager()Landroid/app/NotificationManager;

    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 7
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v2, 0x1a

    .line 11
    if-lt v1, v2, :cond_2

    .line 13
    invoke-static {}, Lq6;->a()V

    .line 16
    sget-object v1, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->CHANNEL_ID:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 24
    const-string p1, "AndroidNotification"

    .line 26
    :cond_0
    const/4 v2, 0x0

    .line 27
    if-eqz p0, :cond_1

    .line 29
    const/4 p0, 0x4

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p0, 0x0

    .line 32
    :goto_0
    invoke-static {v1, p1, p0}, Ly6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 35
    move-result-object p0

    .line 36
    invoke-static {p0, v2}, Ls6;->a(Landroid/app/NotificationChannel;Z)V

    .line 39
    invoke-static {p0, v2}, Lt6;->a(Landroid/app/NotificationChannel;Z)V

    .line 42
    invoke-static {p0, v2}, Lu6;->a(Landroid/app/NotificationChannel;Z)V

    .line 45
    invoke-static {v0, p0}, Lw6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 48
    :cond_2
    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private static getExtPendingIntent(I)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sPendingIntentHashMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/PendingIntent;

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "AndroidNotificationNative"

    .line 16
    if-nez v0, :cond_1

    .line 18
    new-instance v3, Landroid/content/Intent;

    .line 20
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 23
    const-string v4, "com.autonavi.amapauto.intent.action_notify_reveive"

    .line 25
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v4

    .line 32
    const-class v5, Lcom/autonavi/amapauto/jni/AutoNotifyClickReceiver;

    .line 34
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    new-instance v4, Ljava/security/SecureRandom;

    .line 39
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 42
    const/16 v5, 0x2710

    .line 44
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 47
    move-result v4

    .line 48
    const-string v5, "request_code"

    .line 50
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v5, "notice_id"

    .line 55
    invoke-virtual {v3, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v6, "request code "

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v6, " noticeId "

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    new-array v5, v1, [Ljava/lang/Object;

    .line 85
    invoke-static {v2, p0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 91
    move-result-object p0

    .line 92
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    const/16 v6, 0x1f

    .line 96
    if-lt v5, v6, :cond_0

    .line 98
    const/high16 v5, 0xc000000

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/high16 v5, 0x8000000

    .line 103
    :goto_0
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 106
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string v3, "ocuur a error "

    .line 111
    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    invoke-static {v2, v3, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const-string p0, "reuse pending intent"

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {v2, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_1
    return-object v0
.end method

.method private static getNotificationManager()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "notification"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/NotificationManager;

    .line 13
    return-object v0
.end method

.method public static getPendingIntent(I)Landroid/app/PendingIntent;
    .locals 6

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sNotifyReceivePendingIntent:Landroid/app/PendingIntent;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "AndroidNotificationNative"

    .line 6
    if-nez v0, :cond_1

    .line 8
    new-instance v0, Landroid/content/Intent;

    .line 10
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 13
    const-string v3, "com.autonavi.amapauto.intent.action_notify_reveive"

    .line 15
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    new-instance v3, Ljava/security/SecureRandom;

    .line 20
    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    .line 23
    const/16 v4, 0x2710

    .line 25
    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    .line 28
    move-result v3

    .line 29
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v4

    .line 33
    const-class v5, Lcom/autonavi/amapauto/jni/AutoNotifyClickReceiver;

    .line 35
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    const-string v4, "request_code"

    .line 40
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 43
    const-string v4, "notice_id"

    .line 45
    invoke-virtual {v0, v4, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v5, "request code "

    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const-string v5, " noticeId "

    .line 63
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    move-result-object p0

    .line 73
    new-array v4, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {v2, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 81
    move-result-object p0

    .line 82
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    const/16 v5, 0x1f

    .line 86
    if-lt v4, v5, :cond_0

    .line 88
    const/high16 v4, 0xc000000

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/high16 v4, 0x8000000

    .line 93
    :goto_0
    invoke-static {p0, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 96
    move-result-object p0

    .line 97
    sput-object p0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sNotifyReceivePendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception p0

    .line 101
    const-string v0, "ocuur a error "

    .line 103
    new-array v1, v1, [Ljava/lang/Object;

    .line 105
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const-string p0, "reuse pending intent"

    .line 111
    new-array v0, v1, [Ljava/lang/Object;

    .line 113
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :goto_1
    sget-object p0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sNotifyReceivePendingIntent:Landroid/app/PendingIntent;

    .line 118
    return-object p0
.end method

.method public static getSliceNoticeAction(I)Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sSliceNoticeActionHashMap:Ljava/util/HashMap;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;

    .line 17
    return-object p0
.end method

.method public static getSlicePendingIntent(I)Landroid/app/PendingIntent;
    .locals 7

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sSlicePendingIntentHashMap:Ljava/util/HashMap;

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/PendingIntent;

    .line 13
    const/4 v1, 0x0

    .line 14
    const-string v2, "AndroidNotificationNative"

    .line 16
    if-nez v0, :cond_1

    .line 18
    new-instance v3, Landroid/content/Intent;

    .line 20
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 23
    const-string v4, "com.autonavi.amapauto.intent.action_notify_slice_reveive"

    .line 25
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 31
    move-result-object v4

    .line 32
    const-class v5, Lcom/autonavi/amapauto/jni/AutoNotifySliceClickReceiver;

    .line 34
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 37
    new-instance v4, Ljava/security/SecureRandom;

    .line 39
    invoke-direct {v4}, Ljava/security/SecureRandom;-><init>()V

    .line 42
    const/16 v5, 0x2710

    .line 44
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    .line 47
    move-result v4

    .line 48
    const-string v5, "request_code"

    .line 50
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 53
    const-string v5, "notice_id"

    .line 55
    invoke-virtual {v3, v5, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v6, "request code "

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v6, " noticeId "

    .line 73
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    new-array v5, v1, [Ljava/lang/Object;

    .line 85
    invoke-static {v2, p0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    .line 91
    move-result-object p0

    .line 92
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 94
    const/16 v6, 0x1f

    .line 96
    if-lt v5, v6, :cond_0

    .line 98
    const/high16 v5, 0xc000000

    .line 100
    goto :goto_0

    .line 101
    :cond_0
    const/high16 v5, 0x8000000

    .line 103
    :goto_0
    invoke-static {p0, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 106
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p0

    .line 109
    const-string v3, "ocuur a error "

    .line 111
    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    invoke-static {v2, v3, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 116
    goto :goto_1

    .line 117
    :cond_1
    const-string p0, "reuse pending intent"

    .line 119
    new-array v1, v1, [Ljava/lang/Object;

    .line 121
    invoke-static {v2, p0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_1
    return-object v0
.end method

.method public static jniCancelSliceNotice(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidNotificationNative"

    .line 13
    const-string v2, "jniCancelSliceNotice noticeId:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/16 v0, -0x9

    .line 20
    if-ne p0, v0, :cond_0

    .line 22
    invoke-static {}, Lse;->c()Lse;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lse;->clearSliceNotification()V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0, p0}, Lse;->cancelSliceNotification(I)V

    .line 37
    :goto_0
    return-void
.end method

.method public static jniCancelSystemNotice(I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getNotificationManager()Landroid/app/NotificationManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 8
    return-void
.end method

.method public static jniShowSliceNotice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidNotificationNative"

    .line 13
    const-string v2, "jniShowSliceNotice title:{?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    sget-object v0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sSliceNoticeActionHashMap:Ljava/util/HashMap;

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;

    .line 26
    invoke-direct {v2, p2, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->bindNotifySliceReceiver()V

    .line 35
    invoke-static {}, Lse;->c()Lse;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0, p2}, Lse;->sendSliceNotification(I)V

    .line 42
    return-void
.end method

.method public static jniShowSystemNotice(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    const/4 v2, 0x0

    .line 2
    const/4 v4, 0x0

    .line 3
    const/4 v5, 0x0

    .line 4
    const/4 v6, 0x0

    .line 5
    const/4 v7, 0x0

    .line 6
    const/4 v8, 0x0

    .line 7
    const/4 v9, 0x0

    .line 8
    const/4 v10, 0x0

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move v3, p2

    .line 12
    invoke-static/range {v0 .. v10}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->jniShowSystemNoticeExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 15
    return-void
.end method

.method public static jniShowSystemNoticeExt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .locals 4

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v2, 0x2

    aput-object p2, v0, v2

    const/4 v2, 0x3

    .line 1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x4

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    aput-object p6, v0, v2

    const/4 v2, 0x7

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    aput-object p8, v0, v2

    const-string v2, "AndroidNotificationNative"

    const-string v3, "jniShowSystemNoticeExt title:{?}, content:{?}, channelName:{?}, noticeId:{?}, ongoing:{?}, buttonOneNoticeId:{?}, buttonOneText:{?}, buttonTwoNoticeId:{?}, buttonTwoText:{?}"

    .line 2
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->bindNotifyReceiver()V

    .line 4
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5
    invoke-static {v1, p2}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->createNotificationChannel(ZLjava/lang/String;)V

    .line 6
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt p2, v1, :cond_4

    .line 7
    new-instance p2, Lr30;

    sget-object v1, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lr30;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->B()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->B()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    move-result-object v0

    invoke-virtual {v0}, Lrv;->G()I

    move-result v0

    .line 10
    :goto_0
    invoke-virtual {p2, v0}, Lr30;->n(I)Lr30;

    move-result-object p2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lr30;->p(J)Lr30;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p0}, Lr30;->o(Ljava/lang/CharSequence;)Lr30;

    move-result-object p2

    .line 13
    invoke-virtual {p2, p0}, Lr30;->i(Ljava/lang/CharSequence;)Lr30;

    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Lr30;->h(Ljava/lang/CharSequence;)Lr30;

    move-result-object p0

    .line 15
    invoke-static {p3}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getExtPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lr30;->g(Landroid/app/PendingIntent;)Lr30;

    move-result-object p0

    .line 16
    invoke-virtual {p0, p4}, Lr30;->m(Z)Lr30;

    move-result-object p0

    const/4 p1, 0x0

    if-lez p5, :cond_1

    .line 17
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 18
    new-instance p2, Lp30$a;

    .line 19
    invoke-static {p5}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getExtPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-direct {p2, p1, p6, p4}, Lp30$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lp30$a;->a()Lp30;

    move-result-object p2

    .line 20
    invoke-virtual {p0, p2}, Lr30;->a(Lp30;)Lr30;

    :cond_1
    if-lez p7, :cond_2

    .line 21
    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 22
    new-instance p2, Lp30$a;

    .line 23
    invoke-static {p7}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getExtPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-direct {p2, p1, p8, p4}, Lp30$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lp30$a;->a()Lp30;

    move-result-object p2

    .line 24
    invoke-virtual {p0, p2}, Lr30;->a(Lp30;)Lr30;

    :cond_2
    if-lez p9, :cond_3

    .line 25
    invoke-static {p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 26
    new-instance p2, Lp30$a;

    .line 27
    invoke-static {p9}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getExtPendingIntent(I)Landroid/app/PendingIntent;

    move-result-object p4

    invoke-direct {p2, p1, p10, p4}, Lp30$a;-><init>(Landroidx/core/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {p2}, Lp30$a;->a()Lp30;

    move-result-object p1

    .line 28
    invoke-virtual {p0, p1}, Lr30;->a(Lp30;)Lr30;

    .line 29
    :cond_3
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p0}, Lr30;->b()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_4
    return-void
.end method

.method public static native nativeNoticeIntentReceive(I)V
.end method

.method public static native nativeSliceNoticeIntentReceive(I)V
.end method

.method public static toShowSliceNotice4ThirdApp(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "AndroidNotificationNative"

    .line 13
    const-string v3, "jniShowSliceNotice thirdApp title:{?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    new-instance v1, Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;

    .line 20
    invoke-direct {v1, p2, p0, p1}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    iput-boolean v0, v1, Lcom/autonavi/amapauto/jni/AndroidNotificationNative$a;->d:Z

    .line 25
    sget-object p0, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->sSliceNoticeActionHashMap:Ljava/util/HashMap;

    .line 27
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidNotificationNative;->bindNotifySliceReceiver()V

    .line 37
    invoke-static {}, Lse;->c()Lse;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0, p2}, Lse;->sendSliceNotification(I)V

    .line 44
    return-void
.end method

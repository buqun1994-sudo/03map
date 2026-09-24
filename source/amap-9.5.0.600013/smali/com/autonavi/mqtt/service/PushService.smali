.class public Lcom/autonavi/mqtt/service/PushService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/mqtt/service/PushService$b;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String;

.field public static h:I

.field public static i:Ljava/lang/String;

.field public static j:Z

.field public static k:Lds;


# instance fields
.field public a:Lcom/autonavi/mqtt/PushServer;

.field public b:Z

.field public c:Z

.field public d:I

.field public e:Landroid/os/RemoteCallbackList;

.field public f:Let;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "[MQTT] "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-class v1, Lcom/autonavi/mqtt/service/PushService;

    .line 13
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 26
    const-string v0, "com.autonavi.auto.remote.fill.UsbFillActivity"

    .line 28
    sput-object v0, Lcom/autonavi/mqtt/service/PushService;->i:Ljava/lang/String;

    .line 30
    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/autonavi/mqtt/service/PushService;->j:Z

    .line 33
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/autonavi/mqtt/service/PushService;->k:Lds;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/mqtt/service/PushService;->b:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/mqtt/service/PushService;->c:Z

    .line 10
    const/16 v0, 0x3c

    .line 12
    iput v0, p0, Lcom/autonavi/mqtt/service/PushService;->d:I

    .line 14
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 16
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/autonavi/mqtt/service/PushService;->e:Landroid/os/RemoteCallbackList;

    .line 21
    new-instance v0, Lcom/autonavi/mqtt/service/PushService$a;

    .line 23
    invoke-direct {v0, p0}, Lcom/autonavi/mqtt/service/PushService$a;-><init>(Lcom/autonavi/mqtt/service/PushService;)V

    .line 26
    iput-object v0, p0, Lcom/autonavi/mqtt/service/PushService;->f:Let;

    .line 28
    return-void
.end method

.method public static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/mqtt/service/PushService;->i:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic c(I)I
    .locals 0

    .line 1
    sput p0, Lcom/autonavi/mqtt/service/PushService;->h:I

    .line 3
    return p0
.end method

.method public static synthetic d()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/autonavi/mqtt/service/PushService;->j:Z

    .line 3
    return v0
.end method

.method public static synthetic e(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Lcom/autonavi/mqtt/service/PushService;->j:Z

    .line 3
    return p0
.end method

.method public static synthetic f(Lcom/autonavi/mqtt/service/PushService;)Lcom/autonavi/mqtt/PushServer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/mqtt/service/PushService;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    return-object p0
.end method

.method public static synthetic g(Lcom/autonavi/mqtt/service/PushService;Lcom/autonavi/mqtt/PushServer;)Lcom/autonavi/mqtt/PushServer;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/mqtt/service/PushService;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    return-object p1
.end method

.method public static synthetic h(Lcom/autonavi/mqtt/service/PushService;)Let;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/mqtt/service/PushService;->f:Let;

    .line 3
    return-object p0
.end method

.method public static synthetic i(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/mqtt/service/PushService;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/mqtt/service/PushService;->n(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method public static synthetic k(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/mqtt/service/PushService;->o(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/autonavi/mqtt/service/PushService;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/mqtt/service/PushService;->m(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method public static t(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 9
    const/4 v0, 0x1

    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 14
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 19
    const-string v2, "MQTT PushService:  mActivityManager.getRunningTasks ocuur a SecurityException "

    .line 21
    new-array v3, v1, [Ljava/lang/Object;

    .line 23
    invoke-static {v0, v2, p0, v3}, Lez;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 26
    const/4 p0, 0x0

    .line 27
    :goto_0
    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 32
    move-result v0

    .line 33
    if-lez v0, :cond_0

    .line 35
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 41
    invoke-static {p0}, Ln10;->a(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/content/ComponentName;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    const-string p0, ""

    .line 52
    :goto_1
    return-object p0
.end method

.method public static z(Lds;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p0, v1, v2

    .line 9
    const-string v2, "setMqttNotificationObserver{?}"

    .line 11
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sput-object p0, Lcom/autonavi/mqtt/service/PushService;->k:Lds;

    .line 16
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v2

    .line 10
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    const-string v2, "send2car timelog sendBroadcast time = {?}"

    .line 19
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method public B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/mqtt/service/PushService;->a:Lcom/autonavi/mqtt/PushServer;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "MQTT PushService: unRegisterMqtt.mPushServer = null; "

    .line 12
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/autonavi/mqtt/service/PushService;->a:Lcom/autonavi/mqtt/PushServer;

    .line 18
    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 25

    .line 1
    move-object/from16 v1, p1

    .line 3
    const-string v2, "DestinationMsg JSONException message = {?}"

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/mqtt/service/PushService;->q()Lcom/autonavi/mqtt/service/UserContentProvider$a;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/mqtt/service/UserContentProvider$a;->a()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ""

    .line 18
    :goto_0
    move-object v3, v0

    .line 19
    const-string v0, "userId"

    .line 21
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    const-string v4, "deviceId"

    .line 27
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    sget-object v5, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 33
    const/4 v6, 0x4

    .line 34
    new-array v6, v6, [Ljava/lang/Object;

    .line 36
    const/4 v7, 0x0

    .line 37
    aput-object v0, v6, v7

    .line 39
    const/4 v8, 0x1

    .line 40
    aput-object v4, v6, v8

    .line 42
    const/4 v0, 0x2

    .line 43
    aput-object v3, v6, v0

    .line 45
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object v0

    .line 53
    const/4 v4, 0x3

    .line 54
    aput-object v0, v6, v4

    .line 56
    const-string v0, "DestinationMsg uid:{?},deviceId:{?},configUid:{?},pid={?}"

    .line 58
    invoke-static {v5, v0, v6}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    new-instance v4, Lyc0;

    .line 63
    invoke-direct {v4}, Lyc0;-><init>()V

    .line 66
    const-string v0, "content"

    .line 68
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    const/4 v5, 0x0

    .line 73
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 75
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    sget-object v6, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 82
    new-array v9, v8, [Ljava/lang/Object;

    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    aput-object v0, v9, v7

    .line 90
    invoke-static {v6, v2, v9}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    move-object v6, v5

    .line 94
    :goto_1
    if-nez v6, :cond_1

    .line 96
    return-void

    .line 97
    :cond_1
    const-string v0, "endPoi"

    .line 99
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    :try_start_1
    new-instance v6, Lorg/json/JSONObject;

    .line 105
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    move-object v5, v6

    .line 109
    goto :goto_2

    .line 110
    :catch_1
    move-exception v0

    .line 111
    sget-object v6, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 113
    new-array v9, v8, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    move-result-object v0

    .line 119
    aput-object v0, v9, v7

    .line 121
    invoke-static {v6, v2, v9}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_2
    if-nez v5, :cond_2

    .line 126
    return-void

    .line 127
    :cond_2
    const-string v0, "lon"

    .line 129
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 132
    move-result-wide v9

    .line 133
    const-string v0, "lat"

    .line 135
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 138
    move-result-wide v11

    .line 139
    new-instance v0, Ljava/lang/StringBuffer;

    .line 141
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    const-string v2, "androidauto://openFeature?featureName=auto&sourceApplication=AutoPush&bizType=poi"

    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v2, "name"

    .line 151
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 154
    move-result-object v6

    .line 155
    sget-object v13, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 157
    new-instance v14, Ljava/lang/StringBuilder;

    .line 159
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    const-string v15, "DestinationMsg name:"

    .line 164
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v14

    .line 174
    new-array v15, v7, [Ljava/lang/Object;

    .line 176
    invoke-static {v13, v14, v15}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    const-string v14, "&name="

    .line 181
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    const-string v14, "&addr="

    .line 189
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 192
    const-string v14, "address"

    .line 194
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v15

    .line 198
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 201
    const-string v15, "&lat="

    .line 203
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 209
    const-string v15, "&lon="

    .line 211
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 217
    const-string v15, "messageId"

    .line 219
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 222
    move-result-wide v16

    .line 223
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 226
    move-result-object v8

    .line 227
    const-string v7, "&messageId="

    .line 229
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 235
    const-string v7, "&createTime="

    .line 237
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    const-string v7, "createTime"

    .line 242
    move-object/from16 v17, v8

    .line 244
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 254
    move-result-object v8

    .line 255
    invoke-virtual {v4, v8}, Lyc0;->b(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    move-result-object v2

    .line 262
    invoke-virtual {v4, v2}, Lyc0;->k(Ljava/lang/String;)V

    .line 265
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 268
    move-result-object v2

    .line 269
    invoke-virtual {v4, v2}, Lyc0;->f(Ljava/lang/Double;)V

    .line 272
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 275
    move-result-object v2

    .line 276
    invoke-virtual {v4, v2}, Lyc0;->e(Ljava/lang/Double;)V

    .line 279
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 282
    move-result-object v2

    .line 283
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 286
    move-result-wide v7

    .line 287
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v4, v7}, Lyc0;->g(Ljava/lang/Long;)V

    .line 294
    invoke-virtual {v4, v2}, Lyc0;->c(Ljava/lang/String;)V

    .line 297
    const/4 v2, 0x0

    .line 298
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    move-result-object v7

    .line 302
    invoke-virtual {v4, v7}, Lyc0;->d(Ljava/lang/Integer;)V

    .line 305
    invoke-virtual {v4, v3}, Lyc0;->n(Ljava/lang/String;)V

    .line 308
    const-string v2, "sourceid"

    .line 310
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 313
    move-result v3

    .line 314
    if-eqz v3, :cond_3

    .line 316
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 319
    move-result-object v3

    .line 320
    invoke-virtual {v4, v3}, Lyc0;->m(Ljava/lang/String;)V

    .line 323
    const-string v3, "&sourceid="

    .line 325
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 331
    move-result-wide v2

    .line 332
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 335
    :cond_3
    const-string v2, "poiID"

    .line 337
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 340
    move-result v3

    .line 341
    if-eqz v3, :cond_4

    .line 343
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v4, v3}, Lyc0;->j(Ljava/lang/String;)V

    .line 350
    const-string v3, "&poiID="

    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 358
    move-result-wide v2

    .line 359
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 362
    :cond_4
    const-string v2, "nav_lon"

    .line 364
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 367
    move-result v3

    .line 368
    if-eqz v3, :cond_5

    .line 370
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 373
    move-result-wide v2

    .line 374
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v4, v7}, Lyc0;->i(Ljava/lang/Double;)V

    .line 381
    const-string v7, "&nav_lon="

    .line 383
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 386
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 389
    :cond_5
    const-string v2, "nav_lat"

    .line 391
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 394
    move-result v3

    .line 395
    if-eqz v3, :cond_6

    .line 397
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 400
    move-result-wide v2

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 404
    move-result-object v7

    .line 405
    invoke-virtual {v4, v7}, Lyc0;->h(Ljava/lang/Double;)V

    .line 408
    const-string v7, "&nav_lat="

    .line 410
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 416
    :cond_6
    const-string v2, "poi_type"

    .line 418
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 421
    move-result v3

    .line 422
    if-eqz v3, :cond_7

    .line 424
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 427
    move-result-object v3

    .line 428
    invoke-virtual {v4, v3}, Lyc0;->l(Ljava/lang/String;)V

    .line 431
    const-string v3, "&poi_type="

    .line 433
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 436
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 439
    move-result-wide v2

    .line 440
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 443
    :cond_7
    const/4 v2, 0x1

    .line 444
    new-array v3, v2, [Ljava/lang/Object;

    .line 446
    invoke-virtual {v4}, Lyc0;->a()Ljava/lang/String;

    .line 449
    move-result-object v2

    .line 450
    const/4 v4, 0x0

    .line 451
    aput-object v2, v3, v4

    .line 453
    const-string v2, "DestinationMsg onUserMessage receive msg:{?}"

    .line 455
    invoke-static {v13, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    move-object/from16 v2, p0

    .line 460
    invoke-virtual {v2, v2}, Lcom/autonavi/mqtt/service/PushService;->u(Landroid/content/Context;)Z

    .line 463
    move-result v3

    .line 464
    if-eqz v3, :cond_9

    .line 466
    const-string v3, "text"

    .line 468
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 471
    move-result-object v3

    .line 472
    if-eqz v6, :cond_8

    .line 474
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 477
    move-result v5

    .line 478
    if-lez v5, :cond_8

    .line 480
    const/4 v5, 0x1

    .line 481
    new-array v3, v5, [Ljava/lang/Object;

    .line 483
    aput-object v6, v3, v4

    .line 485
    const-string v4, "\u6536\u5230\u4f4d\u7f6e\uff1a%s"

    .line 487
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 490
    move-result-object v3

    .line 491
    :cond_8
    move-object/from16 v21, v3

    .line 493
    const-string v3, "title"

    .line 495
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 498
    move-result-object v1

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    .line 501
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 504
    const-string v4, "DestinationMsg title:"

    .line 506
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 515
    move-result-object v3

    .line 516
    const/4 v4, 0x0

    .line 517
    new-array v4, v4, [Ljava/lang/Object;

    .line 519
    invoke-static {v13, v3, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    const/16 v23, 0x0

    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 527
    move-result-object v24

    .line 528
    move-object/from16 v18, p0

    .line 530
    move-object/from16 v19, p0

    .line 532
    move-object/from16 v20, v1

    .line 534
    move-object/from16 v22, v17

    .line 536
    invoke-virtual/range {v18 .. v24}, Lcom/autonavi/mqtt/service/PushService;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_9
    return-void
.end method

.method public final m(Lorg/json/JSONObject;)V
    .locals 7

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "content"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lua;

    .line 12
    invoke-direct {v1}, Lua;-><init>()V

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 19
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 22
    :try_start_1
    const-string v0, "type"

    .line 24
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    const-string v3, "destination"

    .line 30
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    const-string v3, "leader"

    .line 35
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    const-string v3, "teamName"

    .line 40
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    const-string v3, "teamNumber"

    .line 45
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object v3

    .line 49
    const-string v5, "teamId"

    .line 51
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    const-string v5, "invite"

    .line 56
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    new-instance v5, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string v0, "&teamNumber="

    .line 69
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Lua;->m(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 82
    goto :goto_1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    move-object v3, v4

    .line 85
    goto :goto_0

    .line 86
    :catch_1
    move-exception v0

    .line 87
    :goto_0
    sget-object v4, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 89
    const/4 v5, 0x1

    .line 90
    new-array v5, v5, [Ljava/lang/Object;

    .line 92
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    aput-object v0, v5, v2

    .line 98
    const-string v0, "autoPushMsg JSONException message = {?}"

    .line 100
    invoke-static {v4, v0, v5}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    move-object v4, v3

    .line 104
    :goto_1
    const-string v0, "text"

    .line 106
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    const-string v3, "title"

    .line 112
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    new-instance v5, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    const-string v6, "message ====*****=== msgText "

    .line 123
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v6, "   msgTitle "

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v6, " content obj = "

    .line 139
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 149
    new-array v5, v2, [Ljava/lang/Object;

    .line 151
    const-string v6, "dfsdafdsfdsf"

    .line 153
    invoke-static {v6, v4, v5}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    invoke-virtual {v1, v0}, Lua;->k(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1, v3}, Lua;->l(Ljava/lang/String;)V

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v1, v0}, Lua;->h(Ljava/lang/Integer;)V

    .line 169
    invoke-virtual {p0, p1, v1}, Lcom/autonavi/mqtt/service/PushService;->w(Lorg/json/JSONObject;Lua;)V

    .line 172
    return-void
.end method

.method public final n(Lorg/json/JSONObject;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 3
    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 6
    const-string v1, "content"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 16
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v1

    .line 21
    sget-object v4, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 23
    new-array v5, v3, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    aput-object v1, v5, v2

    .line 31
    const-string v1, "autoPushMsg JSONException message = {?}"

    .line 33
    invoke-static {v4, v1, v5}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    const/4 v4, 0x0

    .line 37
    :goto_0
    const-string v1, "route_param"

    .line 39
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    :try_start_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 46
    move-result-object v4

    .line 47
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 50
    move-result-object v4

    .line 51
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 53
    const-string v6, "UTF-8"

    .line 55
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 58
    move-result-object v1

    .line 59
    invoke-direct {v5, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 73
    move-result-object v1

    .line 74
    const/4 v4, 0x0

    .line 75
    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 78
    move-result v5

    .line 79
    if-ge v4, v5, :cond_1

    .line 81
    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 84
    move-result-object v5

    .line 85
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 88
    move-result-object v6

    .line 89
    if-eqz v6, :cond_0

    .line 91
    const-string v7, "destination"

    .line 93
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v6

    .line 97
    if-eqz v6, :cond_0

    .line 99
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 102
    move-result-object v5

    .line 103
    if-eqz v5, :cond_0

    .line 105
    const-string v6, "Name"

    .line 107
    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 110
    move-result-object v5

    .line 111
    if-eqz v5, :cond_0

    .line 113
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 116
    move-result-object v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 119
    goto :goto_1

    .line 120
    :catch_1
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    goto :goto_2

    .line 125
    :catch_2
    move-exception v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    goto :goto_2

    .line 130
    :catch_3
    move-exception v1

    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    :cond_1
    :goto_2
    const-string v1, "text"

    .line 136
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    const-string v4, "title"

    .line 142
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 145
    move-result-object v7

    .line 146
    if-eqz v0, :cond_2

    .line 148
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 151
    move-result v4

    .line 152
    if-lez v4, :cond_2

    .line 154
    new-array v1, v3, [Ljava/lang/Object;

    .line 156
    aput-object v0, v1, v2

    .line 158
    const-string v0, "\u6536\u5230\u8def\u7ebf\uff1a\u524d\u5f80 %s"

    .line 160
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    :cond_2
    move-object v8, v1

    .line 165
    new-instance v0, Ljava/lang/StringBuffer;

    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 170
    const-string v1, "messageId"

    .line 172
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 175
    move-result-wide v1

    .line 176
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 179
    move-result-object v9

    .line 180
    const-string v1, "androidauto://openFeature?featureName=auto&sourceApplication=AutoPush&bizType=route"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v1, "&messageId="

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 190
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 193
    const-string v1, "&createTime="

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    const-string v1, "createTime"

    .line 200
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 207
    invoke-virtual {p0, p0}, Lcom/autonavi/mqtt/service/PushService;->u(Landroid/content/Context;)Z

    .line 210
    move-result p1

    .line 211
    if-eqz p1, :cond_3

    .line 213
    const/4 v10, 0x0

    .line 214
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 217
    move-result-object v11

    .line 218
    move-object v5, p0

    .line 219
    move-object v6, p0

    .line 220
    invoke-virtual/range {v5 .. v11}, Lcom/autonavi/mqtt/service/PushService;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_3
    return-void
.end method

.method public final o(Lorg/json/JSONObject;)V
    .locals 6

    .line 1
    const-string v0, "content"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 11
    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception v0

    .line 16
    sget-object v3, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 18
    const/4 v4, 0x1

    .line 19
    new-array v4, v4, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    aput-object v0, v4, v1

    .line 27
    const-string v0, "autoPushMsg JSONException message = {?}"

    .line 29
    invoke-static {v3, v0, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    move-object v3, v2

    .line 33
    :goto_0
    if-eqz v3, :cond_0

    .line 35
    const-string v0, "actionUri"

    .line 37
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object v2

    .line 41
    const-string v0, "text"

    .line 43
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 47
    const-string v4, "title"

    .line 49
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v3

    .line 53
    move-object v5, v2

    .line 54
    move-object v2, v0

    .line 55
    move-object v0, v5

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move-object v0, v2

    .line 58
    move-object v3, v0

    .line 59
    :goto_1
    new-instance v4, Lua;

    .line 61
    invoke-direct {v4}, Lua;-><init>()V

    .line 64
    invoke-virtual {v4, v2}, Lua;->k(Ljava/lang/String;)V

    .line 67
    invoke-virtual {v4, v3}, Lua;->l(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v4, v0}, Lua;->n(Ljava/lang/String;)V

    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v4, v0}, Lua;->h(Ljava/lang/Integer;)V

    .line 80
    invoke-virtual {p0, p1, v4}, Lcom/autonavi/mqtt/service/PushService;->w(Lorg/json/JSONObject;Lua;)V

    .line 83
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    new-instance p1, Lcom/autonavi/mqtt/service/PushService$b;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, p0, v0}, Lcom/autonavi/mqtt/service/PushService$b;-><init>(Lcom/autonavi/mqtt/service/PushService;Lcom/autonavi/mqtt/service/PushService$a;)V

    .line 7
    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 4
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    .line 7
    new-array v1, v1, [Ljava/lang/Object;

    .line 9
    const-string v2, "MQTT PushService: onCreate"

    .line 11
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const-string v2, "MQTT PushService: onDestroy"

    .line 8
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lcom/autonavi/mqtt/service/PushService;->B()V

    .line 14
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 17
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 1
    sget-object p2, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    const/4 p3, 0x1

    .line 4
    new-array v0, p3, [Ljava/lang/Object;

    .line 6
    const/4 v1, 0x0

    .line 7
    aput-object p1, v0, v1

    .line 9
    const-string p1, "MQTT PushService: onStartCommand intent = {?}"

    .line 11
    invoke-static {p2, p1, v0}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return p3
.end method

.method public final p(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    const-string v0, "notification"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/app/NotificationManager;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    const/16 v2, 0x1a

    .line 15
    if-lt v1, v2, :cond_1

    .line 17
    invoke-static {}, Lq6;->a()V

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p2, :cond_0

    .line 23
    const/4 p2, 0x4

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    :goto_0
    invoke-static {p1, p1, p2}, Ly6;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1, v1}, Ls6;->a(Landroid/app/NotificationChannel;Z)V

    .line 33
    invoke-static {p1, v1}, Lt6;->a(Landroid/app/NotificationChannel;Z)V

    .line 36
    invoke-static {p1, v1}, Lu6;->a(Landroid/app/NotificationChannel;Z)V

    .line 39
    invoke-static {v0, p1}, Lw6;->a(Landroid/app/NotificationManager;Landroid/app/NotificationChannel;)V

    .line 42
    :cond_1
    return-void
.end method

.method public final q()Lcom/autonavi/mqtt/service/UserContentProvider$a;
    .locals 8

    .line 1
    new-instance v0, Lcom/autonavi/mqtt/service/UserContentProvider$a;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/mqtt/service/UserContentProvider$a;-><init>()V

    .line 6
    const-string v1, "content://com.autonavi.amapauto.provider.user/ProcessUserInfo"

    .line 8
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v2

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x0

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v7, 0x0

    .line 20
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_0

    .line 26
    const/4 v0, 0x0

    .line 27
    return-object v0

    .line 28
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_1

    .line 34
    const-string v2, "uid"

    .line 36
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    move-result v2

    .line 40
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    const-string v3, "sessionid"

    .line 46
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    move-result v3

    .line 50
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const-string v2, ""

    .line 57
    move-object v3, v2

    .line 58
    :goto_0
    invoke-virtual {v0, v2}, Lcom/autonavi/mqtt/service/UserContentProvider$a;->c(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0, v3}, Lcom/autonavi/mqtt/service/UserContentProvider$a;->b(Ljava/lang/String;)V

    .line 64
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    return-object v0
.end method

.method public final r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 1
    new-instance v0, Lr30;

    .line 3
    invoke-direct {v0, p1}, Lr30;-><init>(Landroid/content/Context;)V

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lr30;->f(Z)Lr30;

    .line 10
    invoke-virtual {v0, p2}, Lr30;->i(Ljava/lang/CharSequence;)Lr30;

    .line 13
    invoke-virtual {v0, p3}, Lr30;->o(Ljava/lang/CharSequence;)Lr30;

    .line 16
    invoke-virtual {v0, p3}, Lr30;->h(Ljava/lang/CharSequence;)Lr30;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p2

    .line 23
    sget p3, Lu80;->a:I

    .line 25
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {v0, p2}, Lr30;->l(Landroid/graphics/Bitmap;)Lr30;

    .line 32
    sget p2, Lu80;->b:I

    .line 34
    invoke-virtual {v0, p2}, Lr30;->n(I)Lr30;

    .line 37
    const/4 p2, -0x1

    .line 38
    invoke-virtual {v0, p2}, Lr30;->j(I)Lr30;

    .line 41
    new-instance p2, Landroid/content/Intent;

    .line 43
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 46
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result p3

    .line 50
    const/4 v2, 0x0

    .line 51
    if-nez p3, :cond_0

    .line 53
    const-string p3, "androidauto"

    .line 55
    invoke-virtual {p6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    move-result p3

    .line 59
    if-eqz p3, :cond_0

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 64
    move-result-object p3

    .line 65
    sget-object v3, Lcom/autonavi/mqtt/service/PushService;->i:Ljava/lang/String;

    .line 67
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    const/high16 p3, 0x10000000

    .line 72
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 75
    const-string p3, "key_caller"

    .line 77
    const-string v3, "value_caller_push"

    .line 79
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const-string p3, "key_message_id"

    .line 84
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string p3, "key_task_id"

    .line 89
    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    move-result-object p3

    .line 96
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 99
    sget-object p3, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 101
    new-array p4, v1, [Ljava/lang/Object;

    .line 103
    aput-object p6, p4, v2

    .line 105
    const-string p5, "MQTT PushService: getNotifaction {\uff1f}"

    .line 107
    invoke-static {p3, p5, p4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    :cond_0
    const/high16 p3, 0x8000000

    .line 112
    invoke-static {p1, v2, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {v0, p1}, Lr30;->g(Landroid/app/PendingIntent;)Lr30;

    .line 119
    invoke-virtual {v0}, Lr30;->b()Landroid/app/Notification;

    .line 122
    move-result-object p1

    .line 123
    return-object p1
.end method

.method public final s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 4

    .line 1
    const-string v0, "AutoBackgroundService"

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/mqtt/service/PushService;->p(Ljava/lang/String;Z)V

    .line 7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 9
    const/16 v3, 0x1a

    .line 11
    if-lt v2, v3, :cond_1

    .line 13
    invoke-static {p1, v0}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 20
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 23
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 26
    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object p2

    .line 33
    sget p3, Lu80;->a:I

    .line 35
    invoke-static {p2, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 42
    sget p2, Lu80;->b:I

    .line 44
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 47
    const/4 p2, -0x1

    .line 48
    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 51
    new-instance p2, Landroid/content/Intent;

    .line 53
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 56
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result p3

    .line 60
    const/4 v2, 0x0

    .line 61
    if-nez p3, :cond_0

    .line 63
    const-string p3, "androidauto"

    .line 65
    invoke-virtual {p6, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 68
    move-result p3

    .line 69
    if-eqz p3, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 74
    move-result-object p3

    .line 75
    sget-object v3, Lcom/autonavi/mqtt/service/PushService;->i:Ljava/lang/String;

    .line 77
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const/high16 p3, 0x10000000

    .line 82
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string p3, "key_caller"

    .line 87
    const-string v3, "value_caller_push"

    .line 89
    invoke-virtual {p2, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string p3, "key_message_id"

    .line 94
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    const-string p3, "key_task_id"

    .line 99
    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    invoke-static {p6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 105
    move-result-object p3

    .line 106
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    sget-object p3, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 111
    new-array p4, v1, [Ljava/lang/Object;

    .line 113
    aput-object p6, p4, v2

    .line 115
    const-string p5, "MQTT PushService: getNotifaction {\uff1f}"

    .line 117
    invoke-static {p3, p5, p4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    :cond_0
    const/high16 p3, 0x8000000

    .line 122
    invoke-static {p1, v2, p2, p3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 129
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 132
    move-result-object p1

    .line 133
    return-object p1

    .line 134
    :cond_1
    const/4 p1, 0x0

    .line 135
    return-object p1
.end method

.method public u(Landroid/content/Context;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    const-string v2, "MQTT PushService: PushService isRunningBackground begin pid:"

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v3, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {v0, v1, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v1, p0, Lcom/autonavi/mqtt/service/PushService;->f:Let;

    .line 32
    invoke-interface {v1}, Let;->y()I

    .line 35
    move-result v1

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v4, "MQTT PushService: PushService mMqttCallback.isRunningBackGround return:"

    .line 43
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    new-array v4, v2, [Ljava/lang/Object;

    .line 59
    invoke-static {v0, v3, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    const/4 v3, 0x1

    .line 63
    if-eqz v1, :cond_1

    .line 65
    if-ne v1, v3, :cond_0

    .line 67
    goto :goto_0

    .line 68
    :cond_0
    const/4 v3, 0x0

    .line 69
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v1, "MQTT PushService: PushService isRunningBackground return:"

    .line 76
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    new-array v1, v2, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, p1, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    return v3

    .line 96
    :cond_1
    invoke-static {p1}, Lcom/autonavi/mqtt/service/PushService;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 103
    move-result v1

    .line 104
    if-nez v1, :cond_3

    .line 106
    const-string v1, "com.autonavi.amapauto"

    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_2

    .line 114
    const-string v1, "com.autonavi.auto"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_3

    .line 122
    :cond_2
    sput-object p1, Lcom/autonavi/mqtt/service/PushService;->i:Ljava/lang/String;

    .line 124
    const/4 v1, 0x0

    .line 125
    goto :goto_1

    .line 126
    :cond_3
    const/4 v1, 0x1

    .line 127
    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    .line 129
    aput-object p1, v4, v2

    .line 131
    const-string p1, "MQTT PushService: PushService isRunningBackground topActivityClassName={?}"

    .line 133
    invoke-static {v0, p1, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    new-array p1, v3, [Ljava/lang/Object;

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    move-result-object v3

    .line 142
    aput-object v3, p1, v2

    .line 144
    const-string v2, "MQTT PushService: PushService isRunningBackground = {?}"

    .line 146
    invoke-static {v0, v2, p1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    return v1
.end method

.method public final v(Landroid/app/Notification;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

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
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    long-to-int v2, v1

    .line 18
    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :catch_0
    return-void
.end method

.method public final w(Lorg/json/JSONObject;Lua;)V
    .locals 7

    .line 1
    const-string v0, "createTime"

    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "sourceid"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    const-string v2, "messageId"

    .line 15
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 18
    move-result-wide v2

    .line 19
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 21
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 23
    invoke-direct {p1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 26
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 29
    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 34
    const/4 v4, 0x1

    .line 35
    new-array v4, v4, [Ljava/lang/Object;

    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    aput-object p1, v4, v5

    .line 44
    const-string p1, "autoPushMsg ParseException message = {?}"

    .line 46
    invoke-static {v0, p1, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    const/4 p1, 0x0

    .line 50
    :goto_0
    if-nez p1, :cond_0

    .line 52
    new-instance p1, Ljava/util/Date;

    .line 54
    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    .line 57
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2, v0}, Lua;->i(Ljava/lang/Long;)V

    .line 64
    invoke-virtual {p2, p1}, Lua;->g(Ljava/util/Date;)V

    .line 67
    invoke-virtual {p2, v1}, Lua;->j(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0, p0}, Lcom/autonavi/mqtt/service/PushService;->u(Landroid/content/Context;)Z

    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_1

    .line 76
    invoke-virtual {p2}, Lua;->d()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p2}, Lua;->c()Ljava/lang/String;

    .line 83
    move-result-object v3

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    invoke-virtual {p2}, Lua;->e()Ljava/lang/String;

    .line 89
    move-result-object v6

    .line 90
    move-object v0, p0

    .line 91
    move-object v1, p0

    .line 92
    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/mqtt/service/PushService;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_1
    return-void
.end method

.method public x(Lorg/json/JSONObject;)V
    .locals 24

    .line 1
    move-object/from16 v1, p1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/mqtt/service/PushService;->q()Lcom/autonavi/mqtt/service/UserContentProvider$a;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/autonavi/mqtt/service/UserContentProvider$a;->a()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ""

    .line 16
    :goto_0
    move-object v2, v0

    .line 17
    const-string v0, "userId"

    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    const-string v3, "deviceId"

    .line 25
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v3

    .line 29
    sget-object v4, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 31
    const/4 v5, 0x4

    .line 32
    new-array v5, v5, [Ljava/lang/Object;

    .line 34
    const/4 v6, 0x0

    .line 35
    aput-object v0, v5, v6

    .line 37
    const/4 v7, 0x1

    .line 38
    aput-object v3, v5, v7

    .line 40
    const/4 v0, 0x2

    .line 41
    aput-object v2, v5, v0

    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 46
    move-result v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object v0

    .line 51
    const/4 v3, 0x3

    .line 52
    aput-object v0, v5, v3

    .line 54
    const-string v0, "send2carMsg uid:{?},deviceId:{?},configUid:{?},pid={?}"

    .line 56
    invoke-static {v4, v0, v5}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v3, Lyc0;

    .line 61
    invoke-direct {v3}, Lyc0;-><init>()V

    .line 64
    const-string v0, "content"

    .line 66
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 72
    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    goto :goto_1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    sget-object v4, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 79
    new-array v5, v7, [Ljava/lang/Object;

    .line 81
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    aput-object v0, v5, v6

    .line 87
    const-string v0, "send2carMsg JSONException message = {?}"

    .line 89
    invoke-static {v4, v0, v5}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    const/4 v4, 0x0

    .line 93
    :goto_1
    if-nez v4, :cond_1

    .line 95
    return-void

    .line 96
    :cond_1
    const-string v0, "lon"

    .line 98
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 101
    move-result-wide v8

    .line 102
    const-string v0, "lat"

    .line 104
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 107
    move-result-wide v10

    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    const-string v5, "androidauto://openFeature?featureName=auto&sourceApplication=AutoPush&bizType=poi"

    .line 115
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    const-string v5, "name"

    .line 120
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    move-result-object v12

    .line 124
    const-string v13, "&name="

    .line 126
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v13, "&addr="

    .line 134
    invoke-virtual {v0, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v13, "address"

    .line 139
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    move-result-object v14

    .line 143
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    const-string v14, "&lat="

    .line 148
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 154
    const-string v14, "&lon="

    .line 156
    invoke-virtual {v0, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 159
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 162
    const-string v14, "messageId"

    .line 164
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 167
    move-result-wide v15

    .line 168
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 171
    move-result-object v15

    .line 172
    const-string v7, "&messageId="

    .line 174
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    const-string v7, "&createTime="

    .line 182
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 185
    const-string v7, "createTime"

    .line 187
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v6

    .line 198
    invoke-virtual {v3, v6}, Lyc0;->b(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object v5

    .line 205
    invoke-virtual {v3, v5}, Lyc0;->k(Ljava/lang/String;)V

    .line 208
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 211
    move-result-object v5

    .line 212
    invoke-virtual {v3, v5}, Lyc0;->f(Ljava/lang/Double;)V

    .line 215
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 218
    move-result-object v5

    .line 219
    invoke-virtual {v3, v5}, Lyc0;->e(Ljava/lang/Double;)V

    .line 222
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 225
    move-result-object v5

    .line 226
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 229
    move-result-wide v6

    .line 230
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 233
    move-result-object v6

    .line 234
    invoke-virtual {v3, v6}, Lyc0;->g(Ljava/lang/Long;)V

    .line 237
    invoke-virtual {v3, v5}, Lyc0;->c(Ljava/lang/String;)V

    .line 240
    const/4 v5, 0x0

    .line 241
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    move-result-object v6

    .line 245
    invoke-virtual {v3, v6}, Lyc0;->d(Ljava/lang/Integer;)V

    .line 248
    invoke-virtual {v3, v2}, Lyc0;->n(Ljava/lang/String;)V

    .line 251
    const-string v2, "sourceid"

    .line 253
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_2

    .line 259
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 262
    move-result-object v5

    .line 263
    invoke-virtual {v3, v5}, Lyc0;->m(Ljava/lang/String;)V

    .line 266
    const-string v5, "&sourceid="

    .line 268
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 274
    move-result-wide v5

    .line 275
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 278
    :cond_2
    const-string v2, "poiID"

    .line 280
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 283
    move-result v5

    .line 284
    if-eqz v5, :cond_3

    .line 286
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 289
    move-result-object v5

    .line 290
    invoke-virtual {v3, v5}, Lyc0;->j(Ljava/lang/String;)V

    .line 293
    const-string v5, "&poiID="

    .line 295
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 301
    move-result-wide v5

    .line 302
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 305
    :cond_3
    const-string v2, "nav_lon"

    .line 307
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 310
    move-result v5

    .line 311
    if-eqz v5, :cond_4

    .line 313
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 316
    move-result-wide v5

    .line 317
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 320
    move-result-object v2

    .line 321
    invoke-virtual {v3, v2}, Lyc0;->i(Ljava/lang/Double;)V

    .line 324
    const-string v2, "&nav_lon="

    .line 326
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 332
    :cond_4
    const-string v2, "nav_lat"

    .line 334
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 337
    move-result v5

    .line 338
    if-eqz v5, :cond_5

    .line 340
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 343
    move-result-wide v5

    .line 344
    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v3, v2}, Lyc0;->h(Ljava/lang/Double;)V

    .line 351
    const-string v2, "&nav_lat="

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 359
    :cond_5
    const-string v2, "poi_type"

    .line 361
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 364
    move-result v5

    .line 365
    if-eqz v5, :cond_6

    .line 367
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 370
    move-result-object v5

    .line 371
    invoke-virtual {v3, v5}, Lyc0;->l(Ljava/lang/String;)V

    .line 374
    const-string v5, "&poi_type="

    .line 376
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 379
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 382
    move-result-wide v4

    .line 383
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 386
    :cond_6
    sget-object v2, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 388
    const/4 v4, 0x1

    .line 389
    new-array v5, v4, [Ljava/lang/Object;

    .line 391
    invoke-virtual {v3}, Lyc0;->a()Ljava/lang/String;

    .line 394
    move-result-object v3

    .line 395
    const/4 v4, 0x0

    .line 396
    aput-object v3, v5, v4

    .line 398
    const-string v3, "send2car onUserMessage receive msg:{?}"

    .line 400
    invoke-static {v2, v3, v5}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    move-object/from16 v2, p0

    .line 405
    invoke-virtual {v2, v2}, Lcom/autonavi/mqtt/service/PushService;->u(Landroid/content/Context;)Z

    .line 408
    move-result v3

    .line 409
    if-eqz v3, :cond_8

    .line 411
    const-string v3, "text"

    .line 413
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 416
    move-result-object v3

    .line 417
    if-eqz v12, :cond_7

    .line 419
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 422
    move-result v5

    .line 423
    if-lez v5, :cond_7

    .line 425
    const/4 v5, 0x1

    .line 426
    new-array v3, v5, [Ljava/lang/Object;

    .line 428
    aput-object v12, v3, v4

    .line 430
    const-string v4, "\u6536\u5230\u4f4d\u7f6e\uff1a%s"

    .line 432
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 435
    move-result-object v3

    .line 436
    :cond_7
    move-object/from16 v20, v3

    .line 438
    const-string v3, "title"

    .line 440
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 443
    move-result-object v19

    .line 444
    const/16 v22, 0x0

    .line 446
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 449
    move-result-object v23

    .line 450
    move-object/from16 v17, p0

    .line 452
    move-object/from16 v18, p0

    .line 454
    move-object/from16 v21, v15

    .line 456
    invoke-virtual/range {v17 .. v23}, Lcom/autonavi/mqtt/service/PushService;->y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/mqtt/service/PushService;->A()V

    .line 462
    goto :goto_2

    .line 463
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/mqtt/service/PushService;->A()V

    .line 466
    :goto_2
    return-void
.end method

.method public y(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->k:Lds;

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, "MQTT PushService:   onSendNotifcation() begin"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    sget-object v3, Lcom/autonavi/mqtt/service/PushService;->k:Lds;

    .line 20
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    new-array v3, v1, [Ljava/lang/Object;

    .line 33
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    sget-object v4, Lcom/autonavi/mqtt/service/PushService;->k:Lds;

    .line 38
    move-object v5, p1

    .line 39
    move-object v6, p2

    .line 40
    move-object v7, p3

    .line 41
    move-object v8, p4

    .line 42
    move-object/from16 v9, p6

    .line 44
    invoke-virtual/range {v4 .. v9}, Lds;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    move-result v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v4, "MQTT PushService:   onSendNotifcation() end rc:"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 69
    new-array v4, v1, [Ljava/lang/Object;

    .line 71
    invoke-static {v0, v3, v4}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    const/4 v3, 0x1

    .line 75
    if-ne v3, v2, :cond_1

    .line 77
    const-string v2, "MQTT PushService:  end1"

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 87
    const-string v2, "MQTT PushService: mqttNotificationObserver == null"

    .line 89
    new-array v3, v1, [Ljava/lang/Object;

    .line 91
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    sget-object v0, Lcom/autonavi/mqtt/service/PushService;->g:Ljava/lang/String;

    .line 96
    const-string v2, "MQTT PushService: sendNotifaction"

    .line 98
    new-array v3, v1, [Ljava/lang/Object;

    .line 100
    invoke-static {v0, v2, v3}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 105
    const/16 v3, 0x1a

    .line 107
    if-lt v2, v3, :cond_2

    .line 109
    invoke-virtual/range {p0 .. p6}, Lcom/autonavi/mqtt/service/PushService;->s(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 112
    move-result-object v2

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/autonavi/mqtt/service/PushService;->r(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    .line 117
    move-result-object v2

    .line 118
    :goto_0
    move-object v3, p0

    .line 119
    invoke-virtual {p0, v2}, Lcom/autonavi/mqtt/service/PushService;->v(Landroid/app/Notification;)V

    .line 122
    const-string v2, "MQTT PushService:  end2"

    .line 124
    new-array v1, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, v2, v1}, Lez;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-void
.end method

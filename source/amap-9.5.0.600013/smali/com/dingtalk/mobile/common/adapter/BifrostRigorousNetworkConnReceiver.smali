.class public abstract Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private lastConnected:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private netSubType:I

.field private netType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netType:I

    .line 7
    iput v0, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netSubType:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->lastConnected:Ljava/lang/Boolean;

    .line 12
    iput-object p1, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method

.method private getNetworkState(Landroid/content/Context;)I
    .locals 9

    .line 1
    const-string v0, "BifrostRigorousNetworkConnReceiver"

    .line 3
    const-string v1, "connectivity"

    .line 5
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Landroid/net/ConnectivityManager;

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "getActiveNetworkInfo exception. "

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    const/4 v1, 0x0

    .line 39
    if-nez p1, :cond_0

    .line 41
    const-string p1, "No network"

    .line 43
    invoke-static {v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 48
    iput-object p1, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->lastConnected:Ljava/lang/Boolean;

    .line 50
    return v1

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isAvailable()Z

    .line 54
    move-result v2

    .line 55
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 58
    move-result v3

    .line 59
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    .line 62
    move-result v4

    .line 63
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 66
    move-result v5

    .line 67
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 70
    move-result-object v6

    .line 71
    iget v7, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netType:I

    .line 73
    const/4 v8, -0x1

    .line 74
    if-eq v7, v8, :cond_2

    .line 76
    iget v7, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netSubType:I

    .line 78
    if-eq v7, v8, :cond_2

    .line 80
    iget-object v7, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->lastConnected:Ljava/lang/Boolean;

    .line 82
    if-nez v7, :cond_1

    .line 84
    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 88
    move-result v7

    .line 89
    if-ne v7, v3, :cond_3

    .line 91
    iget v7, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netType:I

    .line 93
    if-ne v7, v4, :cond_3

    .line 95
    iget v7, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netSubType:I

    .line 97
    if-ne v7, v5, :cond_3

    .line 99
    const-string p1, " Old contivity broadcast!"

    .line 101
    invoke-static {v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const/4 p1, 0x2

    .line 105
    return p1

    .line 106
    :cond_2
    :goto_1
    const-string v7, " New contivity broadcast!"

    .line 108
    invoke-static {v0, v7}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object v7

    .line 115
    iput-object v7, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->lastConnected:Ljava/lang/Boolean;

    .line 117
    iput v4, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netType:I

    .line 119
    iput v5, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->netSubType:I

    .line 121
    new-instance v7, Ljava/lang/StringBuilder;

    .line 123
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    const-string v8, " type=["

    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string v4, "] subType=["

    .line 136
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    const-string v4, "]  available=["

    .line 144
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, "] connected=["

    .line 152
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    const-string v2, "] detailedState=["

    .line 160
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    const-string v2, "] extraInfo=["

    .line 172
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v2, "]"

    .line 180
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    invoke-static {v0, v2}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance v2, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    const-string v3, " activeNetworkInfo hashcode="

    .line 197
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 203
    move-result v3

    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    const-string v3, "  activeNetworkInfo = ["

    .line 209
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string p1, "]\n\n\n"

    .line 221
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    move-result-object p1

    .line 228
    invoke-static {v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->lastConnected:Ljava/lang/Boolean;

    .line 233
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 236
    move-result p1

    .line 237
    if-nez p1, :cond_4

    .line 239
    return v1

    .line 240
    :cond_4
    const/4 p1, 0x1

    .line 241
    return p1
.end method


# virtual methods
.method public abstract doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-string v0, "monitor"

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v2, "onReceive at: "

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v2, ", Intent: "

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    invoke-static {v0, v1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 54
    invoke-static {}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->getInstance()Lcom/dingtalk/gaea/android/satcom/SatcomService;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Lcom/dingtalk/gaea/android/satcom/SatcomService;->onConnectivityActionReceive(Landroid/content/Intent;)Z

    .line 61
    invoke-direct {p0, p1}, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->getNetworkState(Landroid/content/Context;)I

    .line 64
    move-result v0

    .line 65
    if-nez v0, :cond_1

    .line 67
    invoke-virtual {p0, p1, p2}, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 v1, 0x1

    .line 72
    if-ne v0, v1, :cond_2

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->doOnReceive(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    goto :goto_0

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    const-string p2, "BifrostRigorousNetworkConnReceiver"

    .line 81
    const-string v0, "onReceive exception:"

    .line 83
    invoke-static {p2, v0, p1}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_2
    :goto_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->mContext:Landroid/content/Context;

    .line 3
    new-instance v1, Landroid/content/IntentFilter;

    .line 5
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 7
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "BifrostRigorousNetworkConnReceiver"

    .line 17
    invoke-static {v1, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :goto_0
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    const-string v1, "BifrostRigorousNetworkConnReceiver"

    .line 10
    invoke-static {v1, v0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :goto_0
    return-void
.end method

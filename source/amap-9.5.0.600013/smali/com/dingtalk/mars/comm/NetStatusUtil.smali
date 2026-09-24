.class public Lcom/dingtalk/mars/comm/NetStatusUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dingtalk/mars/comm/NetStatusUtil$StrengthListener;
    }
.end annotation


# static fields
.field public static final CMNET:I = 0x6

.field public static final CMWAP:I = 0x5

.field public static final CTNET:I = 0x8

.field public static final CTWAP:I = 0x7

.field public static final LTE:I = 0xa

.field public static final MOBILE:I = 0x9

.field public static final NETTYPE_NOT_WIFI:I = 0x0

.field public static final NETTYPE_WIFI:I = 0x1

.field public static final NET_3G:I = 0x4

.field public static final NON_NETWORK:I = -0x1

.field public static final NO_SIM_OPERATOR:I = 0x0

.field public static final POLICY_NONE:I = 0x0

.field public static final POLICY_REJECT_METERED_BACKGROUND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "bifrost.NetStatusUtil"

.field public static final TBACKGROUND_DATA_LIMITED:I = 0x2

.field public static final TBACKGROUND_NOT_LIMITED:I = 0x0

.field public static final TBACKGROUND_PROCESS_LIMITED:I = 0x1

.field public static final TBACKGROUND_WIFI_LIMITED:I = 0x3

.field public static final UNINET:I = 0x1

.field public static final UNIWAP:I = 0x2

.field public static final UNKNOW_TYPE:I = 0x3e7

.field public static final WAP_3G:I = 0x3

.field public static final WIFI:I

.field private static nowStrength:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$002(I)I
    .locals 0

    .line 1
    sput p0, Lcom/dingtalk/mars/comm/NetStatusUtil;->nowStrength:I

    .line 3
    return p0
.end method

.method public static dumpNetStatus(Landroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "bifrost.NetStatusUtil"

    .line 3
    if-nez p0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    const-string v1, "connectivity"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 17
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-static {v0, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    const-string v1, "dumpNetStatus error"

    .line 32
    invoke-static {v0, v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :goto_0
    return-void
.end method

.method public static getBackgroundLimitType(Landroid/content/Context;)I
    .locals 7

    .line 1
    const-string v0, "bifrost.NetStatusUtil"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    const-string v3, "android.app.ActivityManagerNative"

    .line 7
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    move-result-object v3

    .line 11
    const-string v4, "getDefault"

    .line 13
    new-array v5, v2, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v4

    .line 19
    new-array v5, v2, [Ljava/lang/Object;

    .line 21
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "getProcessLimit"

    .line 31
    new-array v6, v2, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v4

    .line 37
    new-array v5, v2, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Ljava/lang/Integer;

    .line 45
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 48
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    if-nez v3, :cond_0

    .line 51
    return v1

    .line 52
    :catch_0
    move-exception v3

    .line 53
    invoke-static {v0, v3}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getWifiSleeepPolicy(Landroid/content/Context;)I

    .line 59
    move-result v3

    .line 60
    const/4 v4, 0x2

    .line 61
    if-eq v3, v4, :cond_3

    .line 63
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getNetType(Landroid/content/Context;)I

    .line 66
    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    if-eqz p0, :cond_1

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    if-eq v3, v1, :cond_2

    .line 72
    if-nez v3, :cond_4

    .line 74
    :cond_2
    const/4 p0, 0x3

    .line 75
    return p0

    .line 76
    :cond_3
    :goto_0
    return v2

    .line 77
    :catch_1
    move-exception p0

    .line 78
    invoke-static {v0, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    :cond_4
    return v2
.end method

.method public static getDnsServers(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "bifrost.NetStatusUtil"

    .line 4
    if-nez p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    const-string v2, "connectivity"

    .line 12
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 18
    if-nez p0, :cond_1

    .line 20
    const-string p0, "[getDnsServers] no connectivityManager"

    .line 22
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-object v0

    .line 26
    :cond_1
    invoke-static {p0}, Lna;->a(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_2

    .line 32
    const-string p0, "[getDnsServers] no activeNetwork"

    .line 34
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    return-object v0

    .line 38
    :cond_2
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    .line 41
    move-result-object v3

    .line 42
    if-eqz v3, :cond_7

    .line 44
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_3

    .line 50
    goto :goto_1

    .line 51
    :cond_3
    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    .line 54
    move-result-object p0

    .line 55
    if-nez p0, :cond_4

    .line 57
    const-string p0, "[getDnsServers]no linkProperties"

    .line 59
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-object v0

    .line 63
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v3, "iface = "

    .line 70
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string v3, "dns = "

    .line 94
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v2

    .line 108
    invoke-static {v1, v2}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    .line 114
    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 118
    move-result v2

    .line 119
    if-gtz v2, :cond_5

    .line 121
    const-string p0, "[getDnsServers]no targetDnses"

    .line 123
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    return-object v0

    .line 127
    :cond_5
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 130
    move-result v2

    .line 131
    new-array v2, v2, [Ljava/lang/String;

    .line 133
    const/4 v3, 0x0

    .line 134
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 137
    move-result v4

    .line 138
    if-ge v3, v4, :cond_6

    .line 140
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    move-result-object v4

    .line 144
    check-cast v4, Ljava/net/InetAddress;

    .line 146
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 149
    move-result-object v4

    .line 150
    aput-object v4, v2, v3

    .line 152
    add-int/lit8 v3, v3, 0x1

    .line 154
    goto :goto_0

    .line 155
    :cond_6
    return-object v2

    .line 156
    :cond_7
    :goto_1
    const-string p0, "[getDnsServers]activeNetwork error"

    .line 158
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    return-object v0

    .line 162
    :catchall_0
    move-exception p0

    .line 163
    const-string v2, "[getDnsServers] error"

    .line 165
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 168
    return-object v0
.end method

.method public static getISPCode(Landroid/content/Context;)I
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "phone"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 16
    if-nez p0, :cond_1

    .line 18
    return v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_6

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x5

    .line 30
    if-ge v1, v2, :cond_2

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 41
    move-result v2

    .line 42
    const/4 v3, 0x6

    .line 43
    if-le v2, v3, :cond_3

    .line 45
    const/4 v2, 0x6

    .line 46
    :cond_3
    const/4 v3, 0x0

    .line 47
    :goto_0
    if-ge v3, v2, :cond_5

    .line 49
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 52
    move-result v4

    .line 53
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_4

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 62
    move-result v4

    .line 63
    if-gtz v4, :cond_5

    .line 65
    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 69
    move-result v4

    .line 70
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 83
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 87
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    return p0

    .line 89
    :cond_6
    :goto_2
    return v0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    const-string v1, "bifrost.NetStatusUtil"

    .line 93
    const-string v2, "getISPCode error"

    .line 95
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 98
    return v0
.end method

.method public static getISPName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, ""

    .line 3
    if-nez p0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    const-string v1, "phone"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 17
    if-nez p0, :cond_1

    .line 19
    return-object v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x64

    .line 30
    if-gt v1, v2, :cond_2

    .line 32
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0

    .line 37
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    return-object p0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    const-string v1, "bifrost.NetStatusUtil"

    .line 50
    const-string v2, "getISPName error"

    .line 52
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    return-object v0
.end method

.method public static getNetType(Landroid/content/Context;)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "connectivity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    if-nez p0, :cond_1

    .line 18
    return v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_2

    .line 25
    return v0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 29
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    if-ne v1, v2, :cond_3

    .line 33
    const/4 p0, 0x0

    .line 34
    return p0

    .line 35
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_c

    .line 41
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 45
    const-string v3, "uninet"

    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_4

    .line 53
    return v2

    .line 54
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 57
    move-result-object v1

    .line 58
    const-string v2, "uniwap"

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 66
    const/4 p0, 0x2

    .line 67
    return p0

    .line 68
    :cond_5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 72
    const-string v2, "3gwap"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_6

    .line 80
    const/4 p0, 0x3

    .line 81
    return p0

    .line 82
    :cond_6
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 85
    move-result-object v1

    .line 86
    const-string v2, "3gnet"

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 91
    move-result v1

    .line 92
    if-eqz v1, :cond_7

    .line 94
    const/4 p0, 0x4

    .line 95
    return p0

    .line 96
    :cond_7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 99
    move-result-object v1

    .line 100
    const-string v2, "cmwap"

    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_8

    .line 108
    const/4 p0, 0x5

    .line 109
    return p0

    .line 110
    :cond_8
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    const-string v2, "cmnet"

    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 119
    move-result v1

    .line 120
    if-eqz v1, :cond_9

    .line 122
    const/4 p0, 0x6

    .line 123
    return p0

    .line 124
    :cond_9
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    const-string v2, "ctwap"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_a

    .line 136
    const/4 p0, 0x7

    .line 137
    return p0

    .line 138
    :cond_a
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 141
    move-result-object v1

    .line 142
    const-string v2, "ctnet"

    .line 144
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_b

    .line 150
    const/16 p0, 0x8

    .line 152
    return p0

    .line 153
    :cond_b
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 156
    move-result-object p0

    .line 157
    const-string v1, "LTE"

    .line 159
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 162
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz p0, :cond_c

    .line 165
    const/16 p0, 0xa

    .line 167
    return p0

    .line 168
    :cond_c
    const/16 p0, 0x9

    .line 170
    return p0

    .line 171
    :catchall_0
    move-exception p0

    .line 172
    const-string v1, "bifrost.NetStatusUtil"

    .line 174
    const-string v2, "getNetType"

    .line 176
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 179
    return v0
.end method

.method public static getNetTypeForStat(Landroid/content/Context;)I
    .locals 3

    .line 1
    const/16 v0, 0x3e7

    .line 3
    if-nez p0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    :goto_0
    if-nez p0, :cond_1

    .line 14
    return v0

    .line 15
    :cond_1
    const-string v1, "connectivity"

    .line 17
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 23
    if-nez p0, :cond_2

    .line 25
    return v0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 29
    move-result-object p0

    .line 30
    if-nez p0, :cond_3

    .line 32
    return v0

    .line 33
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 36
    move-result v1

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v1, v2, :cond_4

    .line 40
    return v2

    .line 41
    :cond_4
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 44
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    if-nez p0, :cond_5

    .line 47
    return v0

    .line 48
    :cond_5
    mul-int/lit16 p0, p0, 0x3e8

    .line 50
    return p0

    .line 51
    :goto_1
    const-string v1, "bifrost.NetStatusUtil"

    .line 53
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    return v0
.end method

.method public static getNetTypeString(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "NON_NETWORK"

    .line 3
    if-nez p0, :cond_0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 9
    :cond_0
    const-string v1, "connectivity"

    .line 11
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 17
    if-nez p0, :cond_1

    .line 19
    return-object v0

    .line 20
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 23
    move-result-object p0

    .line 24
    if-nez p0, :cond_2

    .line 26
    return-object v0

    .line 27
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-ne v1, v2, :cond_3

    .line 34
    const-string p0, "WIFI"

    .line 36
    return-object p0

    .line 37
    :cond_3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_4

    .line 43
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_4
    const-string p0, "MOBILE"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    const-string v1, "bifrost.NetStatusUtil"

    .line 54
    const-string v2, "getNetTypeString error"

    .line 56
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return-object v0
.end method

.method public static getNetWorkSubType(Landroid/content/Context;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    const-string v0, "connectivity"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    const-string v0, "bifrost.NetStatusUtil"

    .line 29
    const-string v1, "getNetWorkType error"

    .line 31
    invoke-static {v0, v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public static getNetWorkType(Landroid/content/Context;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    const-string v0, "connectivity"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object p0

    .line 19
    if-eqz p0, :cond_1

    .line 21
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 24
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    return p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    const-string v0, "bifrost.NetStatusUtil"

    .line 29
    const-string v1, "getNetWorkType error"

    .line 31
    invoke-static {v0, v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    const/4 p0, -0x1

    .line 35
    return p0
.end method

.method public static getProxyInfo(Landroid/content/Context;Ljava/lang/StringBuffer;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    :cond_0
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    .line 13
    move-result v0

    .line 14
    if-eqz p0, :cond_1

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 19
    move-result v1

    .line 20
    if-lez v1, :cond_1

    .line 22
    if-lez v0, :cond_1

    .line 24
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    return v0

    .line 28
    :cond_1
    const-string p0, "http.proxyHost"

    .line 30
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    const-string v0, "http.proxyPort"

    .line 36
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 45
    move-result v1

    .line 46
    if-lez v1, :cond_2

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 51
    move-result v0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/16 v0, 0x50

    .line 55
    :goto_0
    if-eqz p0, :cond_3

    .line 57
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 60
    move-result v1

    .line 61
    if-lez v1, :cond_3

    .line 63
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return v0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p1, "bifrost.NetStatusUtil"

    .line 70
    invoke-static {p1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_3
    const/4 p0, 0x0

    .line 74
    return p0
.end method

.method public static getWifiInfo(Landroid/content/Context;)Landroid/net/wifi/WifiInfo;
    .locals 7

    .line 1
    const-string v0, "connectivity"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    goto :goto_3

    .line 13
    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/net/ConnectivityManager;

    .line 19
    if-nez v2, :cond_1

    .line 21
    return-object v1

    .line 22
    :cond_1
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 25
    move-result-object v2

    .line 26
    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    .line 31
    move-result v2

    .line 32
    const/4 v3, 0x1

    .line 33
    if-eq v3, v2, :cond_2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 38
    const/16 v4, 0x1f

    .line 40
    if-ge v2, v4, :cond_3

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 45
    move-result-object p0

    .line 46
    const-string v0, "wifi"

    .line 48
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 51
    move-result-object p0

    .line 52
    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 54
    if-eqz p0, :cond_5

    .line 56
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 59
    move-result-object v1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 65
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 67
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    .line 70
    move-result-object v0

    .line 71
    array-length v2, v0

    .line 72
    const/4 v4, 0x0

    .line 73
    :goto_1
    if-ge v4, v2, :cond_5

    .line 75
    aget-object v5, v0, v4

    .line 77
    invoke-virtual {p0, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 80
    move-result-object v5

    .line 81
    if-eqz v5, :cond_4

    .line 83
    invoke-virtual {v5, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 86
    move-result v6

    .line 87
    if-eqz v6, :cond_4

    .line 89
    invoke-static {v5}, Lc30;->a(Landroid/net/NetworkCapabilities;)Landroid/net/TransportInfo;

    .line 92
    move-result-object v5

    .line 93
    instance-of v6, v5, Landroid/net/wifi/WifiInfo;

    .line 95
    if-eqz v6, :cond_4

    .line 97
    check-cast v5, Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    move-object v1, v5

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 103
    goto :goto_1

    .line 104
    :cond_5
    :goto_2
    return-object v1

    .line 105
    :goto_3
    const-string v0, "bifrost.NetStatusUtil"

    .line 107
    invoke-static {v0, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    return-object v1
.end method

.method public static getWifiSleeepPolicy(Landroid/content/Context;)I
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, "wifi_sleep_policy"

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    move-result p0

    .line 18
    return p0
.end method

.method public static guessNetSpeed(Landroid/content/Context;)I
    .locals 3

    .line 1
    const v0, 0x19000

    .line 4
    if-nez p0, :cond_0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 10
    :cond_0
    const-string v1, "connectivity"

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 16
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 18
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    if-ne v1, v2, :cond_1

    .line 29
    return v0

    .line 30
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 33
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    if-eq p0, v2, :cond_3

    .line 36
    const/4 v1, 0x2

    .line 37
    if-eq p0, v1, :cond_2

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/16 p0, 0x2000

    .line 42
    return p0

    .line 43
    :cond_3
    const/16 p0, 0x1000

    .line 45
    return p0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    const-string v1, "bifrost.NetStatusUtil"

    .line 49
    const-string v2, "guessNetSpeed"

    .line 51
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 54
    :goto_0
    return v0
.end method

.method public static is2G(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "connectivity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x2

    .line 33
    if-eq v1, v3, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 38
    move-result v1

    .line 39
    if-eq v1, v2, :cond_2

    .line 41
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 44
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    const/4 v1, 0x4

    .line 46
    if-ne p0, v1, :cond_3

    .line 48
    :cond_2
    return v2

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    const-string v1, "bifrost.NetStatusUtil"

    .line 52
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_3
    return v0
.end method

.method public static is3G(Landroid/content/Context;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "connectivity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 31
    move-result v1

    .line 32
    const/4 v3, 0x5

    .line 33
    if-lt v1, v3, :cond_2

    .line 35
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 38
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    const/16 v1, 0xd

    .line 41
    if-ge p0, v1, :cond_2

    .line 43
    return v2

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    const-string v1, "bifrost.NetStatusUtil"

    .line 47
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 50
    :cond_2
    return v0
.end method

.method public static is4G(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "connectivity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x1

    .line 25
    if-ne v1, v2, :cond_1

    .line 27
    return v0

    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 31
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    const/16 v1, 0xd

    .line 34
    if-lt p0, v1, :cond_2

    .line 36
    return v2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    const-string v1, "bifrost.NetStatusUtil"

    .line 40
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    :cond_2
    return v0
.end method

.method public static isConnected(Landroid/content/Context;)Z
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    const-string v0, "connectivity"

    .line 9
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 15
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 22
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    const-string v0, "bifrost.NetStatusUtil"

    .line 27
    invoke-static {v0, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
.end method

.method public static isImmediatelyDestroyActivities(Landroid/content/Context;)Z
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    const-string v0, "always_finish_activities"

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 17
    move-result p0

    .line 18
    if-eqz p0, :cond_1

    .line 20
    const/4 v1, 0x1

    .line 21
    :cond_1
    return v1
.end method

.method public static isKnownDirectNet(Landroid/content/Context;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getNetType(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x6

    .line 6
    const/4 v1, 0x1

    .line 7
    if-eq v0, p0, :cond_1

    .line 9
    if-eq v1, p0, :cond_1

    .line 11
    const/4 v0, 0x4

    .line 12
    if-eq v0, p0, :cond_1

    .line 14
    const/16 v0, 0x8

    .line 16
    if-eq v0, p0, :cond_1

    .line 18
    const/16 v0, 0xa

    .line 20
    if-eq v0, p0, :cond_1

    .line 22
    if-nez p0, :cond_0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :cond_1
    :goto_0
    return v1
.end method

.method public static isLimited(I)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    if-eq p0, v1, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isMobile(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "connectivity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 23
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    const/4 v1, 0x1

    .line 25
    if-eq p0, v1, :cond_1

    .line 27
    const/4 v0, 0x1

    .line 28
    :cond_1
    return v0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    const-string v1, "bifrost.NetStatusUtil"

    .line 32
    invoke-static {v1, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    return v0
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 7
    move-result-object p0

    .line 8
    :cond_0
    const-string v1, "connectivity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 16
    if-nez p0, :cond_1

    .line 18
    return v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 22
    move-result-object p0

    .line 23
    if-nez p0, :cond_2

    .line 25
    return v0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 29
    move-result-object p0

    .line 30
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    if-ne p0, v1, :cond_3

    .line 34
    const/4 v0, 0x1

    .line 35
    :cond_3
    return v0

    .line 36
    :catchall_0
    move-exception p0

    .line 37
    const-string v1, "bifrost.NetStatusUtil"

    .line 39
    const-string v2, "isNetworkConnected error"

    .line 41
    invoke-static {v1, v2, p0}, Lcom/dingtalk/mobile/common/transport/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    return v0
.end method

.method public static isWap(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isWap(Landroid/content/Context;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getNetType(Landroid/content/Context;)I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->isWap(I)Z

    move-result p0

    return p0
.end method

.method public static isWifi(I)Z
    .locals 0

    .line 1
    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isWifi(Landroid/content/Context;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->getNetType(Landroid/content/Context;)I

    move-result p0

    .line 3
    invoke-static {p0}, Lcom/dingtalk/mars/comm/NetStatusUtil;->isWifi(I)Z

    move-result p0

    return p0
.end method

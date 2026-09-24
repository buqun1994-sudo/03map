.class public final enum Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_2G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_3G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_4G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_BLUETOOTH:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_ETHERNET:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_NONE:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_UNKNOWN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_UNKNOWN_CELLULAR:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_VPN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

.field public static final enum CONNECTION_WIFI:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 3
    const-string v1, "CONNECTION_UNKNOWN"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 9
    sput-object v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 11
    new-instance v1, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 13
    const-string v3, "CONNECTION_ETHERNET"

    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 19
    sput-object v1, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_ETHERNET:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 21
    new-instance v3, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 23
    const-string v5, "CONNECTION_WIFI"

    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 29
    sput-object v3, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_WIFI:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 31
    new-instance v5, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 33
    const-string v7, "CONNECTION_4G"

    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 39
    sput-object v5, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_4G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 41
    new-instance v7, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 43
    const-string v9, "CONNECTION_3G"

    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 49
    sput-object v7, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_3G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 51
    new-instance v9, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 53
    const-string v11, "CONNECTION_2G"

    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 59
    sput-object v9, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_2G:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 61
    new-instance v11, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 63
    const-string v13, "CONNECTION_UNKNOWN_CELLULAR"

    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 69
    sput-object v11, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 71
    new-instance v13, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 73
    const-string v15, "CONNECTION_BLUETOOTH"

    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 79
    sput-object v13, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 81
    new-instance v15, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 83
    const-string v14, "CONNECTION_VPN"

    .line 85
    const/16 v12, 0x8

    .line 87
    invoke-direct {v15, v14, v12}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 90
    sput-object v15, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_VPN:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 92
    new-instance v14, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 94
    const-string v12, "CONNECTION_NONE"

    .line 96
    const/16 v10, 0x9

    .line 98
    invoke-direct {v14, v12, v10}, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;-><init>(Ljava/lang/String;I)V

    .line 101
    sput-object v14, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->CONNECTION_NONE:Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 103
    const/16 v12, 0xa

    .line 105
    new-array v12, v12, [Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 107
    aput-object v0, v12, v2

    .line 109
    aput-object v1, v12, v4

    .line 111
    aput-object v3, v12, v6

    .line 113
    aput-object v5, v12, v8

    .line 115
    const/4 v0, 0x4

    .line 116
    aput-object v7, v12, v0

    .line 118
    const/4 v0, 0x5

    .line 119
    aput-object v9, v12, v0

    .line 121
    const/4 v0, 0x6

    .line 122
    aput-object v11, v12, v0

    .line 124
    const/4 v0, 0x7

    .line 125
    aput-object v13, v12, v0

    .line 127
    const/16 v0, 0x8

    .line 129
    aput-object v15, v12, v0

    .line 131
    aput-object v14, v12, v10

    .line 133
    sput-object v12, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->$VALUES:[Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 135
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;
    .locals 1

    .line 1
    const-class v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 9
    return-object p0
.end method

.method public static values()[Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->$VALUES:[Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 3
    invoke-virtual {v0}, [Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/dingtalk/gaea/android/bridge/base/NetworkInformation$ConnectionType;

    .line 9
    return-object v0
.end method

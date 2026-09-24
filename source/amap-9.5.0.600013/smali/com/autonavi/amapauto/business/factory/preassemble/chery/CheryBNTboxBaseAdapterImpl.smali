.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;
.super Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;
.source "SourceFile"


# static fields
.field private static final KEY_DATA_CONNECTION:Ljava/lang/String; = "data_connection"

.field private static final KEY_NET_TYPE:Ljava/lang/String; = "net_type"

.field private static final KEY_SIGNAL_SUM:Ljava/lang/String; = "signal_sum"

.field private static final TAG:Ljava/lang/String; = "CheryBNTboxBase_InteractionImpl"


# instance fields
.field mContext:Landroid/content/Context;

.field private mDataConnectionObserver:Landroid/database/ContentObserver;

.field private mNetTypeObserver:Landroid/database/ContentObserver;

.field private mNetWorkType:I

.field private mSignalObserver:Landroid/database/ContentObserver;

.field private mSignalStrength:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;-><init>(Landroid/content/Context;)V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetWorkType:I

    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalStrength:I

    .line 10
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$1;-><init>(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;Landroid/os/Handler;)V

    .line 16
    iput-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetTypeObserver:Landroid/database/ContentObserver;

    .line 18
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$2;

    .line 20
    invoke-direct {v0, p0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$2;-><init>(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;Landroid/os/Handler;)V

    .line 23
    iput-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalObserver:Landroid/database/ContentObserver;

    .line 25
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$3;

    .line 27
    invoke-direct {v0, p0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl$3;-><init>(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;Landroid/os/Handler;)V

    .line 30
    iput-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mDataConnectionObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 34
    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getNetWorkType()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$100(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetWorkType:I

    .line 3
    return p0
.end method

.method public static synthetic access$102(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetWorkType:I

    .line 3
    return p1
.end method

.method public static synthetic access$200(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getSignalStrength()I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$300(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalStrength:I

    .line 3
    return p0
.end method

.method public static synthetic access$302(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalStrength:I

    .line 3
    return p1
.end method

.method public static synthetic access$400(Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;)Landroid/database/ContentObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetTypeObserver:Landroid/database/ContentObserver;

    .line 3
    return-object p0
.end method

.method private getAutoSignalStrength(I)I
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-gez p1, :cond_1

    .line 5
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 6
    goto :goto_1

    .line 7
    :cond_1
    const/4 v2, 0x6

    .line 8
    if-gt p1, v2, :cond_2

    .line 10
    goto :goto_0

    .line 11
    :cond_2
    const/16 v2, 0xc

    .line 13
    if-gt p1, v2, :cond_3

    .line 15
    const/4 p1, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_3
    const/16 v2, 0x12

    .line 19
    if-gt p1, v2, :cond_4

    .line 21
    const/4 p1, 0x2

    .line 22
    goto :goto_1

    .line 23
    :cond_4
    const/16 v2, 0x18

    .line 25
    if-gt p1, v2, :cond_5

    .line 27
    const/4 p1, 0x3

    .line 28
    goto :goto_1

    .line 29
    :cond_5
    const/16 v2, 0x1e

    .line 31
    if-gt p1, v2, :cond_0

    .line 33
    const/4 p1, 0x4

    .line 34
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v2

    .line 40
    aput-object v2, v0, v1

    .line 42
    const-string v1, "CheryBNTboxBase_InteractionImpl"

    .line 44
    const-string v2, "getAutoSignalStrength = {?}"

    .line 46
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return p1
.end method

.method private getNetSignalStrength()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getSignalStrength()I

    .line 4
    move-result v0

    .line 5
    invoke-direct {p0, v0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getAutoSignalStrength(I)I

    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method private getNetWorkType()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->isDataConnection()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, -0x1

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getTboxNetWorkType()I

    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private getSignalStrength()I
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "signal_sum"

    .line 10
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 13
    move-result v0

    .line 14
    const-string v1, "CheryBNTboxBase_InteractionImpl"

    .line 16
    const-string v2, "Settings.Global.getString signal_sum="

    .line 18
    const/4 v3, 0x1

    .line 19
    new-array v3, v3, [Ljava/lang/Object;

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v4

    .line 25
    const/4 v5, 0x0

    .line 26
    aput-object v4, v3, v5

    .line 28
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_0
    return v0
.end method

.method private getTboxNetWorkType()I
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "net_type"

    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v2, v1, [Ljava/lang/Object;

    .line 16
    const/4 v3, 0x0

    .line 17
    aput-object v0, v2, v3

    .line 19
    const-string v4, "CheryBNTboxBase_InteractionImpl"

    .line 21
    const-string v5, "Settings.Global.getString net_type="

    .line 23
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    return v3

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 36
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 39
    move-result v2

    .line 40
    const/4 v4, 0x3

    .line 41
    const/4 v5, 0x2

    .line 42
    const/4 v6, -0x1

    .line 43
    sparse-switch v2, :sswitch_data_0

    .line 46
    goto :goto_0

    .line 47
    :sswitch_0
    const-string v2, "5G"

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v6, 0x3

    .line 57
    goto :goto_0

    .line 58
    :sswitch_1
    const-string v2, "4G"

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    const/4 v6, 0x2

    .line 68
    goto :goto_0

    .line 69
    :sswitch_2
    const-string v2, "3G"

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_3

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    const/4 v6, 0x1

    .line 79
    goto :goto_0

    .line 80
    :sswitch_3
    const-string v2, "2G"

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_4

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    const/4 v6, 0x0

    .line 90
    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 93
    const/4 v1, 0x0

    .line 94
    goto :goto_1

    .line 95
    :pswitch_0
    const/4 v1, 0x3

    .line 96
    goto :goto_1

    .line 97
    :pswitch_1
    const/4 v1, 0x2

    .line 98
    :goto_1
    :pswitch_2
    return v1

    .line 99
    :sswitch_data_0
    .sparse-switch
        0x655 -> :sswitch_3
        0x674 -> :sswitch_2
        0x693 -> :sswitch_1
        0x6b2 -> :sswitch_0
    .end sparse-switch

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isDataConnection()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "data_connection"

    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    const-string v3, "CheryBNTboxBase_InteractionImpl"

    .line 21
    const-string v4, "Settings.Global.getString data_connection="

    .line 23
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    return v2

    .line 33
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const-string v1, "1"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 43
    return v0
.end method


# virtual methods
.method public cleanup()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetTypeObserver:Landroid/database/ContentObserver;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v0

    .line 18
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalObserver:Landroid/database/ContentObserver;

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 23
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 28
    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mDataConnectionObserver:Landroid/database/ContentObserver;

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 34
    invoke-super {p0}, Lmc;->cleanup()Z

    .line 37
    move-result v0

    .line 38
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2725

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBaseInteractionImpl;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public getIntValue(I)I
    .locals 1

    .line 1
    const/16 v0, 0x753a

    .line 3
    if-eq p1, v0, :cond_1

    .line 5
    const/16 v0, 0x753b

    .line 7
    if-eq p1, v0, :cond_0

    .line 9
    invoke-super {p0, p1}, Lmc;->getIntValue(I)I

    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getNetSignalStrength()I

    .line 17
    move-result p1

    .line 18
    return p1

    .line 19
    :cond_1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->getNetWorkType()I

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public startup()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, "net_type"

    .line 9
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetTypeObserver:Landroid/database/ContentObserver;

    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 19
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mNetTypeObserver:Landroid/database/ContentObserver;

    .line 21
    const/4 v1, 0x1

    .line 22
    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 25
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 30
    move-result-object v0

    .line 31
    const-string v2, "signal_sum"

    .line 33
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 36
    move-result-object v2

    .line 37
    iget-object v4, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalObserver:Landroid/database/ContentObserver;

    .line 39
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 42
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mSignalObserver:Landroid/database/ContentObserver;

    .line 44
    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 47
    iget-object v0, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mContext:Landroid/content/Context;

    .line 49
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    move-result-object v0

    .line 53
    const-string v1, "data_connection"

    .line 55
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object v1

    .line 59
    iget-object v2, p0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryBNTboxBaseAdapterImpl;->mDataConnectionObserver:Landroid/database/ContentObserver;

    .line 61
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    invoke-super {p0}, Lmc;->startup()Z

    .line 67
    move-result v0

    .line 68
    return v0
.end method

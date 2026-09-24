.class public Lcom/amap/location/signal/impl/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/cell/ITelephonyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/signal/impl/a/b$a;
    }
.end annotation


# instance fields
.field private a:Landroid/telephony/TelephonyManager;

.field private b:Landroid/net/ConnectivityManager;

.field private c:Landroid/telephony/TelephonyManager$CellInfoCallback;

.field private d:Landroid/telephony/SignalStrength;

.field private e:Landroid/telephony/PhoneStateListener;

.field private f:Lcom/amap/location/support/signal/cell/AmapCellListener;

.field private g:J

.field private h:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/amap/location/signal/impl/a/b;->g:J

    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/b;->h:Z

    .line 11
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 17
    invoke-static {}, Lcom/amap/location/signal/impl/util/SystemServerHelper;->getConnectivityManager()Landroid/net/ConnectivityManager;

    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/b;->b:Landroid/net/ConnectivityManager;

    .line 23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 25
    const/16 v1, 0x1d

    .line 27
    if-lt v0, v1, :cond_0

    .line 29
    new-instance v0, Lcom/amap/location/signal/impl/a/b$1;

    .line 31
    invoke-direct {v0, p0}, Lcom/amap/location/signal/impl/a/b$1;-><init>(Lcom/amap/location/signal/impl/a/b;)V

    .line 34
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/b;->c:Landroid/telephony/TelephonyManager$CellInfoCallback;

    .line 36
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v0}, Lcom/amap/location/support/handler/HandlerThreadManager;->getMyLooperObject()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    const/4 v1, 0x0

    .line 45
    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 54
    move-result-object v2

    .line 55
    invoke-interface {v0, v2, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Lcom/amap/location/signal/impl/a/b$2;

    .line 61
    invoke-direct {v1, p0}, Lcom/amap/location/signal/impl/a/b$2;-><init>(Lcom/amap/location/signal/impl/a/b;)V

    .line 64
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lcom/amap/location/signal/impl/a/b$a;

    .line 70
    invoke-direct {v0, p0, v1}, Lcom/amap/location/signal/impl/a/b$a;-><init>(Lcom/amap/location/signal/impl/a/b;Lcom/amap/location/signal/impl/a/b$1;)V

    .line 73
    iput-object v0, p0, Lcom/amap/location/signal/impl/a/b;->e:Landroid/telephony/PhoneStateListener;

    .line 75
    :goto_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 78
    move-result-object v0

    .line 79
    const-string v1, "sys_priorityNewApi"

    .line 81
    iget-boolean v2, p0, Lcom/amap/location/signal/impl/a/b;->h:Z

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    .line 86
    move-result v0

    .line 87
    iput-boolean v0, p0, Lcom/amap/location/signal/impl/a/b;->h:Z

    .line 89
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/signal/impl/a/b;->g:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/b;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/amap/location/signal/impl/a/b;->g:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/b;Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/signal/impl/a/b;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Landroid/telephony/CellLocation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Landroid/telephony/CellLocation;"
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 7
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "syscellprd"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p1, "getCellLocation: no loc permission"

    .line 8
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 9
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/signal/impl/a/b;->h:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CellInfo;

    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v2

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 13
    invoke-static {v1, v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/b;Landroid/telephony/PhoneStateListener;)Landroid/telephony/PhoneStateListener;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/b;->e:Landroid/telephony/PhoneStateListener;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/b;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/b;->d:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/signal/impl/a/b;Ljava/util/List;Landroid/telephony/CellLocation;)Ljava/util/List;
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/amap/location/signal/impl/a/b;->a(Ljava/util/List;Landroid/telephony/CellLocation;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;Landroid/telephony/CellLocation;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;",
            "Landroid/telephony/CellLocation;",
            ")",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;"
        }
    .end annotation

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/b;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/location/signal/impl/util/d;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 17
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/b;->d:Landroid/telephony/SignalStrength;

    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/b;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v1}, Lcom/amap/location/signal/impl/util/d;->a(Landroid/telephony/CellLocation;Landroid/telephony/SignalStrength;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public static synthetic b(Lcom/amap/location/signal/impl/a/b;)Lcom/amap/location/support/signal/cell/AmapCellListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/b;->f:Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/signal/impl/a/b;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 3
    return-object p0
.end method


# virtual methods
.method public addCellStatusListener(Lcom/amap/location/support/signal/cell/AmapCellListener;Lcom/amap/location/support/handler/AmapLooper;)Z
    .locals 3

    .line 1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {p2}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result p2

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "syscellprd"

    .line 10
    if-nez p2, :cond_0

    .line 12
    const-string p1, "addCellStatusListener: no loc permission"

    .line 14
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v0

    .line 18
    :cond_0
    iput-object p1, p0, Lcom/amap/location/signal/impl/a/b;->f:Lcom/amap/location/support/signal/cell/AmapCellListener;

    .line 20
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 p2, 0x1f

    .line 24
    const/16 v2, 0x550

    .line 26
    if-lt p1, p2, :cond_2

    .line 28
    const-string p1, "android.permission.READ_PHONE_STATE"

    .line 30
    invoke-static {p1}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p1, "no phone state"

    .line 39
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const/16 v2, 0x150

    .line 44
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/b;->e:Landroid/telephony/PhoneStateListener;

    .line 46
    if-eqz p1, :cond_3

    .line 48
    iget-object p2, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 50
    invoke-virtual {p2, p1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    const/4 v0, 0x1

    .line 54
    goto :goto_1

    .line 55
    :catch_0
    move-exception p1

    .line 56
    const-string p2, ""

    .line 58
    invoke-static {v1, p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :cond_3
    :goto_1
    return v0
.end method

.method public getCellList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/cell/AmapCell;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    .line 3
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 5
    invoke-static {v1}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 9
    const-string v2, "syscellprd"

    .line 11
    if-nez v1, :cond_0

    .line 13
    const-string v0, "getCellList: no loc permission"

    .line 15
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    return-object v0

    .line 24
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 26
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getAllCellInfo()Ljava/util/List;

    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p0, v1}, Lcom/amap/location/signal/impl/a/b;->a(Ljava/util/List;)Landroid/telephony/CellLocation;

    .line 33
    move-result-object v3

    .line 34
    invoke-direct {p0, v1, v3}, Lcom/amap/location/signal/impl/a/b;->a(Ljava/util/List;Landroid/telephony/CellLocation;)Ljava/util/List;

    .line 37
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object v0

    .line 39
    :catch_0
    move-exception v1

    .line 40
    invoke-static {v2, v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    goto :goto_0

    .line 44
    :catch_1
    move-exception v1

    .line 45
    invoke-static {v2, v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public getNetworkCoarseType()I
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b;->b:Landroid/net/ConnectivityManager;

    .line 3
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v1, v2, :cond_0

    .line 16
    const/4 v0, 0x2

    .line 17
    return v0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    .line 21
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    if-nez v0, :cond_1

    .line 24
    return v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v1, "syscellprd"

    .line 28
    const-string v2, ""

    .line 30
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    return v0
.end method

.method public getNetworkFineType()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/b;->getNetworkCoarseType()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    const/16 v0, 0x14

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/b;->getNetworkType()I

    .line 17
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 21
    const/16 v0, 0x11

    .line 23
    return v0

    .line 24
    :pswitch_0
    const/16 v0, 0xf

    .line 26
    return v0

    .line 27
    :pswitch_1
    const/16 v0, 0xe

    .line 29
    return v0

    .line 30
    :pswitch_2
    const/16 v0, 0xd

    .line 32
    return v0

    .line 33
    :pswitch_3
    const/16 v0, 0xc

    .line 35
    return v0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    const-string v1, "syscellprd"

    .line 39
    const-string v2, ""

    .line 41
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :cond_1
    const/16 v0, 0xa

    .line 46
    return v0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    .line 6
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    goto :goto_0

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    const-string v1, "syscellprd"

    .line 11
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    const-string v0, ""

    .line 16
    :goto_0
    return-object v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 3
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return v0

    .line 8
    :catch_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 3

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1d

    .line 5
    const-string v2, ""

    .line 7
    if-ge v0, v1, :cond_0

    .line 9
    return-object v2

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 12
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 15
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    const-string v1, "syscellprd"

    .line 20
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    :goto_0
    return-object v2
.end method

.method public isBadNetwork()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/signal/impl/a/b;->getNetworkFineType()I

    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xb

    .line 7
    if-eq v0, v1, :cond_1

    .line 9
    const/16 v1, 0xc

    .line 11
    if-ne v0, v1, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method public removeCellStatusListener(Lcom/amap/location/support/signal/cell/AmapCellListener;)Z
    .locals 3

    .line 1
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    .line 3
    invoke-static {p1}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    const-string v1, "syscellprd"

    .line 10
    if-nez p1, :cond_0

    .line 12
    const-string p1, "removeCellStatusListener: no loc permission"

    .line 14
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v0

    .line 18
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/location/signal/impl/a/b;->e:Landroid/telephony/PhoneStateListener;

    .line 20
    if-eqz p1, :cond_1

    .line 22
    iget-object v2, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 24
    invoke-virtual {v2, p1, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-string v0, ""

    .line 31
    invoke-static {v1, v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 34
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 35
    return p1
.end method

.method public requestCellUpdate()Z
    .locals 5

    .line 1
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 3
    invoke-static {v0}, Lcom/amap/location/signal/impl/util/c;->a(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-string v2, "syscellprd"

    .line 10
    if-nez v0, :cond_0

    .line 12
    const-string v0, "requestCellUpdate: no loc permission"

    .line 14
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return v1

    .line 18
    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    const/16 v3, 0x1d

    .line 22
    if-lt v0, v3, :cond_1

    .line 24
    iget-object v0, p0, Lcom/amap/location/signal/impl/a/b;->a:Landroid/telephony/TelephonyManager;

    .line 26
    sget-object v3, Lcom/amap/location/support/util/ThreadUtils;->customerExecutor:Ljava/util/concurrent/Executor;

    .line 28
    iget-object v4, p0, Lcom/amap/location/signal/impl/a/b;->c:Landroid/telephony/TelephonyManager$CellInfoCallback;

    .line 30
    invoke-static {v0, v3, v4}, Lgq0;->a(Landroid/telephony/TelephonyManager;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyManager$CellInfoCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    const-string v3, ""

    .line 38
    invoke-static {v2, v3, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_1
    return v1
.end method

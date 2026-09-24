.class public Lcom/amap/location/protocol/request/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/protocol/request/a$b;,
        Lcom/amap/location/protocol/request/a$a;,
        Lcom/amap/location/protocol/request/a$c;,
        Lcom/amap/location/protocol/request/a$d;
    }
.end annotation


# static fields
.field public static a:[B

.field private static b:Lcom/amap/location/protocol/request/a$d;

.field private static c:Lcom/amap/location/protocol/request/a$c;

.field private static d:Lcom/amap/location/protocol/request/a$a;

.field private static e:Lcom/amap/location/protocol/request/a$b;

.field private static f:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/location/protocol/request/a$d;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/amap/location/protocol/request/a$d;-><init>(Lcom/amap/location/protocol/request/a$1;)V

    .line 7
    sput-object v0, Lcom/amap/location/protocol/request/a;->b:Lcom/amap/location/protocol/request/a$d;

    .line 9
    new-instance v0, Lcom/amap/location/protocol/request/a$c;

    .line 11
    invoke-direct {v0, v1}, Lcom/amap/location/protocol/request/a$c;-><init>(Lcom/amap/location/protocol/request/a$1;)V

    .line 14
    sput-object v0, Lcom/amap/location/protocol/request/a;->c:Lcom/amap/location/protocol/request/a$c;

    .line 16
    new-instance v0, Lcom/amap/location/protocol/request/a$a;

    .line 18
    invoke-direct {v0, v1}, Lcom/amap/location/protocol/request/a$a;-><init>(Lcom/amap/location/protocol/request/a$1;)V

    .line 21
    sput-object v0, Lcom/amap/location/protocol/request/a;->d:Lcom/amap/location/protocol/request/a$a;

    .line 23
    new-instance v0, Lcom/amap/location/protocol/request/a$b;

    .line 25
    invoke-direct {v0, v1}, Lcom/amap/location/protocol/request/a$b;-><init>(Lcom/amap/location/protocol/request/a$1;)V

    .line 28
    sput-object v0, Lcom/amap/location/protocol/request/a;->e:Lcom/amap/location/protocol/request/a$b;

    .line 30
    sput-object v1, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    .line 32
    return-void
.end method

.method private static a(II)B
    .locals 1

    .line 1
    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/16 v0, -0x80

    if-ge p0, v0, :cond_1

    :cond_0
    move p0, p1

    :cond_1
    int-to-byte p0, p0

    return p0
.end method

.method private static a(I)I
    .locals 1

    .line 2
    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const v0, 0xffff

    if-le p0, v0, :cond_1

    return v0

    :cond_1
    return p0
.end method

.method private static a(IIII)I
    .locals 3

    .line 109
    sget-object v0, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    const-string v1, "newapicol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    .line 111
    :cond_0
    sget-object v0, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    :cond_1
    const/16 p3, -0x8c

    const/16 v0, 0x64

    if-ge p0, p3, :cond_2

    const/16 p0, -0x8d

    goto :goto_0

    :cond_2
    if-le p0, v0, :cond_3

    const/16 p0, -0x2a

    :cond_3
    :goto_0
    add-int/lit16 p0, p0, 0x8e

    const/16 p3, -0x17

    if-ge p1, p3, :cond_4

    const/16 p1, -0x18

    goto :goto_1

    :cond_4
    if-le p1, v0, :cond_5

    const/16 p1, 0x65

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x19

    if-gez p2, :cond_6

    const/4 p2, -0x1

    goto :goto_2

    :cond_6
    const/16 p3, 0x61

    if-le p2, p3, :cond_7

    const/16 p2, 0x62

    :cond_7
    :goto_2
    add-int/lit8 p2, p2, 0x2

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    return p0
.end method

.method private static a(IIIII)I
    .locals 3

    .line 106
    sget-object v0, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 107
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v0

    const-string v1, "newapicol"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    .line 108
    :cond_0
    sget-object v0, Lcom/amap/location/protocol/request/a;->f:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    return p4

    :cond_1
    const/16 p4, -0x8c

    if-ge p0, p4, :cond_2

    const/16 p0, -0x8d

    goto :goto_0

    :cond_2
    const/16 p4, -0x2b

    if-le p0, p4, :cond_3

    const/16 p0, -0x2a

    :cond_3
    :goto_0
    add-int/lit16 p0, p0, 0x8e

    const/16 p4, -0x2c

    if-ge p1, p4, :cond_4

    const/16 p1, -0x2d

    goto :goto_1

    :cond_4
    const/4 p4, 0x3

    if-le p1, p4, :cond_5

    const/4 p1, 0x4

    :cond_5
    :goto_1
    add-int/lit8 p1, p1, 0x2e

    const/16 p4, -0x1e

    if-ge p2, p4, :cond_6

    const/16 p2, -0x1f

    goto :goto_2

    :cond_6
    const/16 p4, 0x28

    if-le p2, p4, :cond_7

    const/16 p2, 0x29

    :cond_7
    :goto_2
    add-int/lit8 p2, p2, 0x20

    if-gez p3, :cond_8

    const/4 p3, -0x1

    goto :goto_3

    :cond_8
    const/16 p4, 0x63

    if-le p3, p4, :cond_9

    const/16 p3, 0x64

    :cond_9
    :goto_3
    add-int/lit8 p3, p3, 0x2

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    shl-int/lit8 p1, p2, 0x8

    or-int/2addr p0, p1

    or-int/2addr p0, p3

    return p0
.end method

.method private static a(Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    const-string p1, "*"

    const-string v0, "."

    .line 127
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    const-string p1, "UTF-8"

    .line 128
    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length p1, p1

    const/16 v0, 0x20

    if-lt p1, v0, :cond_2

    .line 129
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    :catch_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 131
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string p0, ""

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static a(Ljava/util/List;I)Ljava/util/List;
    .locals 7

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :try_start_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, p1, :cond_0

    return-object p0

    :cond_0
    int-to-double v2, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v2, v2, v4

    int-to-double v4, p1

    div-double/2addr v2, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_2

    int-to-double v5, v4

    mul-double v5, v5, v2

    double-to-int v5, v5

    if-lt v5, v1, :cond_1

    goto :goto_1

    .line 104
    :cond_1
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RequestDataBuilder"

    .line 105
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private static a(Ljp0;)V
    .locals 5

    .line 62
    sget-object v0, Lnq0;->d:Lnq0;

    invoke-virtual {p0, v0}, Ljp0;->E(Lnq0;)V

    .line 63
    invoke-static {}, Lcom/amap/location/protocol/a/a;->a()Lcom/amap/location/protocol/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/protocol/a/a;->b()Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getDiagnosisType()I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v1}, Lkp0;->b(B)Lkp0;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljp0;->x(Lkp0;)V

    .line 66
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v1

    const-wide v3, 0x40f86a0000000000L    # 100000.0

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljp0;->w(D)V

    .line 67
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v1

    mul-double v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Ljp0;->V(D)V

    .line 68
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Ljp0;->S(S)V

    .line 69
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Ljp0;->X(S)V

    .line 70
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Ljp0;->a0(S)V

    .line 71
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v1, v0

    int-to-short v0, v1

    invoke-virtual {p0, v0}, Ljp0;->d0(S)V

    return-void
.end method

.method private static a(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 13

    const-string v0, "mix"

    .line 72
    iget-wide v1, p1, Lcom/amap/location/support/bean/AmapFps;->bluetoothUpdateSystemTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_5

    iget-object v1, p1, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 73
    :try_start_0
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->bluetooths:Ljava/util/List;

    .line 74
    sget-object v1, Lcom/amap/location/protocol/b/a;->r:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    sget-object v1, Lcom/amap/location/protocol/request/a;->d:Lcom/amap/location/protocol/request/a$a;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v1, Lcom/amap/location/protocol/request/a;->e:Lcom/amap/location/protocol/request/a$b;

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 77
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lez v1, :cond_5

    .line 78
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 79
    new-instance v4, Lmp0;

    invoke-direct {v4}, Lmp0;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_4

    .line 80
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;

    .line 81
    instance-of v8, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    if-eqz v8, :cond_3

    .line 82
    check-cast v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;

    .line 83
    new-instance v8, Lmp0$a;

    invoke-direct {v8}, Lmp0$a;-><init>()V

    .line 84
    iget-object v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->uuid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmp0$a;->e(Ljava/lang/String;)V

    .line 85
    iget v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->major:I

    invoke-virtual {v8, v9}, Lmp0$a;->c(I)V

    .line 86
    iget v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetoothIBeacon;->minor:I

    invoke-virtual {v8, v9}, Lmp0$a;->g(I)V

    .line 87
    iget v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->rssi:I

    const/16 v10, 0x7f

    invoke-static {v9, v10}, Lcom/amap/location/protocol/request/a;->a(II)B

    move-result v9

    invoke-virtual {v8, v9}, Lmp0$a;->b(B)V

    .line 88
    sget-object v9, Lcom/amap/location/protocol/b/a;->r:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 89
    iget-wide v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->systemTickTime:J

    sub-long v9, v2, v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    long-to-int v10, v9

    invoke-virtual {v8, v10}, Lmp0$a;->j(I)V

    goto :goto_2

    .line 90
    :cond_1
    invoke-virtual {v8, v5}, Lmp0$a;->j(I)V

    .line 91
    :goto_2
    iget-object v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lmp0$a;->h(Ljava/lang/String;)V

    .line 92
    iget v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->type:I

    invoke-virtual {v8, v9}, Lmp0$a;->l(I)V

    .line 93
    iget-boolean v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->connected:Z

    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_3

    :cond_2
    const/4 v9, 0x0

    :goto_3
    invoke-virtual {v8, v9}, Lmp0$a;->n(I)V

    .line 94
    iget v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mainDeviceType:I

    invoke-virtual {v8, v9}, Lmp0$a;->p(I)V

    .line 95
    iget v9, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->subDeviceType:I

    invoke-virtual {v8, v9}, Lmp0$a;->r(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 96
    :try_start_1
    new-instance v9, Lqp0;

    iget-wide v10, v7, Lcom/amap/location/support/bean/bluetooth/AmapBluetooth;->mac:J

    invoke-static {v10, v11}, Lcom/amap/location/support/bean/wifi/AmapWifi;->longToMac(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v9, v7}, Lqp0;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v8, v9}, Lmp0$a;->d(Lqp0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v7

    .line 98
    :try_start_2
    invoke-static {v7}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 99
    :goto_4
    invoke-virtual {v4, v8}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 100
    :cond_4
    invoke-virtual {p0, v4}, Ljp0;->y(Lmp0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p0

    const-string p1, "RequestDataBuilder"

    .line 101
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_5
    return-void
.end method

.method public static a(Ljp0;Lcom/amap/location/support/bean/AmapFps;[BLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZII)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp0;",
            "Lcom/amap/location/support/bean/AmapFps;",
            "[B",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/protocal/HistoryLocation;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZII)V"
        }
    .end annotation

    const-string p6, "RequestDataBuilder"

    .line 3
    :try_start_0
    new-instance p11, Lsw0;

    invoke-direct {p11}, Lsw0;-><init>()V

    .line 4
    invoke-virtual {p11, p7}, Lsw0;->b(Z)V

    .line 5
    invoke-virtual {p11, p8}, Lsw0;->c(Z)V

    const/4 p7, 0x0

    .line 6
    invoke-virtual {p11, p7}, Lsw0;->d(Z)V

    .line 7
    invoke-virtual {p11, p7}, Lsw0;->e(Z)V

    .line 8
    invoke-virtual {p0, p11}, Ljp0;->O(Lsw0;)V

    .line 9
    sget-object p8, Lcom/amap/location/protocol/b/a;->b:Ljava/lang/String;

    invoke-virtual {p0, p8}, Ljp0;->R(Ljava/lang/String;)V

    .line 10
    sget-object p8, Lcom/amap/location/protocol/b/a;->c:Ljava/lang/String;

    invoke-virtual {p0, p8}, Ljp0;->W(Ljava/lang/String;)V

    .line 11
    sget-object p8, Lcom/amap/location/protocol/b/a;->d:Ljava/lang/String;

    invoke-virtual {p0, p8}, Ljp0;->Z(Ljava/lang/String;)V

    const/4 p8, 0x0

    .line 12
    invoke-virtual {p0, p8}, Ljp0;->c0(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    move-result-object p11

    invoke-virtual {p0, p11}, Ljp0;->f0(Ljava/lang/String;)V

    .line 14
    new-instance p11, Ljava/lang/StringBuilder;

    invoke-direct {p11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "android"

    invoke-virtual {p11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p11

    invoke-virtual {p0, p11}, Ljp0;->h0(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p8}, Ljp0;->j0(Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAppInfo()[Ljava/lang/String;

    move-result-object p11

    const-string v0, ""

    .line 17
    array-length v1, p11

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x2

    aget-object v1, p11, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p7, p11, p7

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, ","

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    :cond_0
    invoke-static {p4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_1

    .line 20
    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p11, "*"

    invoke-virtual {p7, p11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    :cond_1
    invoke-virtual {p0, v0}, Ljp0;->l0(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljp0;->n0(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getImsi()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljp0;->p0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMacString()Ljava/lang/String;

    move-result-object p4

    .line 25
    invoke-static {p4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p7

    if-eqz p7, :cond_2

    const-string p4, "00:00:00:00:00:00"

    .line 26
    :cond_2
    new-instance p7, Lqp0;

    invoke-direct {p7}, Lqp0;-><init>()V

    .line 27
    invoke-virtual {p7, p4}, Lqp0;->a(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0, p7}, Ljp0;->B(Lqp0;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p4

    .line 29
    :try_start_2
    invoke-static {p6, p4}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    :goto_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljp0;->t0(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getCollVersion()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljp0;->v0(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0, p5}, Ljp0;->x0(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljp0;->r0(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcom/amap/location/support/util/NetTypeUtil;->getApsNetType()Ljava/lang/String;

    move-result-object p4

    .line 35
    invoke-virtual {p0, p4}, Ljp0;->F0(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/amap/location/support/util/NetTypeUtil;->getCoarseType()I

    move-result p4

    int-to-byte p4, p4

    invoke-static {p4}, Llw0;->b(B)Llw0;

    move-result-object p4

    invoke-virtual {p0, p4}, Ljp0;->N(Llw0;)V

    .line 37
    invoke-static {p0}, Lcom/amap/location/protocol/request/a;->a(Ljp0;)V

    .line 38
    invoke-static {p0, p1}, Lcom/amap/location/protocol/request/a;->c(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V

    .line 39
    invoke-static {p0, p1}, Lcom/amap/location/protocol/request/a;->b(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V

    .line 40
    invoke-static {p0, p1}, Lcom/amap/location/protocol/request/a;->a(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V

    .line 41
    invoke-static {}, Lcom/amap/location/protocol/a/a;->a()Lcom/amap/location/protocol/a/a;

    move-result-object p4

    invoke-virtual {p4, p10}, Lcom/amap/location/protocol/a/a;->a(I)Ljava/util/List;

    move-result-object p4

    .line 42
    invoke-static {p0, p4}, Lcom/amap/location/protocol/request/a;->a(Ljp0;Ljava/util/List;)V

    .line 43
    invoke-virtual {p0, p8}, Ljp0;->H0(Ljava/lang/String;)V

    .line 44
    new-instance p4, Lpq0;

    invoke-direct {p4}, Lpq0;-><init>()V

    .line 45
    sget-object p5, Lcom/amap/location/protocol/request/a;->a:[B

    if-eqz p5, :cond_3

    .line 46
    invoke-virtual {p4, p5}, Lpq0;->d([B)V

    .line 47
    invoke-virtual {p0, p4}, Ljp0;->G(Lpq0;)V

    goto :goto_1

    .line 48
    :cond_3
    invoke-virtual {p0, p8}, Ljp0;->G(Lpq0;)V

    .line 49
    :goto_1
    new-instance p4, Liu0;

    invoke-direct {p4}, Liu0;-><init>()V

    .line 50
    invoke-static {}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getInstance()Lcom/amap/location/support/nl/NetworkLocatorParam;

    move-result-object p5

    invoke-virtual {p5}, Lcom/amap/location/support/nl/NetworkLocatorParam;->toStringAndClear()Ljava/lang/String;

    move-result-object p5

    .line 51
    invoke-static {p5}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p7

    if-nez p7, :cond_4

    .line 52
    invoke-virtual {p5}, Ljava/lang/String;->getBytes()[B

    move-result-object p5

    invoke-virtual {p4, p5}, Liu0;->b([B)V

    .line 53
    invoke-virtual {p0, p4}, Ljp0;->J(Liu0;)V

    goto :goto_2

    .line 54
    :cond_4
    invoke-virtual {p0, p8}, Ljp0;->J(Liu0;)V

    :goto_2
    if-eqz p9, :cond_5

    .line 55
    invoke-virtual {p0, p2}, Ljp0;->T([B)V

    goto :goto_3

    .line 56
    :cond_5
    invoke-virtual {p0, p8}, Ljp0;->T([B)V

    .line 57
    :goto_3
    invoke-static {p0, p1}, Lcom/amap/location/protocol/request/a;->d(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V

    .line 58
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSerialNum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljp0;->z0(Ljava/lang/String;)V

    .line 59
    invoke-static {p0, p3}, Lcom/amap/location/protocol/request/a;->b(Ljp0;Ljava/util/List;)V

    .line 60
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getOaid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljp0;->B0(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p0

    .line 61
    invoke-static {p6, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void
.end method

.method private static a(Ljp0;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp0;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/location/AmapLocation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 112
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 113
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x7f

    .line 114
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-lez v2, :cond_2

    .line 115
    new-instance v3, Lgx0;

    invoke-direct {v3}, Lgx0;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 116
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/support/bean/location/AmapLocation;

    .line 117
    new-instance v6, Lgx0$a;

    invoke-direct {v6}, Lgx0$a;-><init>()V

    .line 118
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lgx0$a;->b(D)V

    .line 119
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lgx0$a;->g(D)V

    .line 120
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v7}, Lcom/amap/location/protocol/request/a;->a(I)I

    move-result v7

    int-to-short v7, v7

    invoke-virtual {v6, v7}, Lgx0$a;->e(S)V

    .line 121
    instance-of v7, v5, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    if-eqz v7, :cond_0

    move-object v7, v5

    check-cast v7, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-virtual {v7}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_0
    const-string v7, "100"

    :goto_1
    invoke-static {v7}, Low0;->b(Ljava/lang/String;)Low0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lgx0$a;->c(Low0;)V

    .line 122
    invoke-virtual {v5}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v7

    sub-long v7, v0, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v5, v7

    invoke-static {v5}, Lcom/amap/location/protocol/request/a;->a(I)I

    move-result v5

    int-to-short v5, v5

    invoke-virtual {v6, v5}, Lgx0$a;->h(S)V

    .line 123
    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 124
    :cond_1
    invoke-virtual {p0, v3}, Ljp0;->Q(Lgx0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "RequestDataBuilder"

    .line 125
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private static b(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    sget-object v2, Lcom/amap/location/protocol/b/a;->s:Ljava/lang/String;

    const-string v3, "age"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v3, 0x32

    goto :goto_0

    :cond_0
    const/16 v3, 0x19

    .line 2
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v4

    invoke-interface {v4}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v4

    .line 3
    iget-object v6, v1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_1

    .line 4
    iget-wide v9, v6, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    goto :goto_1

    :cond_1
    move-wide v9, v7

    :goto_1
    const/16 v6, -0x71

    const-wide/16 v11, 0x3e8

    cmp-long v13, v9, v7

    if-eqz v13, :cond_2

    .line 5
    new-instance v7, Lqq0;

    invoke-direct {v7}, Lqq0;-><init>()V

    .line 6
    new-instance v8, Lqp0;

    invoke-direct {v8}, Lqp0;-><init>()V

    .line 7
    invoke-static {v9, v10}, Lcom/amap/location/support/bean/wifi/AmapWifi;->longToMac(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lqp0;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v7, v8}, Lqq0;->d(Lqp0;)V

    .line 9
    iget-object v8, v1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    iget v8, v8, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    invoke-static {v8, v6}, Lcom/amap/location/protocol/request/a;->a(II)B

    move-result v8

    invoke-virtual {v7, v8}, Lqq0;->b(B)V

    .line 10
    iget-object v8, v1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    iget-object v8, v8, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lqq0;->e(Ljava/lang/String;)V

    .line 11
    iget-object v8, v1, Lcom/amap/location/support/bean/AmapFps;->mainWifi:Lcom/amap/location/support/bean/wifi/AmapWifi;

    iget-wide v8, v8, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    sub-long v8, v4, v8

    div-long/2addr v8, v11

    long-to-int v9, v8

    .line 12
    invoke-virtual {v7, v9}, Lqq0;->c(I)V

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isActiveNetworkMetered()Z

    move-result v8

    invoke-virtual {v7, v8}, Lqq0;->g(Z)V

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/amap/location/support/signal/ISignalManager;->getWifi()Lcom/amap/location/support/signal/wifi/IWifiManager;

    move-result-object v8

    invoke-interface {v8}, Lcom/amap/location/support/signal/wifi/IWifiManager;->getWifiStandard()I

    move-result v8

    int-to-short v8, v8

    invoke-virtual {v7, v8}, Lqq0;->f(S)V

    .line 15
    invoke-virtual {v0, v7}, Ljp0;->H(Lqq0;)V

    .line 16
    :cond_2
    iget-object v7, v1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_e

    .line 17
    iget-object v7, v1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    const/4 v8, 0x0

    if-eqz v2, :cond_8

    .line 18
    sget-object v9, Lcom/amap/location/protocol/request/a;->c:Lcom/amap/location/protocol/request/a$c;

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/location/support/bean/wifi/AmapWifi;

    iget-wide v9, v9, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    sub-long v9, v4, v9

    div-long/2addr v9, v11

    long-to-int v10, v9

    .line 20
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v3, :cond_9

    .line 21
    new-instance v9, Ljava/util/TreeMap;

    new-instance v13, Lcom/amap/location/protocol/request/a$1;

    invoke-direct {v13}, Lcom/amap/location/protocol/request/a$1;-><init>()V

    invoke-direct {v9, v13}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 22
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/location/support/bean/wifi/AmapWifi;

    move-object v15, v7

    .line 23
    iget-wide v6, v14, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    sub-long v6, v4, v6

    div-long/2addr v6, v11

    long-to-int v7, v6

    sub-int v6, v7, v10

    .line 24
    sget v8, Lcom/amap/location/protocol/b/a;->t:I

    if-le v6, v8, :cond_3

    :goto_3
    move-object v7, v15

    const/16 v6, -0x71

    const/4 v8, 0x0

    goto :goto_2

    .line 25
    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_4

    .line 26
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 27
    :cond_4
    invoke-interface {v6, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    move-object v15, v7

    .line 29
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 31
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 32
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    sub-int v13, v3, v13

    if-gt v10, v13, :cond_6

    .line 33
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Collection;

    invoke-interface {v6, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    .line 34
    :cond_6
    sget-object v7, Lcom/amap/location/protocol/request/a;->b:Lcom/amap/location/protocol/request/a$d;

    invoke-static {v9, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 35
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    sub-int v7, v3, v7

    invoke-static {v9, v7}, Lcom/amap/location/protocol/request/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v7

    .line 36
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    .line 37
    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    :cond_7
    invoke-interface {v15}, Ljava/util/List;->clear()V

    move-object v7, v15

    .line 39
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 40
    :cond_8
    sget-object v6, Lcom/amap/location/protocol/request/a;->b:Lcom/amap/location/protocol/request/a$d;

    invoke-static {v7, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 41
    :cond_9
    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v3, :cond_e

    .line 42
    new-instance v6, Lju0;

    invoke-direct {v6}, Lju0;-><init>()V

    const/4 v8, 0x0

    :goto_6
    if-ge v8, v3, :cond_d

    .line 43
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amap/location/support/bean/wifi/AmapWifi;

    if-nez v9, :cond_a

    const/16 v12, -0x71

    goto :goto_7

    .line 44
    :cond_a
    new-instance v10, Lju0$a;

    invoke-direct {v10}, Lju0$a;-><init>()V

    .line 45
    new-instance v13, Lqp0;

    iget-wide v11, v9, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    invoke-static {v11, v12}, Lcom/amap/location/support/bean/wifi/AmapWifi;->longToMac(J)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v11}, Lqp0;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v10, v13}, Lju0$a;->d(Lqp0;)V

    .line 47
    iget-wide v11, v9, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    sub-long v11, v4, v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    long-to-int v12, v11

    .line 48
    invoke-virtual {v10, v12}, Lju0$a;->c(I)V

    .line 49
    iget v11, v9, Lcom/amap/location/support/bean/wifi/AmapWifi;->frequency:I

    int-to-short v11, v11

    invoke-virtual {v10, v11}, Lju0$a;->f(S)V

    .line 50
    iget v11, v9, Lcom/amap/location/support/bean/wifi/AmapWifi;->rssi:I

    const/16 v12, -0x71

    invoke-static {v11, v12}, Lcom/amap/location/protocol/request/a;->a(II)B

    move-result v11

    invoke-virtual {v10, v11}, Lju0$a;->b(B)V

    if-eqz v2, :cond_b

    const/16 v11, 0xa

    if-ge v8, v11, :cond_c

    .line 51
    :cond_b
    iget-object v9, v9, Lcom/amap/location/support/bean/wifi/AmapWifi;->ssid:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-static {v9, v11, v8}, Lcom/amap/location/protocol/request/a;->a(Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lju0$a;->e(Ljava/lang/String;)V

    .line 52
    :cond_c
    invoke-virtual {v6, v10}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :goto_7
    add-int/lit8 v8, v8, 0x1

    const-wide/16 v11, 0x3e8

    goto :goto_6

    .line 53
    :cond_d
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/amap/location/support/bean/AmapFps;->wifiUpdateSystemTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v1, v2

    .line 54
    invoke-virtual {v6, v1}, Lju0;->a(I)V

    .line 55
    invoke-virtual {v0, v6}, Ljp0;->K(Lju0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    const-string v1, "RequestDataBuilder"

    .line 56
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_8
    return-void
.end method

.method private static b(Ljp0;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp0;",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/protocal/HistoryLocation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 57
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 58
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x7f

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 60
    new-instance v3, Law0;

    invoke-direct {v3}, Law0;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 61
    new-instance v5, Law0$a;

    invoke-direct {v5}, Law0$a;-><init>()V

    .line 62
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;

    .line 63
    iget-wide v7, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->time:J

    sub-long v7, v0, v7

    const-wide/16 v9, 0x3e8

    div-long/2addr v7, v9

    long-to-int v8, v7

    invoke-virtual {v5, v8}, Law0$a;->d(I)V

    .line 64
    iget v7, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lon:I

    int-to-double v7, v7

    const-wide v9, 0x416312d000000000L    # 1.0E7

    div-double/2addr v7, v9

    const-wide v11, 0x40f86a0000000000L    # 100000.0

    mul-double v7, v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v11

    invoke-virtual {v5, v7, v8}, Law0$a;->c(D)V

    .line 65
    iget v7, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->lat:I

    int-to-double v7, v7

    div-double/2addr v7, v9

    mul-double v7, v7, v11

    invoke-static {v7, v8}, Ljava/lang/Math;->round(D)J

    move-result-wide v7

    long-to-double v7, v7

    div-double/2addr v7, v11

    invoke-virtual {v5, v7, v8}, Law0$a;->h(D)V

    .line 66
    iget v7, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->radius:I

    invoke-virtual {v5, v7}, Law0$a;->i(I)V

    .line 67
    new-instance v7, Law0$a$a;

    iget v8, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->locType:I

    iget v9, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->retype:I

    iget v6, v6, Lcom/amap/location/support/bean/protocal/HistoryLocation;->subretype:I

    invoke-direct {v7, v8, v9, v6}, Law0$a$a;-><init>(III)V

    .line 68
    invoke-virtual {v5, v7}, Law0$a;->e(Law0$a$a;)V

    .line 69
    invoke-virtual {v3, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0, v3}, Ljp0;->L(Law0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "RequestDataBuilder"

    .line 71
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static c(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 12

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 12
    move-result-object v2

    .line 13
    invoke-interface {v2}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getSimOperator()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    iget-object v3, p1, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 23
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 29
    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 35
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    iget-object v4, p1, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v4, ","

    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {p0, v2}, Ljp0;->D0(Ljava/lang/String;)V

    .line 60
    :cond_1
    iget-object v2, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 62
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    move-result v2

    .line 66
    const/16 v3, 0x7f

    .line 68
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 71
    move-result v2

    .line 72
    if-lez v2, :cond_b

    .line 74
    new-instance v3, Ltw0;

    .line 76
    invoke-direct {v3}, Ltw0;-><init>()V

    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x0

    .line 81
    :goto_0
    if-ge v5, v2, :cond_a

    .line 83
    iget-object v6, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 85
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lcom/amap/location/support/bean/cell/AmapCell;

    .line 91
    iget-wide v7, v6, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    .line 93
    const-wide/16 v9, 0x0

    .line 95
    cmp-long v11, v7, v9

    .line 97
    if-ltz v11, :cond_2

    .line 99
    sub-long v7, v0, v7

    .line 101
    const-wide/16 v9, 0x3e8

    .line 103
    div-long/2addr v7, v9

    .line 104
    long-to-int v8, v7

    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/4 v8, 0x0

    .line 107
    :goto_1
    instance-of v7, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 109
    const/16 v9, 0x63

    .line 111
    if-eqz v7, :cond_4

    .line 113
    check-cast v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 115
    iget-boolean v7, v6, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 117
    if-eqz v7, :cond_3

    .line 119
    new-instance v7, Ltw0$c;

    .line 121
    invoke-direct {v7}, Ltw0$c;-><init>()V

    .line 124
    iget-boolean v10, v6, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 126
    invoke-virtual {v7, v10}, Ltw0$c;->m(Z)V

    .line 129
    invoke-virtual {v7, v8}, Loq0;->k(I)V

    .line 132
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 134
    invoke-virtual {v7, v8}, Loq0;->i(I)V

    .line 137
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 139
    invoke-virtual {v7, v8}, Loq0;->g(I)V

    .line 142
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 145
    move-result v8

    .line 146
    invoke-virtual {v7, v8}, Loq0;->b(I)V

    .line 149
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMncInt()I

    .line 152
    move-result v8

    .line 153
    invoke-virtual {v7, v8}, Loq0;->d(I)V

    .line 156
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 158
    invoke-static {v8, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 161
    move-result v8

    .line 162
    invoke-virtual {v7, v8}, Loq0;->a(B)V

    .line 165
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->bsic:I

    .line 167
    invoke-virtual {v7, v8}, Ltw0$c;->n(I)V

    .line 170
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->arfcn:I

    .line 172
    invoke-virtual {v7, v8}, Ltw0$c;->p(I)V

    .line 175
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->timingAdvance:I

    .line 177
    invoke-virtual {v7, v6}, Ltw0$c;->r(I)V

    .line 180
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 183
    goto/16 :goto_2

    .line 185
    :cond_3
    new-instance v7, Loq0;

    .line 187
    invoke-direct {v7}, Loq0;-><init>()V

    .line 190
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 193
    move-result v10

    .line 194
    invoke-virtual {v7, v10}, Loq0;->b(I)V

    .line 197
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMncInt()I

    .line 200
    move-result v10

    .line 201
    invoke-virtual {v7, v10}, Loq0;->d(I)V

    .line 204
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 206
    invoke-virtual {v7, v10}, Loq0;->g(I)V

    .line 209
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 211
    invoke-virtual {v7, v10}, Loq0;->i(I)V

    .line 214
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 216
    invoke-static {v6, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 219
    move-result v6

    .line 220
    invoke-virtual {v7, v6}, Loq0;->a(B)V

    .line 223
    invoke-virtual {v7, v8}, Loq0;->k(I)V

    .line 226
    invoke-virtual {p0, v7}, Ljp0;->F(Loq0;)V

    .line 229
    goto/16 :goto_2

    .line 231
    :cond_4
    instance-of v7, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 233
    if-eqz v7, :cond_6

    .line 235
    check-cast v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 237
    iget-boolean v7, v6, Lcom/amap/location/support/bean/cell/AmapCell;->newApi:Z

    .line 239
    if-eqz v7, :cond_5

    .line 241
    new-instance v7, Ltw0$b;

    .line 243
    invoke-direct {v7}, Ltw0$b;-><init>()V

    .line 246
    iget-boolean v10, v6, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 248
    invoke-virtual {v7, v10}, Ltw0$b;->q(Z)V

    .line 251
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 254
    move-result v10

    .line 255
    invoke-virtual {v7, v10}, Lnp0;->b(I)V

    .line 258
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 260
    invoke-virtual {v7, v10}, Lnp0;->e(I)V

    .line 263
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 265
    invoke-virtual {v7, v10}, Lnp0;->g(I)V

    .line 268
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 270
    invoke-virtual {v7, v10}, Lnp0;->i(I)V

    .line 273
    invoke-virtual {v7, v8}, Lnp0;->o(I)V

    .line 276
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 278
    invoke-static {v8, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 281
    move-result v8

    .line 282
    invoke-virtual {v7, v8}, Lnp0;->a(B)V

    .line 285
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    .line 287
    invoke-virtual {v7, v8}, Lnp0;->m(I)V

    .line 290
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    .line 292
    invoke-virtual {v7, v6}, Lnp0;->k(I)V

    .line 295
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 298
    goto/16 :goto_2

    .line 300
    :cond_5
    new-instance v7, Lnp0;

    .line 302
    invoke-direct {v7}, Lnp0;-><init>()V

    .line 305
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 307
    invoke-virtual {v7, v10}, Lnp0;->i(I)V

    .line 310
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->latitude:I

    .line 312
    invoke-virtual {v7, v10}, Lnp0;->m(I)V

    .line 315
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->longitude:I

    .line 317
    invoke-virtual {v7, v10}, Lnp0;->k(I)V

    .line 320
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 323
    move-result v10

    .line 324
    invoke-virtual {v7, v10}, Lnp0;->b(I)V

    .line 327
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 329
    invoke-virtual {v7, v10}, Lnp0;->g(I)V

    .line 332
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 334
    invoke-virtual {v7, v10}, Lnp0;->e(I)V

    .line 337
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 339
    invoke-static {v6, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 342
    move-result v6

    .line 343
    invoke-virtual {v7, v6}, Lnp0;->a(B)V

    .line 346
    invoke-virtual {v7, v8}, Lnp0;->o(I)V

    .line 349
    invoke-virtual {p0, v7}, Ljp0;->z(Lnp0;)V

    .line 352
    goto/16 :goto_2

    .line 354
    :cond_6
    instance-of v7, v6, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 356
    if-eqz v7, :cond_7

    .line 358
    check-cast v6, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 360
    new-instance v7, Ltw0$f;

    .line 362
    invoke-direct {v7}, Ltw0$f;-><init>()V

    .line 365
    iget-boolean v10, v6, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 367
    invoke-virtual {v7, v10}, Ltw0$f;->s(Z)V

    .line 370
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 373
    move-result v10

    .line 374
    invoke-virtual {v7, v10}, Lfx0;->b(I)V

    .line 377
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMncInt()I

    .line 380
    move-result v10

    .line 381
    invoke-virtual {v7, v10}, Lfx0;->d(I)V

    .line 384
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->lac:I

    .line 386
    invoke-virtual {v7, v10}, Lfx0;->f(I)V

    .line 389
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->cid:I

    .line 391
    invoke-virtual {v7, v10}, Lfx0;->h(I)V

    .line 394
    invoke-virtual {v7, v8}, Lfx0;->k(I)V

    .line 397
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 399
    invoke-static {v8, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 402
    move-result v8

    .line 403
    invoke-virtual {v7, v8}, Lfx0;->a(B)V

    .line 406
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->psc:I

    .line 408
    invoke-virtual {v7, v8}, Lfx0;->m(I)V

    .line 411
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->uarfcn:I

    .line 413
    invoke-virtual {v7, v6}, Lfx0;->o(I)V

    .line 416
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 419
    goto/16 :goto_2

    .line 421
    :cond_7
    instance-of v7, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 423
    if-eqz v7, :cond_8

    .line 425
    check-cast v6, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 427
    new-instance v7, Ltw0$d;

    .line 429
    invoke-direct {v7}, Ltw0$d;-><init>()V

    .line 432
    iget-boolean v10, v6, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 434
    invoke-virtual {v7, v10}, Ltw0$d;->s(Z)V

    .line 437
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 440
    move-result v10

    .line 441
    invoke-virtual {v7, v10}, Lmw0;->b(I)V

    .line 444
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMncInt()I

    .line 447
    move-result v10

    .line 448
    invoke-virtual {v7, v10}, Lmw0;->d(I)V

    .line 451
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 453
    invoke-virtual {v7, v10}, Lmw0;->f(I)V

    .line 456
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 458
    invoke-virtual {v7, v10}, Lmw0;->i(I)V

    .line 461
    invoke-virtual {v7, v8}, Lmw0;->k(I)V

    .line 464
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 466
    invoke-static {v8, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 469
    move-result v8

    .line 470
    invoke-virtual {v7, v8}, Lmw0;->a(B)V

    .line 473
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->pci:I

    .line 475
    invoke-virtual {v7, v8}, Lmw0;->m(I)V

    .line 478
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->earfcn:I

    .line 480
    invoke-virtual {v7, v8}, Lmw0;->o(I)V

    .line 483
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrp:I

    .line 485
    iget v9, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->rsrq:I

    .line 487
    iget v10, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->rssnr:I

    .line 489
    iget v11, v6, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 491
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCellLte;->timingAdvance:I

    .line 493
    invoke-static {v8, v9, v10, v11, v6}, Lcom/amap/location/protocol/request/a;->a(IIIII)I

    .line 496
    move-result v6

    .line 497
    invoke-virtual {v7, v6}, Lmw0;->q(I)V

    .line 500
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 503
    goto :goto_2

    .line 504
    :cond_8
    instance-of v7, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 506
    if-eqz v7, :cond_9

    .line 508
    check-cast v6, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 510
    new-instance v7, Ltw0$e;

    .line 512
    invoke-direct {v7}, Ltw0$e;-><init>()V

    .line 515
    iget-boolean v10, v6, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    .line 517
    invoke-virtual {v7, v10}, Ltw0$e;->s(Z)V

    .line 520
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMccInt()I

    .line 523
    move-result v10

    .line 524
    invoke-virtual {v7, v10}, Lax0;->b(I)V

    .line 527
    invoke-virtual {v6}, Lcom/amap/location/support/bean/cell/AmapCell;->getMncInt()I

    .line 530
    move-result v10

    .line 531
    invoke-virtual {v7, v10}, Lax0;->e(I)V

    .line 534
    invoke-virtual {v7, v8}, Lax0;->i(I)V

    .line 537
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 539
    invoke-virtual {v7, v8}, Lax0;->g(I)V

    .line 542
    iget-wide v10, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 544
    invoke-virtual {v7, v10, v11}, Lax0;->c(J)V

    .line 547
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    .line 549
    invoke-static {v8, v9}, Lcom/amap/location/protocol/request/a;->a(II)B

    .line 552
    move-result v8

    .line 553
    invoke-virtual {v7, v8}, Lax0;->a(B)V

    .line 556
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->pci:I

    .line 558
    invoke-virtual {v7, v8}, Lax0;->k(I)V

    .line 561
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->nrarfcn:I

    .line 563
    invoke-virtual {v7, v8}, Lax0;->m(I)V

    .line 566
    iget v8, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssRsrq:I

    .line 568
    iget v9, v6, Lcom/amap/location/support/bean/cell/AmapCellNr;->ssSinr:I

    .line 570
    iget v6, v6, Lcom/amap/location/support/bean/cell/AmapCell;->asuLevel:I

    .line 572
    const v10, 0x7fffffff

    .line 575
    invoke-static {v8, v9, v6, v10}, Lcom/amap/location/protocol/request/a;->a(IIII)I

    .line 578
    move-result v6

    .line 579
    invoke-virtual {v7, v6}, Lax0;->o(I)V

    .line 582
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_9
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 587
    goto/16 :goto_0

    .line 589
    :cond_a
    invoke-virtual {p0, v3}, Ljp0;->P(Ltw0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    goto :goto_3

    .line 593
    :catch_0
    move-exception p0

    .line 594
    const-string p1, "RequestDataBuilder"

    .line 596
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 599
    :cond_b
    :goto_3
    return-void
.end method

.method private static d(Ljp0;Lcom/amap/location/support/bean/AmapFps;)V
    .locals 9

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->historyCells:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x7f

    .line 9
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_6

    .line 15
    new-instance v1, Lbw0;

    .line 17
    invoke-direct {v1}, Lbw0;-><init>()V

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v0, :cond_5

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 28
    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCell;

    .line 30
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 33
    move-result-object v5

    .line 34
    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 37
    move-result-wide v5

    .line 38
    iget-wide v7, v4, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateSystemMills:J

    .line 40
    sub-long/2addr v5, v7

    .line 41
    const-wide/16 v7, 0x3e8

    .line 43
    div-long/2addr v5, v7

    .line 44
    long-to-int v6, v5

    .line 45
    instance-of v5, v4, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 47
    if-eqz v5, :cond_0

    .line 49
    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCellGsm;

    .line 51
    new-instance v5, Lbw0$b;

    .line 53
    invoke-direct {v5}, Lbw0$b;-><init>()V

    .line 56
    invoke-virtual {v5, v2}, Lbw0$b;->b(Z)V

    .line 59
    iget v7, v4, Lcom/amap/location/support/bean/cell/AmapCellGsm;->lac:I

    .line 61
    invoke-virtual {v5, v7}, Lbw0$b;->a(I)V

    .line 64
    iget v4, v4, Lcom/amap/location/support/bean/cell/AmapCellGsm;->cid:I

    .line 66
    invoke-virtual {v5, v4}, Lbw0$b;->d(I)V

    .line 69
    invoke-virtual {v5, v6}, Lbw0$b;->f(I)V

    .line 72
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 75
    goto/16 :goto_1

    .line 77
    :cond_0
    instance-of v5, v4, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 79
    if-eqz v5, :cond_1

    .line 81
    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCellCdma;

    .line 83
    new-instance v5, Lbw0$a;

    .line 85
    invoke-direct {v5}, Lbw0$a;-><init>()V

    .line 88
    invoke-virtual {v5, v2}, Lbw0$a;->b(Z)V

    .line 91
    iget v7, v4, Lcom/amap/location/support/bean/cell/AmapCellCdma;->sid:I

    .line 93
    invoke-virtual {v5, v7}, Lbw0$a;->a(I)V

    .line 96
    iget v7, v4, Lcom/amap/location/support/bean/cell/AmapCellCdma;->nid:I

    .line 98
    invoke-virtual {v5, v7}, Lbw0$a;->d(I)V

    .line 101
    iget v4, v4, Lcom/amap/location/support/bean/cell/AmapCellCdma;->bid:I

    .line 103
    invoke-virtual {v5, v4}, Lbw0$a;->f(I)V

    .line 106
    invoke-virtual {v5, v6}, Lbw0$a;->h(I)V

    .line 109
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 112
    goto :goto_1

    .line 113
    :cond_1
    instance-of v5, v4, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 115
    if-eqz v5, :cond_2

    .line 117
    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCellWcdma;

    .line 119
    new-instance v5, Lbw0$e;

    .line 121
    invoke-direct {v5}, Lbw0$e;-><init>()V

    .line 124
    invoke-virtual {v5, v2}, Lbw0$b;->b(Z)V

    .line 127
    iget v7, v4, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->lac:I

    .line 129
    invoke-virtual {v5, v7}, Lbw0$b;->a(I)V

    .line 132
    iget v4, v4, Lcom/amap/location/support/bean/cell/AmapCellWcdma;->cid:I

    .line 134
    invoke-virtual {v5, v4}, Lbw0$b;->d(I)V

    .line 137
    invoke-virtual {v5, v6}, Lbw0$b;->f(I)V

    .line 140
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 143
    goto :goto_1

    .line 144
    :cond_2
    instance-of v5, v4, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 146
    if-eqz v5, :cond_3

    .line 148
    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCellLte;

    .line 150
    new-instance v5, Lbw0$c;

    .line 152
    invoke-direct {v5}, Lbw0$c;-><init>()V

    .line 155
    invoke-virtual {v5, v2}, Lbw0$b;->b(Z)V

    .line 158
    iget v7, v4, Lcom/amap/location/support/bean/cell/AmapCellLte;->tac:I

    .line 160
    invoke-virtual {v5, v7}, Lbw0$b;->a(I)V

    .line 163
    iget v4, v4, Lcom/amap/location/support/bean/cell/AmapCellLte;->ci:I

    .line 165
    invoke-virtual {v5, v4}, Lbw0$b;->d(I)V

    .line 168
    invoke-virtual {v5, v6}, Lbw0$b;->f(I)V

    .line 171
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 174
    goto :goto_1

    .line 175
    :cond_3
    instance-of v5, v4, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 177
    if-eqz v5, :cond_4

    .line 179
    check-cast v4, Lcom/amap/location/support/bean/cell/AmapCellNr;

    .line 181
    new-instance v5, Lbw0$d;

    .line 183
    invoke-direct {v5}, Lbw0$d;-><init>()V

    .line 186
    invoke-virtual {v5, v2}, Lbw0$d;->c(Z)V

    .line 189
    iget v7, v4, Lcom/amap/location/support/bean/cell/AmapCellNr;->tac:I

    .line 191
    invoke-virtual {v5, v7}, Lbw0$d;->a(I)V

    .line 194
    iget-wide v7, v4, Lcom/amap/location/support/bean/cell/AmapCellNr;->nci:J

    .line 196
    invoke-virtual {v5, v7, v8}, Lbw0$d;->b(J)V

    .line 199
    invoke-virtual {v5, v6}, Lbw0$d;->e(I)V

    .line 202
    invoke-virtual {v1, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 205
    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 207
    goto/16 :goto_0

    .line 209
    :cond_5
    invoke-virtual {p0, v1}, Ljp0;->M(Lbw0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_2

    .line 213
    :catch_0
    move-exception p0

    .line 214
    const-string p1, "RequestDataBuilder"

    .line 216
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 219
    :cond_6
    :goto_2
    return-void
.end method

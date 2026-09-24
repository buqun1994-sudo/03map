.class Lcom/amap/location/support/guard/LocationGuarder$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/support/guard/LocationGuarder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amap/location/support/guard/LocationGuarder;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/guard/LocationGuarder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private getSatelliteCode()I
    .locals 10

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getAmapSatellites()Ljava/util/List;

    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_a

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v2

    .line 20
    if-lez v2, :cond_a

    .line 22
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    move-result v5

    .line 33
    const/4 v6, 0x5

    .line 34
    const/4 v7, 0x1

    .line 35
    if-eqz v5, :cond_4

    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v5

    .line 41
    check-cast v5, Lcom/amap/location/support/bean/gnss/AmapSatellite;

    .line 43
    if-nez v5, :cond_1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getCn0()F

    .line 49
    move-result v8

    .line 50
    const/4 v9, 0x0

    .line 51
    cmpl-float v8, v8, v9

    .line 53
    if-lez v8, :cond_2

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 57
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getCn0()F

    .line 60
    move-result v8

    .line 61
    const/high16 v9, 0x41a00000    # 20.0f

    .line 63
    cmpl-float v8, v8, v9

    .line 65
    if-lez v8, :cond_2

    .line 67
    add-int/lit8 v3, v3, 0x1

    .line 69
    :cond_2
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->isUsedInFix()Z

    .line 72
    move-result v8

    .line 73
    if-eqz v8, :cond_0

    .line 75
    invoke-virtual {v5}, Lcom/amap/location/type/gnss/Satellite;->getSystemType()I

    .line 78
    move-result v4

    .line 79
    if-ne v4, v6, :cond_3

    .line 81
    const/4 v1, 0x1

    .line 82
    const/4 v4, 0x1

    .line 83
    goto :goto_1

    .line 84
    :cond_3
    const/4 v4, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 88
    const/4 v0, 0x6

    .line 89
    return v0

    .line 90
    :cond_5
    if-eqz v4, :cond_6

    .line 92
    return v6

    .line 93
    :cond_6
    if-nez v2, :cond_7

    .line 95
    return v7

    .line 96
    :cond_7
    const/4 v0, 0x4

    .line 97
    if-ge v2, v0, :cond_8

    .line 99
    const/4 v0, 0x2

    .line 100
    return v0

    .line 101
    :cond_8
    if-ge v3, v0, :cond_9

    .line 103
    const/4 v0, 0x3

    .line 104
    :cond_9
    return v0

    .line 105
    :cond_a
    return v1
.end method

.method private isDistrubArea()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getSubBlockState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getSubBlockState()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x3

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method private isDistrubMetal(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/guard/LocationGuarder;->access$300(Lcom/amap/location/support/guard/LocationGuarder;)J

    .line 6
    move-result-wide v0

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    cmp-long v4, v0, v2

    .line 11
    if-lez v4, :cond_0

    .line 13
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 15
    invoke-static {v0}, Lcom/amap/location/support/guard/LocationGuarder;->access$300(Lcom/amap/location/support/guard/LocationGuarder;)J

    .line 18
    move-result-wide v0

    .line 19
    sub-long/2addr p1, v0

    .line 20
    const-wide/32 v0, 0xea60

    .line 23
    cmp-long v2, p1, v0

    .line 25
    if-gez v2, :cond_0

    .line 27
    const/4 p1, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p1, 0x0

    .line 30
    :goto_0
    return p1
.end method

.method private isIndoor()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIodConfidence()I

    .line 11
    move-result v0

    .line 12
    const/16 v2, 0x32

    .line 14
    if-le v0, v2, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method private isLinkWeak(J)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 11
    move-result-wide v2

    .line 12
    sub-long/2addr p1, v2

    .line 13
    const-wide/16 v2, 0x1388

    .line 15
    cmp-long v4, p1, v2

    .line 17
    if-gez v4, :cond_0

    .line 19
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getLinkScore()I

    .line 22
    move-result p1

    .line 23
    if-lez p1, :cond_0

    .line 25
    iget-object p2, p0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 27
    invoke-static {p2}, Lcom/amap/location/support/guard/LocationGuarder;->access$700(Lcom/amap/location/support/guard/LocationGuarder;)I

    .line 30
    move-result p2

    .line 31
    if-ge p1, p2, :cond_0

    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_0
    return v1
.end method

.method private isRoadOverhead(J)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIodConfidence()I

    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x32

    .line 21
    if-le v0, v3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 31
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getLinkType()B

    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x4

    .line 40
    if-ne v0, v3, :cond_2

    .line 42
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 49
    move-result-wide v3

    .line 50
    sub-long/2addr p1, v3

    .line 51
    const-wide/16 v3, 0x1388

    .line 53
    cmp-long v0, p1, v3

    .line 55
    if-gez v0, :cond_2

    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_2
    return v1
.end method

.method private isRoadTunnel(J)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIodConfidence()I

    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x32

    .line 21
    if-le v0, v3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 31
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getLinkType()B

    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x2

    .line 40
    if-ne v0, v3, :cond_2

    .line 42
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 49
    move-result-wide v3

    .line 50
    sub-long/2addr p1, v3

    .line 51
    const-wide/16 v3, 0x1388

    .line 53
    cmp-long v0, p1, v3

    .line 55
    if-gez v0, :cond_2

    .line 57
    const/4 v1, 0x1

    .line 58
    :cond_2
    return v1
.end method

.method private isSystemException()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/guard/LocationGuarder;->access$800(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->isOpenSpace()Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private isUnderPark(J)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    .line 12
    move-result v0

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIodConfidence()I

    .line 18
    move-result v0

    .line 19
    const/16 v3, 0x32

    .line 21
    if-le v0, v3, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return v1

    .line 25
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocation()Lcom/amap/location/support/bean/location/AmapLocation;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 31
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocation()Lcom/amap/location/support/bean/location/AmapLocation;

    .line 34
    move-result-object v0

    .line 35
    const-string v3, "parkInfo"

    .line 37
    invoke-virtual {v0, v3}, Lcom/amap/location/type/location/Location;->has(Ljava/lang/String;)Z

    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_2

    .line 43
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocation()Lcom/amap/location/support/bean/location/AmapLocation;

    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 50
    move-result-wide v3

    .line 51
    sub-long/2addr p1, v3

    .line 52
    const-wide/16 v3, 0xbb8

    .line 54
    cmp-long v0, p1, v3

    .line 56
    if-gtz v0, :cond_2

    .line 58
    const/4 v1, 0x1

    .line 59
    :cond_2
    return v1
.end method


# virtual methods
.method public run()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    iget-object v1, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 5
    invoke-static {v1}, Lcom/amap/location/support/guard/LocationGuarder;->access$000(Lcom/amap/location/support/guard/LocationGuarder;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_1b

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 18
    move-result-wide v3

    .line 19
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/support/guard/LocationGuarder$1;->getSatelliteCode()I

    .line 22
    move-result v7

    .line 23
    iget-object v1, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 25
    invoke-static {v1}, Lcom/amap/location/support/guard/LocationGuarder;->access$100(Lcom/amap/location/support/guard/LocationGuarder;)J

    .line 28
    move-result-wide v1

    .line 29
    sub-long v1, v3, v1

    .line 31
    const/16 v5, 0xc8

    .line 33
    const-wide/16 v10, 0x1388

    .line 35
    const/4 v6, 0x1

    .line 36
    const/4 v8, 0x0

    .line 37
    cmp-long v9, v1, v10

    .line 39
    if-gez v9, :cond_2

    .line 41
    iget-object v1, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 43
    invoke-static {v1}, Lcom/amap/location/support/guard/LocationGuarder;->access$200(Lcom/amap/location/support/guard/LocationGuarder;)I

    .line 46
    move-result v1

    .line 47
    const/16 v2, 0x65

    .line 49
    const/16 v9, 0x64

    .line 51
    const/4 v12, 0x6

    .line 52
    if-ne v1, v2, :cond_0

    .line 54
    if-ne v7, v12, :cond_0

    .line 56
    const/16 v1, 0x64

    .line 58
    :cond_0
    const/16 v2, 0xc9

    .line 60
    if-ne v1, v2, :cond_1

    .line 62
    if-ne v7, v12, :cond_1

    .line 64
    const/16 v1, 0xc8

    .line 66
    :cond_1
    if-lt v1, v9, :cond_3

    .line 68
    const/16 v2, 0x190

    .line 70
    if-ge v1, v2, :cond_3

    .line 72
    iget-object v2, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 74
    const-wide/16 v12, 0x0

    .line 76
    invoke-static {v2, v12, v13}, Lcom/amap/location/support/guard/LocationGuarder;->access$302(Lcom/amap/location/support/guard/LocationGuarder;J)J

    .line 79
    const/4 v2, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    const/4 v1, -0x1

    .line 82
    :cond_3
    const/4 v2, 0x0

    .line 83
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 86
    move-result-object v9

    .line 87
    invoke-interface {v9}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 90
    move-result-object v9

    .line 91
    invoke-interface {v9}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasLocationPermission()Z

    .line 94
    move-result v9

    .line 95
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 98
    move-result-object v12

    .line 99
    invoke-interface {v12}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 102
    move-result-object v12

    .line 103
    invoke-interface {v12}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationDim()Z

    .line 106
    move-result v12

    .line 107
    const/4 v13, 0x2

    .line 108
    if-eqz v12, :cond_4

    .line 110
    const/4 v12, 0x0

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    const/4 v12, 0x2

    .line 113
    :goto_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 116
    move-result-object v14

    .line 117
    invoke-interface {v14}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 120
    move-result-object v14

    .line 121
    invoke-interface {v14}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->getProcessImportance()I

    .line 124
    move-result v14

    .line 125
    const/4 v15, 0x4

    .line 126
    if-gt v14, v5, :cond_5

    .line 128
    const/4 v5, 0x4

    .line 129
    goto :goto_2

    .line 130
    :cond_5
    const/4 v5, 0x0

    .line 131
    :goto_2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 134
    move-result-object v14

    .line 135
    invoke-interface {v14}, Lcom/amap/location/support/signal/ISignalManager;->getBluetooth()Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 138
    move-result-object v14

    .line 139
    invoke-interface {v14}, Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;->hasBluetoothPermission()Z

    .line 142
    move-result v14

    .line 143
    const/16 v16, 0x8

    .line 145
    if-eqz v14, :cond_6

    .line 147
    const/16 v14, 0x8

    .line 149
    goto :goto_3

    .line 150
    :cond_6
    const/4 v14, 0x0

    .line 151
    :goto_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 154
    move-result-object v17

    .line 155
    invoke-interface/range {v17 .. v17}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 158
    move-result-object v17

    .line 159
    invoke-interface/range {v17 .. v17}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasReadPhoneStatePermission()Z

    .line 162
    move-result v17

    .line 163
    const/16 v18, 0x10

    .line 165
    if-eqz v17, :cond_7

    .line 167
    const/16 v17, 0x10

    .line 169
    goto :goto_4

    .line 170
    :cond_7
    const/16 v17, 0x0

    .line 172
    :goto_4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 175
    move-result-object v19

    .line 176
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 179
    move-result-object v19

    .line 180
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->hasStoragePermission()Z

    .line 183
    move-result v19

    .line 184
    const/16 v20, 0x20

    .line 186
    if-eqz v19, :cond_8

    .line 188
    const/16 v19, 0x20

    .line 190
    goto :goto_5

    .line 191
    :cond_8
    const/16 v19, 0x0

    .line 193
    :goto_5
    add-int v21, v9, v12

    .line 195
    add-int v21, v21, v5

    .line 197
    add-int v21, v21, v14

    .line 199
    add-int v21, v21, v17

    .line 201
    add-int v14, v21, v19

    .line 203
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 206
    move-result-object v5

    .line 207
    invoke-interface {v5}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 210
    move-result-object v5

    .line 211
    invoke-interface {v5}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationOn()Z

    .line 214
    move-result v5

    .line 215
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 218
    move-result-object v17

    .line 219
    invoke-interface/range {v17 .. v17}, Lcom/amap/location/support/signal/ISignalManager;->getWifi()Lcom/amap/location/support/signal/wifi/IWifiManager;

    .line 222
    move-result-object v17

    .line 223
    invoke-interface/range {v17 .. v17}, Lcom/amap/location/support/signal/wifi/IWifiManager;->isWifiEnabled()Z

    .line 226
    move-result v17

    .line 227
    if-eqz v17, :cond_9

    .line 229
    const/16 v17, 0x2

    .line 231
    goto :goto_6

    .line 232
    :cond_9
    const/16 v17, 0x0

    .line 234
    :goto_6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 237
    move-result-object v19

    .line 238
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/ISignalManager;->getBluetooth()Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;

    .line 241
    move-result-object v19

    .line 242
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/bluetooth/IBluetoothManager;->isBluetoothOn()Z

    .line 245
    move-result v19

    .line 246
    if-eqz v19, :cond_a

    .line 248
    goto :goto_7

    .line 249
    :cond_a
    const/4 v15, 0x0

    .line 250
    :goto_7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 253
    move-result-object v19

    .line 254
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 257
    move-result-object v19

    .line 258
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isAirplaneModeOn()Z

    .line 261
    move-result v19

    .line 262
    if-eqz v19, :cond_b

    .line 264
    goto :goto_8

    .line 265
    :cond_b
    const/16 v16, 0x0

    .line 267
    :goto_8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 270
    move-result-object v19

    .line 271
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 274
    move-result-object v19

    .line 275
    invoke-interface/range {v19 .. v19}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 278
    move-result v10

    .line 279
    if-ne v10, v13, :cond_c

    .line 281
    goto :goto_9

    .line 282
    :cond_c
    const/16 v18, 0x0

    .line 284
    :goto_9
    if-ne v10, v6, :cond_d

    .line 286
    goto :goto_a

    .line 287
    :cond_d
    const/16 v20, 0x0

    .line 289
    :goto_a
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 292
    move-result-object v10

    .line 293
    invoke-interface {v10}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    .line 296
    move-result-object v10

    .line 297
    invoke-interface {v10}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isScreenOn()Z

    .line 300
    move-result v10

    .line 301
    if-eqz v10, :cond_e

    .line 303
    const/16 v10, 0x80

    .line 305
    goto :goto_b

    .line 306
    :cond_e
    const/4 v10, 0x0

    .line 307
    :goto_b
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    .line 310
    move-result v11

    .line 311
    if-eqz v11, :cond_f

    .line 313
    const/16 v11, 0x100

    .line 315
    goto :goto_c

    .line 316
    :cond_f
    const/4 v11, 0x0

    .line 317
    :goto_c
    add-int v17, v5, v17

    .line 319
    add-int v17, v17, v15

    .line 321
    add-int v17, v17, v16

    .line 323
    add-int v17, v17, v18

    .line 325
    add-int v17, v17, v20

    .line 327
    add-int/lit8 v17, v17, 0x0

    .line 329
    add-int v17, v17, v10

    .line 331
    add-int v17, v17, v11

    .line 333
    add-int/lit8 v17, v17, 0x0

    .line 335
    add-int/lit8 v10, v17, 0x0

    .line 337
    if-eq v2, v6, :cond_19

    .line 339
    if-nez v9, :cond_10

    .line 341
    const/16 v2, -0x64

    .line 343
    const/16 v6, -0x64

    .line 345
    goto :goto_d

    .line 346
    :cond_10
    if-nez v12, :cond_11

    .line 348
    const/16 v2, -0x65

    .line 350
    const/16 v6, -0x65

    .line 352
    goto :goto_d

    .line 353
    :cond_11
    if-nez v5, :cond_12

    .line 355
    const/16 v2, -0xc8

    .line 357
    const/16 v6, -0xc8

    .line 359
    goto :goto_d

    .line 360
    :cond_12
    invoke-direct {v0, v3, v4}, Lcom/amap/location/support/guard/LocationGuarder$1;->isDistrubMetal(J)Z

    .line 363
    move-result v5

    .line 364
    if-eqz v5, :cond_13

    .line 366
    const/16 v2, -0x191

    .line 368
    const/16 v6, -0x191

    .line 370
    goto :goto_d

    .line 371
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/support/guard/LocationGuarder$1;->isDistrubArea()Z

    .line 374
    move-result v5

    .line 375
    if-eqz v5, :cond_14

    .line 377
    const/16 v2, -0x190

    .line 379
    const/16 v6, -0x190

    .line 381
    goto :goto_d

    .line 382
    :cond_14
    invoke-direct {v0, v3, v4}, Lcom/amap/location/support/guard/LocationGuarder$1;->isRoadTunnel(J)Z

    .line 385
    move-result v5

    .line 386
    if-eqz v5, :cond_15

    .line 388
    const/16 v2, -0x12d

    .line 390
    const/16 v6, -0x12d

    .line 392
    goto :goto_d

    .line 393
    :cond_15
    invoke-direct {v0, v3, v4}, Lcom/amap/location/support/guard/LocationGuarder$1;->isUnderPark(J)Z

    .line 396
    move-result v5

    .line 397
    if-eqz v5, :cond_16

    .line 399
    const/16 v2, -0x12f

    .line 401
    const/16 v6, -0x12f

    .line 403
    goto :goto_d

    .line 404
    :cond_16
    invoke-direct {v0, v3, v4}, Lcom/amap/location/support/guard/LocationGuarder$1;->isLinkWeak(J)Z

    .line 407
    move-result v5

    .line 408
    if-eqz v5, :cond_17

    .line 410
    const/16 v2, -0x12e

    .line 412
    const/16 v6, -0x12e

    .line 414
    goto :goto_d

    .line 415
    :cond_17
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/support/guard/LocationGuarder$1;->isIndoor()Z

    .line 418
    move-result v5

    .line 419
    if-eqz v5, :cond_18

    .line 421
    const/16 v2, -0x130

    .line 423
    const/16 v6, -0x130

    .line 425
    goto :goto_d

    .line 426
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/support/guard/LocationGuarder$1;->isSystemException()Z

    .line 429
    move-result v5

    .line 430
    if-eqz v5, :cond_19

    .line 432
    const/16 v2, -0x1f4

    .line 434
    const/16 v6, -0x1f4

    .line 436
    goto :goto_d

    .line 437
    :cond_19
    move v6, v2

    .line 438
    :goto_d
    iget-object v11, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 440
    new-instance v12, Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 442
    move-object v2, v12

    .line 443
    move v5, v1

    .line 444
    move v8, v14

    .line 445
    move v9, v10

    .line 446
    invoke-direct/range {v2 .. v9}, Lcom/amap/location/support/guard/LocationGuarderStatus;-><init>(JIIIII)V

    .line 449
    invoke-static {v11, v12}, Lcom/amap/location/support/guard/LocationGuarder;->access$402(Lcom/amap/location/support/guard/LocationGuarder;Lcom/amap/location/support/guard/LocationGuarderStatus;)Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 452
    iget-object v1, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 454
    invoke-static {v1}, Lcom/amap/location/support/guard/LocationGuarder;->access$500(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/guard/LocationGuarderListener;

    .line 457
    move-result-object v1

    .line 458
    if-eqz v1, :cond_1a

    .line 460
    iget-object v2, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 462
    invoke-static {v2}, Lcom/amap/location/support/guard/LocationGuarder;->access$400(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 465
    move-result-object v2

    .line 466
    invoke-interface {v1, v2}, Lcom/amap/location/support/guard/LocationGuarderListener;->onStatusChanged(Lcom/amap/location/support/guard/LocationGuarderStatus;)V

    .line 469
    :cond_1a
    const v1, 0x19008

    .line 472
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 475
    iget-object v1, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 477
    invoke-static {v1}, Lcom/amap/location/support/guard/LocationGuarder;->access$600(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/handler/AmapHandler;

    .line 480
    move-result-object v1

    .line 481
    iget-object v2, v0, Lcom/amap/location/support/guard/LocationGuarder$1;->this$0:Lcom/amap/location/support/guard/LocationGuarder;

    .line 483
    iget-object v2, v2, Lcom/amap/location/support/guard/LocationGuarder;->mProducer:Ljava/lang/Runnable;

    .line 485
    const-wide/16 v3, 0x1388

    .line 487
    invoke-interface {v1, v2, v3, v4}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 490
    :cond_1b
    return-void
.end method

.class public Lcom/amap/location/support/guard/LocationGuarder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocationGuarder"

.field private static volatile sInstance:Lcom/amap/location/support/guard/LocationGuarder;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mCurrentLocationGuarderStatus:Lcom/amap/location/support/guard/LocationGuarderStatus;

.field private final mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field private mLastMetalDistrubHappenedTime:J

.field private mLocationGuarderListener:Lcom/amap/location/support/guard/LocationGuarderListener;

.field private mLocationUpdateTime:J

.field private mMessageCenterListener:Lcom/amap/location/support/app/MessageCenterListener;

.field private final mOpenSpaceDetector:Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

.field public mProducer:Ljava/lang/Runnable;

.field private volatile mStart:Z

.field private mTypeCode:I

.field private mWeakLinkScore:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/support/guard/LocationGuarder;->sLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 7
    const/16 v0, 0x14

    .line 9
    iput v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mWeakLinkScore:I

    .line 11
    new-instance v0, Lcom/amap/location/support/guard/LocationGuarder$1;

    .line 13
    invoke-direct {v0, p0}, Lcom/amap/location/support/guard/LocationGuarder$1;-><init>(Lcom/amap/location/support/guard/LocationGuarder;)V

    .line 16
    iput-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mProducer:Ljava/lang/Runnable;

    .line 18
    new-instance v0, Lcom/amap/location/support/guard/LocationGuarder$2;

    .line 20
    invoke-direct {v0, p0}, Lcom/amap/location/support/guard/LocationGuarder$2;-><init>(Lcom/amap/location/support/guard/LocationGuarder;)V

    .line 23
    iput-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mMessageCenterListener:Lcom/amap/location/support/app/MessageCenterListener;

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 40
    new-instance v0, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 42
    invoke-direct {v0}, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;-><init>()V

    .line 45
    iput-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mOpenSpaceDetector:Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 47
    const-string v0, "LocationGuarder"

    .line 49
    const-string v1, "con"

    .line 51
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/support/guard/LocationGuarder;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$100(Lcom/amap/location/support/guard/LocationGuarder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLocationUpdateTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$200(Lcom/amap/location/support/guard/LocationGuarder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 3
    return p0
.end method

.method public static synthetic access$300(Lcom/amap/location/support/guard/LocationGuarder;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLastMetalDistrubHappenedTime:J

    .line 3
    return-wide v0
.end method

.method public static synthetic access$302(Lcom/amap/location/support/guard/LocationGuarder;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLastMetalDistrubHappenedTime:J

    .line 3
    return-wide p1
.end method

.method public static synthetic access$400(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/guard/LocationGuarderStatus;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mCurrentLocationGuarderStatus:Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 3
    return-object p0
.end method

.method public static synthetic access$402(Lcom/amap/location/support/guard/LocationGuarder;Lcom/amap/location/support/guard/LocationGuarderStatus;)Lcom/amap/location/support/guard/LocationGuarderStatus;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mCurrentLocationGuarderStatus:Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/guard/LocationGuarderListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLocationGuarderListener:Lcom/amap/location/support/guard/LocationGuarderListener;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$700(Lcom/amap/location/support/guard/LocationGuarder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mWeakLinkScore:I

    .line 3
    return p0
.end method

.method public static synthetic access$800(Lcom/amap/location/support/guard/LocationGuarder;)Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mOpenSpaceDetector:Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 3
    return-object p0
.end method

.method public static getInstance()Lcom/amap/location/support/guard/LocationGuarder;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/guard/LocationGuarder;->sInstance:Lcom/amap/location/support/guard/LocationGuarder;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/amap/location/support/guard/LocationGuarder;->sLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/support/guard/LocationGuarder;->sInstance:Lcom/amap/location/support/guard/LocationGuarder;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/support/guard/LocationGuarder;

    .line 14
    invoke-direct {v1}, Lcom/amap/location/support/guard/LocationGuarder;-><init>()V

    .line 17
    sput-object v1, Lcom/amap/location/support/guard/LocationGuarder;->sInstance:Lcom/amap/location/support/guard/LocationGuarder;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/support/guard/LocationGuarder;->sInstance:Lcom/amap/location/support/guard/LocationGuarder;

    .line 26
    return-object v0
.end method


# virtual methods
.method public getGuarderStatus()Lcom/amap/location/support/guard/LocationGuarderStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mCurrentLocationGuarderStatus:Lcom/amap/location/support/guard/LocationGuarderStatus;

    .line 3
    return-object v0
.end method

.method public isOpenSpace()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mOpenSpaceDetector:Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->isOpenSpace()Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onSetLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 3
    if-eqz v0, :cond_b

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 16
    move-result-wide v0

    .line 17
    iget v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 19
    const/16 v3, 0x65

    .line 21
    if-ne v2, v3, :cond_1

    .line 23
    iget-wide v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLocationUpdateTime:J

    .line 25
    sub-long v2, v0, v2

    .line 27
    const-wide/16 v4, 0x9c4

    .line 29
    cmp-long v6, v2, v4

    .line 31
    if-lez v6, :cond_a

    .line 33
    :cond_1
    const-string v2, "gps"

    .line 35
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v2

    .line 43
    const/high16 v3, 0x43fa0000    # 500.0f

    .line 45
    const/high16 v4, 0x42480000    # 50.0f

    .line 47
    if-eqz v2, :cond_5

    .line 49
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 52
    move-result v2

    .line 53
    const/high16 v5, 0x41200000    # 10.0f

    .line 55
    cmpg-float v2, v2, v5

    .line 57
    if-gez v2, :cond_2

    .line 59
    const/16 v2, 0xc9

    .line 61
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 67
    move-result v2

    .line 68
    cmpg-float v2, v2, v4

    .line 70
    if-gez v2, :cond_3

    .line 72
    const/16 v2, 0xca

    .line 74
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 80
    move-result v2

    .line 81
    cmpg-float v2, v2, v3

    .line 83
    if-gez v2, :cond_4

    .line 85
    const/16 v2, 0xcb

    .line 87
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 89
    goto :goto_0

    .line 90
    :cond_4
    const/16 v2, 0xcc

    .line 92
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 94
    goto :goto_0

    .line 95
    :cond_5
    const-string v2, "indoor"

    .line 97
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v2

    .line 105
    if-eqz v2, :cond_6

    .line 107
    const/16 v2, 0x12c

    .line 109
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 111
    goto :goto_0

    .line 112
    :cond_6
    const-string v2, "network"

    .line 114
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 117
    move-result-object v5

    .line 118
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_9

    .line 124
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 127
    move-result v2

    .line 128
    cmpg-float v2, v2, v4

    .line 130
    if-gez v2, :cond_7

    .line 132
    const/16 v2, 0x190

    .line 134
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 136
    goto :goto_0

    .line 137
    :cond_7
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    .line 140
    move-result v2

    .line 141
    cmpg-float v2, v2, v3

    .line 143
    if-gez v2, :cond_8

    .line 145
    const/16 v2, 0x191

    .line 147
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 149
    goto :goto_0

    .line 150
    :cond_8
    const/16 v2, 0x192

    .line 152
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 154
    goto :goto_0

    .line 155
    :cond_9
    const/4 v2, 0x0

    .line 156
    iput v2, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 158
    :goto_0
    iput-wide v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLocationUpdateTime:J

    .line 160
    :cond_a
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mOpenSpaceDetector:Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 162
    invoke-virtual {v0, p1}, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->updateStatus(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 165
    :cond_b
    :goto_1
    return-void
.end method

.method public onSetManuFeedback(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "chp:5"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 23
    move-result-wide v0

    .line 24
    iput-wide v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLastMetalDistrubHappenedTime:J

    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public onSetSubLocation(Lcom/amap/location/type/location/Location;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 3
    if-eqz v0, :cond_2

    .line 5
    if-nez p1, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xe

    .line 14
    if-eq v0, v1, :cond_1

    .line 16
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 19
    move-result p1

    .line 20
    const/16 v0, 0xf

    .line 22
    if-ne p1, v0, :cond_2

    .line 24
    :cond_1
    const/16 p1, 0x65

    .line 26
    iput p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mTypeCode:I

    .line 28
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 35
    move-result-wide v0

    .line 36
    iput-wide v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLocationUpdateTime:J

    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public declared-synchronized start(Lcom/amap/location/support/guard/LocationGuarderListener;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 9
    iput-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mLocationGuarderListener:Lcom/amap/location/support/guard/LocationGuarderListener;

    .line 11
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 14
    move-result-object p1

    .line 15
    const-string v0, "weak_linkscore"

    .line 17
    const/16 v1, 0x14

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;I)I

    .line 22
    move-result p1

    .line 23
    iput p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mWeakLinkScore:I

    .line 25
    iget-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 27
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mProducer:Ljava/lang/Runnable;

    .line 29
    invoke-interface {p1, v0}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 32
    iget-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 34
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mProducer:Ljava/lang/Runnable;

    .line 36
    const-wide/16 v1, 0xbb8

    .line 38
    invoke-interface {p1, v0, v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    iget-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mOpenSpaceDetector:Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;

    .line 43
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/amap/location/support/openspace/OpenSpaceDetectorProxy;->sceneChanged(I)V

    .line 50
    iget-object p1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mMessageCenterListener:Lcom/amap/location/support/app/MessageCenterListener;

    .line 52
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->addStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 55
    const-string p1, "LocationGuarder"

    .line 57
    const-string v0, "start"

    .line 59
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    :cond_0
    monitor-exit p0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    monitor-exit p0

    .line 66
    throw p1
.end method

.method public declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mStart:Z

    .line 9
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mMessageCenterListener:Lcom/amap/location/support/app/MessageCenterListener;

    .line 11
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->removeStatListener(Lcom/amap/location/support/app/MessageCenterListener;)V

    .line 14
    iget-object v0, p0, Lcom/amap/location/support/guard/LocationGuarder;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 16
    iget-object v1, p0, Lcom/amap/location/support/guard/LocationGuarder;->mProducer:Ljava/lang/Runnable;

    .line 18
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    const-string v0, "LocationGuarder"

    .line 23
    const-string v1, "stop"

    .line 25
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->s(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

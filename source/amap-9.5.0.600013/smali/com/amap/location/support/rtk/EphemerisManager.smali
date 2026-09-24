.class public Lcom/amap/location/support/rtk/EphemerisManager;
.super Lcom/amap/location/support/dispatch/Dispatcher;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/location/support/dispatch/Dispatcher<",
        "Lcom/amap/location/support/rtk/EphemerisListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EphemerisManager"

.field private static final UPDATE_PERIOD:J = 0x1b7740L

.field private static volatile mInstance:Lcom/amap/location/support/rtk/EphemerisManager;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field private mCloudRetryInterval:I

.field private mCloudRetryMaxCount:I

.field private final mDirPath:Ljava/lang/String;

.field private final mFileDownLoader:Lcom/amap/location/support/network/FileDownLoader;

.field private volatile mFileName:Ljava/lang/String;

.field private volatile mFilePath:Ljava/lang/String;

.field private mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field private mLatestUrl:Ljava/lang/String;

.field private mLatestUrlPapago:Ljava/lang/String;

.field private mRetryCount:I

.field private final mRetryDownloadTask:Ljava/lang/Runnable;

.field private mSatellitesUrl:Ljava/lang/String;

.field private mSatellitesUrlPapago:Ljava/lang/String;

.field private mStart:Z

.field private final mUpdateTask:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/support/rtk/EphemerisManager;->mLock:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/dispatch/Dispatcher;-><init>()V

    .line 4
    const-string v0, "https://aloc-gnss-eph.amap.com/ephemeris-hourly/latest.txt"

    .line 6
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrl:Ljava/lang/String;

    .line 8
    const-string v0, "https://aloc-gnss-eph.aimap.com/ephemeris-hourly/latest.txt"

    .line 10
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrlPapago:Ljava/lang/String;

    .line 12
    const-string v0, "https://aloc-gnss-eph.amap.com/ephemeris-hourly/"

    .line 14
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrl:Ljava/lang/String;

    .line 16
    const-string v0, "https://aloc-gnss-eph.aimap.com/ephemeris-hourly/"

    .line 18
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrlPapago:Ljava/lang/String;

    .line 20
    const/16 v0, 0xa

    .line 22
    iput v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mCloudRetryMaxCount:I

    .line 24
    const v0, 0x493e0

    .line 27
    iput v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mCloudRetryInterval:I

    .line 29
    new-instance v0, Lcom/amap/location/support/rtk/EphemerisManager$2;

    .line 31
    invoke-direct {v0, p0}, Lcom/amap/location/support/rtk/EphemerisManager$2;-><init>(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 34
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mUpdateTask:Ljava/lang/Runnable;

    .line 36
    new-instance v0, Lcom/amap/location/support/rtk/EphemerisManager$3;

    .line 38
    invoke-direct {v0, p0}, Lcom/amap/location/support/rtk/EphemerisManager$3;-><init>(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 41
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryDownloadTask:Ljava/lang/Runnable;

    .line 43
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 46
    move-result-object v0

    .line 47
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 50
    move-result-object v1

    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "/gnss/ephemeris"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mDirPath:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/amap/location/support/network/FileDownLoader;

    .line 83
    invoke-direct {v0}, Lcom/amap/location/support/network/FileDownLoader;-><init>()V

    .line 86
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileDownLoader:Lcom/amap/location/support/network/FileDownLoader;

    .line 88
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 91
    move-result v0

    .line 92
    const/16 v1, 0xf

    .line 94
    if-ne v0, v1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrlPapago:Ljava/lang/String;

    .line 98
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrl:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrlPapago:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrl:Ljava/lang/String;

    .line 104
    :cond_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 107
    move-result-object v0

    .line 108
    new-instance v1, Lcom/amap/location/support/rtk/EphemerisManager$1;

    .line 110
    const-string v2, "ephemeris"

    .line 112
    invoke-direct {v1, p0, v2}, Lcom/amap/location/support/rtk/EphemerisManager$1;-><init>(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;

    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 122
    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/support/rtk/EphemerisManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/support/rtk/EphemerisManager;->updateCloudConfig(Lorg/json/JSONObject;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/amap/location/support/rtk/EphemerisManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mStart:Z

    .line 3
    return p0
.end method

.method public static synthetic access$1000(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/amap/location/support/rtk/EphemerisManager;->getNavFileNameHour(J)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1100(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/rtk/EphemerisManager;->downloadEphemerisFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$1200(Lcom/amap/location/support/rtk/EphemerisManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/rtk/EphemerisManager;->retryDownload()V

    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/amap/location/support/rtk/EphemerisManager;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryCount:I

    .line 3
    return p1
.end method

.method public static synthetic access$208(Lcom/amap/location/support/rtk/EphemerisManager;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryCount:I

    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 5
    iput v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryCount:I

    .line 7
    return v0
.end method

.method public static synthetic access$300(Lcom/amap/location/support/rtk/EphemerisManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/rtk/EphemerisManager;->downloadConfigFile()V

    .line 4
    return-void
.end method

.method public static synthetic access$400(Lcom/amap/location/support/rtk/EphemerisManager;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    return-object p0
.end method

.method public static synthetic access$500(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mDirPath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$600(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/rtk/EphemerisManager;->isEphemerisFileValid(Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$700(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileName:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$702(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileName:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$800(Lcom/amap/location/support/rtk/EphemerisManager;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFilePath:Ljava/lang/String;

    .line 3
    return-object p0
.end method

.method public static synthetic access$802(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFilePath:Ljava/lang/String;

    .line 3
    return-object p1
.end method

.method public static synthetic access$900(Lcom/amap/location/support/rtk/EphemerisManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/rtk/EphemerisManager;->clearDir()V

    .line 4
    return-void
.end method

.method private clearDir()V
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mDirPath:Ljava/lang/String;

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {v0}, Lcom/amap/location/support/util/FileUtils;->deleteFileOrDir(Ljava/io/File;)Z

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 20
    :cond_0
    return-void
.end method

.method private downloadConfigFile()V
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/location/support/network/HttpRequest;

    .line 3
    invoke-direct {v0}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrl:Ljava/lang/String;

    .line 8
    iput-object v1, v0, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 10
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileDownLoader:Lcom/amap/location/support/network/FileDownLoader;

    .line 12
    new-instance v2, Lcom/amap/location/support/rtk/EphemerisManager$4;

    .line 14
    invoke-direct {v2, p0}, Lcom/amap/location/support/rtk/EphemerisManager$4;-><init>(Lcom/amap/location/support/rtk/EphemerisManager;)V

    .line 17
    invoke-virtual {v1, v0, v2}, Lcom/amap/location/support/network/FileDownLoader;->readOnlineFile(Lcom/amap/location/support/network/HttpRequest;Lcom/amap/location/support/network/FileDownLoader$ReadOnlineFileCallback;)V

    .line 20
    return-void
.end method

.method private downloadEphemerisFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/amap/location/support/network/HttpRequest;

    .line 3
    invoke-direct {v0}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrl:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mDirPath:Ljava/lang/String;

    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "/"

    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileDownLoader:Lcom/amap/location/support/network/FileDownLoader;

    .line 49
    new-instance v3, Lcom/amap/location/support/rtk/EphemerisManager$5;

    .line 51
    invoke-direct {v3, p0, v1, p2, p1}, Lcom/amap/location/support/rtk/EphemerisManager$5;-><init>(Lcom/amap/location/support/rtk/EphemerisManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v0, v1, v3}, Lcom/amap/location/support/network/FileDownLoader;->downLoad(Lcom/amap/location/support/network/HttpRequest;Ljava/lang/String;Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;)V

    .line 57
    return-void
.end method

.method public static getInstance()Lcom/amap/location/support/rtk/EphemerisManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/support/rtk/EphemerisManager;->mInstance:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 3
    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/amap/location/support/rtk/EphemerisManager;->mLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/amap/location/support/rtk/EphemerisManager;->mInstance:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/amap/location/support/rtk/EphemerisManager;

    .line 14
    invoke-direct {v1}, Lcom/amap/location/support/rtk/EphemerisManager;-><init>()V

    .line 17
    sput-object v1, Lcom/amap/location/support/rtk/EphemerisManager;->mInstance:Lcom/amap/location/support/rtk/EphemerisManager;

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
    sget-object v0, Lcom/amap/location/support/rtk/EphemerisManager;->mInstance:Lcom/amap/location/support/rtk/EphemerisManager;

    .line 26
    return-object v0
.end method

.method private static getNavFileNameHour(J)Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0x3e8

    .line 3
    div-long/2addr p0, v0

    .line 4
    const-wide/16 v2, 0x12

    .line 6
    add-long/2addr p0, v2

    .line 7
    const-wide/32 v2, 0x12d53d80

    .line 10
    sub-long/2addr p0, v2

    .line 11
    mul-long p0, p0, v0

    .line 13
    long-to-double p0, p0

    .line 14
    const-string v2, "1980-01-06 00:00:00"

    .line 16
    new-instance v3, Ljava/text/SimpleDateFormat;

    .line 18
    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 20
    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 30
    move-result-wide v2

    .line 31
    long-to-double v2, v2

    .line 32
    add-double/2addr v2, p0

    .line 33
    const-wide p0, 0x408f400000000000L    # 1000.0

    .line 38
    div-double/2addr v2, p0

    .line 39
    double-to-long p0, v2

    .line 40
    mul-long p0, p0, v0

    .line 42
    const-wide/32 v0, 0x36ee80

    .line 45
    sub-long/2addr p0, v0

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 49
    move-result-object v2

    .line 50
    new-instance v3, Ljava/util/Date;

    .line 52
    invoke-direct {v3, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 55
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 58
    const/4 v3, 0x1

    .line 59
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x6

    .line 64
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 67
    move-result v6

    .line 68
    const/16 v7, 0xb

    .line 70
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    .line 73
    move-result v8

    .line 74
    const/16 v9, 0xc

    .line 76
    invoke-virtual {v2, v9}, Ljava/util/Calendar;->get(I)I

    .line 79
    move-result v9

    .line 80
    const/16 v10, 0x15

    .line 82
    if-gt v9, v10, :cond_0

    .line 84
    new-instance v4, Ljava/util/Date;

    .line 86
    sub-long/2addr p0, v0

    .line 87
    invoke-direct {v4, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 90
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 93
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 96
    move-result v4

    .line 97
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    .line 100
    move-result v6

    .line 101
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    .line 104
    move-result v8

    .line 105
    :cond_0
    const-string p0, "%d%03d%02d.rnx.gz"

    .line 107
    const/4 p1, 0x3

    .line 108
    new-array p1, p1, [Ljava/lang/Object;

    .line 110
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v0

    .line 114
    const/4 v1, 0x0

    .line 115
    aput-object v0, p1, v1

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v0

    .line 121
    aput-object v0, p1, v3

    .line 123
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object v0

    .line 127
    const/4 v1, 0x2

    .line 128
    aput-object v0, p1, v1

    .line 130
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    return-object p0

    .line 135
    :catch_0
    move-exception p0

    .line 136
    const-string p1, "EphemerisManager"

    .line 138
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    const-string p0, "null"

    .line 143
    return-object p0
.end method

.method private isEphemerisFileValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 8
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_1

    .line 26
    return v1

    .line 27
    :cond_1
    invoke-static {v0, p2}, Lcom/amap/location/support/util/FileUtils;->checkFileMD5(Ljava/io/File;Ljava/lang/String;)Z

    .line 30
    move-result p1

    .line 31
    return p1

    .line 32
    :cond_2
    :goto_0
    return v1
.end method

.method private retryDownload()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryCount:I

    .line 3
    iget v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mCloudRetryMaxCount:I

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 9
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryDownloadTask:Ljava/lang/Runnable;

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 16
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryDownloadTask:Ljava/lang/Runnable;

    .line 18
    iget v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mCloudRetryInterval:I

    .line 20
    int-to-long v2, v2

    .line 21
    invoke-interface {v0, v1, v2, v3}, Lcom/amap/location/support/handler/AmapHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    :cond_0
    return-void
.end method

.method private start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mStart:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mStart:Z

    .line 8
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 10
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mUpdateTask:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0, v2}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 17
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mUpdateTask:Ljava/lang/Runnable;

    .line 19
    invoke-interface {v0, v2}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFilePath:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/4 v0, 0x3

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    const/4 v2, 0x0

    .line 34
    iget-object v3, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFilePath:Ljava/lang/String;

    .line 36
    aput-object v3, v0, v2

    .line 38
    iget-object v2, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileName:Ljava/lang/String;

    .line 40
    aput-object v2, v0, v1

    .line 42
    const/4 v1, 0x2

    .line 43
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 45
    aput-object v2, v0, v1

    .line 47
    const/16 v1, 0x64

    .line 49
    invoke-virtual {p0, v1, v0}, Lcom/amap/location/support/dispatch/Dispatcher;->callback(ILjava/lang/Object;)V

    .line 52
    :cond_1
    return-void
.end method

.method private stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mUpdateTask:Ljava/lang/Runnable;

    .line 5
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 10
    iget-object v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mRetryDownloadTask:Ljava/lang/Runnable;

    .line 12
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFilePath:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mFileName:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mStart:Z

    .line 24
    return-void
.end method

.method private updateCloudConfig(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lorg/json/JSONObject;

    .line 5
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 8
    :cond_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 11
    move-result v0

    .line 12
    const/16 v1, 0xf

    .line 14
    const-string v2, "surl"

    .line 16
    const-string v3, "lurl"

    .line 18
    if-ne v0, v1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrlPapago:Ljava/lang/String;

    .line 22
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrl:Ljava/lang/String;

    .line 28
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrlPapago:Ljava/lang/String;

    .line 30
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrl:Ljava/lang/String;

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrl:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mLatestUrl:Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrl:Ljava/lang/String;

    .line 47
    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mSatellitesUrl:Ljava/lang/String;

    .line 53
    :goto_0
    const-string v0, "retry"

    .line 55
    iget v1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mCloudRetryMaxCount:I

    .line 57
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 60
    move-result p1

    .line 61
    iput p1, p0, Lcom/amap/location/support/rtk/EphemerisManager;->mCloudRetryMaxCount:I

    .line 63
    return-void
.end method


# virtual methods
.method public newListenInstance(Lcom/amap/location/support/rtk/EphemerisListener;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/support/rtk/EphemerisListener;",
            "Lcom/amap/location/support/handler/AmapLooper;",
            ")",
            "Lcom/amap/location/support/dispatch/ListenerWrapper<",
            "Lcom/amap/location/support/rtk/EphemerisListener;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/amap/location/support/rtk/EphemerisListenerWrapper;

    invoke-direct {v0, p1, p2}, Lcom/amap/location/support/rtk/EphemerisListenerWrapper;-><init>(Lcom/amap/location/support/rtk/EphemerisListener;Lcom/amap/location/support/handler/AmapLooper;)V

    return-object v0
.end method

.method public bridge synthetic newListenInstance(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;
    .locals 0

    .line 1
    check-cast p1, Lcom/amap/location/support/rtk/EphemerisListener;

    invoke-virtual {p0, p1, p2}, Lcom/amap/location/support/rtk/EphemerisManager;->newListenInstance(Lcom/amap/location/support/rtk/EphemerisListener;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/dispatch/ListenerWrapper;

    move-result-object p1

    return-object p1
.end method

.method public onListenChanged()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/support/dispatch/Dispatcher;->getSize()I

    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/amap/location/support/rtk/EphemerisManager;->start()V

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/amap/location/support/rtk/EphemerisManager;->stop()V

    .line 14
    :goto_0
    return-void
.end method

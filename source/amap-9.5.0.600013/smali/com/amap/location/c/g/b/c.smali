.class public Lcom/amap/location/c/g/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/c/g/b/c$a;
    }
.end annotation


# static fields
.field private static i:I

.field private static j:[[I


# instance fields
.field private a:Lcom/amap/location/support/handler/AmapHandler;

.field private b:Lcom/amap/location/c/b;

.field private c:Lcom/amap/location/support/storage/KeyValueStorer;

.field private d:Lcom/amap/location/c/g/a/c;

.field private e:Lcom/amap/location/c/g/b/a;

.field private f:Lcom/amap/location/c/g/b/c$a;

.field private g:Lcom/amap/location/support/handler/AmapLooper;

.field private h:Lcom/amap/location/c/a/e;

.field private k:Lcom/amap/location/support/signal/status/PhoneStatListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/c/g/a/c;Lcom/amap/location/c/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/amap/location/c/g/b/c$1;

    .line 6
    invoke-direct {v0, p0}, Lcom/amap/location/c/g/b/c$1;-><init>(Lcom/amap/location/c/g/b/c;)V

    .line 9
    iput-object v0, p0, Lcom/amap/location/c/g/b/c;->k:Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 11
    iput-object p1, p0, Lcom/amap/location/c/g/b/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    .line 13
    iput-object p2, p0, Lcom/amap/location/c/g/b/c;->d:Lcom/amap/location/c/g/a/c;

    .line 15
    iput-object p3, p0, Lcom/amap/location/c/g/b/c;->b:Lcom/amap/location/c/b;

    .line 17
    new-instance p1, Lcom/amap/location/c/g/b/a;

    .line 19
    invoke-direct {p1}, Lcom/amap/location/c/g/b/a;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amap/location/c/g/b/c;->e:Lcom/amap/location/c/g/b/a;

    .line 24
    new-instance p1, Lcom/amap/location/c/g/b/c$a;

    .line 26
    const/4 p2, 0x0

    .line 27
    invoke-direct {p1, p0, p2}, Lcom/amap/location/c/g/b/c$a;-><init>(Lcom/amap/location/c/g/b/c;Lcom/amap/location/c/g/b/c$1;)V

    .line 30
    iput-object p1, p0, Lcom/amap/location/c/g/b/c;->f:Lcom/amap/location/c/g/b/c$a;

    .line 32
    new-instance p1, Lcom/amap/location/c/a/e;

    .line 34
    invoke-direct {p1}, Lcom/amap/location/c/a/e;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/amap/location/c/g/b/c;->h:Lcom/amap/location/c/a/e;

    .line 39
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 42
    move-result-object p1

    .line 43
    const-string p2, "AMAP_LOCATION_COLLECTOR"

    .line 45
    invoke-interface {p1, p2}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/amap/location/c/g/b/c;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 51
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->h()Z

    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->i()V

    .line 60
    :cond_0
    const-string p1, "collection_peaktime_key"

    .line 62
    invoke-static {p1}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimesFromSp(Ljava/lang/String;)[[I

    .line 65
    move-result-object p1

    .line 66
    sput-object p1, Lcom/amap/location/c/g/b/c;->j:[[I

    .line 68
    const-string p1, "collection_randomtime_key"

    .line 70
    invoke-static {p1}, Lcom/amap/location/support/util/PeakTimesHelper;->getDelayRandomTimeFromSp(Ljava/lang/String;)I

    .line 73
    move-result p1

    .line 74
    sput p1, Lcom/amap/location/c/g/b/c;->i:I

    .line 76
    sget-object p2, Lcom/amap/location/c/g/b/c;->j:[[I

    .line 78
    if-nez p2, :cond_1

    .line 80
    if-eqz p1, :cond_2

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string p2, "colleciton peaktime:"

    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object p2, Lcom/amap/location/c/g/b/c;->j:[[I

    .line 94
    invoke-static {p2}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    const-string p2, ",random"

    .line 103
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget p2, Lcom/amap/location/c/g/b/c;->i:I

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    const-string p2, "UploadManager"

    .line 117
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :cond_2
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/c/g/b/c;)Lcom/amap/location/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/g/b/c;->b:Lcom/amap/location/c/b;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "collection_peaktime_key"

    .line 34
    invoke-static {v0, p0}, Lcom/amap/location/support/util/PeakTimesHelper;->getPeakTimes(Ljava/lang/String;Ljava/lang/String;)[[I

    move-result-object p0

    sput-object p0, Lcom/amap/location/c/g/b/c;->j:[[I

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lcom/amap/location/support/storage/KeyValueStorer;->putInt(Ljava/lang/String;I)V

    .line 33
    iget-object p1, p0, Lcom/amap/location/c/g/b/c;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    invoke-interface {p1}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V

    :cond_0
    return-void
.end method

.method public static a(Lcom/amap/location/c/a/e;Lcom/amap/location/c/g/b/b;)[B
    .locals 3

    .line 25
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/c/h/a;->a(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/c/h/c;->a([B)[B

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amap/location/c/a/e;->b()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amap/location/c/h/a;->a(Ljava/lang/String;[B)[B

    move-result-object v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 27
    iget-object v2, p1, Lcom/amap/location/c/g/b/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 28
    iget-object p1, p1, Lcom/amap/location/c/g/b/b;->b:Ljava/util/List;

    invoke-virtual {p0, v0, v1, p1}, Lcom/amap/location/c/a/e;->a([B[BLjava/util/List;)[B

    move-result-object p0

    .line 29
    invoke-static {p0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "UploadManager"

    .line 30
    invoke-static {p1, p0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private b(Ljava/lang/String;I)I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->c:Lcom/amap/location/support/storage/KeyValueStorer;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1, p2}, Lcom/amap/location/support/storage/KeyValueStorer;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public static synthetic b(Lcom/amap/location/c/g/b/c;)Lcom/amap/location/c/g/a/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/g/b/c;->d:Lcom/amap/location/c/g/a/c;

    return-object p0
.end method

.method public static b(I)V
    .locals 1

    .line 6
    sput p0, Lcom/amap/location/c/g/b/c;->i:I

    const-string v0, "collection_randomtime_key"

    .line 7
    invoke-static {v0, p0}, Lcom/amap/location/support/util/PeakTimesHelper;->saveDelayRandomTime(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic c(Lcom/amap/location/c/g/b/c;)Lcom/amap/location/c/a/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/g/b/c;->h:Lcom/amap/location/c/a/e;

    return-object p0
.end method

.method public static synthetic d(Lcom/amap/location/c/g/b/c;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/g/b/c;->a:Lcom/amap/location/support/handler/AmapHandler;

    return-object p0
.end method

.method public static synthetic e()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/c/g/b/c;->k()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic e(Lcom/amap/location/c/g/b/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->g()V

    return-void
.end method

.method public static synthetic f()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/c/g/b/c;->l()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private g()V
    .locals 3

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->e:Lcom/amap/location/c/g/b/a;

    .line 9
    const-wide/16 v1, 0x1f4

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/c/g/b/a;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    const-string v1, "UploadManager"

    .line 18
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    :cond_0
    :goto_0
    return-void
.end method

.method private h()Z
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    move-result v0

    .line 10
    const-string v1, "today_value"

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-direct {p0, v1, v2}, Lcom/amap/location/c/g/b/c;->b(Ljava/lang/String;I)I

    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 19
    const/4 v2, 0x1

    .line 20
    :cond_0
    return v2
.end method

.method private i()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 9
    move-result v0

    .line 10
    const-string v1, "today_value"

    .line 12
    invoke-direct {p0, v1, v0}, Lcom/amap/location/c/g/b/c;->a(Ljava/lang/String;I)V

    .line 15
    const-string v0, "uploaded_wifi_size"

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, v0, v1}, Lcom/amap/location/c/g/b/c;->a(Ljava/lang/String;I)V

    .line 21
    const-string v0, "uploaded_gprs_size"

    .line 23
    invoke-direct {p0, v0, v1}, Lcom/amap/location/c/g/b/c;->a(Ljava/lang/String;I)V

    .line 26
    return-void
.end method

.method private j()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getTelephony()Lcom/amap/location/support/signal/cell/ITelephonyManager;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcom/amap/location/support/signal/cell/ITelephonyManager;->getNetworkCoarseType()I

    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v3, 0x0

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-nez v0, :cond_2

    .line 23
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->b:Lcom/amap/location/c/b;

    .line 25
    invoke-virtual {v0}, Lcom/amap/location/c/b;->d()Lcom/amap/location/c/b$c;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/amap/location/c/b$c;->a()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :cond_2
    :goto_1
    return v2
.end method

.method private static k()J
    .locals 2

    .line 1
    sget v0, Lcom/amap/location/c/g/b/c;->i:I

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/util/PeakTimesHelper;->getDelayRadomTime(I)I

    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method private static l()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 8
    move-result-wide v0

    .line 9
    sget-object v2, Lcom/amap/location/c/g/b/c;->j:[[I

    .line 11
    invoke-static {v0, v1, v2}, Lcom/amap/location/support/util/PeakTimesHelper;->hitPeakTimes(J[[I)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method


# virtual methods
.method public declared-synchronized a(I)J
    .locals 2

    monitor-enter p0

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 6
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->h()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->i()V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/amap/location/c/g/b/c;->b:Lcom/amap/location/c/b;

    invoke-virtual {p1}, Lcom/amap/location/c/b;->d()Lcom/amap/location/c/b$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/location/c/b$c;->b()I

    move-result p1

    const-string v0, "uploaded_wifi_size"

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/amap/location/c/g/b/c;->b(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    sub-int v1, p1, v0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 10
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->h()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->i()V

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/amap/location/c/g/b/c;->b:Lcom/amap/location/c/b;

    invoke-virtual {p1}, Lcom/amap/location/c/b;->d()Lcom/amap/location/c/b$c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/location/c/b$c;->c()I

    move-result p1

    const-string v0, "uploaded_gprs_size"

    .line 13
    invoke-direct {p0, v0, v1}, Lcom/amap/location/c/g/b/c;->b(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :goto_1
    monitor-exit p0

    throw p1

    :cond_3
    :goto_2
    int-to-long v0, v1

    .line 14
    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized a(ZIJ)Lcom/amap/location/c/g/b/b;
    .locals 1

    monitor-enter p0

    .line 22
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->d:Lcom/amap/location/c/g/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amap/location/c/g/a/c;->a(ZIJ)Lcom/amap/location/c/g/b/b;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/c/g/b/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/c/g/b/c;->a:Lcom/amap/location/support/handler/AmapHandler;

    .line 3
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->e:Lcom/amap/location/c/g/b/a;

    iget-object v1, p0, Lcom/amap/location/c/g/b/c;->f:Lcom/amap/location/c/g/b/c$a;

    iget-object v2, p0, Lcom/amap/location/c/g/b/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/c/g/b/a;->a(Lcom/amap/location/c/g/b/a$a;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/c/g/b/c;->k:Lcom/amap/location/support/signal/status/PhoneStatListener;

    iget-object v2, p0, Lcom/amap/location/c/g/b/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 5
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->g()V

    return-void
.end method

.method public declared-synchronized a(ILjava/lang/Object;)V
    .locals 2

    monitor-enter p0

    if-nez p2, :cond_0

    .line 15
    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 17
    invoke-direct {p0}, Lcom/amap/location/c/g/b/c;->i()V

    .line 18
    :cond_1
    check-cast p2, Lcom/amap/location/c/g/b/b;

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    const-string p1, "uploaded_wifi_size"

    const-string v0, "uploaded_wifi_size"

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/amap/location/c/g/b/c;->b(Ljava/lang/String;I)I

    move-result v0

    iget p2, p2, Lcom/amap/location/c/g/b/b;->c:I

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/amap/location/c/g/b/c;->a(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const-string p1, "uploaded_gprs_size"

    const-string v0, "uploaded_gprs_size"

    .line 20
    invoke-direct {p0, v0, v1}, Lcom/amap/location/c/g/b/c;->b(Ljava/lang/String;I)I

    move-result v0

    iget p2, p2, Lcom/amap/location/c/g/b/b;->c:I

    add-int/2addr v0, p2

    invoke-direct {p0, p1, v0}, Lcom/amap/location/c/g/b/c;->a(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Lcom/amap/location/c/g/b/b;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->d:Lcom/amap/location/c/g/a/c;

    invoke-virtual {v0, p1}, Lcom/amap/location/c/g/a/c;->a(Lcom/amap/location/c/g/b/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 24
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/c/g/b/c;->k:Lcom/amap/location/support/signal/status/PhoneStatListener;

    iget-object v2, p0, Lcom/amap/location/c/g/b/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->addStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 3
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->e:Lcom/amap/location/c/g/b/a;

    invoke-virtual {v0}, Lcom/amap/location/c/g/b/a;->b()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/c/g/b/c;->k:Lcom/amap/location/support/signal/status/PhoneStatListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z

    .line 3
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->e:Lcom/amap/location/c/g/b/a;

    invoke-virtual {v0}, Lcom/amap/location/c/g/b/a;->c()V

    return-void
.end method

.method public d()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->e:Lcom/amap/location/c/g/b/a;

    invoke-virtual {v0}, Lcom/amap/location/c/g/b/a;->a()V

    .line 3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/c/g/b/c;->k:Lcom/amap/location/support/signal/status/PhoneStatListener;

    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->removeStatusListener(Lcom/amap/location/support/signal/status/PhoneStatListener;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "UploadManager"

    .line 4
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/amap/location/c/g/b/c;->a:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/amap/location/c/g/b/c;->a:Lcom/amap/location/support/handler/AmapHandler;

    return-void
.end method

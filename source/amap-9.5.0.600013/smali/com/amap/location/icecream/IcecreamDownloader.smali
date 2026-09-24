.class public Lcom/amap/location/icecream/IcecreamDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;,
        Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;
    }
.end annotation


# static fields
.field private static final MSG_DOWNLOAD_OVER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "icedw"


# instance fields
.field private mDestory:Z

.field private mFailureNum:I

.field public mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field private mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

.field private mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mFailureNum:I

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mDestory:Z

    .line 9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/amap/location/icecream/IcecreamDownloader$1;

    .line 15
    invoke-direct {v1, p0}, Lcom/amap/location/icecream/IcecreamDownloader$1;-><init>(Lcom/amap/location/icecream/IcecreamDownloader;)V

    .line 18
    invoke-interface {v0, p1, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 24
    new-instance p1, Ljava/util/LinkedList;

    .line 26
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 31
    new-instance p1, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p1, p0, v0}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;-><init>(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/icecream/IcecreamDownloader$1;)V

    .line 37
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 39
    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/icecream/IcecreamDownloader;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/icecream/IcecreamDownloader;->onDownloadFinish(I)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/amap/location/icecream/IcecreamDownloader;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mDestory:Z

    .line 3
    return p0
.end method

.method public static synthetic access$402(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;)Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 3
    return-object p1
.end method

.method public static synthetic access$500(Lcom/amap/location/icecream/IcecreamDownloader;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/icecream/IcecreamDownloader;->onNetStatusChanged()V

    .line 4
    return-void
.end method

.method private declared-synchronized onDownloadFinish(I)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 5
    const/4 v0, 0x1

    .line 6
    if-eq p1, v0, :cond_1

    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq p1, v1, :cond_1

    .line 11
    const/4 v1, 0x3

    .line 12
    if-ne p1, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mFailureNum:I

    .line 17
    add-int/2addr p1, v0

    .line 18
    iput p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mFailureNum:I

    .line 20
    const-string p1, "icedw"

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\u7684\u6b21\u6570\uff1a"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget v1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mFailureNum:I

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, "|"

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const/4 v1, 0x6

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mFailureNum:I

    .line 55
    if-lt p1, v1, :cond_2

    .line 57
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 65
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 68
    move-result p1

    .line 69
    if-nez p1, :cond_2

    .line 71
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 73
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 76
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 78
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_3

    .line 84
    const-string p1, "icedw"

    .line 86
    const-string v0, "\u6240\u6709\u4efb\u52a1\u4e0b\u8f7d\u7ed3\u675f"

    .line 88
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/amap/location/icecream/IcecreamDownloader;->stop()V

    .line 94
    goto :goto_2

    .line 95
    :cond_3
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 97
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 103
    invoke-direct {p0, p1}, Lcom/amap/location/icecream/IcecreamDownloader;->tryToRequest(Lcom/amap/location/support/icecream/IcecreamInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :goto_2
    monitor-exit p0

    .line 107
    return-void

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    monitor-exit p0

    .line 110
    throw p1
.end method

.method private declared-synchronized onNetStatusChanged()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 4
    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 16
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 22
    invoke-direct {p0, v0}, Lcom/amap/location/icecream/IcecreamDownloader;->tryToRequest(Lcom/amap/location/support/icecream/IcecreamInfo;)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v0, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;->mIceCreamInfo:Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 28
    iget-boolean v0, v0, Lcom/amap/location/support/icecream/IcecreamInfo;->mobile:Z

    .line 30
    if-nez v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 34
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->getStatus()I

    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x3

    .line 39
    if-ne v0, v1, :cond_1

    .line 41
    invoke-static {}, Lcom/amap/location/icecream/IcecreamSupplier;->getInstance()Lcom/amap/location/icecream/IcecreamSupplier;

    .line 44
    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 47
    invoke-virtual {v0, v1}, Lcom/amap/location/icecream/IcecreamSupplier;->cancel(Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    :goto_0
    monitor-exit p0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    monitor-exit p0

    .line 54
    throw v0
.end method

.method private tryToRequest(Lcom/amap/location/support/icecream/IcecreamInfo;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->mobile:Z

    .line 6
    const-string v1, "icedw"

    .line 8
    const/4 v2, 0x2

    .line 9
    if-nez v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 13
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->getStatus()I

    .line 16
    move-result v0

    .line 17
    if-ne v0, v2, :cond_2

    .line 19
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getSystemAvailableSpace()J

    .line 26
    move-result-wide v3

    .line 27
    const-wide/32 v5, 0x6400000

    .line 30
    cmp-long v0, v3, v5

    .line 32
    if-lez v0, :cond_2

    .line 34
    new-instance v0, Lcom/amap/location/support/network/HttpRequest;

    .line 36
    invoke-direct {v0}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 39
    iget-object v2, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->url:Ljava/lang/String;

    .line 41
    iput-object v2, v0, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsRootPath()Ljava/lang/String;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    iget-object v3, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    new-instance v3, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-direct {v3, p0, p1, v4}, Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;-><init>(Lcom/amap/location/icecream/IcecreamDownloader;Lcom/amap/location/support/icecream/IcecreamInfo;Lcom/amap/location/icecream/IcecreamDownloader$1;)V

    .line 75
    iput-object v3, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    const-string v4, "\u5373\u5c06\u5f00\u59cb\u5df2\u4e0b\u8f7d\uff1a"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object p1, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/amap/location/icecream/IcecreamSupplier;->getInstance()Lcom/amap/location/icecream/IcecreamSupplier;

    .line 102
    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 105
    invoke-virtual {p1, v0, v2, v1}, Lcom/amap/location/icecream/IcecreamSupplier;->downLoad(Lcom/amap/location/support/network/HttpRequest;Ljava/lang/String;Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;)V

    .line 108
    goto :goto_0

    .line 109
    :cond_2
    invoke-direct {p0, v2}, Lcom/amap/location/icecream/IcecreamDownloader;->onDownloadFinish(I)V

    .line 112
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 114
    const/4 v3, 0x3

    .line 115
    new-array v3, v3, [Ljava/lang/Object;

    .line 117
    const/4 v4, 0x0

    .line 118
    iget-object p1, p1, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 120
    aput-object p1, v3, v4

    .line 122
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 124
    invoke-virtual {p1}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->getStatus()I

    .line 127
    move-result p1

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    move-result-object p1

    .line 132
    const/4 v4, 0x1

    .line 133
    aput-object p1, v3, v4

    .line 135
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 138
    move-result-object p1

    .line 139
    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getSystemAvailableSpace()J

    .line 142
    move-result-wide v4

    .line 143
    const-wide/32 v6, 0x100000

    .line 146
    div-long/2addr v4, v6

    .line 147
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    move-result-object p1

    .line 151
    aput-object p1, v3, v2

    .line 153
    const-string p1, "%s \u4e0b\u8f7d\u6761\u4ef6\u4e0d\u6ee1\u8db3 \u7f51\u7edc\u72b6\u6001:%d \u78c1\u76d8\u5269\u4f59\u7a7a\u95f4:%dMB"

    .line 155
    invoke-static {v0, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 158
    move-result-object p1

    .line 159
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized start(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-eqz p1, :cond_4

    .line 4
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_4

    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x14

    .line 16
    if-le v0, v1, :cond_0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    const-string v0, "icedw"

    .line 21
    const-string v1, "\u5f00\u59cb\u4e0b\u8f7d"

    .line 23
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mDestory:Z

    .line 29
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 31
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 34
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 36
    invoke-virtual {v1}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->regist()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 43
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 55
    if-eqz v1, :cond_1

    .line 57
    iget-object v2, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 59
    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iput v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mFailureNum:I

    .line 65
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 67
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 70
    move-result p1

    .line 71
    if-nez p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 75
    if-nez p1, :cond_3

    .line 77
    iget-object p1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 79
    invoke-interface {p1}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 83
    check-cast p1, Lcom/amap/location/support/icecream/IcecreamInfo;

    .line 85
    invoke-direct {p0, p1}, Lcom/amap/location/icecream/IcecreamDownloader;->tryToRequest(Lcom/amap/location/support/icecream/IcecreamInfo;)V

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    const-string p1, "icedw"

    .line 91
    const-string v0, "\u5f53\u524d\u4e0d\u9700\u8981\u4e0b\u8f7d"

    .line 93
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    :goto_1
    monitor-exit p0

    .line 97
    return-void

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    monitor-exit p0

    .line 100
    throw p1

    .line 101
    :cond_4
    :goto_2
    monitor-exit p0

    .line 102
    return-void
.end method

.method public declared-synchronized stop()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    const-string v0, "icedw"

    .line 4
    const-string v1, "\u505c\u6b62\u4e0b\u8f7d"

    .line 6
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mDestory:Z

    .line 12
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRequestQueue:Ljava/util/Queue;

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 17
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mNetWorkStatus:Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;

    .line 19
    invoke-virtual {v0}, Lcom/amap/location/icecream/IcecreamDownloader$NetWorkStatus;->release()V

    .line 22
    iget-object v0, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 24
    if-eqz v0, :cond_0

    .line 26
    invoke-static {}, Lcom/amap/location/icecream/IcecreamSupplier;->getInstance()Lcom/amap/location/icecream/IcecreamSupplier;

    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/amap/location/icecream/IcecreamDownloader;->mRunningCallback:Lcom/amap/location/icecream/IcecreamDownloader$DownloadCallback;

    .line 32
    invoke-virtual {v0, v1}, Lcom/amap/location/icecream/IcecreamSupplier;->cancel(Lcom/amap/location/icecream/IcecreamSupplier$DownloadCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_0
    monitor-exit p0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception v0

    .line 38
    monitor-exit p0

    .line 39
    throw v0
.end method

.class public abstract Lcom/amap/location/support/network/FileLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXPIRE_DELETE_TIME:J = 0x9a7ec800L

.field private static final TAG:Ljava/lang/String; = "FileLoader"


# instance fields
.field public mDirPath:Ljava/lang/String;

.field private mDownloader:Lcom/amap/location/support/network/FileDownLoader;

.field private mFileValidTime:I

.field public mHandler:Lcom/amap/location/support/handler/AmapHandler;

.field private volatile mHasDownloading:Z

.field private mLocalFile:Ljava/io/File;

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2, p4}, Lcom/amap/location/support/network/FileLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V

    .line 13
    iput p3, p0, Lcom/amap/location/support/network/FileLoader;->mFileValidTime:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/location/support/network/FileLoader;->mFileValidTime:I

    .line 3
    iput-object p1, p0, Lcom/amap/location/support/network/FileLoader;->mName:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/amap/location/support/network/FileLoader;->mDirPath:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    const-wide v0, 0x9a7ec800L

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/location/support/util/FileUtils;->deleteOvertimeFileOrDir(Ljava/io/File;J)Z

    .line 10
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p3, p2}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/location/support/network/FileLoader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 11
    new-instance p1, Lcom/amap/location/support/network/FileDownLoader;

    invoke-direct {p1}, Lcom/amap/location/support/network/FileDownLoader;-><init>()V

    iput-object p1, p0, Lcom/amap/location/support/network/FileLoader;->mDownloader:Lcom/amap/location/support/network/FileDownLoader;

    return-void
.end method

.method public static synthetic access$000(Lcom/amap/location/support/network/FileLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/network/FileLoader;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/amap/location/support/network/FileLoader;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/support/network/FileLoader;->mLocalFile:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static synthetic access$202(Lcom/amap/location/support/network/FileLoader;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/location/support/network/FileLoader;->mHasDownloading:Z

    .line 3
    return p1
.end method

.method public static synthetic access$300(Lcom/amap/location/support/network/FileLoader;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/support/network/FileLoader;->fileValid()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/amap/location/support/network/FileLoader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/support/network/FileLoader;->saveETag(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/amap/location/support/network/FileLoader;->mHasDownloading:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/amap/location/support/network/FileLoader;->mHasDownloading:Z

    .line 9
    new-instance v0, Ljava/io/File;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v2, p0, Lcom/amap/location/support/network/FileLoader;->mDirPath:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "/"

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 45
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 47
    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 50
    iput-object v1, p0, Lcom/amap/location/support/network/FileLoader;->mLocalFile:Ljava/io/File;

    .line 52
    iget v0, p0, Lcom/amap/location/support/network/FileLoader;->mFileValidTime:I

    .line 54
    if-lez v0, :cond_3

    .line 56
    invoke-direct {p0}, Lcom/amap/location/support/network/FileLoader;->fileValid()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_3

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/network/FileLoader;->mLocalFile:Ljava/io/File;

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 67
    move-result-wide v0

    .line 68
    iget v3, p0, Lcom/amap/location/support/network/FileLoader;->mFileValidTime:I

    .line 70
    int-to-long v3, v3

    .line 71
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 74
    move-result-object v5

    .line 75
    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 78
    move-result-wide v5

    .line 79
    sub-long/2addr v5, v0

    .line 80
    const-wide/32 v0, 0x36ee80

    .line 83
    div-long/2addr v5, v0

    .line 84
    sub-long/2addr v3, v5

    .line 85
    const-wide/16 v0, 0x0

    .line 87
    cmp-long v5, v3, v0

    .line 89
    if-lez v5, :cond_3

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {p0, v0}, Lcom/amap/location/support/network/FileLoader;->getETag(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_3

    .line 116
    const-string v0, "FileLoader"

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    iget-object v5, p0, Lcom/amap/location/support/network/FileLoader;->mName:Ljava/lang/String;

    .line 125
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v5, " is valid:"

    .line 130
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v1

    .line 140
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/amap/location/support/network/FileLoader;->mHasDownloading:Z

    .line 146
    iget-object v0, p0, Lcom/amap/location/support/network/FileLoader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    .line 148
    if-eqz v0, :cond_2

    .line 150
    new-instance v1, Lcom/amap/location/support/network/FileLoader$2;

    .line 152
    invoke-direct {v1, p0}, Lcom/amap/location/support/network/FileLoader$2;-><init>(Lcom/amap/location/support/network/FileLoader;)V

    .line 155
    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_2
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 163
    :cond_3
    new-instance v0, Lcom/amap/location/support/network/HttpRequest;

    .line 165
    invoke-direct {v0}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 168
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_4

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    .line 176
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {p0}, Lcom/amap/location/support/network/FileLoader;->getUrl()Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object v1

    .line 196
    iput-object v1, v0, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 198
    goto :goto_0

    .line 199
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {p0}, Lcom/amap/location/support/network/FileLoader;->getUrl()Ljava/lang/String;

    .line 207
    move-result-object v3

    .line 208
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    iput-object v1, v0, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 229
    :goto_0
    const-string v1, "Referer"

    .line 231
    const-string v2, "www.amap.com"

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-direct {p0}, Lcom/amap/location/support/network/FileLoader;->fileValid()Z

    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_5

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    .line 244
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {p0, v1}, Lcom/amap/location/support/network/FileLoader;->getETag(Ljava/lang/String;)Ljava/lang/String;

    .line 260
    move-result-object v1

    .line 261
    goto :goto_1

    .line 262
    :cond_5
    const-string v1, ""

    .line 264
    :goto_1
    const-string v2, "If-None-Match"

    .line 266
    invoke-virtual {v0, v2, v1}, Lcom/amap/location/support/network/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/amap/location/support/network/FileLoader;->mDownloader:Lcom/amap/location/support/network/FileDownLoader;

    .line 271
    iget-object v2, p0, Lcom/amap/location/support/network/FileLoader;->mLocalFile:Ljava/io/File;

    .line 273
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 276
    move-result-object v2

    .line 277
    new-instance v3, Lcom/amap/location/support/network/FileLoader$3;

    .line 279
    invoke-direct {v3, p0, p1, p2}, Lcom/amap/location/support/network/FileLoader$3;-><init>(Lcom/amap/location/support/network/FileLoader;Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/location/support/network/FileDownLoader;->downLoad(Lcom/amap/location/support/network/HttpRequest;Ljava/lang/String;Lcom/amap/location/support/network/FileDownLoader$DownloadCallback;)V

    .line 285
    return-void
.end method

.method private fileValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/network/FileLoader;->mLocalFile:Ljava/io/File;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private saveETag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/support/network/FileLoader;->mName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-static {p1, p2}, Lcom/amap/location/support/app/GlobalStorageSync;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getETag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/support/network/FileLoader;->mName:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, ""

    .line 20
    invoke-static {p1, v0}, Lcom/amap/location/support/app/GlobalStorageSync;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 24
    return-object p1
.end method

.method public abstract getUrl()Ljava/lang/String;
.end method

.method public declared-synchronized loadFile(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/amap/location/support/network/FileLoader;->loadFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized loadFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/network/FileLoader;->mHandler:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/amap/location/support/network/FileLoader$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/location/support/network/FileLoader$1;-><init>(Lcom/amap/location/support/network/FileLoader;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amap/location/support/handler/AmapHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract parseFile(Ljava/io/File;Z)V
.end method

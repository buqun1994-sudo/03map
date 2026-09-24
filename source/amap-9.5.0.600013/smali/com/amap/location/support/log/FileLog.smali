.class public Lcom/amap/location/support/log/FileLog;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LINE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static mPermissionTag:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sLogFile:Lcom/amap/location/support/log/FileLog;


# instance fields
.field private final mCacheSize:I

.field private final mDirPath:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private final mFileName:Ljava/lang/String;

.field private final mLogCache:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogCacheLock:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 5
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    sput-object v0, Lcom/amap/location/support/log/FileLog;->LINE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/util/HashSet;

    .line 14
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 17
    sput-object v0, Lcom/amap/location/support/log/FileLog;->mPermissionTag:Ljava/util/Set;

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/support/log/FileLog;->mLogCacheLock:Ljava/lang/Object;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/amap/location/support/log/FileLog;->mLogCache:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/amap/location/support/log/FileLog;->mDirPath:Ljava/lang/String;

    .line 20
    iput p2, p0, Lcom/amap/location/support/log/FileLog;->mCacheSize:I

    .line 22
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 24
    const-string p2, "yyyyMMddHHmmss"

    .line 26
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 28
    invoke-direct {p1, p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v0, "Data-"

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 44
    move-result-wide v0

    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {p1, v0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, ".txt"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/amap/location/support/log/FileLog;->mFileName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static addPermissionTag(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    sget-object v0, Lcom/amap/location/support/log/FileLog;->mPermissionTag:Ljava/util/Set;

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
.end method

.method public static initLog()V
    .locals 2

    const-string v0, "llog"

    const/16 v1, 0x14

    .line 1
    invoke-static {v0, v1}, Lcom/amap/location/support/log/FileLog;->initLog(Ljava/lang/String;I)V

    return-void
.end method

.method public static initLog(Ljava/lang/String;I)V
    .locals 1

    .line 2
    sget-object v0, Lcom/amap/location/support/log/FileLog;->sLogFile:Lcom/amap/location/support/log/FileLog;

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/amap/location/support/log/FileLog;->sLogFile:Lcom/amap/location/support/log/FileLog;

    invoke-virtual {v0}, Lcom/amap/location/support/log/FileLog;->fflush()V

    .line 4
    :cond_0
    new-instance v0, Lcom/amap/location/support/log/FileLog;

    invoke-direct {v0, p0, p1}, Lcom/amap/location/support/log/FileLog;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/location/support/log/FileLog;->sLogFile:Lcom/amap/location/support/log/FileLog;

    return-void
.end method

.method public static write(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    sget-object v0, Lcom/amap/location/support/log/FileLog;->sLogFile:Lcom/amap/location/support/log/FileLog;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Lcom/amap/location/support/log/FileLog;->mPermissionTag:Ljava/util/Set;

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 10
    move-result v0

    .line 11
    const-string v1, "|"

    .line 13
    const/4 v2, 0x0

    .line 14
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    sget-object v3, Lcom/amap/location/support/log/FileLog;->mPermissionTag:Ljava/util/Set;

    .line 40
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v3

    .line 44
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_1

    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/String;

    .line 56
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 59
    move-result-object v4

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_0

    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    if-nez v2, :cond_2

    .line 70
    sget-object v0, Lcom/amap/location/support/log/FileLog;->mPermissionTag:Ljava/util/Set;

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_3

    .line 78
    :cond_2
    sget-object v0, Lcom/amap/location/support/log/FileLog;->sLogFile:Lcom/amap/location/support/log/FileLog;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {v0, p0}, Lcom/amap/location/support/log/FileLog;->addLog(Ljava/lang/String;)V

    .line 101
    :cond_3
    return-void
.end method


# virtual methods
.method public addLog(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    sget-object v3, Lcom/amap/location/support/log/FileLog;->LINE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {v3, v4}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "|"

    .line 25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    const-string v0, "|"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p1, "\n"

    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lcom/amap/location/support/log/FileLog;->mLogCacheLock:Ljava/lang/Object;

    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/support/log/FileLog;->mLogCache:Ljava/util/List;

    .line 53
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object p1, p0, Lcom/amap/location/support/log/FileLog;->mLogCache:Ljava/util/List;

    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 62
    move-result p1

    .line 63
    iget v0, p0, Lcom/amap/location/support/log/FileLog;->mCacheSize:I

    .line 65
    if-lt p1, v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/amap/location/support/log/FileLog;->fflush()V

    .line 70
    :cond_0
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    throw p1
.end method

.method public fflush()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/support/log/FileLog;->mLogCache:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/support/log/FileLog;->mLogCacheLock:Ljava/lang/Object;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/support/log/FileLog;->mLogCache:Ljava/util/List;

    .line 14
    invoke-virtual {p0, v1}, Lcom/amap/location/support/log/FileLog;->writeToFile(Ljava/util/List;)V

    .line 17
    iget-object v1, p0, Lcom/amap/location/support/log/FileLog;->mLogCache:Ljava/util/List;

    .line 19
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 22
    monitor-exit v0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1

    .line 27
    :cond_0
    :goto_0
    return-void
.end method

.method public writeToFile(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/support/log/FileLog;->mFile:Ljava/io/File;

    .line 3
    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    .line 7
    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getExternalStoragePath()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/amap/location/support/log/FileLog;->mDirPath:Ljava/lang/String;

    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 28
    const-string p1, "file"

    .line 30
    const-string v0, "\u521b\u5efa\u76ee\u5f55\u5931\u8d25"

    .line 32
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    return-void

    .line 36
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 38
    iget-object v2, p0, Lcom/amap/location/support/log/FileLog;->mFileName:Ljava/lang/String;

    .line 40
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 43
    iput-object v1, p0, Lcom/amap/location/support/log/FileLog;->mFile:Ljava/io/File;

    .line 45
    :cond_1
    new-instance v0, Ljava/io/PrintStream;

    .line 47
    new-instance v1, Ljava/io/FileOutputStream;

    .line 49
    iget-object v2, p0, Lcom/amap/location/support/log/FileLog;->mFile:Ljava/io/File;

    .line 51
    const/4 v3, 0x1

    .line 52
    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 55
    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 58
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    move-result-object p1

    .line 62
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->append(Ljava/lang/CharSequence;)Ljava/io/PrintStream;

    .line 77
    goto :goto_0

    .line 78
    :cond_2
    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 81
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    return-void
.end method

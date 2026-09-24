.class public final Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;,
        Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;,
        Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private fileCount:I

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxFileCount:I

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "[a-z0-9_-]{1,64}"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 9
    new-instance v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$2;

    .line 11
    invoke-direct {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$2;-><init>()V

    .line 14
    sput-object v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-wide/16 v2, 0x0

    .line 9
    iput-wide v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 11
    const/4 v4, 0x0

    .line 12
    iput v4, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 14
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 16
    const/high16 v6, 0x3f400000    # 0.75f

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-direct {v5, v4, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    .line 22
    iput-object v5, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 24
    iput-wide v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->nextSequenceNumber:J

    .line 26
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 28
    const/4 v9, 0x0

    .line 29
    const/4 v10, 0x1

    .line 30
    const-wide/16 v11, 0x3c

    .line 32
    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 34
    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 36
    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 39
    move-object v8, v2

    .line 40
    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    .line 43
    iput-object v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 45
    new-instance v2, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;

    .line 47
    invoke-direct {v2, p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;-><init>(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)V

    .line 50
    iput-object v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 52
    iput-object v1, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->directory:Ljava/io/File;

    .line 54
    move/from16 v2, p2

    .line 56
    iput v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->appVersion:I

    .line 58
    new-instance v2, Ljava/io/File;

    .line 60
    const-string v3, "journal"

    .line 62
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 65
    iput-object v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 67
    new-instance v2, Ljava/io/File;

    .line 69
    const-string v3, "journal.tmp"

    .line 71
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 74
    iput-object v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 76
    new-instance v2, Ljava/io/File;

    .line 78
    const-string v3, "journal.bkp"

    .line 80
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    iput-object v2, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 85
    move/from16 v1, p3

    .line 87
    iput v1, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 89
    move-wide/from16 v1, p4

    .line 91
    iput-wide v1, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxSize:J

    .line 93
    move/from16 v1, p6

    .line 95
    iput v1, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxFileCount:I

    .line 97
    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)Ljava/io/Writer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 3
    return-object p0
.end method

.method public static synthetic access$100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->trimToSize()V

    .line 4
    return-void
.end method

.method public static synthetic access$1700(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Ljava/lang/String;J)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic access$1900(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 3
    return p0
.end method

.method public static synthetic access$200(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->trimToFileCount()V

    .line 4
    return-void
.end method

.method public static synthetic access$2000(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->directory:Ljava/io/File;

    .line 3
    return-object p0
.end method

.method public static synthetic access$2100()Ljava/io/OutputStream;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    .line 3
    return-object v0
.end method

.method public static synthetic access$2300(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->completeEdit(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalRebuildRequired()Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic access$400(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->rebuildJournal()V

    .line 4
    return-void
.end method

.method public static synthetic access$502(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 3
    return p1
.end method

.method private checkNotClosed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    const-string v1, "cache is closed"

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 13
    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->access$1500(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 9
    move-result-object v1

    .line 10
    if-ne v1, p1, :cond_a

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz p2, :cond_2

    .line 15
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$700(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Z

    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    iget v3, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 24
    if-ge v2, v3, :cond_2

    .line 26
    invoke-static {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->access$1600(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)[Z

    .line 29
    move-result-object v3

    .line 30
    aget-boolean v3, v3, v2

    .line 32
    if-eqz v3, :cond_1

    .line 34
    invoke-virtual {v0, v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 41
    move-result v3

    .line 42
    if-nez v3, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->abort()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return-void

    .line 49
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->abort()V

    .line 55
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 57
    new-instance p2, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v0, "Newly created entry didn\'t create value for index "

    .line 64
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p2

    .line 74
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 77
    throw p1

    .line 78
    :cond_2
    :goto_1
    iget p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 80
    const/4 v2, 0x1

    .line 81
    if-ge v1, p1, :cond_5

    .line 83
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 86
    move-result-object p1

    .line 87
    if-eqz p2, :cond_3

    .line 89
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 102
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)[J

    .line 105
    move-result-object p1

    .line 106
    aget-wide v4, p1, v1

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->length()J

    .line 111
    move-result-wide v6

    .line 112
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)[J

    .line 115
    move-result-object p1

    .line 116
    aput-wide v6, p1, v1

    .line 118
    iget-wide v8, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 120
    sub-long/2addr v8, v4

    .line 121
    add-long/2addr v8, v6

    .line 122
    iput-wide v8, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 124
    iget p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 126
    add-int/2addr p1, v2

    .line 127
    iput p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    invoke-static {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 133
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_5
    iget p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 138
    add-int/2addr p1, v2

    .line 139
    iput p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 141
    const/4 p1, 0x0

    .line 142
    invoke-static {v0, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$802(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 145
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$700(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Z

    .line 148
    move-result p1

    .line 149
    or-int/2addr p1, p2

    .line 150
    const/16 v1, 0xa

    .line 152
    if-eqz p1, :cond_6

    .line 154
    invoke-static {v0, v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$702(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Z)Z

    .line 157
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 159
    new-instance v2, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    const-string v3, "CLEAN "

    .line 166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1200(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Ljava/lang/String;

    .line 172
    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    .line 179
    move-result-object v3

    .line 180
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 193
    if-eqz p2, :cond_7

    .line 195
    iget-wide p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->nextSequenceNumber:J

    .line 197
    const-wide/16 v1, 0x1

    .line 199
    add-long/2addr v1, p1

    .line 200
    iput-wide v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->nextSequenceNumber:J

    .line 202
    invoke-static {v0, p1, p2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1302(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;J)J

    .line 205
    goto :goto_3

    .line 206
    :cond_6
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 208
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1200(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Ljava/lang/String;

    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string v2, "REMOVE "

    .line 224
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1200(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Ljava/lang/String;

    .line 230
    move-result-object v0

    .line 231
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    move-result-object p2

    .line 241
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 244
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 246
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 249
    iget-wide p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 251
    iget-wide v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxSize:J

    .line 253
    cmp-long v2, p1, v0

    .line 255
    if-gtz v2, :cond_8

    .line 257
    iget p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 259
    iget p2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxFileCount:I

    .line 261
    if-gt p1, p2, :cond_8

    .line 263
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalRebuildRequired()Z

    .line 266
    move-result p1

    .line 267
    if-eqz p1, :cond_9

    .line 269
    :cond_8
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 271
    iget-object p2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 273
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    :cond_9
    monitor-exit p0

    .line 277
    return-void

    .line 278
    :cond_a
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 280
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 283
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    :catchall_0
    move-exception p1

    .line 285
    monitor-exit p0

    .line 286
    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/io/IOException;

    .line 16
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 19
    throw p0

    .line 20
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->checkNotClosed()V

    .line 3
    invoke-direct {p0, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1300(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-nez v0, :cond_2

    .line 7
    :try_start_1
    new-instance v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;-><init>(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Ljava/lang/String;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;)V

    .line 8
    iget-object p2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_2
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_3

    .line 10
    monitor-exit p0

    return-object v3

    .line 11
    :cond_3
    :goto_0
    :try_start_2
    new-instance p2, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;-><init>(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;)V

    .line 12
    invoke-static {v0, p2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$802(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 13
    iget-object p3, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0xa

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 15
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 3
    sget-object v1, Lcom/autonavi/core/network/impl/cache/impl/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 8
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method private journalRebuildRequired()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 3
    const/16 v1, 0x7d0

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v1}, Ljava/util/AbstractMap;->size()I

    .line 12
    move-result v1

    .line 13
    if-lt v0, v1, :cond_0

    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method public static open(Ljava/io/File;IIJI)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 3
    cmp-long v2, p3, v0

    .line 5
    if-lez v2, :cond_5

    .line 7
    if-lez p5, :cond_4

    .line 9
    if-lez p2, :cond_3

    .line 11
    new-instance v0, Ljava/io/File;

    .line 13
    const-string v1, "journal.bkp"

    .line 15
    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 24
    new-instance v1, Ljava/io/File;

    .line 26
    const-string v2, "journal"

    .line 28
    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v2, 0x0

    .line 42
    invoke-static {v0, v1, v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 45
    :cond_1
    :goto_0
    new-instance v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 47
    move-object v3, v0

    .line 48
    move-object v4, p0

    .line 49
    move v5, p1

    .line 50
    move v6, p2

    .line 51
    move-wide v7, p3

    .line 52
    move v9, p5

    .line 53
    invoke-direct/range {v3 .. v9}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    .line 56
    iget-object v1, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 58
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 64
    :try_start_0
    invoke-direct {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->readJournal()V

    .line 67
    invoke-direct {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->processJournal()V

    .line 70
    new-instance v1, Ljava/io/BufferedWriter;

    .line 72
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 74
    new-instance v3, Ljava/io/FileOutputStream;

    .line 76
    iget-object v4, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 78
    const/4 v5, 0x1

    .line 79
    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 82
    sget-object v4, Lcom/autonavi/core/network/impl/cache/impl/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 84
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 87
    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    iput-object v1, v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    return-object v0

    .line 93
    :catch_0
    move-exception v1

    .line 94
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 98
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    const-string v4, "DiskLruCache "

    .line 103
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    const-string v4, " is corrupt: "

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string v1, ", removing"

    .line 123
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object v1

    .line 130
    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->delete()V

    .line 136
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 139
    new-instance v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;

    .line 141
    move-object v3, v0

    .line 142
    move-object v4, p0

    .line 143
    move v5, p1

    .line 144
    move v6, p2

    .line 145
    move-wide v7, p3

    .line 146
    move v9, p5

    .line 147
    invoke-direct/range {v3 .. v9}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    .line 150
    invoke-direct {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->rebuildJournal()V

    .line 153
    return-object v0

    .line 154
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 156
    const-string p1, "valueCount <= 0"

    .line 158
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 161
    throw p0

    .line 162
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 164
    const-string p1, "maxFileCount <= 0"

    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 169
    throw p0

    .line 170
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 172
    const-string p1, "maxSize <= 0"

    .line 174
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 177
    throw p0
.end method

.method private processJournal()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 3
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 6
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_3

    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 28
    invoke-static {v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    if-nez v2, :cond_1

    .line 35
    :goto_1
    iget v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 37
    if-ge v3, v2, :cond_0

    .line 39
    iget-wide v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 41
    invoke-static {v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)[J

    .line 44
    move-result-object v2

    .line 45
    aget-wide v6, v2, v3

    .line 47
    add-long/2addr v4, v6

    .line 48
    iput-wide v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 50
    iget v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 54
    iput v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 56
    add-int/lit8 v3, v3, 0x1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    const/4 v2, 0x0

    .line 60
    invoke-static {v1, v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$802(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 63
    :goto_2
    iget v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 65
    if-ge v3, v2, :cond_2

    .line 67
    invoke-virtual {v1, v3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 70
    move-result-object v2

    .line 71
    invoke-static {v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 74
    invoke-virtual {v1, v3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 83
    goto :goto_2

    .line 84
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    return-void
.end method

.method private readJournal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, ", "

    .line 3
    new-instance v1, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;

    .line 5
    new-instance v2, Ljava/io/FileInputStream;

    .line 7
    iget-object v3, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 9
    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 12
    sget-object v3, Lcom/autonavi/core/network/impl/cache/impl/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 14
    invoke-direct {v1, v2, v3}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 17
    :try_start_0
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;->readLine()Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;->readLine()Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;->readLine()Ljava/lang/String;

    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;->readLine()Ljava/lang/String;

    .line 36
    move-result-object v6

    .line 37
    const-string v7, "libcore.io.DiskLruCache"

    .line 39
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v7

    .line 43
    if-eqz v7, :cond_0

    .line 45
    const-string v7, "1"

    .line 47
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_0

    .line 53
    iget v7, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->appVersion:I

    .line 55
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_0

    .line 65
    iget v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 67
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_0

    .line 77
    const-string v4, ""

    .line 79
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    if-eqz v4, :cond_0

    .line 85
    const/4 v0, 0x0

    .line 86
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/StrictLineReader;->readLine()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-direct {p0, v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    add-int/lit8 v0, v0, 0x1

    .line 95
    goto :goto_0

    .line 96
    :catch_0
    :try_start_2
    iget-object v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 98
    invoke-virtual {v2}, Ljava/util/AbstractMap;->size()I

    .line 101
    move-result v2

    .line 102
    sub-int/2addr v0, v2

    .line 103
    iput v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    invoke-static {v1}, Lcom/autonavi/core/network/impl/cache/impl/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    return-void

    .line 109
    :cond_0
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 111
    new-instance v7, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v8, "unexpected journal header: ["

    .line 118
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v0, "]"

    .line 144
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v0

    .line 151
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 154
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 155
    :catchall_0
    move-exception v0

    .line 156
    invoke-static {v1}, Lcom/autonavi/core/network/impl/cache/impl/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 159
    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x20

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    .line 6
    move-result v1

    .line 7
    const-string v2, "unexpected journal line: "

    .line 9
    const/4 v3, -0x1

    .line 10
    if-eq v1, v3, :cond_6

    .line 12
    add-int/lit8 v4, v1, 0x1

    .line 14
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    .line 17
    move-result v0

    .line 18
    if-ne v0, v3, :cond_0

    .line 20
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 23
    move-result-object v4

    .line 24
    const/4 v5, 0x6

    .line 25
    if-ne v1, v5, :cond_1

    .line 27
    const-string v5, "REMOVE"

    .line 29
    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_1

    .line 35
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 37
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 44
    move-result-object v4

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 47
    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 53
    const/4 v6, 0x0

    .line 54
    if-nez v5, :cond_2

    .line 56
    new-instance v5, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 58
    invoke-direct {v5, p0, v4, v6}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;-><init>(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Ljava/lang/String;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;)V

    .line 61
    iget-object v7, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 63
    invoke-virtual {v7, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_2
    const/4 v4, 0x5

    .line 67
    if-eq v0, v3, :cond_3

    .line 69
    if-ne v1, v4, :cond_3

    .line 71
    const-string v7, "CLEAN"

    .line 73
    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_3

    .line 79
    const/4 v1, 0x1

    .line 80
    add-int/2addr v0, v1

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    const-string v0, " "

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    invoke-static {v5, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$702(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Z)Z

    .line 94
    invoke-static {v5, v6}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$802(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 97
    invoke-static {v5, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$900(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 100
    goto :goto_0

    .line 101
    :cond_3
    if-ne v0, v3, :cond_4

    .line 103
    if-ne v1, v4, :cond_4

    .line 105
    const-string v4, "DIRTY"

    .line 107
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_4

    .line 113
    new-instance p1, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 115
    invoke-direct {p1, p0, v5, v6}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;-><init>(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;)V

    .line 118
    invoke-static {v5, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$802(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    if-ne v0, v3, :cond_5

    .line 124
    const/4 v0, 0x4

    .line 125
    if-ne v1, v0, :cond_5

    .line 127
    const-string v0, "READ"

    .line 129
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_5

    .line 135
    :goto_0
    return-void

    .line 136
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 153
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 156
    throw v0

    .line 157
    :cond_6
    new-instance v0, Ljava/io/IOException;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object p1

    .line 174
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 177
    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 9
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    .line 11
    new-instance v1, Ljava/io/OutputStreamWriter;

    .line 13
    new-instance v2, Ljava/io/FileOutputStream;

    .line 15
    iget-object v3, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 17
    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 20
    sget-object v3, Lcom/autonavi/core/network/impl/cache/impl/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 22
    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 25
    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 28
    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 30
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 33
    const-string v1, "\n"

    .line 35
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 38
    const-string v1, "1"

    .line 40
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 43
    const-string v1, "\n"

    .line 45
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 48
    iget v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->appVersion:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 57
    const-string v1, "\n"

    .line 59
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 62
    iget v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 71
    const-string v1, "\n"

    .line 73
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 76
    const-string v1, "\n"

    .line 78
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 83
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 86
    move-result-object v1

    .line 87
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v1

    .line 91
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_2

    .line 97
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 103
    invoke-static {v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 106
    move-result-object v3

    .line 107
    const/16 v4, 0xa

    .line 109
    if-eqz v3, :cond_1

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v5, "DIRTY "

    .line 118
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1200(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 138
    goto :goto_0

    .line 139
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    const-string v5, "CLEAN "

    .line 146
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-static {v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1200(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Ljava/lang/String;

    .line 152
    move-result-object v5

    .line 153
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {v2}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    goto :goto_0

    .line 174
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 177
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 179
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 182
    move-result v0

    .line 183
    const/4 v1, 0x1

    .line 184
    if-eqz v0, :cond_3

    .line 186
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 188
    iget-object v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 190
    invoke-static {v0, v2, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 195
    iget-object v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 197
    const/4 v3, 0x0

    .line 198
    invoke-static {v0, v2, v3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 201
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 206
    new-instance v0, Ljava/io/BufferedWriter;

    .line 208
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 210
    new-instance v3, Ljava/io/FileOutputStream;

    .line 212
    iget-object v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalFile:Ljava/io/File;

    .line 214
    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 217
    sget-object v1, Lcom/autonavi/core/network/impl/cache/impl/Util;->US_ASCII:Ljava/nio/charset/Charset;

    .line 219
    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 222
    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 225
    iput-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 229
    :catchall_0
    move-exception v1

    .line 230
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 233
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 234
    :catchall_1
    move-exception v0

    .line 235
    monitor-exit p0

    .line 236
    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-static {p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_1

    .line 12
    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/io/IOException;

    .line 15
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 18
    throw p0
.end method

.method private trimToFileCount()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 3
    iget v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxFileCount:I

    .line 5
    if-le v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 9
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/util/Map$Entry;

    .line 23
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/String;

    .line 29
    invoke-virtual {p0, v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    return-void
.end method

.method private trimToSize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :goto_0
    iget-wide v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 3
    iget-wide v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxSize:J

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-lez v4, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 11
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/util/Map$Entry;

    .line 25
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p1, "\""

    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw v0
.end method


# virtual methods
.method public clearCache()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->directory:Ljava/io/File;

    .line 3
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/Util;->deleteFile(Ljava/io/File;)I

    .line 6
    return-void
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 12
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object v0

    .line 23
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 35
    invoke-static {v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_1

    .line 41
    invoke-static {v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;->abort()V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->trimToSize()V

    .line 52
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->trimToFileCount()V

    .line 55
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 57
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 60
    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    monitor-exit p0

    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    monitor-exit p0

    .line 67
    throw v0
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->close()V

    .line 4
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->directory:Ljava/io/File;

    .line 6
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/Util;->deleteFile(Ljava/io/File;)I

    .line 9
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, -0x1

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized fileCount()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    int-to-long v0, v0

    .line 5
    monitor-exit p0

    .line 6
    return-wide v0

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->checkNotClosed()V

    .line 5
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->trimToSize()V

    .line 8
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->trimToFileCount()V

    .line 11
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 13
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    monitor-exit p0

    .line 20
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Snapshot;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->checkNotClosed()V

    .line 5
    invoke-direct {p0, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 19
    monitor-exit p0

    .line 20
    return-object v1

    .line 21
    :cond_0
    :try_start_1
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$700(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Z

    .line 24
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    if-nez v2, :cond_1

    .line 27
    monitor-exit p0

    .line 28
    return-object v1

    .line 29
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 31
    new-array v8, v2, [Ljava/io/File;

    .line 33
    new-array v9, v2, [Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 35
    const/4 v2, 0x0

    .line 36
    const/4 v3, 0x0

    .line 37
    :goto_0
    :try_start_3
    iget v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 39
    if-ge v3, v4, :cond_2

    .line 41
    invoke-virtual {v0, v3}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 44
    move-result-object v4

    .line 45
    aput-object v4, v8, v3

    .line 47
    new-instance v5, Ljava/io/FileInputStream;

    .line 49
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 52
    aput-object v5, v9, v3
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 54
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    :try_start_4
    iget v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 61
    iput v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 63
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v3, "READ "

    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const/16 v3, 0xa

    .line 80
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 90
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalRebuildRequired()Z

    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_3

    .line 96
    iget-object v1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 98
    iget-object v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 100
    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 103
    :cond_3
    new-instance v1, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Snapshot;

    .line 105
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1300(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)J

    .line 108
    move-result-wide v6

    .line 109
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)[J

    .line 112
    move-result-object v10

    .line 113
    const/4 v11, 0x0

    .line 114
    move-object v3, v1

    .line 115
    move-object v4, p0

    .line 116
    move-object v5, p1

    .line 117
    invoke-direct/range {v3 .. v11}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Snapshot;-><init>(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/autonavi/core/network/impl/cache/impl/DiskLruCache$1;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 120
    monitor-exit p0

    .line 121
    return-object v1

    .line 122
    :catch_0
    :goto_1
    :try_start_5
    iget p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 124
    if-ge v2, p1, :cond_4

    .line 126
    aget-object p1, v9, v2

    .line 128
    if-eqz p1, :cond_4

    .line 130
    invoke-static {p1}, Lcom/autonavi/core/network/impl/cache/impl/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_1

    .line 136
    :cond_4
    monitor-exit p0

    .line 137
    return-object v1

    .line 138
    :catchall_0
    move-exception p1

    .line 139
    monitor-exit p0

    .line 140
    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->directory:Ljava/io/File;

    .line 3
    return-object v0
.end method

.method public declared-synchronized getMaxFileCount()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxFileCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized getMaxSize()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    monitor-exit p0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    monitor-exit p0

    .line 13
    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->checkNotClosed()V

    .line 5
    invoke-direct {p0, p1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_5

    .line 19
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$800(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Editor;

    .line 22
    move-result-object v2

    .line 23
    if-eqz v2, :cond_0

    .line 25
    goto/16 :goto_2

    .line 27
    :cond_0
    :goto_0
    iget v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->valueCount:I

    .line 29
    const/4 v3, 0x1

    .line 30
    if-ge v1, v2, :cond_3

    .line 32
    invoke-virtual {v0, v1}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_1

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    const-string v1, "failed to delete "

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 71
    throw p1

    .line 72
    :cond_2
    :goto_1
    iget-wide v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 74
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)[J

    .line 77
    move-result-object v2

    .line 78
    aget-wide v6, v2, v1

    .line 80
    sub-long/2addr v4, v6

    .line 81
    iput-wide v4, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J

    .line 83
    iget v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 85
    sub-int/2addr v2, v3

    .line 86
    iput v2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->fileCount:I

    .line 88
    invoke-static {v0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;->access$1100(Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache$Entry;)[J

    .line 91
    move-result-object v2

    .line 92
    const-wide/16 v3, 0x0

    .line 94
    aput-wide v3, v2, v1

    .line 96
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    iget v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 101
    add-int/2addr v0, v3

    .line 102
    iput v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->redundantOpCount:I

    .line 104
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalWriter:Ljava/io/Writer;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    const-string v2, "REMOVE "

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const/16 v2, 0xa

    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 131
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->journalRebuildRequired()Z

    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_4

    .line 142
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 144
    iget-object v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 146
    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    :cond_4
    monitor-exit p0

    .line 150
    return v3

    .line 151
    :cond_5
    :goto_2
    monitor-exit p0

    .line 152
    return v1

    .line 153
    :catchall_0
    move-exception p1

    .line 154
    monitor-exit p0

    .line 155
    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-wide p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->maxSize:J

    .line 4
    iget-object p1, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    iget-object p2, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 8
    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0

    .line 15
    throw p1
.end method

.method public declared-synchronized size()J
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/autonavi/core/network/impl/cache/impl/DiskLruCache;->size:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p0

    .line 5
    return-wide v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

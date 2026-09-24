.class public Lcom/amap/location/f/a/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static volatile b:Lcom/amap/location/f/a/b/b;


# instance fields
.field private c:Lcom/amap/location/support/db/IDbHelper;

.field private d:Ljava/util/concurrent/locks/ReadWriteLock;

.field private e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "id"

    .line 3
    const-string v1, "main"

    .line 5
    const-string v2, "lat"

    .line 7
    const-string v3, "lng"

    .line 9
    const-string v4, "acc"

    .line 11
    const-string v5, "conf"

    .line 13
    const-string v6, "nb"

    .line 15
    const-string v7, "timestamp"

    .line 17
    const-string v8, "frequency"

    .line 19
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/amap/location/f/a/b/b;->a:[Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/amap/location/f/a/b/b;->b:Lcom/amap/location/f/a/b/b;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDbManager()Lcom/amap/location/support/db/IDbManager;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const-string v2, "lowLocation.db"

    .line 11
    invoke-interface {v0, v2, v1}, Lcom/amap/location/support/db/IDbManager;->getDbHelper(Ljava/lang/String;I)Lcom/amap/location/support/db/IDbHelper;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 17
    new-instance v1, Lcom/amap/location/f/a/b/b$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/amap/location/f/a/b/b$1;-><init>(Lcom/amap/location/f/a/b/b;)V

    .line 22
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->initDb(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 25
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 32
    return-void
.end method

.method public static a()Lcom/amap/location/f/a/b/b;
    .locals 2

    .line 2
    sget-object v0, Lcom/amap/location/f/a/b/b;->b:Lcom/amap/location/f/a/b/b;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/amap/location/f/a/b/b;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amap/location/f/a/b/b;->b:Lcom/amap/location/f/a/b/b;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/amap/location/f/a/b/b;

    invoke-direct {v1}, Lcom/amap/location/f/a/b/b;-><init>()V

    sput-object v1, Lcom/amap/location/f/a/b/b;->b:Lcom/amap/location/f/a/b/b;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/f/a/b/b;->b:Lcom/amap/location/f/a/b/b;

    return-object v0
.end method

.method private a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/f/a/a/a;)Lcom/amap/location/support/db/AmapContentValues;
    .locals 2

    .line 98
    invoke-virtual {p1}, Lcom/amap/location/support/db/AmapContentValues;->clear()V

    .line 99
    iget-wide v0, p2, Lcom/amap/location/f/a/a/a;->f:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    iget-boolean v0, p2, Lcom/amap/location/f/a/a/a;->i:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    iget v0, p2, Lcom/amap/location/f/a/a/a;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    iget v0, p2, Lcom/amap/location/f/a/a/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lng"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 103
    iget v0, p2, Lcom/amap/location/f/a/a/a;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "acc"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    iget v0, p2, Lcom/amap/location/f/a/a/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "conf"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "nb"

    .line 105
    iget-object v1, p2, Lcom/amap/location/f/a/a/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-wide v0, p2, Lcom/amap/location/f/a/a/a;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "timestamp"

    invoke-virtual {p1, v0, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/f/a/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/f/a/b/b;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .line 67
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update LCL set frequency = frequency + 1 , timestamp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " where id in ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-interface {v0, p1}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "MiniOfflineDatabase"

    .line 72
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    throw p1
.end method

.method private a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 8
    :try_start_0
    iget-object p3, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    const/4 v1, 0x4

    invoke-interface {p3, p1, v0, p2, v1}, Lcom/amap/location/support/db/IDbHelper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;I)J

    goto :goto_0

    .line 9
    :cond_0
    iget-object p3, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    const/4 v1, 0x5

    invoke-interface {p3, p1, v0, p2, v1}, Lcom/amap/location/support/db/IDbHelper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;I)J
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 10
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/f/a/b/b;->e()V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/amap/location/f/a/b/a;->a(Lcom/amap/location/support/db/IDbHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "MiniOfflineDatabase"

    .line 12
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_0
    :goto_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/f/a/b/b;->e:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/amap/location/f/a/b/b;->e:I

    .line 10
    invoke-direct {p0}, Lcom/amap/location/f/a/b/b;->d()V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/amap/location/f/a/a/a;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 12
    :try_start_0
    iget-object v0, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 13
    iget-object v4, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    const-string v5, "LCL"

    sget-object v6, Lcom/amap/location/f/a/b/b;->a:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "id IN ("

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v11, p1

    :try_start_1
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 14
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 15
    :goto_0
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x0

    .line 16
    invoke-interface {v3, v0}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v15

    const/4 v4, 0x1

    .line 17
    invoke-interface {v3, v4}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v5

    if-ne v5, v4, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    const/4 v13, 0x0

    :goto_1
    const/4 v0, 0x2

    .line 18
    invoke-interface {v3, v0}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v17

    const/4 v0, 0x3

    .line 19
    invoke-interface {v3, v0}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v18

    const/4 v0, 0x4

    .line 20
    invoke-interface {v3, v0}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v19

    const/16 v0, 0x64

    if-eqz v13, :cond_1

    const/16 v4, 0x64

    goto :goto_2

    :cond_1
    const/4 v4, 0x5

    .line 21
    invoke-interface {v3, v4}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v4

    :goto_2
    const/4 v5, 0x6

    .line 22
    invoke-interface {v3, v5}, Lcom/amap/location/support/db/IAmapCursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    .line 23
    invoke-interface {v3, v6}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v22

    if-ge v4, v0, :cond_3

    if-eqz p2, :cond_3

    .line 24
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    invoke-static {v5}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 25
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 26
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_3
    move v0, v4

    :goto_3
    move/from16 v4, p3

    if-lt v0, v4, :cond_4

    .line 27
    new-instance v6, Lcom/amap/location/f/a/a/a;

    const/4 v14, 0x1

    move-object v12, v6

    move/from16 v20, v0

    move-object/from16 v21, v5

    invoke-direct/range {v12 .. v23}, Lcom/amap/location/f/a/a/a;-><init>(ZZJIIIILjava/lang/String;J)V

    .line 28
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_4
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 30
    :cond_5
    iget-object v0, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_6

    .line 31
    :try_start_2
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 32
    iget-object v0, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v11, p1

    :goto_4
    :try_start_3
    const-string v4, "MiniOfflineDatabase"

    .line 33
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_6

    .line 34
    :try_start_4
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 35
    iget-object v0, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_5

    :catch_0
    move-object/from16 v11, p1

    .line 36
    :catch_1
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/f/a/b/b;->e()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_6

    .line 37
    :try_start_6
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 38
    iget-object v0, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 39
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 40
    :cond_6
    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/amap/location/f/a/b/b;->a(Ljava/lang/String;)V

    return-object v2

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_7

    .line 41
    :try_start_7
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 42
    iget-object v0, v1, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    .line 43
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 44
    :cond_7
    :goto_6
    throw v2
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/amap/location/f/a/a/a;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 45
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 46
    iget-object v2, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    const-string v3, "LCL"

    sget-object v4, Lcom/amap/location/f/a/b/b;->a:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id IN ("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 48
    :goto_0
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 49
    invoke-interface {v0, p1}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v1

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/location/f/a/a/a;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p1, Lcom/amap/location/f/a/a/a;->a:Z

    .line 52
    :cond_0
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 54
    :try_start_1
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 55
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "MiniOfflineDatabase"

    .line 56
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v0, :cond_2

    .line 57
    :try_start_3
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 58
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 59
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/amap/location/f/a/b/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v0, :cond_2

    .line 60
    :try_start_5
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 61
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 62
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 63
    :try_start_6
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 64
    iget-object p2, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p2}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    .line 65
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 66
    :cond_3
    :goto_2
    throw p1
.end method

.method public a(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/amap/location/f/a/a/a;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 75
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 77
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 78
    new-instance v0, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v0}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 82
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 83
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/f/a/a/a;

    if-nez v1, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    iget-boolean v2, v1, Lcom/amap/location/f/a/a/a;->a:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 85
    iget-object v2, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update LCL set main =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/amap/location/f/a/a/a;->i:Z

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , lat =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/amap/location/f/a/a/a;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , lng =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/amap/location/f/a/a/a;->c:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , acc =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/amap/location/f/a/a/a;->d:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , conf =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Lcom/amap/location/f/a/a/a;->e:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , timestamp =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/amap/location/f/a/a/a;->g:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " , frequency = frequency +"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " where id = "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v1, Lcom/amap/location/f/a/a/a;->f:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " and conf <= "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/amap/location/f/a/a/a;->e:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 86
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/amap/location/f/a/b/b;->a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/f/a/a/a;)Lcom/amap/location/support/db/AmapContentValues;

    const-string v1, "LCL"

    .line 87
    invoke-direct {p0, v1, v0, v3}, Lcom/amap/location/f/a/b/b;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Z)V

    goto/16 :goto_0

    .line 88
    :cond_4
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 89
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_2
    const-string v0, "MiniOfflineDatabase"

    .line 90
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 91
    :try_start_3
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 92
    :goto_2
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 93
    :goto_3
    iget-object p1, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3
    move-exception p1

    .line 94
    :try_start_4
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    .line 95
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 96
    :goto_4
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->d:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 97
    throw p1
.end method

.method public b()V
    .locals 11

    .line 1
    const-string v0, "MiniOfflineDatabase"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 6
    invoke-interface {v2}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 9
    iget-object v3, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 11
    const-string v4, "LCL"

    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v5, v2, [Ljava/lang/String;

    .line 16
    const-string v6, "id"

    .line 18
    const/4 v10, 0x0

    .line 19
    aput-object v6, v5, v10

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v7, 0x0

    .line 23
    new-instance v8, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v9, "timestamp DESC,frequency DESC LIMIT "

    .line 30
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget v9, Lcom/amap/location/f/a/a;->h:I

    .line 35
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v9, ", -1"

    .line 40
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v8

    .line 47
    const/4 v9, 0x0

    .line 48
    invoke-interface/range {v3 .. v9}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 54
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 57
    move-result v3

    .line 58
    if-eqz v3, :cond_0

    .line 60
    :goto_0
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    .line 63
    move-result v3

    .line 64
    if-nez v3, :cond_0

    .line 66
    invoke-interface {v1, v10}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 69
    move-result-wide v3

    .line 70
    iget-object v5, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 72
    const-string v6, "LCL"

    .line 74
    const-string v7, "id=?"

    .line 76
    new-array v8, v2, [Ljava/lang/String;

    .line 78
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 82
    aput-object v3, v8, v10

    .line 84
    invoke-interface {v5, v6, v7, v8}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object v2, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 93
    invoke-interface {v2}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    if-eqz v1, :cond_1

    .line 98
    :try_start_1
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 103
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 106
    goto :goto_1

    .line 107
    :catchall_0
    move-exception v2

    .line 108
    :try_start_2
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-static {v0, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 115
    if-eqz v1, :cond_2

    .line 117
    :try_start_3
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 122
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 125
    goto :goto_1

    .line 126
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/amap/location/f/a/b/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 129
    if-eqz v1, :cond_3

    .line 131
    :try_start_5
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 134
    :cond_3
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 136
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 139
    goto :goto_1

    .line 140
    :catchall_1
    move-exception v1

    .line 141
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_1
    return-void

    .line 149
    :catchall_2
    move-exception v2

    .line 150
    if-eqz v1, :cond_4

    .line 152
    :try_start_6
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 155
    :cond_4
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 157
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 160
    goto :goto_2

    .line 161
    :catchall_3
    move-exception v1

    .line 162
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 165
    move-result-object v1

    .line 166
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :goto_2
    throw v2
.end method

.method public c()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 13
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x3e8

    .line 16
    div-long/2addr v0, v2

    .line 17
    sget-wide v2, Lcom/amap/location/f/a/a;->g:J

    .line 19
    sub-long/2addr v0, v2

    .line 20
    iget-object v2, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 22
    const-string v3, "LCL"

    .line 24
    const-string v4, "timestamp<?"

    .line 26
    const/4 v5, 0x1

    .line 27
    new-array v5, v5, [Ljava/lang/String;

    .line 29
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    aput-object v0, v5, v1

    .line 36
    invoke-interface {v2, v3, v4, v5}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 41
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 46
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    :try_start_2
    const-string v1, "MiniOfflineDatabase"

    .line 53
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 60
    :try_start_3
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 62
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/amap/location/f/a/b/b;->e()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 69
    :try_start_5
    iget-object v0, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 71
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 74
    goto :goto_0

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 79
    :goto_0
    return-void

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    :try_start_6
    iget-object v1, p0, Lcom/amap/location/f/a/b/b;->c:Lcom/amap/location/support/db/IDbHelper;

    .line 83
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 86
    goto :goto_1

    .line 87
    :catchall_3
    move-exception v1

    .line 88
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 91
    :goto_1
    throw v0
.end method

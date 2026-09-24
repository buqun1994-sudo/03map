.class Lcom/amap/location/h/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final c:Ljava/lang/Object;


# instance fields
.field private b:Lcom/amap/location/support/db/IDbHelper;

.field private d:I

.field private e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "id"

    .line 3
    const-string v1, "feature"

    .line 5
    const-string v2, "nb"

    .line 7
    const-string v3, "loc"

    .line 9
    const-string v4, "last_used_time"

    .line 11
    const-string v5, "insert_time"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/h/a/d;->a:[Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/Object;

    .line 21
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    sput-object v0, Lcom/amap/location/h/a/d;->c:Ljava/lang/Object;

    .line 26
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDbManager()Lcom/amap/location/support/db/IDbManager;

    .line 7
    move-result-object v0

    .line 8
    const/16 v1, 0x8

    .line 10
    const-string v2, "location_cache_new.db"

    .line 12
    invoke-interface {v0, v2, v1}, Lcom/amap/location/support/db/IDbManager;->getDbHelper(Ljava/lang/String;I)Lcom/amap/location/support/db/IDbHelper;

    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    .line 18
    new-instance v1, Lcom/amap/location/h/a/d$1;

    .line 20
    invoke-direct {v1, p0}, Lcom/amap/location/h/a/d$1;-><init>(Lcom/amap/location/h/a/d;)V

    .line 23
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->initDb(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 26
    iput-boolean p1, p0, Lcom/amap/location/h/a/d;->e:Z

    .line 28
    return-void
.end method

.method private a()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    if-eqz v0, :cond_0

    const-string v1, "CREATE TABLE IF NOT EXISTS cache (id INTEGER PRIMARY KEY,feature BLOB, nb BLOB, loc VARCHAR, last_used_time INTEGER,insert_time INTEGER)"

    .line 3
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->createTable(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/h/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/h/a/d;->a()V

    return-void
.end method

.method public static synthetic b(Lcom/amap/location/h/a/d;)Lcom/amap/location/support/db/IDbHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    return-object p0
.end method

.method private b()V
    .locals 2

    .line 2
    iget v0, p0, Lcom/amap/location/h/a/d;->d:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 3
    iput v0, p0, Lcom/amap/location/h/a/d;->d:I

    .line 4
    invoke-direct {p0}, Lcom/amap/location/h/a/d;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;Lcom/amap/location/support/bean/location/AmapLocationNetwork;JJ)J
    .locals 3

    .line 4
    sget-object v0, Lcom/amap/location/h/a/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v1}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    const-string v2, "feature"

    .line 6
    invoke-static {p1}, Lcom/amap/location/h/a/a;->a(Lcom/amap/location/h/a/b;)[B

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "nb"

    .line 7
    invoke-static {p2}, Lcom/amap/location/h/a/a;->a(Lcom/amap/location/h/a/g;)[B

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;[B)V

    const-string p1, "loc"

    .line 8
    invoke-virtual {p3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amap/location/support/util/SecurityUtils;->simpleTextEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "last_used_time"

    .line 9
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "insert_time"

    .line 10
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 11
    iget-object p1, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string p2, "cache"

    invoke-interface {p1, p2, v1}, Lcom/amap/location/support/db/IDbHelper;->insert(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)J

    move-result-wide p1
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "loccachedb"

    .line 12
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "add cache error "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "loccachedb"

    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-direct {p0}, Lcom/amap/location/h/a/d;->b()V

    :goto_0
    const-wide/16 p1, -0x1

    .line 15
    :goto_1
    monitor-exit v0

    return-wide p1

    .line 16
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(II)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Map<",
            "Lcom/amap/location/h/a/b;",
            "Ljava/util/List<",
            "Lcom/amap/location/h/a/e;",
            ">;>;"
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    sget-object v1, Lcom/amap/location/h/a/d;->c:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 27
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v3

    int-to-long v5, p1

    sub-long/2addr v3, v5

    .line 28
    iget-object v5, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v6, "cache"

    sget-object v7, Lcom/amap/location/h/a/d;->a:[Ljava/lang/String;

    const-string v8, "insert_time>?"

    const/4 p1, 0x1

    new-array v9, p1, [Ljava/lang/String;

    .line 29
    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    aput-object v10, v9, v12

    const-string v10, "last_used_time DESC"

    .line 30
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .line 31
    invoke-interface/range {v5 .. v11}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v2

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v2, :cond_3

    .line 32
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 33
    :cond_0
    invoke-interface {v2, v12}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v7

    .line 34
    invoke-interface {v2, p1}, Lcom/amap/location/support/db/IAmapCursor;->getBlob(I)[B

    move-result-object p2

    .line 35
    iget-boolean v9, p0, Lcom/amap/location/h/a/d;->e:Z

    invoke-static {p2, v9}, Lcom/amap/location/h/a/a;->a([BZ)Lcom/amap/location/h/a/b;

    move-result-object p2

    const/4 v9, 0x2

    .line 36
    invoke-interface {v2, v9}, Lcom/amap/location/support/db/IAmapCursor;->getBlob(I)[B

    move-result-object v9

    .line 37
    invoke-static {v9}, Lcom/amap/location/h/a/a;->a([B)Lcom/amap/location/h/a/g;

    move-result-object v9

    .line 38
    new-instance v10, Lcom/amap/location/h/a/e;

    invoke-direct {v10}, Lcom/amap/location/h/a/e;-><init>()V

    .line 39
    invoke-virtual {v10, v7, v8}, Lcom/amap/location/h/a/e;->a(J)V

    const/4 v7, 0x3

    .line 40
    invoke-interface {v2, v7}, Lcom/amap/location/support/db/IAmapCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/amap/location/h/a/e;->a(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v10, v9}, Lcom/amap/location/h/a/e;->a(Lcom/amap/location/h/a/g;)V

    .line 42
    invoke-virtual {v10, p2}, Lcom/amap/location/h/a/e;->a(Lcom/amap/location/h/a/b;)V

    const/4 v7, 0x4

    .line 43
    invoke-interface {v2, v7}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v7

    .line 44
    invoke-virtual {v10, v7, v8}, Lcom/amap/location/h/a/e;->b(J)V

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    move-wide v5, v7

    :cond_1
    const/4 v7, 0x5

    .line 45
    invoke-interface {v2, v7}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v10, v7, v8}, Lcom/amap/location/h/a/e;->c(J)V

    .line 46
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_2

    .line 47
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v0, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_0
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    move-result p2

    if-nez p2, :cond_0

    .line 52
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DELETE FROM "

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "cache"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " WHERE "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "last_used_time"

    .line 54
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " OR "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "insert_time"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " < "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    iget-object p2, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :goto_1
    :try_start_1
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "loccachedb"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "load cache error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    const-string p2, "loccachedb"

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2, v3, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    invoke-direct {p0}, Lcom/amap/location/h/a/d;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 60
    :goto_2
    :try_start_3
    monitor-exit v1

    return-object v0

    .line 61
    :goto_3
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 62
    throw p1

    :catchall_1
    move-exception p1

    .line 63
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public a(JJ)V
    .locals 4

    .line 17
    sget-object v0, Lcom/amap/location/h/a/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    new-instance v1, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v1}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    const-string v2, "last_used_time"

    .line 19
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, v2, p3}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p3, "id=?"

    .line 20
    iget-object p4, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v2, "cache"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-interface {p4, v2, v1, p3, v3}, Lcom/amap/location/support/db/IDbHelper;->update(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string p2, "loccachedb"

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "update cache time error "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p2, "loccachedb"

    .line 22
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-direct {p0}, Lcom/amap/location/h/a/d;->b()V

    .line 24
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Lcom/amap/location/h/a/e;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/amap/location/h/a/d;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/h/a/d;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v2, "cache"

    const-string v3, "id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amap/location/h/a/e;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "loccachedb"

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "remove cache error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v1, "loccachedb"

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    invoke-direct {p0}, Lcom/amap/location/h/a/d;->b()V

    .line 69
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

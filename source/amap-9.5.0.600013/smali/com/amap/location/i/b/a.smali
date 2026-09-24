.class public Lcom/amap/location/i/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/amap/location/i/b/a;


# instance fields
.field private b:Lcom/amap/location/support/db/IDbHelper;

.field private c:Ljava/lang/Object;

.field private d:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/i/b/a;->c:Ljava/lang/Object;

    .line 11
    return-void
.end method

.method public static a()Lcom/amap/location/i/b/a;
    .locals 2

    .line 2
    sget-object v0, Lcom/amap/location/i/b/a;->a:Lcom/amap/location/i/b/a;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/amap/location/i/b/a;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amap/location/i/b/a;->a:Lcom/amap/location/i/b/a;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/amap/location/i/b/a;

    invoke-direct {v1}, Lcom/amap/location/i/b/a;-><init>()V

    sput-object v1, Lcom/amap/location/i/b/a;->a:Lcom/amap/location/i/b/a;

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
    sget-object v0, Lcom/amap/location/i/b/a;->a:Lcom/amap/location/i/b/a;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 14

    const-string v0, "|"

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 36
    :try_start_0
    iget-object v4, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v4}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 37
    iget-object v5, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v6, "ACL"

    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/String;

    sget-object v4, Lcom/amap/location/i/b/b;->a:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v4, v7, v12

    sget-object v4, Lcom/amap/location/i/b/b;->b:Ljava/lang/String;

    const/4 v13, 0x1

    aput-object v4, v7, v13

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "frequency DESC"

    .line 38
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 39
    invoke-interface/range {v5 .. v11}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 40
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 41
    :goto_0
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_5

    .line 42
    invoke-interface {v3, v12}, Lcom/amap/location/support/db/IAmapCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-interface {v3, v13}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v4

    if-eqz p1, :cond_4

    const-string v5, "_"

    .line 44
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 45
    array-length v6, v5

    const/4 v7, 0x3

    const/4 v8, 0x4

    if-eq v6, v7, :cond_0

    array-length v6, v5

    if-eq v6, v8, :cond_0

    goto :goto_2

    .line 46
    :cond_0
    array-length v5, v5

    if-ne v5, v8, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    .line 47
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "#"

    .line 48
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 51
    :cond_3
    :goto_2
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 52
    :cond_4
    :goto_3
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v2, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v4, "ACL"

    const-string v5, "id=?"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v4, v5, v0}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 55
    :cond_6
    iget-object p1, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_7

    .line 56
    :try_start_1
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 57
    :cond_7
    iget-object p1, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "offevnmgr"

    .line 58
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_8

    .line 59
    :try_start_3
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 60
    :cond_8
    iget-object p1, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    .line 61
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/amap/location/i/b/a;->d()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_9

    .line 62
    :try_start_5
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 63
    :cond_9
    iget-object p1, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 64
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 65
    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_a

    .line 66
    :try_start_6
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 67
    :cond_a
    iget-object v0, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 69
    :goto_6
    throw p1
.end method

.method public static synthetic a(Lcom/amap/location/i/b/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/i/b/a;->e()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v2, "ACL"

    const/4 v8, 0x1

    new-array v3, v8, [Ljava/lang/String;

    sget-object v4, Lcom/amap/location/i/b/b;->b:Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v4, v3, v9

    const-string v4, "id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v0, v9}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v9
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const-string v1, "ACL"

    const-string v2, "frequency"

    if-nez v9, :cond_1

    .line 18
    :try_start_1
    new-instance v3, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v3}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    const-string v4, "id"

    .line 19
    invoke-virtual {v3, v4, p1}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v3, v2, p1}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget-object p1, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1, v1, v3}, Lcom/amap/location/support/db/IDbHelper;->insert(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)J

    goto :goto_0

    .line 22
    :cond_1
    new-instance v3, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v3}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    add-int/2addr v9, v8

    .line 23
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 24
    iget-object v2, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    const-string v4, "id=?"

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v1, v3, v4, p1}, Lcom/amap/location/support/db/IDbHelper;->update(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    .line 25
    :try_start_2
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_3
    const-string v1, "offevnmgr"

    .line 26
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v0, :cond_2

    .line 27
    :try_start_4
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 28
    :catch_0
    :try_start_5
    invoke-direct {p0}, Lcom/amap/location/i/b/a;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_2

    .line 29
    :try_start_6
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 30
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    :catchall_2
    move-exception p1

    if-eqz v0, :cond_3

    .line 31
    :try_start_7
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 33
    :cond_3
    :goto_2
    throw p1
.end method

.method private c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDbManager()Lcom/amap/location/support/db/IDbManager;

    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const-string v2, "OffEvent.db"

    .line 13
    invoke-interface {v0, v2, v1}, Lcom/amap/location/support/db/IDbManager;->getDbHelper(Ljava/lang/String;I)Lcom/amap/location/support/db/IDbHelper;

    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    .line 19
    new-instance v1, Lcom/amap/location/i/b/a$1;

    .line 21
    invoke-direct {v1, p0}, Lcom/amap/location/i/b/a$1;-><init>(Lcom/amap/location/i/b/a;)V

    .line 24
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->initDb(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 27
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/i/b/a;->d:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/amap/location/i/b/a;->d:I

    .line 10
    invoke-direct {p0}, Lcom/amap/location/i/b/a;->e()V

    .line 13
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/b/a;->b:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/amap/location/i/b/b;->a(Lcom/amap/location/support/db/IDbHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception v0

    .line 10
    const-string v1, "offevnmgr"

    .line 12
    const-string v2, "create event table error! "

    .line 14
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/i/a/a/a;)V
    .locals 2

    .line 8
    iget-object v0, p0, Lcom/amap/location/i/b/a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/i/b/a;->c()V

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p1, Lcom/amap/location/i/a/a/a;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/amap/location/i/a/a/a;->f:Ljava/lang/String;

    const-string v0, ":"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-direct {p0, p1}, Lcom/amap/location/i/b/a;->a(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/location/i/b/a;->c:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/amap/location/i/b/a;->c()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const-string v0, "offevnmgr"

    .line 20
    const-string v1, "adiu is null"

    .line 22
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void

    .line 26
    :cond_0
    const/16 v0, 0x1f4

    .line 28
    invoke-static {v0}, Lcom/amap/location/i/d/c;->a(I)Z

    .line 31
    move-result v1

    .line 32
    invoke-static {v0}, Lcom/amap/location/i/d/c;->b(I)I

    .line 35
    move-result v0

    .line 36
    if-eqz v1, :cond_2

    .line 38
    if-lez v0, :cond_2

    .line 40
    invoke-direct {p0, v0}, Lcom/amap/location/i/b/a;->a(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 49
    move-result v1

    .line 50
    if-lez v1, :cond_2

    .line 52
    const v1, 0xc3502

    .line 55
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 62
    const-string v1, "#"

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_1

    .line 70
    array-length v1, v0

    .line 71
    if-lez v1, :cond_1

    .line 73
    array-length v0, v0

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    :goto_0
    invoke-static {v0}, Lcom/amap/location/i/d/c;->c(I)V

    .line 79
    :cond_2
    return-void

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    throw v1
.end method

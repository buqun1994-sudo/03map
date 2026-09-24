.class public Lcom/amap/location/c/g/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:J

.field private c:J

.field private d:Lcom/amap/location/support/db/IDbHelper;

.field private e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "data"

    .line 3
    const-string v1, "size"

    .line 5
    const-string v2, "id"

    .line 7
    const-string v3, "type"

    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/amap/location/c/g/a/d;->a:[Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDbManager()Lcom/amap/location/support/db/IDbManager;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "aloccoll.db"

    .line 10
    const/4 v2, 0x4

    .line 11
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/db/IDbManager;->getDbHelper(Ljava/lang/String;I)Lcom/amap/location/support/db/IDbHelper;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 17
    new-instance v1, Lcom/amap/location/c/g/a/d$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/amap/location/c/g/a/d$1;-><init>(Lcom/amap/location/c/g/a/d;)V

    .line 22
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->initDb(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-direct {p0, v0}, Lcom/amap/location/c/g/a/d;->a(Z)J

    .line 29
    move-result-wide v0

    .line 30
    iput-wide v0, p0, Lcom/amap/location/c/g/a/d;->b:J

    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, v0}, Lcom/amap/location/c/g/a/d;->a(Z)J

    .line 36
    move-result-wide v0

    .line 37
    iput-wide v0, p0, Lcom/amap/location/c/g/a/d;->c:J

    .line 39
    return-void
.end method

.method private a(Z)J
    .locals 12

    const-string v0, "DbManager"

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    .line 88
    :try_start_0
    iget-object v4, p0, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v5, "base"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const-string v8, "SUM(size)"

    const/4 v11, 0x0

    aput-object v8, v7, v11

    if-eqz p1, :cond_0

    const-string p1, "type=?"

    goto :goto_0

    :cond_0
    const-string p1, "type!=?"

    :goto_0
    new-array v8, v6, [Ljava/lang/String;

    .line 89
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v8, v11

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v6, v7

    move-object v7, p1

    .line 90
    invoke-interface/range {v4 .. v10}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3

    if-nez v3, :cond_2

    const-string p1, "collection query cursor3 is null"

    .line 91
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v3, :cond_1

    .line 92
    :try_start_1
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 93
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-wide v1

    .line 94
    :cond_2
    :try_start_2
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 95
    invoke-interface {v3, v11}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v1
    :try_end_2
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 96
    :cond_3
    :try_start_3
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 97
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_2
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 98
    :try_start_4
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_4

    .line 99
    :try_start_5
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 100
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 101
    invoke-direct {p0}, Lcom/amap/location/c/g/a/d;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v3, :cond_4

    .line 102
    :try_start_7
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_4
    :goto_2
    return-wide v1

    :goto_3
    if-eqz v3, :cond_5

    :try_start_8
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    .line 103
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 104
    :cond_5
    :goto_4
    throw p1
.end method

.method private a(ZJ)J
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "DbManager"

    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, "type=0"
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-wide/16 v3, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    const-wide/16 v3, 0x0

    goto/16 :goto_9

    :cond_0
    :try_start_1
    const-string v0, "type!=0"
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    :goto_0
    move-object v5, v0

    const-wide/32 v6, -0x80000000

    const-wide/16 v8, 0x0

    :goto_1
    const/4 v10, 0x1

    const/4 v11, 0x0

    cmp-long v0, v8, p2

    if-gez v0, :cond_6

    .line 61
    :try_start_2
    iget-object v13, v1, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v14, "base"

    const/4 v0, 0x3

    new-array v15, v0, [Ljava/lang/String;

    const-string v0, "id"

    aput-object v0, v15, v11

    const-string v0, "type"

    aput-object v0, v15, v10

    const-string v0, "size"

    const/4 v12, 0x2

    aput-object v0, v15, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id>? AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    new-array v0, v10, [Ljava/lang/String;

    .line 62
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v11

    const-string v18, "id ASC"

    const-string v19, "100"

    move-object/from16 v17, v0

    .line 63
    invoke-interface/range {v13 .. v19}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-nez v3, :cond_1

    :try_start_3
    const-string v0, "collection query cursor2 is null"

    .line 64
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v3, :cond_6

    .line 65
    :try_start_4
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 66
    :goto_2
    :try_start_5
    invoke-static {v3}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    .line 67
    :cond_1
    :try_start_6
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-nez v0, :cond_2

    .line 68
    :try_start_7
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v3, v0

    goto :goto_2

    :cond_2
    :goto_3
    if-eqz v0, :cond_4

    .line 69
    :try_start_8
    invoke-interface {v3, v11}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v6

    .line 70
    invoke-interface {v3, v12}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v0

    int-to-long v13, v0

    add-long/2addr v8, v13

    cmp-long v0, v8, p2

    if-ltz v0, :cond_3

    goto :goto_4

    .line 71
    :cond_3
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_3

    .line 72
    :cond_4
    :goto_4
    :try_start_9
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 73
    :try_start_a
    invoke-static {v3}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_a
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v5, v0

    move-object v12, v3

    move-wide v3, v8

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v5, v0

    move-wide v3, v8

    const/4 v12, 0x0

    :goto_5
    if-eqz v12, :cond_5

    .line 74
    :try_start_b
    invoke-interface {v12}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception v0

    move-object v6, v0

    .line 75
    :try_start_c
    invoke-static {v6}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 76
    :cond_5
    :goto_6
    throw v5
    :try_end_c
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    goto :goto_9

    :cond_6
    :goto_7
    const-wide/16 v3, 0x0

    cmp-long v0, v8, v3

    if-lez v0, :cond_8

    .line 77
    :try_start_d
    iget-object v0, v1, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v3, "base"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id<=? AND "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v10, [Ljava/lang/String;

    .line 78
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    .line 79
    invoke-interface {v0, v3, v4, v5}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    if-eqz p1, :cond_7

    .line 80
    iget-wide v3, v1, Lcom/amap/location/c/g/a/d;->b:J

    sub-long/2addr v3, v8

    iput-wide v3, v1, Lcom/amap/location/c/g/a/d;->b:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    .line 81
    iput-wide v5, v1, Lcom/amap/location/c/g/a/d;->b:J

    goto :goto_b

    .line 82
    :cond_7
    iget-wide v3, v1, Lcom/amap/location/c/g/a/d;->c:J

    sub-long/2addr v3, v8

    iput-wide v3, v1, Lcom/amap/location/c/g/a/d;->c:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_8

    .line 83
    iput-wide v5, v1, Lcom/amap/location/c/g/a/d;->c:J
    :try_end_d
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_d .. :try_end_d} :catch_5
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    move-wide v3, v8

    goto :goto_8

    :catch_5
    move-exception v0

    move-wide v3, v8

    goto :goto_9

    :catch_6
    move-exception v0

    const-wide/16 v5, 0x0

    move-wide v3, v5

    .line 84
    :goto_8
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catch_7
    move-exception v0

    const-wide/16 v5, 0x0

    move-wide v3, v5

    .line 85
    :goto_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/c/g/a/d;->d()V

    :goto_a
    move-wide v8, v3

    :cond_8
    :goto_b
    return-wide v8
.end method

.method public static synthetic a(Lcom/amap/location/c/g/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/c/g/a/d;->c()V

    return-void
.end method

.method public static synthetic b(Lcom/amap/location/c/g/a/d;)Lcom/amap/location/support/db/IDbHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "CREATE TABLE IF NOT EXISTS base (id INTEGER PRIMARY KEY AUTOINCREMENT , type SMALLINT, data BLOB, size INTEGER, time INTEGER);"

    .line 7
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->createTable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    const-string v1, "DbManager"

    .line 14
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :cond_0
    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/c/g/a/d;->e:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/amap/location/c/g/a/d;->e:I

    .line 10
    invoke-direct {p0}, Lcom/amap/location/c/g/a/d;->c()V

    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .line 87
    iget-wide v0, p0, Lcom/amap/location/c/g/a/d;->b:J

    long-to-int v1, v0

    return v1
.end method

.method public a(ZIJ)Lcom/amap/location/c/g/b/b;
    .locals 15

    const-string v1, "DbManager"

    .line 2
    new-instance v2, Lcom/amap/location/c/g/b/b;

    invoke-direct {v2}, Lcom/amap/location/c/g/b/b;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "type=0"

    goto :goto_0

    :cond_0
    const-string v0, "type!=0"

    :goto_0
    move-object v6, v0

    const/4 v10, 0x0

    move-object v11, p0

    .line 3
    :try_start_0
    iget-object v3, v11, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v4, "base"

    sget-object v5, Lcom/amap/location/c/g/a/d;->a:[Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "id ASC"

    .line 4
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-interface/range {v3 .. v9}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v3, :cond_2

    :try_start_1
    const-string v0, "collection query cursor1 is null"

    .line 6
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v3, :cond_1

    .line 7
    :try_start_2
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    .line 8
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v10

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_2
    :try_start_3
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eqz v5, :cond_4

    .line 10
    invoke-interface {v3, v7}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v5

    .line 11
    iget v9, v2, Lcom/amap/location/c/g/b/b;->c:I

    int-to-long v12, v9

    cmp-long v14, v12, p3

    if-gez v14, :cond_4

    add-int/2addr v9, v5

    int-to-long v12, v9

    cmp-long v9, v12, p3

    if-gtz v9, :cond_4

    move/from16 v9, p2

    if-lt v4, v9, :cond_3

    goto :goto_3

    .line 12
    :cond_3
    invoke-interface {v3, v0}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v12

    iput-wide v12, v2, Lcom/amap/location/c/g/b/b;->a:J

    .line 13
    iget-object v7, v2, Lcom/amap/location/c/g/b/b;->b:Ljava/util/List;

    new-instance v12, Lcom/amap/location/c/g/a/b;

    invoke-interface {v3, v8}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v8

    invoke-interface {v3, v6}, Lcom/amap/location/support/db/IAmapCursor;->getBlob(I)[B

    move-result-object v6

    invoke-direct {v12, v8, v6}, Lcom/amap/location/c/g/a/b;-><init>(I[B)V

    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget v6, v2, Lcom/amap/location/c/g/b/b;->c:I

    add-int/2addr v6, v5

    iput v6, v2, Lcom/amap/location/c/g/b/b;->c:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 15
    :cond_4
    :goto_3
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v9, "get col content\uff1a %b, %d\uff0c%d\uff0c%d"

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    aput-object v13, v12, v0

    iget-wide v13, v2, Lcom/amap/location/c/g/b/b;->a:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v12, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v6

    iget v0, v2, Lcom/amap/location/c/g/b/b;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v12, v7

    invoke-static {v5, v9, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget v0, v2, Lcom/amap/location/c/g/b/b;->c:I
    :try_end_3
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    if-nez v0, :cond_5

    move-object v2, v10

    .line 17
    :cond_5
    :try_start_4
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 18
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v10, v3

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v3, v10

    .line 19
    :goto_4
    :try_start_5
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v3, :cond_6

    .line 20
    :try_start_6
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object v1, v0

    .line 21
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_6
    :goto_5
    move-object v2, v10

    goto :goto_7

    :catchall_4
    move-exception v0

    move-object v1, v0

    move-object v10, v3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 22
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    invoke-direct {p0}, Lcom/amap/location/c/g/a/d;->d()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v10, :cond_7

    .line 24
    :try_start_8
    invoke-interface {v10}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_7
    :goto_7
    return-object v2

    :goto_8
    if-eqz v10, :cond_8

    :try_start_9
    invoke-interface {v10}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 25
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 26
    :cond_8
    :goto_9
    throw v1
.end method

.method public a(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/c/g/a/b;",
            ">;)V"
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/location/c/g/a/b;

    .line 30
    new-instance v8, Lcom/amap/location/c/g/a/a;

    invoke-direct {v8}, Lcom/amap/location/c/g/a/a;-><init>()V

    .line 31
    invoke-virtual {v7}, Lcom/amap/location/c/c/b;->a()I

    move-result v9

    iput v9, v8, Lcom/amap/location/c/g/a/a;->a:I

    .line 32
    invoke-virtual {v7}, Lcom/amap/location/c/c/b;->b()[B

    move-result-object v9

    iput-object v9, v8, Lcom/amap/location/c/g/a/a;->b:[B

    .line 33
    iput-wide v0, v8, Lcom/amap/location/c/g/a/a;->d:J

    .line 34
    invoke-virtual {v7}, Lcom/amap/location/c/g/a/b;->d()J

    move-result-wide v9

    iput-wide v9, v8, Lcom/amap/location/c/g/a/a;->c:J

    .line 35
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    invoke-virtual {v7}, Lcom/amap/location/c/c/b;->a()I

    move-result v7

    if-nez v7, :cond_0

    .line 37
    iget-wide v7, v8, Lcom/amap/location/c/g/a/a;->c:J

    add-long/2addr v3, v7

    goto :goto_0

    .line 38
    :cond_0
    iget-wide v7, v8, Lcom/amap/location/c/g/a/a;->c:J

    add-long/2addr v5, v7

    goto :goto_0

    .line 39
    :cond_1
    iget-object p1, p0, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v0, "base"

    invoke-interface {p1, v0, v2}, Lcom/amap/location/support/db/IDbHelper;->insert(Ljava/lang/String;Ljava/util/List;)V

    .line 40
    iget-wide v0, p0, Lcom/amap/location/c/g/a/d;->b:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/amap/location/c/g/a/d;->b:J

    .line 41
    iget-wide v0, p0, Lcom/amap/location/c/g/a/d;->c:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/amap/location/c/g/a/d;->c:J
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "DbManager"

    .line 42
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 43
    :catch_1
    invoke-direct {p0}, Lcom/amap/location/c/g/a/d;->d()V

    :goto_1
    return-void
.end method

.method public a(J)Z
    .locals 6

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-gez v3, :cond_0

    .line 56
    iget-wide v0, p0, Lcom/amap/location/c/g/a/d;->b:J

    iget-wide v3, p0, Lcom/amap/location/c/g/a/d;->c:J

    add-long/2addr v0, v3

    add-long/2addr v0, p1

    const-wide/32 v3, 0xa00000

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    const-wide/32 v0, 0x32000

    .line 57
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    const/4 v0, 0x0

    .line 58
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/location/c/g/a/d;->a(ZJ)J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-gez v1, :cond_1

    sub-long/2addr p1, v3

    .line 59
    invoke-direct {p0, v2, p1, p2}, Lcom/amap/location/c/g/a/d;->a(ZJ)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    :catch_0
    move-exception p1

    const-string p2, "DbManager"

    .line 60
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public a(Lcom/amap/location/c/g/b/b;)Z
    .locals 10

    const-string v0, "DbManager"

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    .line 44
    iget-object v2, p1, Lcom/amap/location/c/g/b/b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    .line 45
    :try_start_0
    iget-object v3, p1, Lcom/amap/location/c/g/b/b;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/location/c/g/a/b;

    invoke-virtual {v3}, Lcom/amap/location/c/c/b;->a()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    const-string v4, "type=0 AND id<=?"

    goto :goto_1

    :cond_2
    const-string v4, "type!=0 AND id<=?"

    .line 46
    :goto_1
    iget-object v5, p0, Lcom/amap/location/c/g/a/d;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v6, "base"

    new-array v7, v1, [Ljava/lang/String;

    iget-wide v8, p1, Lcom/amap/location/c/g/b/b;->a:J

    .line 47
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    .line 48
    invoke-interface {v5, v6, v4, v7}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_3

    .line 49
    iget-wide v6, p0, Lcom/amap/location/c/g/a/d;->b:J

    iget p1, p1, Lcom/amap/location/c/g/b/b;->c:I

    int-to-long v8, p1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/amap/location/c/g/a/d;->b:J

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    .line 50
    iput-wide v4, p0, Lcom/amap/location/c/g/a/d;->b:J

    goto :goto_3

    .line 51
    :cond_3
    iget-wide v6, p0, Lcom/amap/location/c/g/a/d;->c:J

    iget p1, p1, Lcom/amap/location/c/g/b/b;->c:I

    int-to-long v8, p1

    sub-long/2addr v6, v8

    iput-wide v6, p0, Lcom/amap/location/c/g/a/d;->c:J

    cmp-long p1, v6, v4

    if-gez p1, :cond_4

    .line 52
    iput-wide v4, p0, Lcom/amap/location/c/g/a/d;->c:J
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    const-string v1, "delete failed"

    .line 53
    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    invoke-direct {p0}, Lcom/amap/location/c/g/a/d;->d()V

    :goto_2
    const/4 v1, 0x0

    :cond_4
    :goto_3
    return v1
.end method

.method public b()I
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/amap/location/c/g/a/d;->c:J

    long-to-int v1, v0

    return v1
.end method

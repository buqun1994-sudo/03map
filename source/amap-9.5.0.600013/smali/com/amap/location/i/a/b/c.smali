.class public Lcom/amap/location/i/a/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static volatile c:Lcom/amap/location/i/a/b/c;


# instance fields
.field private d:Lcom/amap/location/support/db/IDbHelper;

.field private e:Lcom/amap/location/support/db/IDbHelper;

.field private f:Ljava/util/concurrent/locks/ReadWriteLock;

.field private g:I

.field private h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "id"

    .line 3
    const-string v1, "lat"

    .line 5
    const-string v2, "lng"

    .line 7
    const-string v3, "acc"

    .line 9
    const-string v4, "conf"

    .line 11
    const-string v5, "timestamp"

    .line 13
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/amap/location/i/a/b/c;->a:[Ljava/lang/String;

    .line 19
    const-string v0, "originid"

    .line 21
    const-string v1, "frequency"

    .line 23
    const-string v2, "id"

    .line 25
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/amap/location/i/a/b/c;->b:[Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    .line 32
    sput-object v0, Lcom/amap/location/i/a/b/c;->c:Lcom/amap/location/i/a/b/c;

    .line 34
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
    const-string v1, "OffLocation.db"

    .line 10
    const/4 v2, 0x2

    .line 11
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/db/IDbManager;->getDbHelper(Ljava/lang/String;I)Lcom/amap/location/support/db/IDbHelper;

    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 17
    new-instance v1, Lcom/amap/location/i/a/b/c$1;

    .line 19
    invoke-direct {v1, p0}, Lcom/amap/location/i/a/b/c$1;-><init>(Lcom/amap/location/i/a/b/c;)V

    .line 22
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->initDb(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDbManager()Lcom/amap/location/support/db/IDbManager;

    .line 28
    move-result-object v0

    .line 29
    const-string v1, "OffStatistics.db"

    .line 31
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/db/IDbManager;->getDbHelper(Ljava/lang/String;I)Lcom/amap/location/support/db/IDbHelper;

    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 37
    new-instance v1, Lcom/amap/location/i/a/b/c$2;

    .line 39
    invoke-direct {v1, p0}, Lcom/amap/location/i/a/b/c$2;-><init>(Lcom/amap/location/i/a/b/c;)V

    .line 42
    invoke-interface {v0, v1}, Lcom/amap/location/support/db/IDbHelper;->initDb(Lcom/amap/location/support/db/OnInitDbListener;)V

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 47
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 50
    iput-object v0, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 52
    return-void
.end method

.method public static a()Lcom/amap/location/i/a/b/c;
    .locals 2

    .line 2
    sget-object v0, Lcom/amap/location/i/a/b/c;->c:Lcom/amap/location/i/a/b/c;

    if-nez v0, :cond_1

    .line 3
    const-class v0, Lcom/amap/location/i/a/b/c;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/amap/location/i/a/b/c;->c:Lcom/amap/location/i/a/b/c;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/amap/location/i/a/b/c;

    invoke-direct {v1}, Lcom/amap/location/i/a/b/c;-><init>()V

    sput-object v1, Lcom/amap/location/i/a/b/c;->c:Lcom/amap/location/i/a/b/c;

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
    sget-object v0, Lcom/amap/location/i/a/b/c;->c:Lcom/amap/location/i/a/b/c;

    return-object v0
.end method

.method private a(Lcom/amap/location/support/db/AmapContentValues;JLjava/lang/String;JI)Lcom/amap/location/support/db/AmapContentValues;
    .locals 1

    .line 138
    invoke-virtual {p1}, Lcom/amap/location/support/db/AmapContentValues;->clear()V

    const-string v0, "id"

    .line 139
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    invoke-static {p4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    const-string p3, "originid"

    if-nez p2, :cond_0

    .line 141
    invoke-virtual {p1, p3, p4}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :goto_0
    const-string p2, "frequency"

    .line 143
    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object p1
.end method

.method private a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/i/a/c/b/a;)Lcom/amap/location/support/db/AmapContentValues;
    .locals 4

    .line 216
    invoke-virtual {p1}, Lcom/amap/location/support/db/AmapContentValues;->clear()V

    .line 217
    invoke-virtual {p2}, Lcom/amap/location/i/a/c/b/a;->a()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 218
    invoke-virtual {p2}, Lcom/amap/location/i/a/c/b/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lat"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    invoke-virtual {p2}, Lcom/amap/location/i/a/c/b/a;->c()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "lng"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {p2}, Lcom/amap/location/i/a/c/b/a;->d()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    const-string v1, "acc"

    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Short;)V

    .line 221
    invoke-virtual {p2}, Lcom/amap/location/i/a/c/b/a;->e()B

    move-result p2

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    const-string v0, "conf"

    invoke-virtual {p1, v0, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Byte;)V

    .line 222
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p2

    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "timestamp"

    invoke-virtual {p1, v0, p2}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_0

    .line 226
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 227
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/amap/location/i/d/a;->a(J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic a(Lcom/amap/location/i/a/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->f()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)V
    .locals 3

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-interface {v0, p1, v1, p2, v2}, Lcom/amap/location/support/db/IDbHelper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;I)J
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 224
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->h()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;J)V
    .locals 4

    .line 152
    invoke-virtual {p2}, Lcom/amap/location/support/db/AmapContentValues;->clear()V

    const/4 v0, 0x0

    .line 153
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "conf"

    invoke-virtual {p2, v2, v1}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v2, "id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v0

    invoke-interface {v1, p1, p2, v2, v3}, Lcom/amap/location/support/db/IDbHelper;->update(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 155
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->h()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 144
    :try_start_0
    iget-object p3, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const/4 v1, 0x4

    invoke-interface {p3, p1, v0, p2, v1}, Lcom/amap/location/support/db/IDbHelper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;I)J

    goto :goto_0

    .line 145
    :cond_0
    iget-object p3, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const/4 v1, 0x5

    invoke-interface {p3, p1, v0, p2, v1}, Lcom/amap/location/support/db/IDbHelper;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;I)J
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V

    :goto_0
    return-void
.end method

.method private a(Ljava/util/HashSet;Ljava/util/HashSet;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "id=?"

    if-eqz p1, :cond_0

    .line 228
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 229
    :try_start_0
    iget-object v5, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const-string v6, "CL"

    new-array v7, v1, [Ljava/lang/String;

    .line 230
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    .line 231
    invoke-interface {v5, v6, v2, v7}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 232
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 233
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    .line 234
    :try_start_1
    iget-object v3, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const-string v4, "AP"

    new-array v5, v1, [Ljava/lang/String;

    .line 235
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v0

    .line 236
    invoke-interface {v3, v4, v2, v5}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 237
    :catch_1
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;JLcom/amap/location/support/db/AmapContentValues;)Z
    .locals 5

    .line 147
    invoke-direct {p0, p1, p2, p3}, Lcom/amap/location/i/a/b/c;->b(Ljava/lang/String;J)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 148
    invoke-virtual {p4}, Lcom/amap/location/support/db/AmapContentValues;->clear()V

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 149
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "frequency"

    invoke-virtual {p4, v3, v0}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const-string v3, "id=?"

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v4, v1

    invoke-interface {v0, p1, p4, v3, v4}, Lcom/amap/location/support/db/IDbHelper;->update(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 151
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V

    :goto_0
    return v2

    :cond_0
    return v1
.end method

.method private b(Ljava/lang/String;J)I
    .locals 9

    const/4 v0, 0x0

    .line 27
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const-string v4, "frequency"

    const/4 v8, 0x0

    aput-object v4, v3, v8

    const-string v4, "id=?"

    new-array v5, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    invoke-interface {v0, v8}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 30
    :try_start_1
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 31
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_0
    return p1

    :cond_0
    if-eqz v0, :cond_1

    .line 32
    :try_start_2
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    const-string p2, "OfflineDatabase"

    .line 33
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v0, :cond_1

    .line 34
    :try_start_4
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 35
    :catch_0
    :try_start_5
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_1

    .line 36
    :try_start_6
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 37
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    const/4 p1, -0x1

    return p1

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_2

    .line 38
    :try_start_7
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_2

    :catchall_4
    move-exception p2

    .line 39
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 40
    :cond_2
    :goto_2
    throw p1
.end method

.method private b(Ljava/util/List;)Ljava/util/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p1, :cond_1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 48
    invoke-static {v1}, Lcom/amap/location/i/d/a;->a(Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic b(Lcom/amap/location/i/a/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;JLcom/amap/location/support/db/AmapContentValues;)V
    .locals 5

    .line 41
    :try_start_0
    invoke-virtual {p4}, Lcom/amap/location/support/db/AmapContentValues;->clear()V

    const-string v0, "time"

    .line 42
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v0, v1}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 43
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const-string v1, "id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v2, p3

    invoke-interface {v0, p1, p4, v1, v2}, Lcom/amap/location/support/db/IDbHelper;->update(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "OfflineDatabase"

    .line 44
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V

    :goto_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/amap/location/i/a/b/a;->a(Lcom/amap/location/support/db/IDbHelper;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 10
    invoke-static {v0}, Lcom/amap/location/i/a/b/b;->a(Lcom/amap/location/support/db/IDbHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "OfflineDatabase"

    .line 17
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private g()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lcom/amap/location/i/a/b/d;->a(Lcom/amap/location/support/db/IDbHelper;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 10
    invoke-static {v0}, Lcom/amap/location/i/a/b/e;->a(Lcom/amap/location/support/db/IDbHelper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const-string v1, "OfflineDatabase"

    .line 17
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/i/a/b/c;->g:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/amap/location/i/a/b/c;->g:I

    .line 10
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->f()V

    .line 13
    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/location/i/a/b/c;->h:I

    .line 3
    const/4 v1, 0x3

    .line 4
    if-ge v0, v1, :cond_0

    .line 6
    add-int/lit8 v0, v0, 0x1

    .line 8
    iput v0, p0, Lcom/amap/location/i/a/b/c;->h:I

    .line 10
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->g()V

    .line 13
    :cond_0
    return-void
.end method

.method private j()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 4
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v2, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 14
    const-string v3, "AP"

    .line 16
    const-string v4, "select min(timestamp) as early_time, max(timestamp) as last_time, count(timestamp) cnt from AP "

    .line 18
    invoke-interface {v2, v3, v4, v0}, Lcom/amap/location/support/db/IDbHelper;->rawQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 21
    move-result-object v2
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    const/4 v3, 0x2

    .line 23
    const/4 v4, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    const-string v6, ","

    .line 27
    if-eqz v2, :cond_0

    .line 29
    :try_start_1
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 32
    move-result v7

    .line 33
    if-eqz v7, :cond_0

    .line 35
    invoke-interface {v2, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 38
    move-result-wide v7

    .line 39
    invoke-interface {v2, v4}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 42
    move-result-wide v9

    .line 43
    invoke-interface {v2, v3}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    .line 46
    move-result v11

    .line 47
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    :cond_0
    iget-object v7, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 64
    const-string v8, "CL"

    .line 66
    const-string v9, "select min(timestamp) as early_time, max(timestamp) as last_time, count(timestamp) cnt from CL "

    .line 68
    invoke-interface {v7, v8, v9, v0}, Lcom/amap/location/support/db/IDbHelper;->rawQuery(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_1

    .line 80
    invoke-interface {v0, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 83
    move-result-wide v7

    .line 84
    invoke-interface {v0, v4}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 87
    move-result-wide v4

    .line 88
    invoke-interface {v0, v3}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    .line 91
    move-result v3

    .line 92
    const-string v9, "*"

    .line 94
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 112
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v1

    .line 116
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_2

    .line 122
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 125
    move-result-object v1

    .line 126
    const v3, 0x1889c

    .line 129
    invoke-static {v3, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 132
    :cond_2
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 134
    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    if-eqz v2, :cond_3

    .line 139
    :try_start_2
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 142
    :cond_3
    if-eqz v0, :cond_4

    .line 144
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 147
    :cond_4
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 149
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 152
    goto :goto_4

    .line 153
    :catchall_0
    move-exception v1

    .line 154
    move-object v12, v1

    .line 155
    move-object v1, v0

    .line 156
    move-object v0, v2

    .line 157
    move-object v2, v12

    .line 158
    goto :goto_0

    .line 159
    :catch_0
    move-object v1, v0

    .line 160
    move-object v0, v2

    .line 161
    goto :goto_1

    .line 162
    :catchall_1
    move-exception v1

    .line 163
    move-object v2, v1

    .line 164
    move-object v1, v0

    .line 165
    :goto_0
    :try_start_3
    const-string v3, "OfflineDatabase"

    .line 167
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 170
    move-result-object v2

    .line 171
    invoke-static {v3, v2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 174
    if-eqz v0, :cond_5

    .line 176
    :try_start_4
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 179
    :cond_5
    if-eqz v1, :cond_6

    .line 181
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 184
    :cond_6
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 186
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 189
    goto :goto_4

    .line 190
    :catch_1
    move-object v1, v0

    .line 191
    :goto_1
    :try_start_5
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 194
    if-eqz v0, :cond_7

    .line 196
    :try_start_6
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 199
    goto :goto_2

    .line 200
    :catchall_2
    move-exception v0

    .line 201
    goto :goto_3

    .line 202
    :cond_7
    :goto_2
    if-eqz v1, :cond_8

    .line 204
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 207
    :cond_8
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 209
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 212
    goto :goto_4

    .line 213
    :goto_3
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 216
    :goto_4
    return-void

    .line 217
    :catchall_3
    move-exception v2

    .line 218
    if-eqz v0, :cond_9

    .line 220
    :try_start_7
    invoke-interface {v0}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 223
    goto :goto_5

    .line 224
    :catchall_4
    move-exception v0

    .line 225
    goto :goto_6

    .line 226
    :cond_9
    :goto_5
    if-eqz v1, :cond_a

    .line 228
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 231
    :cond_a
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 233
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 236
    goto :goto_7

    .line 237
    :goto_6
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 240
    :goto_7
    throw v2
.end method


# virtual methods
.method public a(Ljava/lang/String;J)Lcom/amap/location/i/a/a/a;
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    .line 8
    :try_start_0
    iget-object v3, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v4, "CL"

    sget-object v5, Lcom/amap/location/i/a/b/c;->a:[Ljava/lang/String;

    const-string v6, "id=?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    .line 9
    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    aput-object v8, v7, v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 10
    invoke-interface/range {v3 .. v9}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v3, :cond_2

    .line 11
    :try_start_1
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x5

    .line 12
    invoke-interface {v3, v4}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v4

    const-wide/32 v6, 0xed4e00

    add-long/2addr v6, v4

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v8

    invoke-interface {v8}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v8

    const-wide/16 v11, 0x3e8

    div-long/2addr v8, v11

    cmp-long v13, v6, v8

    if-lez v13, :cond_1

    .line 14
    invoke-interface {v3, v0}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v19

    const/4 v6, 0x2

    .line 15
    invoke-interface {v3, v6}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v20

    const/4 v6, 0x3

    .line 16
    invoke-interface {v3, v6}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v21

    const/4 v6, 0x4

    .line 17
    invoke-interface {v3, v6}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v22

    .line 18
    new-instance v6, Lcom/amap/location/i/a/a/a;

    const/4 v15, 0x1

    move-object v14, v6

    move-object/from16 v16, p1

    move-wide/from16 v17, p2

    invoke-direct/range {v14 .. v22}, Lcom/amap/location/i/a/a/a;-><init>(ZLjava/lang/String;JIIII)V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 19
    :try_start_2
    iput-wide v4, v6, Lcom/amap/location/i/a/a/a;->i:J

    const-wide/32 v7, 0x93a80

    add-long/2addr v4, v7

    .line 20
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v11

    cmp-long v2, v4, v7

    if-gez v2, :cond_0

    .line 21
    iput-boolean v0, v6, Lcom/amap/location/i/a/a/a;->h:Z
    :try_end_2
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    move-object v2, v6

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    .line 22
    :cond_1
    :try_start_3
    iget-object v4, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v5, "CL"

    const-string v6, "id=?"

    new-array v0, v0, [Ljava/lang/String;

    invoke-static/range {p2 .. p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v10

    invoke-interface {v4, v5, v6, v0}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v6, v2

    :goto_0
    move-object v2, v3

    goto :goto_2

    :catch_0
    move-object v6, v2

    :catch_1
    move-object v2, v3

    goto :goto_3

    :cond_2
    :goto_1
    if-eqz v3, :cond_4

    .line 23
    :try_start_4
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 24
    invoke-static {v3}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v2

    :goto_2
    :try_start_5
    const-string v3, "OfflineDatabase"

    .line 25
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    if-eqz v2, :cond_3

    .line 26
    :try_start_6
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_5

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto :goto_4

    :catch_2
    move-object v6, v2

    .line 27
    :goto_3
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/i/a/b/c;->h()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    if-eqz v2, :cond_3

    .line 28
    :try_start_8
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 29
    :goto_4
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_3
    :goto_5
    move-object v2, v6

    :cond_4
    :goto_6
    if-nez v2, :cond_5

    .line 30
    new-instance v2, Lcom/amap/location/i/a/a/a;

    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    move-object v3, v2

    move-object/from16 v5, p1

    move-wide/from16 v6, p2

    invoke-direct/range {v3 .. v11}, Lcom/amap/location/i/a/a/a;-><init>(ZLjava/lang/String;JIIII)V

    :cond_5
    return-object v2

    :catchall_6
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_6

    .line 31
    :try_start_9
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 32
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 33
    :cond_6
    :goto_7
    throw v3
.end method

.method public a(II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const-string v3, "CL"

    sget-object v4, Lcom/amap/location/i/a/b/c;->b:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frequency>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND time<"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x93a80

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "frequency DESC"

    .line 77
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 78
    invoke-interface/range {v2 .. v8}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 79
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    :goto_0
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 81
    invoke-interface {v1, p1}, Lcom/amap/location/support/db/IAmapCursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 83
    :try_start_1
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "OfflineDatabase"

    .line 84
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    .line 85
    :try_start_3
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 86
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_1

    .line 87
    :try_start_5
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 88
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    .line 89
    :try_start_6
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    .line 90
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 91
    :cond_2
    :goto_2
    throw p1
.end method

.method public a(Lcom/amap/location/i/a/a/a;)V
    .locals 13

    const-string v0, "CL"

    .line 92
    iget-wide v9, p1, Lcom/amap/location/i/a/a/a;->g:J

    .line 93
    iget-object v5, p1, Lcom/amap/location/i/a/a/a;->f:Ljava/lang/String;

    .line 94
    invoke-static {v5}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 95
    new-instance v11, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v11}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 97
    :try_start_0
    iget-boolean v1, p1, Lcom/amap/location/i/a/a/a;->a:Z

    const/4 v12, 0x1

    if-eqz v1, :cond_1

    .line 98
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update CL set frequency = frequency + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/amap/location/i/a/a/a;->h:Z

    if-eqz p1, :cond_0

    .line 99
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/location/i/e;->g()I

    move-result v12

    :cond_0
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " where id = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-interface {v0, p1}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v11

    move-wide v3, v9

    .line 101
    invoke-direct/range {v1 .. v8}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/support/db/AmapContentValues;JLjava/lang/String;JI)Lcom/amap/location/support/db/AmapContentValues;

    .line 102
    invoke-direct {p0, v0, v11, v12}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Z)V

    .line 103
    invoke-direct {p0, v0, v9, v10, v11}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;JLcom/amap/location/support/db/AmapContentValues;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    const-string v0, "OfflineDatabase"

    .line 104
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 105
    :goto_0
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    :catchall_1
    move-exception p1

    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 106
    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public a(Lcom/amap/location/i/a/a/b;)V
    .locals 4

    .line 132
    new-instance v0, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v0}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    :try_start_0
    const-string v1, "AP"

    .line 133
    iget-wide v2, p1, Lcom/amap/location/i/a/a/b;->a:J

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;J)V

    .line 134
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update AP set frequency = frequency + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/location/i/e;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " where id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/amap/location/i/a/a/b;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-interface {v0, p1}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDatabase"

    .line 137
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/amap/location/i/a/a/c;)V
    .locals 12

    const-string v0, "AP"

    .line 107
    iget-object v1, p1, Lcom/amap/location/i/a/a/c;->b:Ljava/util/HashMap;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 108
    iget-object p1, p1, Lcom/amap/location/i/a/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 109
    new-instance v9, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v9}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    .line 110
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 112
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 114
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/amap/location/i/a/a/b;

    if-nez v10, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    iget-boolean v1, v10, Lcom/amap/location/i/a/a/b;->d:Z

    const/4 v11, 0x1

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update AP set frequency = frequency + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v10, Lcom/amap/location/i/a/a/b;->h:Z

    if-eqz v3, :cond_1

    .line 117
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/location/i/e;->g()I

    move-result v11

    :cond_1
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " where id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v10, Lcom/amap/location/i/a/a/b;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-interface {v1, v2}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-wide v3, v10, Lcom/amap/location/i/a/a/b;->a:J

    const/4 v5, 0x0

    iget-wide v6, v10, Lcom/amap/location/i/a/a/b;->b:J

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, v9

    invoke-direct/range {v1 .. v8}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/support/db/AmapContentValues;JLjava/lang/String;JI)Lcom/amap/location/support/db/AmapContentValues;

    .line 120
    invoke-direct {p0, v0, v9, v11}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Z)V

    .line 121
    iget-wide v1, v10, Lcom/amap/location/i/a/a/b;->a:J

    invoke-direct {p0, v0, v1, v2, v9}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;JLcom/amap/location/support/db/AmapContentValues;)Z

    goto :goto_0

    .line 122
    :cond_3
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 123
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_2
    const-string v0, "OfflineDatabase"

    .line 124
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 125
    :try_start_3
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    .line 126
    :goto_1
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 127
    :goto_2
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    :catchall_3
    move-exception p1

    .line 128
    :try_start_4
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_3

    :catchall_4
    move-exception v0

    .line 129
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 130
    :goto_3
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 131
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public a(Lcom/amap/location/i/a/c/b/c;)V
    .locals 6

    .line 156
    new-instance v0, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v0}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v1}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 158
    :goto_0
    invoke-virtual {p1}, Lcom/amap/location/i/a/c/b/c;->b()I

    move-result v3

    const/16 v4, 0x3c

    if-ge v2, v3, :cond_1

    .line 159
    invoke-virtual {p1, v2}, Lcom/amap/location/i/a/c/b/c;->b(I)Lcom/amap/location/i/a/c/b/a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 160
    invoke-virtual {v3}, Lcom/amap/location/i/a/c/b/a;->e()B

    move-result v5

    if-le v5, v4, :cond_0

    .line 161
    invoke-direct {p0, v0, v3}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/i/a/c/b/a;)Lcom/amap/location/support/db/AmapContentValues;

    const-string v3, "AP"

    .line 162
    invoke-direct {p0, v3, v0}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/amap/location/i/a/c/b/c;->a()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 164
    invoke-virtual {p1, v1}, Lcom/amap/location/i/a/c/b/c;->a(I)Lcom/amap/location/i/a/c/b/a;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 165
    invoke-virtual {v2}, Lcom/amap/location/i/a/c/b/a;->e()B

    move-result v3

    if-le v3, v4, :cond_2

    .line 166
    invoke-direct {p0, v0, v2}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/i/a/c/b/a;)Lcom/amap/location/support/db/AmapContentValues;

    const-string v2, "CL"

    .line 167
    invoke-direct {p0, v2, v0}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 168
    :cond_3
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v0, "OfflineDatabase"

    .line 170
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 171
    :try_start_3
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 172
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    .line 173
    :try_start_4
    iget-object v0, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    .line 174
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 175
    :goto_3
    throw p1
.end method

.method public a(Lcom/amap/location/i/a/c/b/c;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/i/a/c/b/c;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "CL"

    const-string v1, "AP"

    .line 176
    new-instance v2, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v2}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    .line 177
    iget-object v3, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_0
    iget-object v3, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v3}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 179
    iget-object v3, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v3}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 180
    invoke-direct {p0, p2}, Lcom/amap/location/i/a/b/c;->a(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 181
    :goto_0
    invoke-virtual {p1}, Lcom/amap/location/i/a/c/b/c;->b()I

    move-result v5

    const/16 v6, 0x3c

    if-ge v4, v5, :cond_1

    .line 182
    invoke-virtual {p1, v4}, Lcom/amap/location/i/a/c/b/c;->b(I)Lcom/amap/location/i/a/c/b/a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 183
    invoke-virtual {v5}, Lcom/amap/location/i/a/c/b/a;->e()B

    move-result v7

    if-le v7, v6, :cond_0

    .line 184
    invoke-virtual {v5}, Lcom/amap/location/i/a/c/b/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 185
    invoke-direct {p0, v2, v5}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/i/a/c/b/a;)Lcom/amap/location/support/db/AmapContentValues;

    .line 186
    invoke-direct {p0, v1, v2}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)V

    .line 187
    invoke-virtual {v5}, Lcom/amap/location/i/a/c/b/a;->a()J

    move-result-wide v5

    invoke-direct {p0, v1, v5, v6, v2}, Lcom/amap/location/i/a/b/c;->b(Ljava/lang/String;JLcom/amap/location/support/db/AmapContentValues;)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-direct {p0, p3}, Lcom/amap/location/i/a/b/c;->b(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p3

    .line 189
    :goto_1
    invoke-virtual {p1}, Lcom/amap/location/i/a/c/b/c;->a()I

    move-result v1

    if-ge v3, v1, :cond_3

    .line 190
    invoke-virtual {p1, v3}, Lcom/amap/location/i/a/c/b/c;->a(I)Lcom/amap/location/i/a/c/b/a;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 191
    invoke-virtual {v1}, Lcom/amap/location/i/a/c/b/a;->e()B

    move-result v4

    if-le v4, v6, :cond_2

    .line 192
    invoke-virtual {v1}, Lcom/amap/location/i/a/c/b/a;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 193
    invoke-direct {p0, v2, v1}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/support/db/AmapContentValues;Lcom/amap/location/i/a/c/b/a;)Lcom/amap/location/support/db/AmapContentValues;

    .line 194
    invoke-direct {p0, v0, v2}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)V

    .line 195
    invoke-virtual {v1}, Lcom/amap/location/i/a/c/b/a;->a()J

    move-result-wide v4

    invoke-direct {p0, v0, v4, v5, v2}, Lcom/amap/location/i/a/b/c;->b(Ljava/lang/String;JLcom/amap/location/support/db/AmapContentValues;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 196
    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/amap/location/i/a/b/c;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V

    .line 197
    invoke-virtual {p0}, Lcom/amap/location/i/a/b/c;->b()V

    .line 198
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V

    .line 199
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 200
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V

    .line 201
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

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
    const-string p2, "OfflineDatabase"

    .line 202
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 203
    :try_start_3
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V

    .line 204
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p1}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 205
    :goto_2
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 206
    :goto_3
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_3
    move-exception p1

    .line 207
    :try_start_4
    iget-object p2, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p2}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V

    .line 208
    iget-object p2, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {p2}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    .line 209
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 210
    :goto_4
    iget-object p2, p0, Lcom/amap/location/i/a/b/c;->f:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 211
    throw p1
.end method

.method public a(Ljava/lang/String;Lcom/amap/location/i/a/a/c;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    const-string v2, ";"

    const-string v3, ","

    const/4 v4, 0x0

    .line 34
    :try_start_0
    iget-object v5, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v6, "AP"

    sget-object v7, Lcom/amap/location/i/a/b/c;->a:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 35
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 36
    :goto_0
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_4

    const/4 v5, 0x0

    .line 37
    invoke-interface {v4, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v7

    const/4 v9, 0x5

    .line 38
    invoke-interface {v4, v9}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v9

    const-wide/32 v11, 0x76a700

    add-long/2addr v11, v9

    .line 39
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v13

    invoke-interface {v13}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    cmp-long v17, v11, v13

    if-gez v17, :cond_0

    .line 40
    iget-object v9, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v10, "AP"

    const-string v11, "id=?"

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-interface {v9, v10, v11, v6}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 42
    :cond_0
    invoke-interface {v4, v6}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v5

    const/4 v11, 0x2

    .line 43
    invoke-interface {v4, v11}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x3

    .line 44
    invoke-interface {v4, v12}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x4

    .line 45
    invoke-interface {v4, v13}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v13

    .line 46
    iget-object v14, v0, Lcom/amap/location/i/a/a/c;->b:Ljava/util/HashMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amap/location/i/a/a/b;

    if-nez v7, :cond_1

    .line 47
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 48
    :cond_1
    iput-boolean v6, v7, Lcom/amap/location/i/a/a/b;->d:Z

    .line 49
    iput v13, v7, Lcom/amap/location/i/a/a/b;->g:I

    .line 50
    iput v5, v7, Lcom/amap/location/i/a/a/b;->e:I

    .line 51
    iput v11, v7, Lcom/amap/location/i/a/a/b;->f:I

    .line 52
    iput-wide v9, v7, Lcom/amap/location/i/a/a/b;->i:J

    int-to-float v8, v12

    .line 53
    iput v8, v7, Lcom/amap/location/i/a/a/b;->j:F

    const/16 v8, 0x3c

    if-le v13, v8, :cond_2

    .line 54
    iget v8, v0, Lcom/amap/location/i/a/a/c;->c:I

    add-int/2addr v8, v6

    iput v8, v0, Lcom/amap/location/i/a/a/c;->c:I

    .line 55
    iget-object v8, v0, Lcom/amap/location/i/a/a/c;->d:Ljava/lang/StringBuilder;

    iget-wide v13, v7, Lcom/amap/location/i/a/a/b;->b:J

    invoke-virtual {v8, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v8, v0, Lcom/amap/location/i/a/a/c;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/amap/location/i/a/a/b;->c:I

    .line 59
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-wide/32 v11, 0x93a80

    add-long/2addr v9, v11

    .line 60
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v5

    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v11

    div-long/2addr v11, v15

    cmp-long v5, v9, v11

    if-gez v5, :cond_3

    .line 61
    iput-boolean v6, v7, Lcom/amap/location/i/a/a/b;->h:Z

    .line 62
    :cond_3
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto/16 :goto_0

    .line 63
    :cond_4
    iget-object v2, v0, Lcom/amap/location/i/a/a/c;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 64
    iget-object v0, v0, Lcom/amap/location/i/a/a/c;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v6

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    if-eqz v4, :cond_6

    .line 65
    :try_start_1
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "OfflineDatabase"

    .line 66
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v4, :cond_6

    .line 67
    :try_start_3
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 68
    :catch_0
    :try_start_4
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/i/a/b/c;->h()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v4, :cond_6

    .line 69
    :try_start_5
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 70
    invoke-static {v2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_6
    :goto_1
    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    if-eqz v4, :cond_7

    .line 71
    :try_start_6
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 72
    invoke-static {v3}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 73
    :cond_7
    :goto_2
    throw v2
.end method

.method public a(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/location/i/a/b/c;->a(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p1

    .line 213
    invoke-direct {p0, p2}, Lcom/amap/location/i/a/b/c;->b(Ljava/util/List;)Ljava/util/HashSet;

    move-result-object p2

    .line 214
    invoke-direct {p0, p2, p1}, Lcom/amap/location/i/a/b/c;->a(Ljava/util/HashSet;Ljava/util/HashSet;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "OfflineDatabase"

    .line 215
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(II)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    const-string v3, "AP"

    sget-object v4, Lcom/amap/location/i/a/b/c;->b:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "frequency>="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " AND time<"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v8, 0x93a80

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "frequency DESC"

    .line 5
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-interface/range {v2 .. v8}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 8
    :goto_0
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 9
    invoke-interface {v1, p1}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 11
    :try_start_1
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "OfflineDatabase"

    .line 12
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_1

    .line 13
    :try_start_3
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 14
    :catch_0
    :try_start_4
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_1

    .line 15
    :try_start_5
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 16
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_2

    .line 17
    :try_start_6
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p2

    .line 18
    invoke-static {p2}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 19
    :cond_2
    :goto_2
    throw p1
.end method

.method public b()V
    .locals 21

    move-object/from16 v1, p0

    const-string v0, "id"

    const-string v2, "CL"

    const-string v3, "timestamp<?"

    const-string v4, "AP"

    const/4 v5, 0x0

    .line 50
    :try_start_0
    iget-object v6, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v6}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 51
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/32 v10, 0x76a700

    sub-long/2addr v6, v10

    .line 52
    iget-object v12, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    .line 53
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v14, v7

    .line 54
    invoke-interface {v12, v4, v3, v14}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 55
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v14

    div-long/2addr v14, v8

    sub-long/2addr v14, v10

    .line 56
    iget-object v6, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    new-array v8, v13, [Ljava/lang/String;

    .line 57
    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 58
    invoke-interface {v6, v2, v3, v8}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 59
    iget-object v14, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v15, "AP"

    new-array v3, v13, [Ljava/lang/String;

    aput-object v0, v3, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "timestamp DESC,frequency DESC LIMIT 200000, -1"

    const/16 v20, 0x0

    move-object/from16 v16, v3

    invoke-interface/range {v14 .. v20}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, "id=?"

    if-eqz v3, :cond_0

    .line 60
    :try_start_1
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 61
    :goto_0
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result v8

    if-nez v8, :cond_0

    .line 62
    invoke-interface {v3, v7}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v8

    .line 63
    iget-object v10, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    new-array v11, v13, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v11, v7

    invoke-interface {v10, v4, v6, v11}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 64
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_0

    .line 65
    :cond_0
    iget-object v14, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    const-string v15, "CL"

    new-array v4, v13, [Ljava/lang/String;

    aput-object v0, v4, v7

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "timestamp DESC,frequency DESC LIMIT 200000, -1"

    const/16 v20, 0x0

    move-object/from16 v16, v4

    invoke-interface/range {v14 .. v20}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 66
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :goto_1
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    invoke-interface {v5, v7}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v8

    .line 69
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    new-array v4, v13, [Ljava/lang/String;

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    invoke-interface {v0, v2, v6, v4}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 70
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    goto :goto_1

    .line 71
    :cond_1
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 72
    :try_start_2
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    :cond_2
    if-eqz v5, :cond_3

    .line 73
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 74
    :cond_3
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v5

    move-object v5, v3

    goto :goto_2

    :catch_0
    move-object v2, v5

    move-object v5, v3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v2, v5

    :goto_2
    :try_start_3
    const-string v3, "OfflineDatabase"

    .line 75
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v5, :cond_4

    .line 76
    :try_start_4
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    .line 77
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 78
    :cond_5
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_6

    :catch_1
    move-object v2, v5

    .line 79
    :goto_3
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/i/a/b/c;->h()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_6

    .line 80
    :try_start_6
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    goto :goto_4

    :catchall_2
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 81
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 82
    :cond_7
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_6

    .line 83
    :goto_5
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_6
    return-void

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v5, :cond_8

    .line 84
    :try_start_7
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    if-eqz v2, :cond_9

    .line 85
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 86
    :cond_9
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_9

    .line 87
    :goto_8
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 88
    :goto_9
    throw v3
.end method

.method public b(Lcom/amap/location/i/a/a/a;)V
    .locals 4

    .line 20
    iget-wide v0, p1, Lcom/amap/location/i/a/a/a;->g:J

    .line 21
    new-instance p1, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {p1}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    :try_start_0
    const-string v2, "CL"

    .line 22
    invoke-direct {p0, v2, p1, v0, v1}, Lcom/amap/location/i/a/b/c;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;J)V

    .line 23
    iget-object p1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update CL set frequency = frequency + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/location/i/e;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " where id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-interface {p1, v0}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDatabase"

    .line 26
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v0, "id"

    .line 5
    const-string v2, "OfflineDatabase"

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    iget-object v4, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 10
    invoke-interface {v4}, Lcom/amap/location/support/db/IDbHelper;->beginTransaction()V

    .line 13
    iget-object v5, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 15
    const-string v6, "AP"

    .line 17
    const/4 v4, 0x1

    .line 18
    new-array v7, v4, [Ljava/lang/String;

    .line 20
    const/4 v12, 0x0

    .line 21
    aput-object v0, v7, v12

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v9, 0x0

    .line 25
    const-string v10, "frequency DESC LIMIT 10000, -1"

    .line 27
    const/4 v11, 0x0

    .line 28
    invoke-interface/range {v5 .. v11}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 31
    move-result-object v5
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 32
    const-string v6, "id=?"

    .line 34
    if-eqz v5, :cond_0

    .line 36
    :try_start_1
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_0

    .line 42
    :goto_0
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    .line 45
    move-result v7

    .line 46
    if-nez v7, :cond_0

    .line 48
    invoke-interface {v5, v12}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 51
    move-result-wide v7

    .line 52
    iget-object v9, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 54
    const-string v10, "AP"

    .line 56
    new-array v11, v4, [Ljava/lang/String;

    .line 58
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 61
    move-result-object v7

    .line 62
    aput-object v7, v11, v12

    .line 64
    invoke-interface {v9, v10, v6, v11}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 67
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v13, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 73
    const-string v14, "CL"

    .line 75
    new-array v15, v4, [Ljava/lang/String;

    .line 77
    aput-object v0, v15, v12

    .line 79
    const/16 v16, 0x0

    .line 81
    const/16 v17, 0x0

    .line 83
    const-string v18, "frequency DESC LIMIT 10000, -1"

    .line 85
    const/16 v19, 0x0

    .line 87
    invoke-interface/range {v13 .. v19}, Lcom/amap/location/support/db/IDbHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_1

    .line 93
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_1

    .line 99
    :goto_1
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->isAfterLast()Z

    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_1

    .line 105
    invoke-interface {v3, v12}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    .line 108
    move-result-wide v7

    .line 109
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 111
    const-string v9, "CL"

    .line 113
    new-array v10, v4, [Ljava/lang/String;

    .line 115
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 118
    move-result-object v7

    .line 119
    aput-object v7, v10, v12

    .line 121
    invoke-interface {v0, v9, v6, v10}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 124
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToNext()Z

    .line 127
    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 130
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->setTransactionSuccessful()V
    :try_end_1
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    if-eqz v5, :cond_2

    .line 135
    :try_start_2
    invoke-interface {v5}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 138
    :cond_2
    if-eqz v3, :cond_3

    .line 140
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 143
    :cond_3
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 145
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 148
    goto :goto_6

    .line 149
    :catchall_0
    move-exception v0

    .line 150
    move-object v4, v3

    .line 151
    move-object v3, v5

    .line 152
    goto :goto_2

    .line 153
    :catch_0
    move-object v4, v3

    .line 154
    move-object v3, v5

    .line 155
    goto :goto_3

    .line 156
    :catchall_1
    move-exception v0

    .line 157
    move-object v4, v3

    .line 158
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 165
    if-eqz v3, :cond_4

    .line 167
    :try_start_4
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 170
    :cond_4
    if-eqz v4, :cond_5

    .line 172
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 175
    :cond_5
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 177
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 180
    goto :goto_6

    .line 181
    :catch_1
    move-object v4, v3

    .line 182
    :goto_3
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/i/a/b/c;->i()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 185
    if-eqz v3, :cond_6

    .line 187
    :try_start_6
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 190
    goto :goto_4

    .line 191
    :catchall_2
    move-exception v0

    .line 192
    goto :goto_5

    .line 193
    :cond_6
    :goto_4
    if-eqz v4, :cond_7

    .line 195
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 198
    :cond_7
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 200
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 203
    goto :goto_6

    .line 204
    :goto_5
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :goto_6
    return-void

    .line 212
    :catchall_3
    move-exception v0

    .line 213
    move-object v5, v0

    .line 214
    if-eqz v3, :cond_8

    .line 216
    :try_start_7
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 219
    goto :goto_7

    .line 220
    :catchall_4
    move-exception v0

    .line 221
    goto :goto_8

    .line 222
    :cond_8
    :goto_7
    if-eqz v4, :cond_9

    .line 224
    invoke-interface {v4}, Lcom/amap/location/support/db/IAmapCursor;->close()V

    .line 227
    :cond_9
    iget-object v0, v1, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 229
    invoke-interface {v0}, Lcom/amap/location/support/db/IDbHelper;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 232
    goto :goto_9

    .line 233
    :goto_8
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 236
    move-result-object v0

    .line 237
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    :goto_9
    throw v5
.end method

.method public d()V
    .locals 4

    .line 1
    const-string v0, "AP"

    .line 3
    const-string v1, "CL"

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-interface {v2, v1, v3, v3}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    iget-object v2, p0, Lcom/amap/location/i/a/b/c;->d:Lcom/amap/location/support/db/IDbHelper;

    .line 13
    invoke-interface {v2, v0, v3, v3}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 16
    iget-object v2, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 18
    invoke-interface {v2, v1, v3, v3}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 21
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 23
    invoke-interface {v1, v0, v3, v3}, Lcom/amap/location/support/db/IDbHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amap/location/support/db/TableNotExistException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    const-string v1, "OfflineDatabase"

    .line 30
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->h()V

    .line 41
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->i()V

    .line 44
    :goto_0
    return-void
.end method

.method public e()V
    .locals 4

    .line 1
    const-string v0, ") as int) where frequency > 0"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    const-string v3, "update AP set frequency = Cast((frequency * "

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Lcom/amap/location/i/e;->f()F

    .line 22
    move-result v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-interface {v1, v2}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V

    .line 36
    iget-object v1, p0, Lcom/amap/location/i/a/b/c;->e:Lcom/amap/location/support/db/IDbHelper;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v3, "update CL set frequency = Cast((frequency * "

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-static {}, Lcom/amap/location/i/e;->a()Lcom/amap/location/i/e;

    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v3}, Lcom/amap/location/i/e;->f()F

    .line 55
    move-result v3

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v1, v0}, Lcom/amap/location/support/db/IDbHelper;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    const-string v1, "OfflineDatabase"

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/amap/location/i/a/b/c;->j()V

    .line 83
    return-void
.end method

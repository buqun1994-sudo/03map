.class Lcom/amap/location/k/d/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/k/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/k/d/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/location/k/c/a$b<",
        "Lcom/amap/location/k/d/d/a$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/k/d/d/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/k/d/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private b(J)Z
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "NewCountTunnel"

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/k/d/d/a$a;->e()I

    move-result v0

    if-lez v0, :cond_0

    mul-int/lit8 v0, v0, 0x18

    int-to-long v3, v0

    sub-long v3, p1, v3

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p1

    :goto_0
    const-wide/16 v5, 0x18

    .line 3
    div-long v7, v3, v5

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v9, 0x0

    cmp-long v10, v3, v5

    if-lez v10, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    int-to-long v3, v3

    add-long/2addr v7, v3

    cmp-long v3, v7, v5

    if-lez v3, :cond_4

    .line 4
    :try_start_0
    iget-object v3, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v3}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    move-result-object v10

    iget-object v3, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v3}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/String;

    const-string v3, "ID"

    aput-object v3, v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v4, 0x1

    sub-long/2addr v7, v4

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", 1"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v10 .. v16}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    .line 5
    :try_start_1
    invoke-interface {v3}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-interface {v3, v9}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v4

    .line 7
    iget-object v6, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v6}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    move-result-object v6

    iget-object v7, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v7}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ID <= ?"

    new-array v10, v0, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v9

    invoke-virtual {v6, v7, v8, v10}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_2
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 9
    :try_start_2
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 10
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v9

    :goto_3
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 11
    throw v0

    .line 12
    :cond_3
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v9

    :catch_1
    move-exception v0

    .line 13
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v9

    :cond_4
    return v0
.end method

.method private e()I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    .line 9
    invoke-static {v1}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 20
    move-result-wide v2

    .line 21
    iget-object v4, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    .line 23
    invoke-static {v4}, Lcom/amap/location/k/d/d/a;->a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;

    .line 26
    move-result-object v4

    .line 27
    invoke-interface {v4}, Lcom/amap/location/k/b/a;->h()J

    .line 30
    move-result-wide v4

    .line 31
    sub-long/2addr v2, v4

    .line 32
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    filled-new-array {v2}, [Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "time < ?"

    .line 42
    invoke-virtual {v0, v1, v3, v2}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 45
    move-result v0

    .line 46
    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/location/k/d/d/a$c;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "ID"

    const-string v3, "time"

    const-string v4, "value"

    .line 6
    iget-object v0, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->d(Lcom/amap/location/k/d/d/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/Integer;

    .line 7
    iget-object v0, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->d(Lcom/amap/location/k/d/d/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v7, 0x0

    if-nez v0, :cond_1

    const/4 v8, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->d(Lcom/amap/location/k/d/d/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v8, v0

    :goto_0
    const/4 v9, 0x0

    .line 8
    :try_start_0
    iget-object v0, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    move-result-object v10

    iget-object v0, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/amap/location/k/d/a/a/b;->a:[Ljava/lang/String;

    const-string v13, "type = ? "

    const/4 v0, 0x1

    new-array v14, v0, [Ljava/lang/String;

    .line 9
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    const-string v15, "time DESC"

    const-string v16, "0, 1"

    .line 10
    invoke-virtual/range {v10 .. v16}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_3

    .line 11
    :try_start_1
    invoke-interface {v10}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 12
    invoke-interface {v10, v3}, Lcom/amap/location/support/db/IAmapCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v11

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v13

    invoke-interface {v13}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v11

    const-wide/16 v11, 0x0

    cmp-long v15, v13, v11

    if-lez v15, :cond_3

    .line 14
    iget-object v11, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v11}, Lcom/amap/location/k/d/d/a;->a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;

    move-result-object v11

    invoke-interface {v11}, Lcom/amap/location/k/b/a;->b()J

    move-result-wide v11

    cmp-long v15, v13, v11

    if-gez v15, :cond_3

    .line 15
    invoke-interface {v10, v2}, Lcom/amap/location/support/db/IAmapCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v10, v11}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v11

    .line 16
    iget-object v13, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v13}, Lcom/amap/location/k/d/d/a;->e(Lcom/amap/location/k/d/d/a;)J

    move-result-wide v13

    cmp-long v15, v11, v13

    if-gtz v15, :cond_2

    const/4 v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v13, 0x0

    :goto_1
    if-nez v13, :cond_3

    .line 17
    invoke-interface {v10, v4}, Lcom/amap/location/support/db/IAmapCursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v10, v13}, Lcom/amap/location/support/db/IAmapCursor;->getInt(I)I

    move-result v13

    .line 18
    new-instance v14, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v14}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    .line 19
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v2, v15}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    add-int/2addr v13, v8

    .line 20
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v14, v4, v13}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 21
    iget-object v13, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v13}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    move-result-object v13

    iget-object v15, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v15}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ID = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v15, v14, v0, v9}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ltz v0, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v9, v10

    goto :goto_5

    :catch_0
    move-exception v0

    move-object v9, v10

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    .line 22
    :goto_2
    invoke-static {v10}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    :goto_3
    :try_start_2
    const-string v7, "NewCountTunnel"

    .line 23
    invoke-static {v7, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    invoke-static {v9}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v7, 0x0

    :goto_4
    if-nez v7, :cond_0

    .line 25
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v9

    .line 26
    new-instance v0, Lcom/amap/location/support/db/AmapContentValues;

    invoke-direct {v0}, Lcom/amap/location/support/db/AmapContentValues;-><init>()V

    const-string v7, "type"

    .line 27
    invoke-virtual {v0, v7, v6}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 28
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 29
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Lcom/amap/location/support/db/AmapContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    iget-object v6, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v6}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    move-result-object v6

    iget-object v7, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v7}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;Lcom/amap/location/support/db/AmapContentValues;)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_0

    goto :goto_6

    .line 31
    :goto_5
    invoke-static {v9}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 32
    throw v0

    .line 33
    :cond_4
    :goto_6
    iget-object v0, v1, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->d(Lcom/amap/location/k/d/d/a;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public a(J)Z
    .locals 4

    const-wide/16 v0, 0x18

    mul-long p1, p1, v0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v2}, Lcom/amap/location/k/d/d/a;->c(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/d/a/a;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {v3}, Lcom/amap/location/k/d/d/a;->b(Lcom/amap/location/k/d/d/a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    mul-long v2, v2, v0

    add-long/2addr v2, p1

    .line 3
    iget-object p1, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {p1}, Lcom/amap/location/k/d/d/a;->a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/k/b/a;->g()J

    move-result-wide p1

    cmp-long v0, v2, p1

    if-lez v0, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    invoke-static {p1}, Lcom/amap/location/k/d/d/a;->a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/amap/location/k/b/a;->g()J

    move-result-wide p1

    sub-long/2addr v2, p1

    invoke-direct {p0, v2, v3}, Lcom/amap/location/k/d/d/a$a;->b(J)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "NewCountTunnel"

    .line 5
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/amap/location/k/b/a;->c()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/d/d/a$a;->a:Lcom/amap/location/k/d/d/a;

    .line 3
    invoke-static {v0}, Lcom/amap/location/k/d/d/a;->a(Lcom/amap/location/k/d/d/a;)Lcom/amap/location/k/b/a;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/amap/location/k/b/a;->e()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

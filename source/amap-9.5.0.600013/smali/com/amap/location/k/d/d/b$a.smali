.class Lcom/amap/location/k/d/d/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/k/c/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/k/d/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amap/location/k/c/a$b<",
        "Lcom/amap/location/k/d/d/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/k/d/d/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/k/d/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private a(JJ)Z
    .locals 13

    move-object v1, p0

    const-string v0, "ID"

    .line 18
    invoke-direct {p0}, Lcom/amap/location/k/d/d/b$a;->e()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-lez v2, :cond_1

    .line 19
    :try_start_0
    iget-object v2, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->c(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/d/a/a;

    move-result-object v6

    iget-object v2, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->b(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v3, [Ljava/lang/String;

    const-string v2, "sum(size)"

    aput-object v2, v8, v5

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v6 .. v12}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 20
    :try_start_1
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 21
    invoke-interface {v2, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v6, p1, v6

    sub-long v6, p3, v6

    .line 22
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v4, v2

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v4, v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 23
    :goto_0
    :try_start_2
    iget-object v2, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->d(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :goto_1
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 25
    throw v0

    :cond_1
    move-wide/from16 v6, p3

    :goto_2
    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_4

    .line 26
    :try_start_3
    iget-object v2, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->c(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/d/a/a;

    move-result-object v2

    iget-object v10, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v10}, Lcom/amap/location/k/d/d/b;->e(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "select sum(size) from (select * from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 27
    invoke-static {v12}, Lcom/amap/location/k/d/d/b;->e(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " limit 0, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v12}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    move-result-object v12

    invoke-interface {v12}, Lcom/amap/location/k/b/b;->b()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 28
    invoke-virtual {v2, v10, v11, v4}, Lcom/amap/location/k/d/a/a;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v2, :cond_3

    .line 29
    :try_start_4
    invoke-interface {v2}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 30
    invoke-interface {v2, v5}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v10
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    cmp-long v12, v10, v8

    if-gtz v12, :cond_2

    .line 31
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    .line 32
    :cond_2
    :try_start_5
    iget-object v8, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v8}, Lcom/amap/location/k/d/d/b;->c(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/d/a/a;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "delete from "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v12}, Lcom/amap/location/k/d/d/b;->e(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " where "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " < ( select "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 33
    invoke-static {v12}, Lcom/amap/location/k/d/d/b;->e(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " limit "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v12}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    move-result-object v12

    invoke-interface {v12}, Lcom/amap/location/k/b/b;->b()I

    move-result v12

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", 1)"

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 34
    invoke-virtual {v8, v9}, Lcom/amap/location/k/d/a/a;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    sub-long/2addr v6, v10

    .line 35
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :catchall_2
    move-exception v0

    move-object v4, v2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v4, v2

    goto :goto_3

    :cond_3
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    .line 36
    :goto_3
    :try_start_6
    iget-object v2, v1, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->d(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 37
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v5

    :goto_4
    invoke-static {v4}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 38
    throw v0

    :cond_4
    return v3
.end method

.method private e()I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 4
    invoke-static {v1}, Lcom/amap/location/k/d/d/b;->c(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/d/a/a;

    .line 7
    move-result-object v1

    .line 8
    iget-object v2, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 10
    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->b(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "time < ?"

    .line 16
    const/4 v4, 0x1

    .line 17
    new-array v4, v4, [Ljava/lang/String;

    .line 19
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 22
    move-result-object v5

    .line 23
    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 26
    move-result-wide v5

    .line 27
    iget-object v7, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 29
    invoke-static {v7}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    .line 32
    move-result-object v7

    .line 33
    invoke-interface {v7}, Lcom/amap/location/k/b/b;->h()J

    .line 36
    move-result-wide v7

    .line 37
    sub-long/2addr v5, v7

    .line 38
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    aput-object v5, v4, v0

    .line 44
    invoke-virtual {v1, v2, v3, v4}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 47
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return v0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    iget-object v2, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 52
    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->d(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    return v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/location/k/d/d/b$c;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/k/d/d/b$c;

    .line 15
    invoke-virtual {v1}, Lcom/amap/location/k/d/d/b$c;->a()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/location/k/d/d/b$c;->c:J

    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v0}, Lcom/amap/location/k/d/d/b;->c(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/d/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v1}, Lcom/amap/location/k/d/d/b;->b(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    iget-object v0, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v0}, Lcom/amap/location/k/d/d/b;->d(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(J)Z
    .locals 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->c(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/d/a/a;

    move-result-object v3

    iget-object v2, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->b(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const-string v6, "sum(size)"

    aput-object v6, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/amap/location/k/d/a/a;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amap/location/support/db/IAmapCursor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v1}, Lcom/amap/location/support/db/IAmapCursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-interface {v1, v0}, Lcom/amap/location/support/db/IAmapCursor;->getLong(I)J

    move-result-wide v3

    add-long/2addr p1, v3

    .line 5
    iget-object v5, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v5}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    move-result-object v5

    invoke-interface {v5}, Lcom/amap/location/k/b/b;->g()J

    move-result-wide v5

    cmp-long v7, p1, v5

    if-lez v7, :cond_0

    .line 6
    iget-object v2, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {v2}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/k/b/b;->g()J

    move-result-wide v5

    sub-long/2addr p1, v5

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/amap/location/k/d/d/b$a;->a(JJ)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return p1

    :cond_0
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v2

    .line 8
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {p1}, Lcom/amap/location/k/d/d/b;->d(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "prepareStorageForDataSize- DB - ERROR"

    invoke-static {p1, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    iget-object p2, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    invoke-static {p2}, Lcom/amap/location/k/d/d/b;->d(Lcom/amap/location/k/d/d/b;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0

    :goto_0
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 12
    throw p1
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public c()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 3
    invoke-static {v0}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/amap/location/k/b/b;->c()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/location/k/d/d/b$a;->a:Lcom/amap/location/k/d/d/b;

    .line 3
    invoke-static {v0}, Lcom/amap/location/k/d/d/b;->a(Lcom/amap/location/k/d/d/b;)Lcom/amap/location/k/b/b;

    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/amap/location/k/b/b;->e()J

    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

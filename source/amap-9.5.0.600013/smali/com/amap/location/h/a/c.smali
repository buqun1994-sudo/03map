.class public Lcom/amap/location/h/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:I

.field private static c:I

.field private static g:Lcom/amap/location/support/storage/KeyValueStorer;


# instance fields
.field private a:I

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amap/location/h/a/b;",
            "Ljava/util/List<",
            "Lcom/amap/location/h/a/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Lcom/amap/location/h/a/d;

.field private f:Z

.field private h:Z


# direct methods
.method public constructor <init>(IIZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/amap/location/h/a/c;->a:I

    .line 7
    new-instance v1, Ljava/util/HashMap;

    .line 9
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 12
    iput-object v1, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    .line 14
    iput-boolean v0, p0, Lcom/amap/location/h/a/c;->f:Z

    .line 16
    if-lez p1, :cond_1

    .line 18
    if-lez p2, :cond_0

    .line 20
    invoke-static {}, Lcom/amap/location/h/a/c;->b()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 23
    move-result-object v0

    .line 24
    const-string v1, "SP_CACHE_TIME_OUT"

    .line 26
    invoke-interface {v0, v1, p1}, Lcom/amap/location/support/storage/KeyValueStorer;->getInt(Ljava/lang/String;I)I

    .line 29
    move-result p1

    .line 30
    sput p1, Lcom/amap/location/h/a/c;->c:I

    .line 32
    invoke-static {}, Lcom/amap/location/h/a/c;->b()Lcom/amap/location/support/storage/KeyValueStorer;

    .line 35
    move-result-object p1

    .line 36
    const-string v0, "SP_CACHE_MAX_SIZE"

    .line 38
    invoke-interface {p1, v0, p2}, Lcom/amap/location/support/storage/KeyValueStorer;->getInt(Ljava/lang/String;I)I

    .line 41
    move-result p1

    .line 42
    sput p1, Lcom/amap/location/h/a/c;->b:I

    .line 44
    new-instance p1, Lcom/amap/location/h/a/d;

    .line 46
    invoke-direct {p1, p3}, Lcom/amap/location/h/a/d;-><init>(Z)V

    .line 49
    iput-object p1, p0, Lcom/amap/location/h/a/c;->e:Lcom/amap/location/h/a/d;

    .line 51
    iput-boolean p3, p0, Lcom/amap/location/h/a/c;->h:Z

    .line 53
    return-void

    .line 54
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 56
    const-string p2, "maxSize <= 0"

    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    throw p1

    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    const-string p2, "cacheTimeout <= 0"

    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 69
    throw p1
.end method

.method private a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;)Lcom/amap/location/h/a/e;
    .locals 6

    .line 66
    invoke-virtual {p1}, Lcom/amap/location/h/a/b;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p2, :cond_1

    .line 67
    new-instance p2, Lcom/amap/location/h/a/g;

    invoke-direct {p2}, Lcom/amap/location/h/a/g;-><init>()V

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/amap/location/h/a/c;->c()V

    .line 69
    iget-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 70
    :cond_2
    iget-byte v0, p1, Lcom/amap/location/h/a/b;->b:B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 71
    invoke-direct {p0, p2, p1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/g;Lcom/amap/location/h/a/b;)Lcom/amap/location/h/a/e;

    move-result-object p2

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    .line 72
    invoke-direct {p0, p2, p1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/g;Lcom/amap/location/h/a/b;)Lcom/amap/location/h/a/e;

    move-result-object p2

    goto :goto_0

    :cond_4
    const/4 p2, 0x1

    if-ne v0, p2, :cond_5

    .line 73
    iget-object p2, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 74
    iget-object p2, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/location/h/a/e;

    goto :goto_0

    :cond_5
    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_6

    .line 75
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2}, Lcom/amap/location/h/a/e;->f()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 76
    sget v0, Lcom/amap/location/h/a/c;->c:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_6

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache timeout, interval:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "loccache"

    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/e;)V

    return-object v1

    :cond_6
    return-object p2
.end method

.method private declared-synchronized a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;Z)Lcom/amap/location/h/a/e;
    .locals 4

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;)Lcom/amap/location/h/a/e;

    move-result-object p2

    if-eqz p2, :cond_3

    if-eqz p1, :cond_0

    .line 80
    iget-byte v0, p1, Lcom/amap/location/h/a/b;->b:B

    invoke-virtual {p2, v0}, Lcom/amap/location/h/a/e;->a(I)V

    .line 81
    :cond_0
    invoke-virtual {p2}, Lcom/amap/location/h/a/e;->b()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "mem"

    .line 83
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 84
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p3

    invoke-interface {p3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    .line 85
    invoke-virtual {p2, v0, v1}, Lcom/amap/location/h/a/e;->b(J)V

    .line 86
    iget-object p3, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 87
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    .line 88
    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 89
    iget-object p1, p0, Lcom/amap/location/h/a/c;->e:Lcom/amap/location/h/a/d;

    invoke-virtual {p2}, Lcom/amap/location/h/a/e;->a()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/amap/location/h/a/e;->e()J

    move-result-wide v2

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amap/location/h/a/d;->a(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :cond_1
    monitor-exit p0

    return-object p2

    .line 91
    :cond_2
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/e;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :cond_3
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized a(Lcom/amap/location/h/a/g;Lcom/amap/location/h/a/b;)Lcom/amap/location/h/a/e;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    monitor-enter p0

    .line 118
    :try_start_0
    iget-object v3, v1, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_10

    iget-object v3, v0, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_9

    .line 119
    :cond_0
    iget-object v3, v1, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 120
    monitor-exit p0

    return-object v4

    .line 121
    :cond_1
    :try_start_1
    iget-object v3, v1, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 122
    iget-boolean v5, v1, Lcom/amap/location/h/a/c;->h:Z

    const-wide v6, 0x3fe3c6a7ef9db22dL    # 0.618

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_8

    .line 123
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 124
    iget-object v2, v2, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/location/h/a/b$a;

    .line 125
    invoke-virtual {v10}, Lcom/amap/location/h/a/b$a;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 126
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    if-ge v2, v10, :cond_f

    .line 127
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/location/h/a/e;

    .line 128
    invoke-virtual {v10}, Lcom/amap/location/h/a/e;->c()Lcom/amap/location/h/a/g;

    move-result-object v11

    iget-object v11, v11, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->size()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_3

    goto :goto_3

    .line 129
    :cond_3
    invoke-virtual {v10}, Lcom/amap/location/h/a/e;->b()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v11

    invoke-virtual {v11}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v11

    const v12, 0x43958000    # 299.0f

    cmpl-float v11, v11, v12

    if-lez v11, :cond_4

    goto :goto_3

    .line 130
    :cond_4
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 131
    invoke-virtual {v10}, Lcom/amap/location/h/a/e;->d()Lcom/amap/location/h/a/b;

    move-result-object v12

    iget-object v12, v12, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/amap/location/h/a/b$a;

    .line 132
    invoke-virtual {v13}, Lcom/amap/location/h/a/b$a;->hashCode()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 133
    :cond_5
    invoke-static {v11, v5}, Lcom/amap/location/h/a/f;->a(Ljava/util/Set;Ljava/util/Set;)[D

    move-result-object v11

    .line 134
    aget-wide v12, v11, v9

    const-wide v14, 0x3fe999999999999aL    # 0.8

    cmpg-double v11, v12, v14

    if-gez v11, :cond_6

    goto :goto_3

    .line 135
    :cond_6
    invoke-virtual {v10}, Lcom/amap/location/h/a/e;->c()Lcom/amap/location/h/a/g;

    move-result-object v11

    iget-object v11, v11, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    iget-object v12, v0, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-static {v11, v12}, Lcom/amap/location/h/a/f;->b(Ljava/util/HashSet;Ljava/util/HashSet;)[D

    move-result-object v11

    .line 136
    aget-wide v12, v11, v8

    cmpl-double v11, v12, v6

    if-ltz v11, :cond_7

    const-wide/16 v14, 0x0

    cmpl-double v11, v12, v14

    if-lez v11, :cond_7

    move-object v4, v10

    goto/16 :goto_8

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    .line 137
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_f

    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/h/a/e;

    .line 139
    invoke-virtual {v5}, Lcom/amap/location/h/a/e;->c()Lcom/amap/location/h/a/g;

    move-result-object v10

    iget-object v10, v10, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->size()I

    move-result v10

    if-nez v10, :cond_9

    goto :goto_7

    .line 140
    :cond_9
    invoke-virtual {v5}, Lcom/amap/location/h/a/e;->c()Lcom/amap/location/h/a/g;

    move-result-object v10

    iget-wide v10, v10, Lcom/amap/location/h/a/g;->a:J

    iget-wide v12, v0, Lcom/amap/location/h/a/g;->a:J

    invoke-static {v10, v11, v12, v13}, Lcom/amap/location/h/a/f;->a(JJ)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 141
    invoke-virtual {v5}, Lcom/amap/location/h/a/e;->c()Lcom/amap/location/h/a/g;

    move-result-object v10

    iget-object v10, v10, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    iget-object v11, v0, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-static {v10, v11}, Lcom/amap/location/h/a/f;->a(Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v10

    if-nez v10, :cond_d

    const/16 v16, 0x1

    goto :goto_5

    :cond_a
    const/16 v16, 0x0

    .line 142
    :goto_5
    invoke-virtual {v5}, Lcom/amap/location/h/a/e;->c()Lcom/amap/location/h/a/g;

    move-result-object v10

    iget-object v10, v10, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    iget-object v11, v0, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-static {v10, v11}, Lcom/amap/location/h/a/f;->b(Ljava/util/HashSet;Ljava/util/HashSet;)[D

    move-result-object v17

    .line 143
    aget-wide v11, v17, v9

    aget-wide v13, v17, v8

    move-object v10, v5

    move/from16 v15, v16

    invoke-virtual/range {v10 .. v15}, Lcom/amap/location/h/a/e;->a(DDZ)V

    .line 144
    aget-wide v10, v17, v9

    const-wide v12, 0x3fe99999a0000000L    # 0.800000011920929

    cmpl-double v14, v10, v12

    if-ltz v14, :cond_b

    goto :goto_6

    .line 145
    :cond_b
    aget-wide v12, v17, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmpl-double v14, v12, v6

    if-ltz v14, :cond_c

    goto :goto_6

    :cond_c
    if-eqz v16, :cond_e

    cmpl-double v12, v10, v6

    if-ltz v12, :cond_e

    :cond_d
    :goto_6
    move-object v4, v5

    goto :goto_8

    :cond_e
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 146
    :cond_f
    :goto_8
    monitor-exit p0

    return-object v4

    .line 147
    :cond_10
    :goto_9
    monitor-exit p0

    return-object v4

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(I)V
    .locals 8

    .line 100
    :goto_0
    iget v0, p0, Lcom/amap/location/h/a/c;->a:I

    if-le v0, p1, :cond_2

    .line 101
    iget-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/h/a/e;

    invoke-virtual {v5}, Lcom/amap/location/h/a/e;->e()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_0

    .line 103
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/location/h/a/b;

    move-wide v2, v5

    goto :goto_1

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 105
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/h/a/e;

    .line 106
    invoke-direct {p0, v1, v0}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/e;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/e;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Lcom/amap/location/h/a/b;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 109
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 112
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/amap/location/h/a/c;->e:Lcom/amap/location/h/a/d;

    invoke-virtual {p1, p2}, Lcom/amap/location/h/a/d;->a(Lcom/amap/location/h/a/e;)V

    if-eqz v1, :cond_3

    .line 113
    iget p1, p0, Lcom/amap/location/h/a/c;->a:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amap/location/h/a/c;->a:I

    :cond_3
    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "cto"

    .line 1
    sget v1, Lcom/amap/location/h/a/c;->c:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/amap/location/h/a/c;->c:I

    const-string v0, "ms"

    .line 2
    sget v1, Lcom/amap/location/h/a/c;->b:I

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/amap/location/h/a/c;->b:I

    .line 3
    invoke-static {}, Lcom/amap/location/h/a/c;->b()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object p0

    const-string v0, "SP_CACHE_TIME_OUT"

    sget v1, Lcom/amap/location/h/a/c;->c:I

    invoke-interface {p0, v0, v1}, Lcom/amap/location/support/storage/KeyValueStorer;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-static {}, Lcom/amap/location/h/a/c;->b()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object p0

    const-string v0, "SP_CACHE_MAX_SIZE"

    sget v1, Lcom/amap/location/h/a/c;->b:I

    invoke-interface {p0, v0, v1}, Lcom/amap/location/support/storage/KeyValueStorer;->putInt(Ljava/lang/String;I)V

    .line 5
    invoke-static {}, Lcom/amap/location/h/a/c;->b()Lcom/amap/location/support/storage/KeyValueStorer;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/storage/KeyValueStorer;->save()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 93
    :cond_0
    invoke-static {p1, p2}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/b;)V

    .line 94
    invoke-static {p1, p3}, Lcom/amap/location/h/a/f;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/g;)V

    .line 95
    iget-object p1, p2, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_1

    .line 96
    iget-byte p1, p2, Lcom/amap/location/h/a/b;->b:B

    or-int/2addr p1, v1

    int-to-byte p1, p1

    iput-byte p1, p2, Lcom/amap/location/h/a/b;->b:B

    .line 97
    :cond_1
    iget-byte p1, p2, Lcom/amap/location/h/a/b;->b:B

    if-lez p1, :cond_2

    iget-object p1, p3, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-gtz p1, :cond_3

    :cond_2
    iget-object p1, p3, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-le p1, v1, :cond_4

    .line 98
    :cond_3
    iget-byte p1, p2, Lcom/amap/location/h/a/b;->b:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p2, Lcom/amap/location/h/a/b;->b:B

    .line 99
    :cond_4
    iget-byte p1, p2, Lcom/amap/location/h/a/b;->b:B

    if-lez p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method private static b()Lcom/amap/location/support/storage/KeyValueStorer;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/h/a/c;->g:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "SP_CACHE_CLOUD"

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/storage/IKeyValueStorerManager;->create(Ljava/lang/String;)Lcom/amap/location/support/storage/KeyValueStorer;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/amap/location/h/a/c;->g:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 17
    :cond_0
    sget-object v0, Lcom/amap/location/h/a/c;->g:Lcom/amap/location/support/storage/KeyValueStorer;

    .line 19
    return-object v0
.end method

.method private c()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/h/a/c;->d()V

    .line 4
    return-void
.end method

.method private declared-synchronized d()V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/h/a/c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 15
    iget-object v0, p0, Lcom/amap/location/h/a/c;->e:Lcom/amap/location/h/a/d;

    .line 17
    sget v1, Lcom/amap/location/h/a/c;->c:I

    .line 19
    sget v2, Lcom/amap/location/h/a/c;->b:I

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/h/a/d;->a(II)Ljava/util/Map;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    iput-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    .line 29
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 36
    move-result-object v0

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    iget v2, p0, Lcom/amap/location/h/a/c;->a:I

    .line 51
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Ljava/util/List;

    .line 57
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 60
    move-result v1

    .line 61
    add-int/2addr v2, v1

    .line 62
    iput v2, p0, Lcom/amap/location/h/a/c;->a:I

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 72
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/amap/location/h/a/c;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception v0

    .line 78
    monitor-exit p0

    .line 79
    throw v0
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/AmapFps;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 4

    .line 59
    new-instance v0, Lcom/amap/location/h/a/b;

    iget-boolean v1, p0, Lcom/amap/location/h/a/c;->h:Z

    invoke-direct {v0, v1}, Lcom/amap/location/h/a/b;-><init>(Z)V

    .line 60
    new-instance v1, Lcom/amap/location/h/a/g;

    invoke-direct {v1}, Lcom/amap/location/h/a/g;-><init>()V

    .line 61
    invoke-direct {p0, p1, v0, v1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;)Z

    move-result p1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    return-object v2

    :cond_0
    const/4 p1, 0x1

    .line 62
    invoke-direct {p0, v0, v1, p1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;Z)Lcom/amap/location/h/a/e;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loccachesuc:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amap/location/h/a/e;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loccache"

    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p1}, Lcom/amap/location/h/a/e;->b()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    return-object p1

    :cond_1
    return-object v2
.end method

.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lcom/amap/location/h/a/c;->a:I

    .line 116
    iput-boolean v0, p0, Lcom/amap/location/h/a/c;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z
    .locals 10

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    .line 7
    :try_start_0
    invoke-virtual {p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/amap/location/h/a/c;->c()V

    .line 9
    new-instance v3, Lcom/amap/location/h/a/b;

    iget-boolean v1, p0, Lcom/amap/location/h/a/c;->h:Z

    invoke-direct {v3, v1}, Lcom/amap/location/h/a/b;-><init>(Z)V

    .line 10
    new-instance v4, Lcom/amap/location/h/a/g;

    invoke-direct {v4}, Lcom/amap/location/h/a/g;-><init>()V

    .line 11
    invoke-direct {p0, p1, v3, v4}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 12
    monitor-exit p0

    return v0

    .line 13
    :cond_1
    :try_start_1
    iget-wide v1, v4, Lcom/amap/location/h/a/g;->a:J

    const-wide/16 v5, 0x0

    cmp-long v7, v1, v5

    if-nez v7, :cond_3

    iget-object v1, v4, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_5

    .line 15
    monitor-exit p0

    return v0

    .line 16
    :cond_3
    :goto_0
    :try_start_2
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    iget-object v1, v4, Lcom/amap/location/h/a/g;->b:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    .line 17
    monitor-exit p0

    return v0

    .line 18
    :cond_4
    :try_start_3
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v2, 0x41200000    # 10.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 19
    monitor-exit p0

    return v0

    .line 20
    :cond_5
    :try_start_4
    iget-byte v1, v3, Lcom/amap/location/h/a/b;->b:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    .line 21
    invoke-virtual {p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getMainCell()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 22
    invoke-virtual {p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getMainCellLocation()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 23
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    new-instance v2, Lcom/amap/location/support/bean/AmapFps;

    invoke-direct {v2}, Lcom/amap/location/support/bean/AmapFps;-><init>()V

    .line 25
    iget-object v5, p1, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    iput-object v5, v2, Lcom/amap/location/support/bean/AmapFps;->networkOperator:Ljava/lang/String;

    .line 26
    iget-object v5, p1, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    iput-object v5, v2, Lcom/amap/location/support/bean/AmapFps;->mainCell:Lcom/amap/location/support/bean/cell/AmapCell;

    .line 27
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    iput-object p1, v2, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    .line 28
    invoke-virtual {p0, v2, v1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Z

    :cond_6
    const/4 p1, 0x1

    .line 29
    invoke-direct {p0, v3, v4, p1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;Z)Lcom/amap/location/h/a/e;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 30
    invoke-virtual {v1}, Lcom/amap/location/h/a/e;->b()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_a

    .line 31
    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 32
    invoke-virtual {p2, v2}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v5

    double-to-int v2, v5

    .line 33
    iget-byte v5, v3, Lcom/amap/location/h/a/b;->b:B
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const/16 v5, 0xc8

    goto :goto_2

    :cond_8
    const/16 v5, 0x226

    :goto_2
    if-ge v2, v5, :cond_9

    .line 34
    monitor-exit p0

    return v0

    :cond_9
    :try_start_5
    const-string v5, "loccache"

    .line 35
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remove cached, distance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v3, v1}, Lcom/amap/location/h/a/c;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/e;)V

    .line 37
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getServerTraceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "loccache"

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add cache key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    new-instance v1, Lcom/amap/location/h/a/e;

    invoke-direct {v1}, Lcom/amap/location/h/a/e;-><init>()V

    .line 40
    invoke-virtual {v1, p2}, Lcom/amap/location/h/a/e;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V

    .line 41
    invoke-virtual {v1, v4}, Lcom/amap/location/h/a/e;->a(Lcom/amap/location/h/a/g;)V

    .line 42
    invoke-virtual {v1, v3}, Lcom/amap/location/h/a/e;->a(Lcom/amap/location/h/a/b;)V

    .line 43
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v5

    .line 44
    invoke-virtual {v1, v5, v6}, Lcom/amap/location/h/a/e;->b(J)V

    .line 45
    invoke-virtual {v1, v5, v6}, Lcom/amap/location/h/a/e;->c(J)V

    .line 46
    iget-object v2, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_b

    .line 47
    invoke-interface {v2, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3

    .line 48
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v2, p0, Lcom/amap/location/h/a/c;->d:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :goto_3
    iget-object v2, p0, Lcom/amap/location/h/a/c;->e:Lcom/amap/location/h/a/d;

    invoke-virtual {v1}, Lcom/amap/location/h/a/e;->e()J

    move-result-wide v6

    .line 52
    invoke-virtual {v1}, Lcom/amap/location/h/a/e;->f()J

    move-result-wide v8

    move-object v5, p2

    .line 53
    invoke-virtual/range {v2 .. v9}, Lcom/amap/location/h/a/d;->a(Lcom/amap/location/h/a/b;Lcom/amap/location/h/a/g;Lcom/amap/location/support/bean/location/AmapLocationNetwork;JJ)J

    move-result-wide v2

    .line 54
    invoke-virtual {v1, v2, v3}, Lcom/amap/location/h/a/e;->a(J)V

    .line 55
    iget p2, p0, Lcom/amap/location/h/a/c;->a:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/amap/location/h/a/c;->a:I

    .line 56
    sget p2, Lcom/amap/location/h/a/c;->b:I

    invoke-direct {p0, p2}, Lcom/amap/location/h/a/c;->a(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 57
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 58
    :cond_c
    :goto_4
    monitor-exit p0

    return v0
.end method

.class public Lcom/amap/location/sdk/f/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/text/SimpleDateFormat;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:D

.field private e:D

.field private f:J

.field private g:Ljava/lang/String;

.field private h:D

.field private i:D

.field private j:J

.field private k:I

.field private final l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/location/sdk/f/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private m:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 6
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 8
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 13
    iput-object v0, p0, Lcom/amap/location/sdk/f/a/b;->a:Ljava/text/SimpleDateFormat;

    .line 15
    const/4 v0, -0x1

    .line 16
    iput v0, p0, Lcom/amap/location/sdk/f/a/b;->k:I

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/amap/location/sdk/f/a/b;->l:Ljava/util/List;

    .line 25
    return-void
.end method

.method private a(D)I
    .locals 2

    .line 1
    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private j(Ljava/lang/String;)J
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/amap/location/sdk/f/a/b;->a:Ljava/text/SimpleDateFormat;

    .line 9
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 18
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-wide v0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 24
    :cond_0
    const-wide/16 v0, 0x0

    .line 26
    return-wide v0
.end method

.method private k(Ljava/lang/String;)D
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 10
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-wide v0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 16
    :cond_0
    const-wide/16 v0, 0x0

    .line 18
    return-wide v0
.end method


# virtual methods
.method public a(ZDD)Ljava/lang/String;
    .locals 23

    move-object/from16 v1, p0

    if-eqz p1, :cond_0

    const/16 v0, 0x3e8

    goto :goto_0

    :cond_0
    const/16 v0, 0x7d0

    :goto_0
    const/4 v2, 0x0

    .line 16
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "out"

    const-string v5, "gate_type"

    const-string v6, "weight"

    const-string v7, "lat"

    const-string v8, "lng"

    const-string v9, "id"

    if-eqz p1, :cond_4

    .line 17
    :try_start_1
    iget-object v10, v1, Lcom/amap/location/sdk/f/a/b;->l:Ljava/util/List;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/amap/location/sdk/f/a/d;

    .line 18
    iget-object v11, v1, Lcom/amap/location/sdk/f/a/b;->l:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/amap/location/sdk/f/a/d;

    .line 19
    invoke-virtual {v14}, Lcom/amap/location/sdk/f/a/d;->b()D

    move-result-wide v19

    invoke-virtual {v14}, Lcom/amap/location/sdk/f/a/d;->c()D

    move-result-wide v21

    move-wide/from16 v15, p2

    move-wide/from16 v17, p4

    invoke-static/range {v15 .. v22}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide v15

    cmpg-double v17, v15, v12

    if-gez v17, :cond_1

    move-object v10, v14

    move-wide v12, v15

    goto :goto_1

    .line 20
    :cond_2
    sget v11, Lcom/amap/location/sdk/f/a/a;->d:I

    int-to-double v14, v11

    cmpl-double v11, v12, v14

    if-lez v11, :cond_3

    return-object v2

    .line 21
    :cond_3
    invoke-virtual {v10}, Lcom/amap/location/sdk/f/a/d;->a()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    invoke-virtual {v10}, Lcom/amap/location/sdk/f/a/d;->c()D

    move-result-wide v11

    invoke-direct {v1, v11, v12}, Lcom/amap/location/sdk/f/a/b;->a(D)I

    move-result v11

    invoke-virtual {v3, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {v10}, Lcom/amap/location/sdk/f/a/d;->b()D

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Lcom/amap/location/sdk/f/a/b;->a(D)I

    move-result v10

    invoke-virtual {v3, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 26
    :cond_4
    iget-object v10, v1, Lcom/amap/location/sdk/f/a/b;->g:Ljava/lang/String;

    invoke-virtual {v3, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-wide v10, v1, Lcom/amap/location/sdk/f/a/b;->i:D

    invoke-direct {v1, v10, v11}, Lcom/amap/location/sdk/f/a/b;->a(D)I

    move-result v10

    invoke-virtual {v3, v8, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 28
    iget-wide v10, v1, Lcom/amap/location/sdk/f/a/b;->h:D

    invoke-direct {v1, v10, v11}, Lcom/amap/location/sdk/f/a/b;->a(D)I

    move-result v10

    invoke-virtual {v3, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 30
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    :goto_2
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 32
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 33
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 34
    iget-object v5, v1, Lcom/amap/location/sdk/f/a/b;->c:Ljava/lang/String;

    invoke-virtual {v3, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    iget-wide v9, v1, Lcom/amap/location/sdk/f/a/b;->d:D

    invoke-direct {v1, v9, v10}, Lcom/amap/location/sdk/f/a/b;->a(D)I

    move-result v5

    invoke-virtual {v3, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    iget-wide v8, v1, Lcom/amap/location/sdk/f/a/b;->e:D

    invoke-direct {v1, v8, v9}, Lcom/amap/location/sdk/f/a/b;->a(D)I

    move-result v5

    invoke-virtual {v3, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v3, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "type"

    const-string v6, "150904"

    .line 38
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "subParks"

    .line 39
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 41
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 42
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "confidence"

    .line 43
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "parkList"

    .line 44
    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 46
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    return-object v2
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/amap/location/sdk/f/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/b;->k(Ljava/lang/String;)D

    move-result-wide v0

    .line 4
    invoke-direct {p0, p2}, Lcom/amap/location/sdk/f/a/b;->k(Ljava/lang/String;)D

    move-result-wide v2

    const/4 p1, 0x1

    new-array p2, p1, [D

    new-array p1, p1, [D

    move-object v4, p2

    move-object v5, p1

    .line 5
    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/amap/location/support/util/CoordUtils;->Gcj02Towgx84(DD[D[D)Z

    const/4 v0, 0x0

    aget-wide v1, p2, v0

    .line 6
    iput-wide v1, p0, Lcom/amap/location/sdk/f/a/b;->e:D

    aget-wide v0, p1, v0

    .line 7
    iput-wide v0, p0, Lcom/amap/location/sdk/f/a/b;->d:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/amap/location/sdk/f/a/b;->m:Z

    return-void
.end method

.method public a()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/amap/location/sdk/f/a/b;->m:Z

    return v0
.end method

.method public a(JDD)Z
    .locals 14

    move-object v0, p0

    .line 9
    invoke-virtual {p0}, Lcom/amap/location/sdk/f/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lcom/amap/location/sdk/f/a/b;->f:J

    sub-long v1, p1, v1

    sget-wide v3, Lcom/amap/location/sdk/f/a/a;->a:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    iget-wide v10, v0, Lcom/amap/location/sdk/f/a/b;->e:D

    iget-wide v12, v0, Lcom/amap/location/sdk/f/a/b;->d:D

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    .line 10
    invoke-static/range {v6 .. v13}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide v1

    sget v3, Lcom/amap/location/sdk/f/a/a;->c:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    const-string v1, "1"

    iget-object v2, v0, Lcom/amap/location/sdk/f/a/b;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Lcom/amap/location/sdk/f/a/b;->k:I

    sget v2, Lcom/amap/location/sdk/f/a/a;->g:I

    if-lt v1, v2, :cond_2

    :cond_0
    iget-object v1, v0, Lcom/amap/location/sdk/f/a/b;->l:Ljava/util/List;

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/amap/location/sdk/f/a/a;->e:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/amap/location/sdk/f/a/b;->c:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/f/a/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b()Z
    .locals 2

    const-string v0, "2"

    .line 7
    iget-object v1, p0, Lcom/amap/location/sdk/f/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b(JDD)Z
    .locals 14

    move-object v0, p0

    .line 2
    invoke-virtual {p0}, Lcom/amap/location/sdk/f/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lcom/amap/location/sdk/f/a/b;->j:J

    sub-long v1, p1, v1

    sget-wide v3, Lcom/amap/location/sdk/f/a/a;->b:J

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    cmp-long v5, v1, v3

    if-gez v5, :cond_2

    iget-wide v10, v0, Lcom/amap/location/sdk/f/a/b;->e:D

    iget-wide v12, v0, Lcom/amap/location/sdk/f/a/b;->d:D

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    .line 3
    invoke-static/range {v6 .. v13}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide v1

    sget v3, Lcom/amap/location/sdk/f/a/a;->c:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    iget-wide v10, v0, Lcom/amap/location/sdk/f/a/b;->h:D

    iget-wide v12, v0, Lcom/amap/location/sdk/f/a/b;->i:D

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    .line 4
    invoke-static/range {v6 .. v13}, Lcom/amap/location/support/util/GeoUtils;->distance(DDDD)D

    move-result-wide v1

    sget v3, Lcom/amap/location/sdk/f/a/a;->d:I

    int-to-double v3, v3

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2

    sget-boolean v1, Lcom/amap/location/sdk/f/a/a;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/amap/location/sdk/f/a/b;->c:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v1, Lcom/amap/location/sdk/f/a/a;->f:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/amap/location/sdk/f/a/b;->g:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/b;->j(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/location/sdk/f/a/b;->f:J

    return-void
.end method

.method public c()Z
    .locals 2

    const-string v0, "1"

    .line 2
    iget-object v1, p0, Lcom/amap/location/sdk/f/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3"

    iget-object v1, p0, Lcom/amap/location/sdk/f/a/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/f/a/b;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/b;->k(Ljava/lang/String;)D

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/amap/location/sdk/f/a/b;->h:D

    .line 7
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/b;->k(Ljava/lang/String;)D

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/amap/location/sdk/f/a/b;->i:D

    .line 7
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a/b;->j(Ljava/lang/String;)J

    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/amap/location/sdk/f/a/b;->j:J

    .line 7
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/amap/location/sdk/f/a/b;->k:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 18
    :cond_0
    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lorg/json/JSONObject;

    .line 9
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 34
    new-instance v2, Lcom/amap/location/sdk/f/a/d;

    .line 36
    invoke-direct {v2}, Lcom/amap/location/sdk/f/a/d;-><init>()V

    .line 39
    const-string v3, "poi"

    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/amap/location/sdk/f/a/d;->a(Ljava/lang/String;)V

    .line 48
    const-string v3, "lat"

    .line 50
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v2, v3}, Lcom/amap/location/sdk/f/a/d;->b(Ljava/lang/String;)V

    .line 57
    const-string v3, "lon"

    .line 59
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v2, v1}, Lcom/amap/location/sdk/f/a/d;->c(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Lcom/amap/location/sdk/f/a/d;->d()Z

    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/amap/location/sdk/f/a/b;->l:Ljava/util/List;

    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 82
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "VivoGarageInfo{mEventType=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/amap/location/sdk/f/a/b;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", mParkCode=\'"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/amap/location/sdk/f/a/b;->c:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", mParkLon="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v2, p0, Lcom/amap/location/sdk/f/a/b;->d:D

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ", mParkLat="

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-wide v2, p0, Lcom/amap/location/sdk/f/a/b;->e:D

    .line 51
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 54
    const-string v2, ", mInTime="

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    iget-wide v2, p0, Lcom/amap/location/sdk/f/a/b;->f:J

    .line 61
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", mLanePOI=\'"

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v2, p0, Lcom/amap/location/sdk/f/a/b;->g:Ljava/lang/String;

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    const-string v1, ", mLaneLat="

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-wide v1, p0, Lcom/amap/location/sdk/f/a/b;->h:D

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 87
    const-string v1, ", mLaneLon="

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    iget-wide v1, p0, Lcom/amap/location/sdk/f/a/b;->i:D

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 97
    const-string v1, ", mOutTime="

    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget-wide v1, p0, Lcom/amap/location/sdk/f/a/b;->j:J

    .line 104
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    const-string v1, ", mInParkAcc="

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v1, p0, Lcom/amap/location/sdk/f/a/b;->k:I

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const/16 v1, 0x7d

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    return-object v0
.end method

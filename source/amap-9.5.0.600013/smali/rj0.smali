.class public abstract Lrj0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrj0$b;
    }
.end annotation


# static fields
.field public static a:Lrj0$b;

.field public static b:Ljava/util/List;

.field public static c:Ljava/util/List;

.field public static d:Lf80$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lrj0$b;->a:Lrj0$b;

    .line 3
    sput-object v0, Lrj0;->a:Lrj0$b;

    .line 5
    new-instance v0, Lrj0$a;

    .line 7
    invoke-direct {v0}, Lrj0$a;-><init>()V

    .line 10
    sput-object v0, Lrj0;->d:Lf80$a;

    .line 12
    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lrj0;->b:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public static synthetic b(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    sput-object p0, Lrj0;->b:Ljava/util/List;

    .line 3
    return-object p0
.end method

.method public static synthetic c(Lrj0$b;)Lrj0$b;
    .locals 0

    .line 1
    sput-object p0, Lrj0;->a:Lrj0$b;

    .line 3
    return-object p0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return v0
.end method

.method public static e(Ljava/lang/String;)D
    .locals 2

    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 3
    if-nez p0, :cond_0

    .line 5
    return-wide v0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 9
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :catch_0
    return-wide v0
.end method

.method public static f(Ljava/lang/String;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lrj0;->k(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static g(Ljava/lang/String;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lrj0;->k(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static h(Ljava/lang/String;)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lrj0;->k(Ljava/lang/String;)I

    .line 6
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    return p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 14

    move-object v0, p0

    move-object/from16 v1, p11

    .line 1
    sget-object v2, Lrj0;->a:Lrj0$b;

    sget-object v3, Lrj0$b;->b:Lrj0$b;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    return-object v4

    .line 2
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    if-eqz v0, :cond_1

    const-string v2, "null"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 3
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 4
    :cond_2
    invoke-static {}, La7;->c()La7;

    move-result-object v5

    invoke-virtual {v5}, La7;->d()Z

    move-result v5

    const-wide/16 v6, 0x64

    if-nez v5, :cond_3

    .line 5
    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 6
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v2

    const-wide/16 v7, 0x2710

    cmp-long v9, v5, v7

    if-ltz v9, :cond_2

    return-object v4

    .line 7
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;

    invoke-direct {v3}, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;-><init>()V

    .line 9
    iput-object v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lrj0;->e(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLat:D

    .line 11
    invoke-static/range {p2 .. p2}, Lrj0;->e(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->centerLon:D

    .line 12
    invoke-static/range {p4 .. p4}, Lrj0;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->maxCount:I

    move-object/from16 v0, p3

    .line 13
    iput-object v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->city:Ljava/lang/String;

    .line 14
    invoke-static/range {p5 .. p5}, Lrj0;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->searchType:I

    const/16 v0, 0x13ee

    .line 15
    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestId:I

    .line 16
    invoke-static/range {p7 .. p7}, Lrj0;->g(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needClassify:I

    .line 17
    invoke-static/range {p8 .. p8}, Lrj0;->h(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needSort:I

    .line 18
    invoke-static/range {p9 .. p9}, Lrj0;->f(Ljava/lang/String;)I

    move-result v0

    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->needChildPoi:I

    move-object/from16 v0, p10

    .line 19
    iput-object v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->classify:Ljava/lang/String;

    .line 20
    iput-object v1, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sort:Ljava/lang/String;

    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v5, 0x0

    if-eqz v1, :cond_4

    .line 22
    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    goto :goto_1

    .line 23
    :cond_4
    iput v5, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->sortOrder:I

    .line 24
    :goto_1
    iput v0, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->requestType:I

    .line 25
    sget-object v1, Lrj0$b;->b:Lrj0$b;

    sput-object v1, Lrj0;->a:Lrj0$b;

    new-array v0, v0, [Ljava/lang/Object;

    .line 26
    iget-object v1, v3, Lcom/autonavi/amapauto/jni/protocol/data/SearchData;->keyword:Ljava/lang/String;

    aput-object v1, v0, v5

    const-string v1, "VRSearchUtils"

    const-string v8, "startSearch,mSearchData.keyword={?}"

    invoke-static {v1, v8, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lf80;->c()Lf80;

    move-result-object v0

    sget-object v8, Lrj0;->d:Lf80$a;

    invoke-virtual {v0, v3, v8}, Lf80;->d(Lcom/autonavi/amapauto/jni/protocol/data/SearchData;Lf80$a;)V

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 29
    :cond_5
    sget-object v0, Lrj0;->a:Lrj0$b;

    sget-object v3, Lrj0$b;->b:Lrj0$b;

    if-ne v0, v3, :cond_7

    .line 30
    :try_start_1
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v3, v0

    const-string v0, "Exception={?}"

    new-array v10, v5, [Ljava/lang/Object;

    .line 31
    invoke-static {v1, v0, v3, v10}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 32
    :goto_2
    sget-object v0, Lrj0;->a:Lrj0$b;

    sget-object v3, Lrj0$b;->b:Lrj0$b;

    if-eq v0, v3, :cond_6

    goto :goto_3

    .line 33
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/16 v12, 0x7530

    cmp-long v0, v10, v12

    if-ltz v0, :cond_5

    .line 34
    sget-object v0, Lrj0$b;->a:Lrj0$b;

    sput-object v0, Lrj0;->a:Lrj0$b;

    return-object v4

    .line 35
    :cond_7
    :goto_3
    sget-object v0, Lrj0;->b:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 36
    sget-object v0, Lrj0;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;

    .line 37
    new-instance v3, Lcom/autonavi/iflytek/bean/Poi;

    invoke-direct {v3}, Lcom/autonavi/iflytek/bean/Poi;-><init>()V

    .line 38
    iget-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->R(Ljava/lang/String;)V

    .line 39
    iget-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->address:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->J(Ljava/lang/String;)V

    .line 40
    iget-wide v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->latitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->O(Ljava/lang/String;)V

    .line 41
    iget-wide v6, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->longitude:D

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->P(Ljava/lang/String;)V

    .line 42
    iget v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->L(Ljava/lang/String;)V

    .line 43
    iget v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->distance:I

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->N(I)V

    .line 44
    iget-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->tel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->b0(Ljava/lang/String;)V

    .line 45
    iget-object v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poiid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->W(Ljava/lang/String;)V

    .line 46
    iget v4, v1, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->poitype:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/autonavi/iflytek/bean/Poi;->X(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1}, Lcom/autonavi/amapauto/jni/protocol/data/PoiData;->getEnteryList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 49
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    iget-wide v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->longitude:D

    .line 50
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;

    iget-wide v8, v1, Lcom/autonavi/amapauto/jni/protocol/data/EnteryData;->latitude:D

    goto :goto_5

    :cond_8
    const-wide/16 v6, 0x0

    move-wide v8, v6

    .line 51
    :goto_5
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/autonavi/iflytek/bean/Poi;->T(Ljava/lang/String;)V

    .line 52
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/autonavi/iflytek/bean/Poi;->S(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x14

    if-ge v1, v4, :cond_9

    .line 54
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_9
    return-object v2

    :cond_a
    :goto_6
    return-object v4
.end method

.method public static j(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :catch_0
    return v0
.end method

.method public static k(Ljava/lang/String;)I
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return p0
.end method

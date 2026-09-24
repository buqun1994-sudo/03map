.class public Lcom/amap/location/e/a/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/support/bean/location/AmapLocation;

.field private b:Z

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/e/a/f;->b:Z

    .line 7
    iput v0, p0, Lcom/amap/location/e/a/f;->c:I

    .line 9
    return-void
.end method

.method private a(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;",
            "Lcom/amap/location/support/bean/gnss/AmapGnssClock;",
            ")I"
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, -0x1

    if-lt v0, v1, :cond_5

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto :goto_1

    .line 45
    :cond_0
    invoke-virtual {p2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hasFullBiasNanos()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/amap/location/support/bean/gnss/AmapGnssClock;->hasBiasNanos()Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 47
    iget v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->state:I

    and-int/lit8 v2, v1, 0x8

    if-gtz v2, :cond_3

    and-int/lit16 v1, v1, 0x80

    if-gtz v1, :cond_3

    goto :goto_0

    .line 48
    :cond_3
    iget-wide v1, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->cn0DbHz:D

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    iget-wide v0, v0, Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;->receivedSvTimeUncertaintyNanos:J

    long-to-double v0, v0

    const-wide v2, 0x41b1de784a000000L    # 2.99792458E8

    mul-double v0, v0, v2

    const-wide v2, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v0, v0, v2

    const-wide/high16 v2, 0x4049000000000000L    # 50.0

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_4
    return p2

    :cond_5
    :goto_1
    return v2
.end method

.method private a()V
    .locals 10

    const-string v0, "gnssalgo"

    .line 36
    invoke-static {}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->getStatusListener()Lcom/amap/location/support/fusion/IStatusListener;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 37
    :cond_0
    :try_start_0
    new-instance v1, Lcom/amap/location/support/bean/gnss/AmapMergeSoftRgm;

    sget-object v2, Lcom/amap/location/e/a/b/c;->b:Lcom/amap/location/support/security/gnssrtk/RtkSolM;

    invoke-direct {v1, v2}, Lcom/amap/location/support/bean/gnss/AmapMergeSoftRgm;-><init>(Lcom/amap/location/support/security/gnssrtk/RtkSolM;)V

    .line 38
    iget-boolean v2, v1, Lcom/amap/location/support/bean/gnss/AmapMergeSoftRgm;->valid:Z

    if-eqz v2, :cond_2

    iget-short v2, v1, Lcom/amap/location/support/bean/gnss/AmapMergeSoftRgm;->satNum:S

    if-lez v2, :cond_2

    .line 39
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->objToBytes(Ljava/lang/Object;)[B

    move-result-object v9

    if-eqz v9, :cond_2

    .line 40
    array-length v1, v9

    const v2, 0x7f000

    if-ge v1, v2, :cond_1

    .line 41
    invoke-static {}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->getStatusListener()Lcom/amap/location/support/fusion/IStatusListener;

    move-result-object v3

    const-string v4, "merge_soft_rgm"

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    invoke-interface/range {v3 .. v9}, Lcom/amap/location/support/fusion/IStatusListener;->onDataReport(Ljava/lang/String;JJ[B)V

    goto :goto_0

    .line 42
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataReport transfer too much data, size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 43
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/e/a/b/b;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/location/e/a/b/b;

    .line 50
    iget-object v0, p1, Lcom/amap/location/e/a/b/b;->b:Ljava/util/List;

    iget-object p1, p1, Lcom/amap/location/e/a/b/b;->a:Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    invoke-direct {p0, v0, p1}, Lcom/amap/location/e/a/f;->a(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)I

    move-result p1

    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 51
    iget p1, p0, Lcom/amap/location/e/a/f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amap/location/e/a/f;->c:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 52
    iput p1, p0, Lcom/amap/location/e/a/f;->c:I

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/amap/location/e/a/a;)V
    .locals 17

    move-object/from16 v1, p0

    .line 1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v0

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v2

    .line 3
    iget-object v0, v1, Lcom/amap/location/e/a/f;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    if-eqz v0, :cond_1

    iget-wide v4, v1, Lcom/amap/location/e/a/f;->d:J

    sub-long v4, v2, v4

    long-to-float v0, v4

    sget v4, Lcom/amap/location/e/a/d;->r:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iput-wide v2, v1, Lcom/amap/location/e/a/f;->d:J

    .line 5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v4, "request_agnss_soft_count"

    .line 7
    invoke-static {v4}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->l()Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v11

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->m()Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object v12

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->k()Z

    move-result v10

    iput-boolean v10, v1, Lcom/amap/location/e/a/f;->b:Z

    .line 11
    sget v4, Lcom/amap/location/e/a/d;->s:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    .line 12
    invoke-direct {v1, v0}, Lcom/amap/location/e/a/f;->a(Ljava/util/List;)V

    .line 13
    iget v4, v1, Lcom/amap/location/e/a/f;->c:I

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 14
    sget v4, Lcom/amap/location/e/a/d;->s:I

    iget-wide v5, v1, Lcom/amap/location/e/a/f;->d:J

    iget-boolean v10, v1, Lcom/amap/location/e/a/f;->b:Z

    move-object v7, v0

    move-object v8, v11

    move-object v9, v12

    invoke-static/range {v4 .. v10}, Lcom/amap/location/e/a/b/c;->a(IJLjava/util/List;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;Z)Lcom/amap/location/e/a/b/a;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    .line 15
    iget-wide v5, v1, Lcom/amap/location/e/a/f;->d:J

    iget-boolean v10, v1, Lcom/amap/location/e/a/f;->b:Z

    move-object v7, v0

    move-object v8, v11

    move-object v9, v12

    invoke-static/range {v4 .. v10}, Lcom/amap/location/e/a/b/c;->a(IJLjava/util/List;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;Z)Lcom/amap/location/e/a/b/a;

    move-result-object v4

    goto :goto_0

    .line 16
    :cond_4
    iget-wide v5, v1, Lcom/amap/location/e/a/f;->d:J

    move-object v7, v0

    move-object v8, v11

    move-object v9, v12

    invoke-static/range {v4 .. v10}, Lcom/amap/location/e/a/b/c;->a(IJLjava/util/List;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;Z)Lcom/amap/location/e/a/b/a;

    move-result-object v4

    :goto_0
    move-object v13, v4

    if-nez v13, :cond_5

    return-void

    .line 17
    :cond_5
    iget-object v4, v13, Lcom/amap/location/e/a/b/a;->b:[I

    iget-boolean v5, v1, Lcom/amap/location/e/a/f;->b:Z

    invoke-static {v4, v5}, Lcom/amap/location/e/a/b/c;->a([IZ)V

    .line 18
    iget-object v4, v13, Lcom/amap/location/e/a/b/a;->b:[I

    invoke-static {v4}, Lcom/amap/location/e/a/b/c;->b([I)Z

    move-result v4

    .line 19
    sget v5, Lcom/amap/location/e/a/d;->t:I

    const/4 v14, 0x1

    if-nez v5, :cond_6

    if-eqz v4, :cond_b

    :cond_6
    const/4 v6, 0x2

    if-eq v5, v6, :cond_8

    if-eqz v4, :cond_7

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x0

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    move-object v0, v5

    .line 20
    :goto_3
    iget-boolean v6, v1, Lcom/amap/location/e/a/f;->b:Z

    .line 21
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->n()J

    move-result-wide v8

    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->a()J

    move-result-wide v15

    iget v4, v13, Lcom/amap/location/e/a/b/a;->d:I

    if-ne v4, v14, :cond_a

    goto :goto_4

    :cond_a
    move-object v12, v5

    :goto_4
    move-object v4, v13

    move-object v5, v0

    move-object v7, v11

    move-wide v10, v15

    .line 23
    invoke-static/range {v2 .. v12}, Lcom/amap/location/e/c/c;->a(JLcom/amap/location/e/a/b/a;Ljava/util/List;ZLcom/amap/location/support/bean/location/AmapLocation;JJLcom/amap/location/support/bean/location/AmapLocation;)V

    .line 24
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/e/a/f;->a()V

    .line 25
    iget-object v0, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    if-nez v0, :cond_c

    return-void

    .line 26
    :cond_c
    iget v0, v13, Lcom/amap/location/e/a/b/a;->c:I

    iget-boolean v2, v1, Lcom/amap/location/e/a/f;->b:Z

    invoke-static {v0, v2}, Lcom/amap/location/e/a/b/c;->a(IZ)V

    .line 27
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->e()Lcom/amap/location/e/a/g;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v2, "agnss_soft_count"

    .line 28
    invoke-static {v2}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_d

    .line 30
    iget-object v2, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    const-string v3, "eventUnixTime"

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/location/e/a/b/b;

    iget-wide v4, v4, Lcom/amap/location/e/a/b/b;->c:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    iget-object v2, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    const-string v3, "eventTickTime"

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/e/a/a;->j()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v14

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/location/e/a/b/b;

    iget-wide v4, v4, Lcom/amap/location/e/a/b/b;->d:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    :cond_d
    iget-object v2, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    const-string v3, "softGnssType"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    iget-object v2, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    const/4 v3, -0x1

    invoke-interface {v0, v3, v2}, Lcom/amap/location/e/a/g;->a(ILcom/amap/location/support/bean/location/AmapLocation;)V

    .line 34
    iget-object v0, v13, Lcom/amap/location/e/a/b/a;->a:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v0, v1, Lcom/amap/location/e/a/f;->a:Lcom/amap/location/support/bean/location/AmapLocation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :cond_e
    :goto_5
    return-void

    :catch_0
    move-exception v0

    const-string v2, "gnssalgo"

    .line 35
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_f
    :goto_6
    return-void
.end method

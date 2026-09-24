.class Lcom/amap/location/i/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a(Lcom/amap/location/i/c;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 6

    if-nez p1, :cond_0

    return-object p1

    .line 49
    :cond_0
    iget-byte v0, p0, Lcom/amap/location/i/c;->c:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 50
    iget-object p0, p0, Lcom/amap/location/i/c;->p:Lcom/amap/location/i/c$a;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const/4 v1, 0x2

    new-array v2, v1, [D

    .line 51
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v2, v5

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v3

    const/4 p1, 0x1

    aput-wide v3, v2, p1

    .line 52
    invoke-interface {p0, v2}, Lcom/amap/location/i/c$a;->a([D)[D

    move-result-object p0

    if-eqz p0, :cond_1

    .line 53
    array-length v2, p0

    if-lt v2, v1, :cond_1

    .line 54
    new-instance v0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 55
    aget-wide v1, p0, v5

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 56
    aget-wide v1, p0, p1

    invoke-virtual {v0, v1, v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    :cond_1
    return-object v0

    :cond_2
    return-object p1
.end method

.method public static a(Lcom/amap/location/i/a/a/a;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/i/a/a/a;)V

    return-void
.end method

.method public static a(Lcom/amap/location/i/a/a/c;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/i/a/a/c;)V

    return-void
.end method

.method public static a(Lcom/amap/location/i/c;Lcom/amap/location/i/a/a/a;Lcom/amap/location/i/a/a/c;Lcom/amap/location/support/bean/location/AmapLocationNetwork;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    if-eqz v2, :cond_6

    .line 3
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->isCorrect()Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-boolean v4, v1, Lcom/amap/location/i/a/a/a;->a:Z

    const v5, 0x186c6

    const/16 v6, 0x3c

    const-wide v7, 0x412e848000000000L    # 1000000.0

    const-string v9, ","

    if-eqz v4, :cond_1

    iget v4, v1, Lcom/amap/location/i/a/a/a;->e:I

    if-le v4, v6, :cond_1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v4

    iget v10, v1, Lcom/amap/location/i/a/a/a;->c:I

    invoke-interface {v4, v10}, Lcom/amap/location/support/security/INativeAbility;->cd(I)I

    move-result v4

    int-to-double v10, v4

    div-double/2addr v10, v7

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v4

    iget v12, v1, Lcom/amap/location/i/a/a/a;->b:I

    invoke-interface {v4, v12}, Lcom/amap/location/support/security/INativeAbility;->cd(I)I

    move-result v4

    int-to-double v12, v4

    div-double/2addr v12, v7

    .line 7
    new-instance v4, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 8
    invoke-virtual {v4, v10, v11}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    .line 9
    invoke-virtual {v4, v12, v13}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 10
    iget v10, v1, Lcom/amap/location/i/a/a/a;->d:I

    int-to-float v10, v10

    invoke-virtual {v4, v10}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 11
    invoke-static {v0, v4}, Lcom/amap/location/i/a/c;->a(Lcom/amap/location/i/c;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 12
    invoke-virtual {v2, v4}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v10

    .line 13
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v4

    iget v12, v1, Lcom/amap/location/i/a/a/a;->d:I

    int-to-float v12, v12

    add-float/2addr v4, v12

    float-to-double v12, v4

    cmpl-double v4, v10, v12

    if-lez v4, :cond_1

    .line 14
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/amap/location/i/a/b/c;->b(Lcom/amap/location/i/a/a/a;)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static/range {p3 .. p3}, Lcom/amap/location/i/d/b;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/i/a/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cellCorrect: "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v5, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :catch_0
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v10, p2

    .line 24
    iget-object v10, v10, Lcom/amap/location/i/a/a/c;->b:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/amap/location/i/a/a/b;

    .line 25
    iget-boolean v12, v11, Lcom/amap/location/i/a/a/b;->d:Z

    if-eqz v12, :cond_3

    iget v12, v11, Lcom/amap/location/i/a/a/b;->g:I

    if-le v12, v6, :cond_3

    .line 26
    :try_start_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v12

    iget v13, v11, Lcom/amap/location/i/a/a/b;->f:I

    invoke-interface {v12, v13}, Lcom/amap/location/support/security/INativeAbility;->cd(I)I

    move-result v12

    int-to-double v12, v12

    div-double/2addr v12, v7

    .line 27
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v14

    iget v15, v11, Lcom/amap/location/i/a/a/b;->e:I

    invoke-interface {v14, v15}, Lcom/amap/location/support/security/INativeAbility;->cd(I)I

    move-result v14

    int-to-double v14, v14

    div-double/2addr v14, v7

    .line 28
    new-instance v6, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 29
    invoke-virtual {v6, v12, v13}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    .line 30
    invoke-virtual {v6, v14, v15}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 31
    iget v12, v11, Lcom/amap/location/i/a/a/b;->j:F

    invoke-virtual {v6, v12}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 32
    invoke-static {v0, v6}, Lcom/amap/location/i/a/c;->a(Lcom/amap/location/i/c;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v2, v6}, Lcom/amap/location/support/bean/location/AmapLocation;->distanceTo(Lcom/amap/location/support/bean/location/AmapLocation;)D

    move-result-wide v12

    .line 34
    invoke-virtual/range {p3 .. p3}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v6

    iget v14, v11, Lcom/amap/location/i/a/a/b;->j:F

    add-float/2addr v6, v14

    float-to-double v14, v6

    cmpl-double v6, v12, v14

    if-lez v6, :cond_3

    .line 35
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/i/a/a/b;)V

    .line 36
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    nop

    :cond_3
    :goto_1
    const/16 v6, 0x3c

    goto :goto_0

    .line 38
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-static/range {p3 .. p3}, Lcom/amap/location/i/d/b;->a(Lcom/amap/location/support/bean/location/AmapLocationNetwork;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    .line 42
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    const-string v3, "["

    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/location/i/a/a/b;

    invoke-virtual {v3}, Lcom/amap/location/i/a/a/b;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "],"

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 47
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifiCorrect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    :cond_6
    :goto_3
    return-void
.end method

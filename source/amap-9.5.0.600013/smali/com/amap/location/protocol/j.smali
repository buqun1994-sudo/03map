.class public Lcom/amap/location/protocol/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/amap/location/support/bean/location/AmapLocationNetwork;


# direct methods
.method public constructor <init>(Lcom/amap/location/support/network/HttpResponse;)V
    .locals 3

    .line 1
    const-string v0, "locres"

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    :try_start_0
    iget-object v1, p1, Lcom/amap/location/support/network/HttpResponse;->stream:Ljava/io/InputStream;

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {p1, v1, v2}, Lcom/amap/location/support/network/HttpResponse;->getResponseBodyBytesFromStream(Ljava/io/InputStream;Z)[B

    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_1

    .line 15
    array-length v1, p1

    .line 16
    if-gtz v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->getInstance()Lcom/amap/location/protocol/request/ApsProtocolClientUtil;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1, p1}, Lcom/amap/location/protocol/request/ApsProtocolClientUtil;->decodeApsResponseToBean([B)Ltp0;

    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/amap/location/protocol/j;->a(Ltp0;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/amap/location/protocol/j;->a:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const-string p1, "response is null"

    .line 36
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-void

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    :goto_1
    return-void
.end method

.method private static a(Ltp0;)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 8

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ltp0;->a()Lzp0;

    move-result-object v0

    sget-object v1, Lzp0;->d:Lzp0;

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 3
    invoke-virtual {p0}, Ltp0;->m()Lup0$a;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltp0;->m()Lup0$a;

    move-result-object v3

    invoke-virtual {v3}, Lup0$a;->h()Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setRetype(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get retype is null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "locres"

    invoke-static {v3, v1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Ltp0;->m()Lup0$a;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltp0;->m()Lup0$a;

    move-result-object v3

    invoke-virtual {v3}, Lup0$a;->g()Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setRdesc(Ljava/lang/String;)V

    .line 9
    :cond_3
    invoke-virtual {p0}, Ltp0;->v()Lvw0;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_f

    .line 10
    invoke-virtual {v1}, Lvw0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 11
    invoke-virtual {v1}, Lvw0;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setAdcode(Ljava/lang/String;)V

    .line 12
    :cond_4
    invoke-virtual {v1}, Lvw0;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 13
    invoke-virtual {v1}, Lvw0;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCitycode(Ljava/lang/String;)V

    .line 14
    :cond_5
    invoke-virtual {v1}, Lvw0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 15
    invoke-virtual {v1}, Lvw0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCountry(Ljava/lang/String;)V

    .line 16
    :cond_6
    invoke-virtual {v1}, Lvw0;->m()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 17
    invoke-virtual {v1}, Lvw0;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setProvince(Ljava/lang/String;)V

    .line 18
    :cond_7
    invoke-virtual {v1}, Lvw0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 19
    invoke-virtual {v1}, Lvw0;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCity(Ljava/lang/String;)V

    .line 20
    :cond_8
    invoke-virtual {v1}, Lvw0;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 21
    invoke-virtual {v1}, Lvw0;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setDistrict(Ljava/lang/String;)V

    .line 22
    :cond_9
    invoke-virtual {v1}, Lvw0;->q()Lcx0;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 23
    invoke-virtual {v1}, Lvw0;->q()Lcx0;

    move-result-object v4

    invoke-virtual {v4}, Lcx0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 24
    invoke-virtual {v1}, Lvw0;->q()Lcx0;

    move-result-object v4

    invoke-virtual {v4}, Lcx0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setRoad(Ljava/lang/String;)V

    .line 25
    :cond_a
    invoke-virtual {v1}, Lvw0;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 26
    invoke-virtual {v1}, Lvw0;->w()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setStreet(Ljava/lang/String;)V

    .line 27
    :cond_b
    invoke-virtual {v1}, Lvw0;->u()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 28
    invoke-virtual {v1}, Lvw0;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setNumber(Ljava/lang/String;)V

    .line 29
    :cond_c
    invoke-virtual {v1}, Lvw0;->x()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 30
    invoke-virtual {v1}, Lvw0;->x()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setAoiname(Ljava/lang/String;)V

    .line 31
    :cond_d
    invoke-virtual {v1}, Lvw0;->s()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v1}, Lvw0;->s()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 32
    invoke-virtual {p0}, Ltp0;->v()Lvw0;

    move-result-object v4

    invoke-virtual {v4}, Lvw0;->s()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltq0;

    invoke-virtual {v4}, Ltq0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 33
    invoke-virtual {p0}, Ltp0;->v()Lvw0;

    move-result-object v4

    invoke-virtual {v4}, Lvw0;->s()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltq0;

    invoke-virtual {v4}, Ltq0;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setPoiname(Ljava/lang/String;)V

    .line 34
    :cond_e
    invoke-virtual {v1}, Lvw0;->o()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 35
    invoke-virtual {v1}, Lvw0;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setDesc(Ljava/lang/String;)V

    .line 36
    :cond_f
    invoke-virtual {p0}, Ltp0;->w()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Ltp0;->w()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_10

    const/4 v1, 0x1

    .line 37
    :try_start_0
    invoke-virtual {p0}, Ltp0;->w()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lku0;

    invoke-virtual {v4}, Lku0;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const v4, 0x45733000    # 3891.0f

    .line 38
    invoke-virtual {v0, v4}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 39
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setError(Z)V

    :goto_0
    const-wide v4, -0x3e9ced3020000000L    # -9999999.0

    .line 40
    :try_start_1
    invoke-virtual {p0}, Ltp0;->w()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lku0;

    invoke-virtual {v6}, Lku0;->d()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 41
    :catch_1
    invoke-virtual {v0, v4, v5}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    .line 42
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setError(Z)V

    .line 43
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Ltp0;->w()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lku0;

    invoke-virtual {v3}, Lku0;->a()D

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    .line 44
    :catch_2
    invoke-virtual {v0, v4, v5}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    .line 45
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setError(Z)V

    .line 46
    :cond_10
    :goto_2
    invoke-virtual {p0}, Ltp0;->z()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 47
    invoke-virtual {p0}, Ltp0;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setPoiid(Ljava/lang/String;)V

    .line 48
    :cond_11
    invoke-virtual {p0}, Ltp0;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 49
    :try_start_3
    invoke-virtual {p0}, Ltp0;->x()Ljava/lang/String;

    move-result-object v1

    const-string v3, "F"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 50
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setFloor(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v1

    .line 51
    invoke-static {v1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 52
    :cond_12
    :goto_3
    invoke-virtual {p0}, Ltp0;->t()[B

    move-result-object v1

    if-eqz v1, :cond_13

    .line 53
    invoke-virtual {p0}, Ltp0;->t()[B

    move-result-object v1

    sput-object v1, Lcom/amap/location/protocol/request/a;->a:[B

    .line 54
    :cond_13
    invoke-virtual {p0}, Ltp0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 55
    invoke-virtual {p0}, Ltp0;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setMainCell(Ljava/lang/String;)V

    .line 56
    :cond_14
    invoke-virtual {p0}, Ltp0;->E()[B

    move-result-object v1

    if-eqz v1, :cond_15

    const-string v3, "parkInfo"

    .line 57
    invoke-virtual {v0, v3, v1}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 58
    :cond_15
    invoke-virtual {p0}, Ltp0;->D()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 59
    invoke-static {v1}, Lcom/amap/location/protocol/l;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 61
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setSemantics(Ljava/lang/String;)V

    .line 62
    :cond_16
    invoke-virtual {p0}, Ltp0;->u()Z

    move-result v1

    if-eqz v1, :cond_17

    const-string v1, "0"

    goto :goto_4

    :cond_17
    const-string v1, "1"

    :goto_4
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCoord(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Ltp0;->s()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setServerError(I)V

    .line 64
    invoke-virtual {p0}, Ltp0;->B()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setScenarioConfidence(I)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ltp0;->C()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setResubtype(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Ltp0;->A()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 67
    invoke-virtual {p0}, Ltp0;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setControlType(Ljava/lang/String;)V

    .line 68
    :cond_18
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object p0

    invoke-interface {p0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amap/location/protocol/j;->a:Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    return-object v0
.end method

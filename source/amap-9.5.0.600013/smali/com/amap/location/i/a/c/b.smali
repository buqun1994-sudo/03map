.class public Lcom/amap/location/i/a/c/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/i/a/c/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/location/i/c;

.field private b:Lcom/amap/location/i/a;

.field private c:Lcom/amap/location/i/a/c/a/b;

.field private d:Lcom/amap/location/i/a/b/c;

.field private e:Z

.field private f:Lcom/amap/location/i/a/c/b$a;


# direct methods
.method public constructor <init>(Lcom/amap/location/i/c;Lcom/amap/location/i/a;Lcom/amap/location/i/a/c/b$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    .line 7
    move-result v0

    .line 8
    const/16 v1, 0xf

    .line 10
    if-ne v0, v1, :cond_0

    .line 12
    const-string v0, "https://pre-aloc-offline.aimap.com/LoadOfflineData/repeatData?&sourcefrom=loadrunner_test"

    .line 14
    sput-object v0, Lcom/amap/location/i/d;->b:Ljava/lang/String;

    .line 16
    const-string v0, "aloc-offline.aimap.com/LoadOfflineData/repeatData"

    .line 18
    sput-object v0, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    .line 20
    :cond_0
    iput-object p1, p0, Lcom/amap/location/i/a/c/b;->a:Lcom/amap/location/i/c;

    .line 22
    iput-object p2, p0, Lcom/amap/location/i/a/c/b;->b:Lcom/amap/location/i/a;

    .line 24
    iput-object p3, p0, Lcom/amap/location/i/a/c/b;->f:Lcom/amap/location/i/a/c/b$a;

    .line 26
    new-instance p1, Lcom/amap/location/i/a/c/a/b;

    .line 28
    invoke-direct {p1}, Lcom/amap/location/i/a/c/a/b;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amap/location/i/a/c/b;->c:Lcom/amap/location/i/a/c/a/b;

    .line 33
    return-void
.end method

.method private a(Lcom/amap/location/i/a/c/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/amap/location/i/a/c/b;->e:Z

    if-nez p1, :cond_0

    return-void

    .line 57
    :cond_0
    iget-byte p1, p1, Lcom/amap/location/i/a/c/c;->a:B

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 58
    invoke-static {}, Lcom/amap/location/i/d/c;->c()V

    goto :goto_0

    .line 59
    :cond_1
    iget-object p1, p0, Lcom/amap/location/i/a/c/b;->f:Lcom/amap/location/i/a/c/b$a;

    if-eqz p1, :cond_2

    .line 60
    invoke-interface {p1}, Lcom/amap/location/i/a/c/b$a;->a()V

    :cond_2
    :goto_0
    return-void
.end method

.method private a(Lcom/amap/location/i/a/c/c;Lcom/amap/location/support/network/HttpResponse;)V
    .locals 6

    const-string v0, "offpro"

    if-nez p2, :cond_0

    const-string p2, "res is null"

    .line 19
    invoke-static {v0, p2}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/amap/location/i/a/c/b;->a(Lcom/amap/location/i/a/c/c;)V

    return-void

    .line 21
    :cond_0
    iget-object v1, p2, Lcom/amap/location/support/network/HttpResponse;->headers:Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v3, "code"

    .line 22
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 24
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "res code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-nez p1, :cond_2

    .line 25
    iput-boolean v3, p0, Lcom/amap/location/i/a/c/b;->e:Z

    const-string p1, "req is null"

    .line 26
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 27
    :cond_2
    iget-byte v0, p1, Lcom/amap/location/i/a/c/c;->a:B

    if-ne v0, v2, :cond_3

    const-string v0, "279"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    iget-object v4, p1, Lcom/amap/location/i/a/c/c;->c:Ljava/util/List;

    iget-object v5, p1, Lcom/amap/location/i/a/c/c;->d:Ljava/util/List;

    invoke-virtual {v0, v4, v5}, Lcom/amap/location/i/a/b/c;->a(Ljava/util/List;Ljava/util/List;)V

    :cond_3
    const-string v0, "260"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    instance-of v0, p2, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    if-eqz v0, :cond_4

    .line 31
    check-cast p2, Lcom/amap/location/support/network/gateway/LocalHttpResponse;

    iget v0, p2, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->reason:I

    .line 32
    iget-wide v1, p2, Lcom/amap/location/support/network/gateway/LocalHttpResponse;->arg1:J

    const-wide/32 v3, 0x36ee80

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    add-long/2addr v1, v3

    if-lez v0, :cond_4

    .line 33
    iget-object p1, p0, Lcom/amap/location/i/a/c/b;->f:Lcom/amap/location/i/a/c/b$a;

    invoke-interface {p1, v1, v2}, Lcom/amap/location/i/a/c/b$a;->a(J)V

    return-void

    .line 34
    :cond_4
    invoke-direct {p0, p1}, Lcom/amap/location/i/a/c/b;->a(Lcom/amap/location/i/a/c/c;)V

    return-void

    .line 35
    :cond_5
    iget-byte v0, p1, Lcom/amap/location/i/a/c/c;->a:B

    if-ne v0, v2, :cond_6

    .line 36
    invoke-static {}, Lcom/amap/location/i/d/c;->c()V

    .line 37
    iget v0, p1, Lcom/amap/location/i/a/c/c;->b:I

    if-ne v0, v2, :cond_6

    .line 38
    invoke-static {}, Lcom/amap/location/i/d/c;->d()V

    .line 39
    :cond_6
    iget-byte v0, p1, Lcom/amap/location/i/a/c/c;->a:B

    if-nez v0, :cond_7

    .line 40
    invoke-static {}, Lcom/amap/location/i/d/c;->b()V

    .line 41
    :cond_7
    invoke-direct {p0, p1, p2}, Lcom/amap/location/i/a/c/b;->b(Lcom/amap/location/i/a/c/c;Lcom/amap/location/support/network/HttpResponse;)Z

    move-result p2

    .line 42
    iput-boolean v3, p0, Lcom/amap/location/i/a/c/b;->e:Z

    if-nez p2, :cond_8

    .line 43
    iget-byte p1, p1, Lcom/amap/location/i/a/c/c;->a:B

    if-nez p1, :cond_9

    .line 44
    :cond_8
    iget-object p1, p0, Lcom/amap/location/i/a/c/b;->f:Lcom/amap/location/i/a/c/b$a;

    if-eqz p1, :cond_9

    .line 45
    invoke-interface {p1}, Lcom/amap/location/i/a/c/b$a;->a()V

    :cond_9
    return-void
.end method

.method private b(BI)Lcom/amap/location/i/a/c/c;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v2, p1

    .line 1
    iget-object v1, v0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    if-nez v1, :cond_0

    .line 2
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    move-result-object v1

    iput-object v1, v0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    :cond_0
    const-string v1, "offpro"

    const/4 v15, 0x1

    const/16 v20, 0x0

    if-ne v2, v15, :cond_4

    .line 3
    iget-object v3, v0, Lcom/amap/location/i/a/c/b;->b:Lcom/amap/location/i/a;

    invoke-interface {v3}, Lcom/amap/location/i/a;->d()I

    move-result v3

    .line 4
    iget-object v4, v0, Lcom/amap/location/i/a/c/b;->b:Lcom/amap/location/i/a;

    invoke-interface {v4}, Lcom/amap/location/i/a;->h()I

    move-result v4

    .line 5
    iget-object v5, v0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    invoke-virtual {v5, v3, v4}, Lcom/amap/location/i/a/b/c;->b(II)Ljava/util/List;

    move-result-object v5

    .line 6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v4, :cond_1

    sub-int v7, v4, v6

    goto :goto_0

    :cond_1
    mul-int/lit8 v7, v4, 0x2

    .line 7
    div-int/lit8 v7, v7, 0xa

    .line 8
    :goto_0
    iget-object v8, v0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    invoke-virtual {v8, v3, v7}, Lcom/amap/location/i/a/b/c;->a(II)Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    if-ne v6, v4, :cond_2

    const/4 v6, 0x0

    sub-int/2addr v4, v7

    .line 10
    invoke-interface {v5, v6, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    .line 11
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v4, v6

    const/4 v6, 0x5

    if-ge v4, v6, :cond_3

    return-object v20

    .line 12
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dw size:("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object v12, v3

    move-object v14, v5

    goto :goto_1

    :cond_4
    const-string v3, "start first dw"

    .line 13
    invoke-static {v1, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v12, v20

    move-object v14, v12

    .line 14
    :goto_1
    new-instance v13, Lcom/amap/location/i/a/c/c;

    invoke-direct {v13, v2, v14, v12}, Lcom/amap/location/i/a/c/c;-><init>(BLjava/util/List;Ljava/util/List;)V

    move/from16 v1, p2

    .line 15
    iput v1, v13, Lcom/amap/location/i/a/c/c;->b:I

    .line 16
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    .line 17
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "Accept-Encoding"

    const-string v4, "gzip"

    .line 18
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "gzipped"

    const-string v4, "1"

    .line 19
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "v"

    const-string v4, "1.5"

    .line 20
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "et"

    const-string v4, "110"

    .line 21
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iput-object v1, v13, Lcom/amap/location/i/a/c/c;->e:Ljava/util/HashMap;

    .line 23
    iget-object v1, v0, Lcom/amap/location/i/a/c/b;->c:Lcom/amap/location/i/a/c/a/b;

    const-string v3, "1.5"

    .line 24
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v4

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductVersion()Ljava/lang/String;

    move-result-object v6

    .line 25
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    move-result v7

    int-to-byte v7, v7

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDiu()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getImsi()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getTid()Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getAdiu()Ljava/lang/String;

    move-result-object v11

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMacLong()J

    move-result-wide v16

    move-object/from16 v19, v12

    move-object v0, v13

    move-wide/from16 v12, v16

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getManufacturer()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v18, v14

    move-object/from16 v14, v16

    .line 27
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    move-result-object v16

    move-object/from16 p2, v0

    const/4 v0, 0x1

    move-object/from16 v15, v16

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getLicense()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getMapkey()Ljava/lang/String;

    move-result-object v17

    move/from16 v2, p1

    .line 28
    invoke-virtual/range {v1 .. v19}, Lcom/amap/location/i/a/c/a/b;->a(BLjava/lang/String;BLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[B

    move-result-object v1

    if-nez v1, :cond_5

    return-object v20

    .line 29
    :cond_5
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/amap/location/support/security/INativeAbility;->xxt([BI)[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 30
    array-length v1, v0

    if-nez v1, :cond_6

    goto :goto_2

    .line 31
    :cond_6
    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v0

    if-eqz v0, :cond_8

    .line 32
    array-length v1, v0

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    move-object/from16 v1, p2

    .line 33
    iput-object v0, v1, Lcom/amap/location/i/a/c/c;->f:[B

    return-object v1

    :cond_8
    :goto_2
    return-object v20
.end method

.method private b(Lcom/amap/location/i/a/c/c;Lcom/amap/location/support/network/HttpResponse;)Z
    .locals 2

    .line 34
    invoke-virtual {p0, p2}, Lcom/amap/location/i/a/c/b;->a(Lcom/amap/location/support/network/HttpResponse;)Lcom/amap/location/i/a/c/b/c;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    if-nez v0, :cond_1

    .line 36
    invoke-static {}, Lcom/amap/location/i/a/b/c;->a()Lcom/amap/location/i/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    .line 37
    :cond_1
    iget-byte v0, p1, Lcom/amap/location/i/a/c/c;->a:B

    if-nez v0, :cond_2

    .line 38
    iget-object p1, p0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    invoke-virtual {p1, p2}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/i/a/c/b/c;)V

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/amap/location/i/a/c/b;->d:Lcom/amap/location/i/a/b/c;

    iget-object v1, p1, Lcom/amap/location/i/a/c/c;->c:Ljava/util/List;

    iget-object p1, p1, Lcom/amap/location/i/a/c/c;->d:Ljava/util/List;

    invoke-virtual {v0, p2, v1, p1}, Lcom/amap/location/i/a/b/c;->a(Lcom/amap/location/i/a/c/b/c;Ljava/util/List;Ljava/util/List;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lcom/amap/location/support/network/HttpResponse;)Lcom/amap/location/i/a/c/b/c;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 46
    :try_start_0
    iget-object v1, p1, Lcom/amap/location/support/network/HttpResponse;->headers:Ljava/util/Map;

    if-eqz v1, :cond_0

    const-string v2, "Content-Encoding"

    .line 47
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 48
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 49
    :goto_1
    iget-object p1, p1, Lcom/amap/location/support/network/HttpResponse;->body:[B

    if-eqz p1, :cond_3

    .line 50
    array-length v2, p1

    if-lez v2, :cond_3

    const-string v2, "gzip"

    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 52
    invoke-static {p1}, Lcom/amap/location/support/util/GZipUtils;->decompress([B)[B

    move-result-object p1

    .line 53
    :cond_2
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/amap/location/i/a/c/b/c;->a(Ljava/nio/ByteBuffer;)Lcom/amap/location/i/a/c/b/c;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_3
    return-object v0

    :goto_2
    const-string v1, "offpro"

    .line 55
    invoke-static {v1, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(BI)V
    .locals 4

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/location/i/a/c/b;->e:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/location/i/a/c/b;->b(BI)Lcom/amap/location/i/a/c/c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 4
    new-instance p2, Lcom/amap/location/support/network/HttpRequest;

    invoke-direct {p2}, Lcom/amap/location/support/network/HttpRequest;-><init>()V

    .line 5
    sget-boolean v1, Lcom/amap/location/i/c;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "http://aps.testing.amap.com/LoadOfflineData/repeatData"

    .line 6
    iput-object v1, p2, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    goto :goto_0

    .line 7
    :cond_0
    sget-boolean v1, Lcom/amap/location/i/c;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "?"

    if-eqz v1, :cond_1

    .line 8
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/network/HttpRequestHelper;->getCommonParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    goto :goto_0

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amap/location/i/d;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amap/location/support/network/HttpRequestHelper;->getCommonParams()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/amap/location/support/network/HttpRequest;->url:Ljava/lang/String;

    .line 10
    :goto_0
    iget-object v1, p1, Lcom/amap/location/i/a/c/c;->e:Ljava/util/HashMap;

    iput-object v1, p2, Lcom/amap/location/support/network/HttpRequest;->headers:Ljava/util/Map;

    .line 11
    invoke-virtual {p2}, Lcom/amap/location/support/network/HttpRequest;->addProductHeader()V

    .line 12
    iget-object v1, p1, Lcom/amap/location/i/a/c/c;->f:[B

    iput-object v1, p2, Lcom/amap/location/support/network/HttpRequest;->body:[B

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetwork()Lcom/amap/location/support/network/INetwork;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/amap/location/support/network/INetwork;->post(Lcom/amap/location/support/network/HttpRequest;)Lcom/amap/location/support/network/HttpResponse;

    move-result-object p2

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/amap/location/i/a/c/b;->a(Lcom/amap/location/i/a/c/c;Lcom/amap/location/support/network/HttpResponse;)V

    goto :goto_1

    .line 15
    :cond_2
    iput-boolean v0, p0, Lcom/amap/location/i/a/c/b;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    iput-boolean v0, p0, Lcom/amap/location/i/a/c/b;->e:Z

    .line 17
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/amap/location/i/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/i/a/c/b;->a:Lcom/amap/location/i/c;

    return-void
.end method

.method public a()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amap/location/i/a/c/b;->e:Z

    return v0
.end method

.class public Lcom/amap/location/e/a/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile g:Lcom/amap/location/e/a/b/d;

.field private static h:Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Lcom/amap/location/support/security/gnssrtk/LinkInfo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/e/a/b/d;->h:Ljava/lang/Object;

    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x1770

    .line 6
    iput v0, p0, Lcom/amap/location/e/a/b/d;->a:I

    .line 8
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p3, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 35
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static a()Lcom/amap/location/e/a/b/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/location/e/a/b/d;->g:Lcom/amap/location/e/a/b/d;

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/amap/location/e/a/b/d;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/location/e/a/b/d;->g:Lcom/amap/location/e/a/b/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/amap/location/e/a/b/d;

    invoke-direct {v1}, Lcom/amap/location/e/a/b/d;-><init>()V

    sput-object v1, Lcom/amap/location/e/a/b/d;->g:Lcom/amap/location/e/a/b/d;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/amap/location/e/a/b/d;->g:Lcom/amap/location/e/a/b/d;

    return-object v0
.end method

.method private a(II)V
    .locals 8

    .line 11
    invoke-static {}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->getStatusListener()Lcom/amap/location/support/fusion/IStatusListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "requestType"

    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 14
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/location/e/a/b/d;->b:J

    const-string v3, "requestID"

    .line 15
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    int-to-long v1, p1

    .line 16
    iput-wide v1, p0, Lcom/amap/location/e/a/b/d;->c:J

    const-string v1, "linkType"

    .line 17
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "ext"

    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "sdkRequestInfo"

    .line 20
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "Links"

    .line 22
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-static {}, Lcom/amap/location/support/fusion/RemoteProcessHelper;->getStatusListener()Lcom/amap/location/support/fusion/IStatusListener;

    move-result-object v1

    const-string v2, "CT3"

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    invoke-interface/range {v1 .. v7}, Lcom/amap/location/support/fusion/IStatusListener;->onStatusChanged(Ljava/lang/String;JJLorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private b(Ljava/lang/String;)Lcom/amap/location/support/security/gnssrtk/LinkInfo;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, ","

    .line 2
    invoke-static/range {p1 .. p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 3
    :cond_0
    new-instance v3, Lcom/amap/location/support/security/gnssrtk/LinkInfo;

    invoke-direct {v3}, Lcom/amap/location/support/security/gnssrtk/LinkInfo;-><init>()V

    :try_start_0
    const-string v5, "#"

    .line 4
    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 5
    aget-object v7, v5, v6

    const/4 v8, 0x3

    invoke-direct {v1, v7, v0, v8}, Lcom/amap/location/e/a/b/d;->a(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    .line 6
    aget-object v9, v5, v6

    add-int/lit8 v10, v7, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    .line 7
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 8
    array-length v10, v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    const/4 v13, 0x2

    if-ge v12, v10, :cond_4

    aget-object v14, v9, v12

    .line 9
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 10
    aget-object v15, v14, v6

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    if-ne v15, v13, :cond_1

    move-object/from16 v16, v9

    .line 11
    iget-wide v8, v1, Lcom/amap/location/e/a/b/d;->c:J

    const-wide/16 v17, 0x2

    cmp-long v13, v8, v17

    if-eqz v13, :cond_2

    .line 12
    sget v0, Lcom/amap/location/e/a/d;->u:I

    invoke-direct {v1, v15, v0}, Lcom/amap/location/e/a/b/d;->a(II)V

    return-object v4

    :cond_1
    move-object/from16 v16, v9

    :cond_2
    const/4 v8, 0x3

    .line 13
    :goto_1
    array-length v9, v14

    if-ge v8, v9, :cond_3

    .line 14
    aget-object v9, v14, v8

    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 15
    aget-object v13, v9, v11

    move-object/from16 v17, v5

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 16
    aget-object v9, v9, v6

    move/from16 v19, v7

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 17
    new-instance v9, Lcom/amap/location/support/security/gnssrtk/LinkCoor;

    invoke-direct {v9, v6, v7, v4, v5}, Lcom/amap/location/support/security/gnssrtk/LinkCoor;-><init>(DD)V

    .line 18
    iget-object v4, v3, Lcom/amap/location/support/security/gnssrtk/LinkInfo;->linkCoors:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v17

    move/from16 v7, v19

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move-object/from16 v17, v5

    move/from16 v19, v7

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v9, v16

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x3

    goto :goto_0

    :cond_4
    move-object/from16 v17, v5

    move/from16 v19, v7

    const/4 v4, 0x1

    .line 19
    aget-object v4, v17, v4

    move/from16 v5, v19

    invoke-virtual {v4, v11, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 20
    aget-object v0, v0, v13

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/high16 v4, 0x420c0000    # 35.0f

    div-float/2addr v0, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 21
    iput v0, v1, Lcom/amap/location/e/a/b/d;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLinkInfo error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const v2, 0x18781

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "type"

    .line 25
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "id"

    .line 26
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "info"

    .line 27
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const-wide/16 v6, 0x80

    invoke-static {v6, v7, v5}, Lcom/amap/location/support/icecream/IcecreamHostUtils;->sendSignal(J[Ljava/lang/Object;)V

    .line 29
    iget-wide v5, p0, Lcom/amap/location/e/a/b/d;->b:J

    cmp-long v0, v2, v5

    if-ltz v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0, v4}, Lcom/amap/location/e/a/b/d;->b(Ljava/lang/String;)Lcom/amap/location/support/security/gnssrtk/LinkInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/e/a/b/d;->f:Lcom/amap/location/support/security/gnssrtk/LinkInfo;

    if-eqz v0, :cond_2

    .line 31
    iput-object p1, p0, Lcom/amap/location/e/a/b/d;->e:Ljava/lang/String;

    .line 32
    iput-wide v2, p0, Lcom/amap/location/e/a/b/d;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update engine navi link error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gnssalgo_link"

    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public a(J)Z
    .locals 9

    .line 7
    iget-wide v0, p0, Lcom/amap/location/e/a/b/d;->d:J

    sub-long v2, p1, v0

    iget v4, p0, Lcom/amap/location/e/a/b/d;->a:I

    int-to-long v5, v4

    const/4 v7, -0x1

    cmp-long v8, v2, v5

    if-lez v8, :cond_0

    .line 8
    sget p1, Lcom/amap/location/e/a/d;->u:I

    invoke-direct {p0, v7, p1}, Lcom/amap/location/e/a/b/d;->a(II)V

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lcom/amap/location/e/a/b/d;->f:Lcom/amap/location/support/security/gnssrtk/LinkInfo;

    const/4 p1, 0x0

    return p1

    :cond_0
    sub-long/2addr p1, v0

    add-int/lit16 v4, v4, -0x3e8

    int-to-long v0, v4

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    .line 10
    sget p1, Lcom/amap/location/e/a/d;->u:I

    invoke-direct {p0, v7, p1}, Lcom/amap/location/e/a/b/d;->a(II)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public b()Lcom/amap/location/support/security/gnssrtk/LinkInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/b/d;->f:Lcom/amap/location/support/security/gnssrtk/LinkInfo;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/a/b/d;->e:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const-string v0, ""

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/amap/location/e/a/b/d;->e:Ljava/lang/String;

    .line 14
    :goto_0
    return-object v0
.end method

.method public d()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/amap/location/e/a/b/d;->d:J

    .line 3
    iget v2, p0, Lcom/amap/location/e/a/b/d;->a:I

    .line 5
    int-to-long v2, v2

    .line 6
    add-long/2addr v0, v2

    .line 7
    return-wide v0
.end method

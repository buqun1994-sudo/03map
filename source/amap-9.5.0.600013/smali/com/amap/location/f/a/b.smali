.class public Lcom/amap/location/f/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/f/a/b$a;
    }
.end annotation


# instance fields
.field private a:D

.field private b:I

.field private c:Lcom/amap/location/f/a/b$a;

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide v0, 0x412e848000000000L    # 1000000.0

    .line 9
    iput-wide v0, p0, Lcom/amap/location/f/a/b;->a:D

    .line 11
    new-instance v0, Lcom/amap/location/f/a/b$a;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/amap/location/f/a/b$a;-><init>(Lcom/amap/location/f/a/b$1;)V

    .line 17
    iput-object v0, p0, Lcom/amap/location/f/a/b;->c:Lcom/amap/location/f/a/b$a;

    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/amap/location/f/a/b;->d:I

    .line 22
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/amap/location/f/a/b/b;->c()V

    .line 29
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/amap/location/f/a/b/b;->b()V

    .line 36
    return-void
.end method

.method private a(I)I
    .locals 1

    .line 1
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, -0x78

    if-gt p1, v0, :cond_1

    const/16 p1, 0xa

    goto :goto_0

    :cond_1
    const/16 v0, -0x1e

    if-lt p1, v0, :cond_2

    const/16 p1, 0x64

    goto :goto_0

    :cond_2
    add-int/lit16 p1, p1, 0x82

    :goto_0
    return p1
.end method

.method private a(Ljava/util/HashMap;Ljava/util/List;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amap/location/f/a/a/a;",
            ">;I)",
            "Lcom/amap/location/support/bean/location/AmapLocationNetwork;"
        }
    .end annotation

    if-eqz p2, :cond_3

    .line 40
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-gez v1, :cond_0

    goto/16 :goto_1

    .line 41
    :cond_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    const/4 v7, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amap/location/f/a/a/a;

    .line 42
    iget-wide v9, v8, Lcom/amap/location/f/a/a/a;->f:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v10, p1

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget v11, v8, Lcom/amap/location/f/a/a/a;->e:I

    add-int/2addr v9, v11

    add-int/2addr v7, v9

    int-to-double v11, v9

    .line 43
    iget v9, v8, Lcom/amap/location/f/a/a/a;->b:I

    int-to-double v13, v9

    move-object v9, p0

    move-object/from16 p2, v1

    iget-wide v0, v9, Lcom/amap/location/f/a/b;->a:D

    div-double/2addr v13, v0

    mul-double v13, v13, v11

    add-double/2addr v3, v13

    .line 44
    iget v8, v8, Lcom/amap/location/f/a/a/a;->c:I

    int-to-double v13, v8

    div-double/2addr v13, v0

    mul-double v11, v11, v13

    add-double/2addr v5, v11

    move-object/from16 v1, p2

    goto :goto_0

    :cond_1
    move-object v9, p0

    if-nez v7, :cond_2

    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_2
    new-instance v0, Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    invoke-direct {v0}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;-><init>()V

    .line 46
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v10, v11}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 47
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCoord(Ljava/lang/String;)V

    const-string v1, "mini"

    .line 48
    invoke-virtual {v0, v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setCacheType(Ljava/lang/String;)V

    int-to-double v1, v7

    div-double/2addr v5, v1

    .line 49
    invoke-virtual {v0, v5, v6}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLongitude(D)V

    div-double/2addr v3, v1

    .line 50
    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->setLatitude(D)V

    move/from16 v1, p3

    int-to-float v1, v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    return-object v0

    :cond_3
    :goto_1
    move-object v9, p0

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Lcom/amap/location/support/bean/AmapFps;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/support/bean/AmapFps;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    .line 79
    iget-object v1, p1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_2

    .line 80
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    iget-object p1, p1, Lcom/amap/location/support/bean/AmapFps;->wifis:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 82
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v3

    invoke-interface {v3}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/amap/location/support/bean/wifi/AmapWifi;->lastUpdateUtcMills:J

    sub-long/2addr v3, v5

    long-to-int v4, v3

    .line 83
    sget v3, Lcom/amap/location/f/a/a;->c:I

    if-ge v4, v3, :cond_1

    .line 84
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    :cond_2
    iget-object p1, p0, Lcom/amap/location/f/a/b;->c:Lcom/amap/location/f/a/b$a;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v2, 0x1e

    .line 87
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_4

    .line 88
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/location/support/bean/wifi/AmapWifi;

    .line 89
    iget-wide v3, v3, Lcom/amap/location/support/bean/wifi/AmapWifi;->mac:J

    invoke-static {v3, v4}, Lcom/amap/location/f/a/c/a;->a(J)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_3

    .line 90
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-object v0
.end method

.method private b(Lcom/amap/location/support/bean/AmapFps;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/f/a/b;->a(Lcom/amap/location/support/bean/AmapFps;)Ljava/util/List;

    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 27
    move-result v2

    .line 28
    add-int/lit8 v2, v2, -0x1

    .line 30
    if-ge v1, v2, :cond_0

    .line 32
    const-string v2, ","

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/AmapFps;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    .line 2
    :try_start_0
    iget-object v1, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    if-eqz v1, :cond_12

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto/16 :goto_7

    .line 3
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5
    iget-object v2, p1, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, ""

    move-object v4, v3

    :cond_1
    :goto_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/support/bean/cell/AmapCell;

    if-eqz v5, :cond_1

    .line 6
    invoke-virtual {v5}, Lcom/amap/location/support/bean/cell/AmapCell;->valid()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 8
    iget-wide v8, v5, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    sub-long/2addr v6, v8

    sget v8, Lcom/amap/location/f/a/a;->b:I

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v5}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/location/f/a/c/a;->a(Ljava/lang/String;)J

    move-result-wide v6

    .line 10
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    .line 11
    iget-boolean v9, v5, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v10, ","

    if-eqz v9, :cond_5

    .line 12
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 13
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 14
    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget v5, v5, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    invoke-direct {p0, v5}, Lcom/amap/location/f/a/b;->a(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 15
    :cond_7
    invoke-direct {p0, p1}, Lcom/amap/location/f/a/b;->a(Lcom/amap/location/support/bean/AmapFps;)Ljava/util/List;

    move-result-object p1

    .line 16
    invoke-static {v3}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 17
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    move-result-object v2

    const/16 v5, 0x64

    invoke-virtual {v2, v3, p1, v5}, Lcom/amap/location/f/a/b/b;->a(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object v2

    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 19
    invoke-direct {p0, v1, v2, p2}, Lcom/amap/location/f/a/b;->a(Ljava/util/HashMap;Ljava/util/List;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    goto :goto_4

    :cond_8
    move-object v2, v0

    :goto_4
    if-eqz v2, :cond_9

    const v3, 0x189c7

    .line 20
    invoke-static {v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    :cond_9
    if-nez v2, :cond_11

    const/16 v3, 0x3e8

    if-le p2, v3, :cond_11

    .line 21
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const/16 v3, 0x5dc

    if-gt p2, v3, :cond_a

    .line 22
    sget v3, Lcom/amap/location/f/a/a;->d:I

    const v5, 0x189cc

    .line 23
    invoke-static {v5}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_5

    :cond_a
    const/16 v3, 0x7d0

    if-gt p2, v3, :cond_b

    .line 24
    sget v3, Lcom/amap/location/f/a/a;->e:I

    const v5, 0x189cd

    .line 25
    invoke-static {v5}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_5

    :cond_b
    const/16 v3, 0xbb8

    if-gt p2, v3, :cond_c

    .line 26
    sget v3, Lcom/amap/location/f/a/a;->f:I

    const v5, 0x189ce

    .line 27
    invoke-static {v5}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_5

    :cond_c
    const v3, 0x189cf

    .line 28
    invoke-static {v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    const/4 v3, 0x0

    .line 29
    :goto_5
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    move-result-object v5

    invoke-virtual {v5, v4, p1, v3}, Lcom/amap/location/f/a/b/b;->a(Ljava/lang/String;Ljava/util/List;I)Ljava/util/List;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_d

    .line 31
    invoke-direct {p0, v1, p1, p2}, Lcom/amap/location/f/a/b;->a(Ljava/util/HashMap;Ljava/util/List;I)Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    :cond_d
    if-eqz v2, :cond_11

    .line 32
    sget p1, Lcom/amap/location/f/a/a;->d:I

    if-ne v3, p1, :cond_e

    const p1, 0x189c8

    .line 33
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_6

    .line 34
    :cond_e
    sget p1, Lcom/amap/location/f/a/a;->e:I

    if-ne v3, p1, :cond_f

    const p1, 0x189c9

    .line 35
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_6

    .line 36
    :cond_f
    sget p1, Lcom/amap/location/f/a/a;->f:I

    if-ne v3, p1, :cond_10

    const p1, 0x189ca

    .line 37
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    goto :goto_6

    :cond_10
    const p1, 0x189cb

    .line 38
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_11
    :goto_6
    return-object v2

    :catchall_0
    move-exception p1

    const-string p2, "MiniOfflineCore"

    .line 39
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_12
    :goto_7
    return-object v0
.end method

.method public a(Lcom/amap/location/support/bean/AmapFps;Lcom/amap/location/support/bean/location/AmapLocationNetwork;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    if-eqz v0, :cond_a

    .line 52
    :try_start_0
    iget-object v2, v0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    if-eqz v2, :cond_a

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_a

    if-eqz p2, :cond_a

    iget-object v2, v0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v2, "14"

    .line 53
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "4"

    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    .line 54
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v2

    const v4, 0x44098000    # 550.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    return-void

    .line 55
    :cond_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 56
    invoke-direct/range {p0 .. p1}, Lcom/amap/location/f/a/b;->b(Lcom/amap/location/support/bean/AmapFps;)Ljava/lang/String;

    move-result-object v16

    const-string v4, ""

    .line 57
    iget-object v0, v0, Lcom/amap/location/support/bean/AmapFps;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/location/support/bean/cell/AmapCell;

    if-eqz v5, :cond_6

    .line 58
    invoke-virtual {v5}, Lcom/amap/location/support/bean/cell/AmapCell;->valid()Z

    move-result v6

    if-nez v6, :cond_3

    goto/16 :goto_2

    .line 59
    :cond_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v6

    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    move-result-wide v6

    .line 60
    iget-wide v8, v5, Lcom/amap/location/support/bean/cell/AmapCell;->lastUpdateUtcMills:J

    sub-long/2addr v6, v8

    sget v8, Lcom/amap/location/f/a/a;->b:I

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-lez v10, :cond_4

    goto/16 :goto_2

    .line 61
    :cond_4
    invoke-virtual {v5}, Lcom/amap/location/support/bean/cell/AmapCell;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/amap/location/f/a/c/a;->a(Ljava/lang/String;)J

    move-result-wide v17

    .line 62
    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 64
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v6

    iget-wide v8, v1, Lcom/amap/location/f/a/b;->a:D

    mul-double v6, v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v9, v6

    .line 65
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v6

    iget-wide v10, v1, Lcom/amap/location/f/a/b;->a:D

    mul-double v6, v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    long-to-int v10, v6

    .line 66
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v6

    const-wide/16 v11, 0x3e8

    div-long v14, v6, v11

    .line 67
    iget v4, v5, Lcom/amap/location/support/bean/cell/AmapCell;->signalStrength:I

    invoke-direct {v1, v4}, Lcom/amap/location/f/a/b;->a(I)I

    move-result v12

    .line 68
    invoke-virtual/range {p2 .. p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v4

    float-to-int v11, v4

    .line 69
    new-instance v13, Lcom/amap/location/f/a/a/a;

    iget-boolean v5, v5, Lcom/amap/location/support/bean/cell/AmapCell;->main:Z

    const/4 v6, 0x0

    move-object v4, v13

    move-wide/from16 v7, v17

    move-object v3, v13

    move-object/from16 v13, v16

    invoke-direct/range {v4 .. v15}, Lcom/amap/location/f/a/a/a;-><init>(ZZJIIIILjava/lang/String;J)V

    .line 70
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v4, v19

    :cond_6
    :goto_2
    const/16 v3, 0x64

    goto/16 :goto_0

    .line 71
    :cond_7
    invoke-static {v4}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 72
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/amap/location/f/a/b/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 73
    :cond_8
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/amap/location/f/a/b/b;->a(Ljava/util/Map;)V

    .line 74
    iget v0, v1, Lcom/amap/location/f/a/b;->b:I

    add-int/lit8 v2, v0, 0x1

    iput v2, v1, Lcom/amap/location/f/a/b;->b:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_a

    const/4 v0, 0x0

    .line 75
    iput v0, v1, Lcom/amap/location/f/a/b;->b:I

    .line 76
    invoke-static {}, Lcom/amap/location/f/a/b/b;->a()Lcom/amap/location/f/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/f/a/b/b;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_9
    :goto_3
    return-void

    :catch_0
    move-exception v0

    const-string v2, "MiniOfflineCore"

    .line 77
    invoke-static {v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    return-void
.end method

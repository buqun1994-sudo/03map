.class public Lcom/amap/location/fusion/util/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/fusion/util/d$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/fusion/util/e$a;,
        Lcom/amap/location/fusion/util/e$b;,
        Lcom/amap/location/fusion/util/e$c;,
        Lcom/amap/location/fusion/util/e$d;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/location/support/model/ModelLoader;

.field private b:Lcom/amap/location/support/handler/AmapLooper;

.field private c:I

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:Lcom/amap/location/fusion/util/e$d;

.field private i:Lcom/amap/location/fusion/util/e$c;

.field private j:Lcom/amap/location/fusion/util/e$b;

.field private k:Z

.field private l:Z

.field private m:Lcom/amap/location/support/handler/AmapHandler;

.field private n:Z

.field private o:Ljava/lang/String;

.field private p:Lcom/amap/location/support/rtk/EphemerisListener;


# direct methods
.method public constructor <init>(IZZLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/16 v0, 0x7d0

    .line 6
    iput v0, p0, Lcom/amap/location/fusion/util/e;->c:I

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/amap/location/fusion/util/e;->f:I

    .line 11
    iput v0, p0, Lcom/amap/location/fusion/util/e;->g:I

    .line 13
    new-instance v0, Lcom/amap/location/fusion/util/e$2;

    .line 15
    invoke-direct {v0, p0}, Lcom/amap/location/fusion/util/e$2;-><init>(Lcom/amap/location/fusion/util/e;)V

    .line 18
    iput-object v0, p0, Lcom/amap/location/fusion/util/e;->p:Lcom/amap/location/support/rtk/EphemerisListener;

    .line 20
    iput p1, p0, Lcom/amap/location/fusion/util/e;->c:I

    .line 22
    iput-boolean p2, p0, Lcom/amap/location/fusion/util/e;->d:Z

    .line 24
    iput-boolean p3, p0, Lcom/amap/location/fusion/util/e;->e:Z

    .line 26
    iput-object p4, p0, Lcom/amap/location/fusion/util/e;->o:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/util/e;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/fusion/util/e;->b:Lcom/amap/location/support/handler/AmapLooper;

    return-object p0
.end method

.method private a(JIIZ)V
    .locals 0

    .line 92
    iput p3, p0, Lcom/amap/location/fusion/util/e;->f:I

    .line 93
    iput p4, p0, Lcom/amap/location/fusion/util/e;->g:I

    if-eqz p5, :cond_0

    .line 94
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object p5

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/amap/location/support/security/INativeAbility;->inset_iod_2_hmm(JII)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/util/e;JIIZ)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    return-void
.end method

.method public static synthetic a(Lcom/amap/location/fusion/util/e;Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/util/e;->c(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/amap/location/fusion/util/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/util/e;->c:I

    return p0
.end method

.method public static synthetic c(Lcom/amap/location/fusion/util/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/location/fusion/util/e;->f:I

    return p0
.end method

.method private c(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 5

    if-eqz p1, :cond_1

    const-string v0, "gps"

    .line 12
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x4006666666666666L    # 2.8

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_1

    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    move-result p1

    const/16 v0, 0x302

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/amap/location/fusion/util/e;->e:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c()[D
    .locals 5

    const/4 v0, 0x4

    new-array v1, v0, [D

    .line 2
    fill-array-data v1, :array_0

    :try_start_0
    const-string v2, "iod_model_settings"

    const-string v3, ""

    .line 3
    invoke-static {v2, v3}, Lcom/amap/location/support/app/GlobalStorageSync;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 6
    array-length v3, v2

    if-lt v3, v0, :cond_0

    const/4 v0, 0x0

    .line 7
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v0

    const/4 v0, 0x1

    .line 8
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v0

    const/4 v0, 0x2

    .line 9
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    aput-wide v3, v1, v0

    const/4 v0, 0x3

    .line 10
    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-object v1

    nop

    :array_0
    .array-data 8
        0x403adeb851eb851fL    # 26.87
        0x40211eb851eb851fL    # 8.56
        0x403c68f5c28f5c29L    # 28.41
        0x401f000000000000L    # 7.75
    .end array-data
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/fusion/util/e;->j:Lcom/amap/location/fusion/util/e$b;

    .line 3
    invoke-static {v0}, Lcom/amap/location/fusion/util/e$b;->a(Lcom/amap/location/fusion/util/e$b;)V

    .line 6
    iget-object v0, p0, Lcom/amap/location/fusion/util/e;->h:Lcom/amap/location/fusion/util/e$d;

    .line 8
    invoke-virtual {v0}, Lcom/amap/location/fusion/util/e$a;->b()V

    .line 11
    iget-object v0, p0, Lcom/amap/location/fusion/util/e;->i:Lcom/amap/location/fusion/util/e$c;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/amap/location/fusion/util/e$a;->b()V

    .line 18
    :cond_0
    return-void
.end method

.method private e()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onNavi()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method private f()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/util/e;->e()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 20
    move-result-wide v0

    .line 21
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v0, v2

    .line 30
    const-wide/16 v2, 0xbb8

    .line 32
    cmp-long v4, v0, v2

    .line 34
    if-gtz v4, :cond_0

    .line 36
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz v0, :cond_1

    .line 47
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 54
    move-result v0

    .line 55
    if-eq v0, v1, :cond_1

    .line 57
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    .line 64
    move-result v0

    .line 65
    const/4 v2, 0x2

    .line 66
    if-eq v0, v2, :cond_1

    .line 68
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getLinkType()B

    .line 75
    move-result v0

    .line 76
    const/4 v2, 0x4

    .line 77
    if-eq v0, v2, :cond_1

    .line 79
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getFormWay()B

    .line 86
    move-result v0

    .line 87
    const/4 v2, 0x3

    .line 88
    if-eq v0, v2, :cond_1

    .line 90
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getFormWay()B

    .line 97
    move-result v0

    .line 98
    const/4 v2, 0x6

    .line 99
    if-eq v0, v2, :cond_1

    .line 101
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getFormWay()B

    .line 108
    move-result v0

    .line 109
    const/16 v2, 0x8

    .line 111
    if-ne v0, v2, :cond_0

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    const/4 v1, 0x0

    .line 115
    :cond_1
    :goto_0
    return v1
.end method

.method private g()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/amap/location/fusion/util/e;->e()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 20
    move-result-wide v0

    .line 21
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 28
    move-result-wide v2

    .line 29
    sub-long/2addr v0, v2

    .line 30
    const-wide/16 v2, 0xbb8

    .line 32
    cmp-long v4, v0, v2

    .line 34
    if-gtz v4, :cond_0

    .line 36
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/amap/location/type/location/LocationMatch;->getLinkType()B

    .line 43
    move-result v0

    .line 44
    const/4 v1, 0x2

    .line 45
    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v0, 0x0

    .line 50
    :goto_0
    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 85
    iget-boolean v0, p0, Lcom/amap/location/fusion/util/e;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    iget-boolean v0, p0, Lcom/amap/location/fusion/util/e;->l:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/amap/location/fusion/util/e;->l:Z

    .line 88
    invoke-direct {p0}, Lcom/amap/location/fusion/util/e;->d()V

    const/4 v0, -0x1

    .line 89
    iput v0, p0, Lcom/amap/location/fusion/util/e;->f:I

    .line 90
    iput v0, p0, Lcom/amap/location/fusion/util/e;->g:I

    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 27
    iget-boolean v0, v6, Lcom/amap/location/fusion/util/e;->k:Z

    if-eqz v0, :cond_1b

    invoke-static/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 28
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v8

    .line 29
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "loc_code"

    const/4 v10, 0x0

    .line 30
    invoke-virtual {v7, v1, v10}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "iodStay"

    const-string v3, ""

    .line 31
    invoke-virtual {v7, v2, v3}, Lcom/amap/location/type/location/Location;->getOptAttrString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "indoor"

    .line 32
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v11, 0x1

    const/4 v12, 0x2

    const-string v13, "3"

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v13, 0x1

    const/16 v15, 0x64

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move v3, v13

    move v4, v15

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->d()V

    goto/16 :goto_8

    .line 35
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "13"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v13, 0x1

    const/16 v15, 0x64

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move v3, v13

    move v4, v15

    .line 36
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->d()V

    goto/16 :goto_8

    .line 38
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/amap/location/fusion/util/e;->c(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v13, 0x2

    const/16 v15, 0x64

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move v3, v13

    move v4, v15

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    .line 40
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->d()V

    goto/16 :goto_8

    .line 41
    :cond_3
    iget-object v1, v6, Lcom/amap/location/fusion/util/e;->h:Lcom/amap/location/fusion/util/e$d;

    invoke-virtual {v1, v8, v9}, Lcom/amap/location/fusion/util/e$d;->a(J)Z

    move-result v1

    const-string v5, "4"

    const-string v4, "2"

    const/16 v16, 0x46

    const/16 v17, 0x5

    const-string v3, "parkInfo"

    const/4 v2, 0x4

    const/16 v18, 0x5a

    if-eqz v1, :cond_c

    .line 42
    iget v0, v6, Lcom/amap/location/fusion/util/e;->f:I

    .line 43
    iget v1, v6, Lcom/amap/location/fusion/util/e;->g:I

    .line 44
    iget-object v10, v6, Lcom/amap/location/fusion/util/e;->i:Lcom/amap/location/fusion/util/e$c;

    if-eqz v10, :cond_4

    .line 45
    invoke-virtual {v10}, Lcom/amap/location/fusion/util/e$a;->b()V

    .line 46
    :cond_4
    iget-boolean v10, v6, Lcom/amap/location/fusion/util/e;->n:Z

    if-eqz v10, :cond_6

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    move-result v10

    const/4 v15, 0x7

    if-eq v10, v15, :cond_5

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    move-result v10

    if-ne v10, v2, :cond_6

    :cond_5
    if-ne v0, v12, :cond_6

    const/16 v10, 0x50

    if-ge v1, v10, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v10

    move-object v15, v3

    float-to-double v2, v10

    const-wide v20, 0x3ff6666666666666L    # 1.4

    cmpg-double v10, v2, v20

    if-gez v10, :cond_7

    const/4 v10, 0x1

    const/16 v20, 0x68

    const/16 v21, 0x1

    move-object/from16 v0, p0

    const/16 v19, 0x4

    move-wide v1, v8

    move v3, v10

    move-object v10, v4

    move/from16 v4, v20

    move-object v14, v5

    move/from16 v5, v21

    .line 47
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    const/4 v0, 0x1

    const/16 v1, 0x68

    goto :goto_0

    :cond_6
    move-object v15, v3

    :cond_7
    move-object v10, v4

    move-object v14, v5

    const/16 v19, 0x4

    .line 48
    :goto_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/nl/INetworkLocator;->getLastAmapLocationNetwork()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v2

    if-eq v0, v11, :cond_8

    if-nez v0, :cond_b

    :cond_8
    if-eqz v2, :cond_b

    .line 49
    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-virtual {v2}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getResubtype()Ljava/lang/String;

    move-result-object v4

    .line 51
    invoke-virtual {v2, v15}, Lcom/amap/location/type/location/Location;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto/16 :goto_4

    .line 52
    :cond_9
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_5

    .line 53
    :cond_a
    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto/16 :goto_7

    :cond_b
    move v13, v0

    move v15, v1

    goto/16 :goto_8

    :cond_c
    move-object v15, v3

    move-object v10, v4

    move-object v14, v5

    const/16 v19, 0x4

    const-string v1, "gps"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 55
    iget-object v0, v6, Lcom/amap/location/fusion/util/e;->i:Lcom/amap/location/fusion/util/e$c;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v8, v9}, Lcom/amap/location/fusion/util/e$c;->a(J)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 56
    iget v0, v6, Lcom/amap/location/fusion/util/e;->f:I

    .line 57
    iget v1, v6, Lcom/amap/location/fusion/util/e;->g:I

    move/from16 v21, v1

    goto/16 :goto_3

    .line 58
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->g()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v20, 0x1

    const/16 v21, 0x65

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v20

    move/from16 v4, v21

    .line 59
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 60
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->f()Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v20, 0x2

    const/16 v21, 0x66

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v20

    move/from16 v4, v21

    .line 61
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    :goto_2
    const/4 v0, 0x2

    goto :goto_3

    .line 62
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->e()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/support/guard/LocationGuarder;->isOpenSpace()Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v20, 0x2

    const/16 v21, 0x67

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v20

    move/from16 v4, v21

    .line 63
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    goto :goto_2

    :cond_10
    const/16 v20, 0x1

    const/16 v21, 0x32

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move/from16 v3, v20

    move/from16 v4, v21

    .line 64
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    goto :goto_1

    .line 65
    :goto_3
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/nl/INetworkLocator;->getLastAmapLocationNetwork()Lcom/amap/location/support/bean/location/AmapLocationNetwork;

    move-result-object v1

    if-eq v0, v12, :cond_13

    if-eqz v1, :cond_13

    .line 66
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getRetype()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v1}, Lcom/amap/location/support/bean/location/AmapLocationNetwork;->getResubtype()Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v15}, Lcom/amap/location/type/location/Location;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    :goto_4
    const/4 v13, 0x5

    const/16 v15, 0x46

    goto :goto_8

    .line 69
    :cond_11
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :goto_5
    const/4 v13, 0x3

    :goto_6
    const/16 v15, 0x5a

    goto :goto_8

    .line 70
    :cond_12
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    :goto_7
    const/4 v13, 0x4

    goto :goto_6

    :cond_13
    move v13, v0

    move/from16 v15, v21

    goto :goto_8

    :cond_14
    const/4 v13, -0x1

    const/4 v15, -0x1

    :goto_8
    if-ne v13, v11, :cond_16

    .line 71
    iget-object v0, v6, Lcom/amap/location/fusion/util/e;->o:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/amap/location/support/app/MessageCenter;->matchTargetScene(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 73
    invoke-static {}, Lcom/amap/location/support/guard/LocationGuarder;->getInstance()Lcom/amap/location/support/guard/LocationGuarder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/support/guard/LocationGuarder;->isOpenSpace()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->g()Z

    move-result v0

    if-nez v0, :cond_16

    .line 75
    invoke-direct/range {p0 .. p0}, Lcom/amap/location/fusion/util/e;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, v6, Lcom/amap/location/fusion/util/e;->n:Z

    if-nez v0, :cond_15

    const/4 v10, 0x2

    goto :goto_9

    :cond_15
    const/4 v10, 0x0

    :goto_9
    const/16 v11, 0x69

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-wide v1, v8

    move v3, v10

    move v4, v11

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/amap/location/fusion/util/e;->a(JIIZ)V

    move v13, v10

    const/16 v15, 0x69

    :cond_16
    if-nez v13, :cond_17

    const/4 v0, -0x1

    goto :goto_a

    :cond_17
    move v0, v13

    .line 77
    :goto_a
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "scence"

    invoke-virtual {v7, v1, v0}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v13, :cond_18

    const/4 v15, -0x1

    .line 78
    :cond_18
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "confidence"

    invoke-virtual {v7, v1, v0}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x1

    if-ne v13, v0, :cond_19

    const/4 v1, -0x1

    goto :goto_b

    .line 79
    :cond_19
    iget v1, v6, Lcom/amap/location/fusion/util/e;->f:I

    :goto_b
    invoke-virtual {v7, v1}, Lcom/amap/location/type/location/Location;->setIod(I)V

    if-ne v13, v0, :cond_1a

    const/4 v0, -0x1

    goto :goto_c

    .line 80
    :cond_1a
    iget v0, v6, Lcom/amap/location/fusion/util/e;->g:I

    :goto_c
    invoke-virtual {v7, v0}, Lcom/amap/location/type/location/Location;->setIodConfidence(I)V

    .line 81
    iget v0, v6, Lcom/amap/location/fusion/util/e;->f:I

    iget v1, v6, Lcom/amap/location/fusion/util/e;->g:I

    const/4 v2, 0x0

    const-string v3, "cmdappiod"

    invoke-static {v3, v0, v1, v2}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    .line 82
    iget-object v0, v6, Lcom/amap/location/fusion/util/e;->j:Lcom/amap/location/fusion/util/e$b;

    invoke-virtual {v0, v7}, Lcom/amap/location/fusion/util/e$b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    const/4 v0, -0x1

    if-eq v13, v0, :cond_1b

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v6, Lcom/amap/location/fusion/util/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/amap/location/fusion/util/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-static {}, Lcom/amap/location/support/nl/NetworkLocatorParam;->getInstance()Lcom/amap/location/support/nl/NetworkLocatorParam;

    move-result-object v1

    const-string v2, "iod"

    invoke-virtual {v1, v2, v0}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    :goto_d
    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 8

    .line 5
    iput-object p1, p0, Lcom/amap/location/fusion/util/e;->b:Lcom/amap/location/support/handler/AmapLooper;

    .line 6
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandler(Lcom/amap/location/support/handler/AmapLooper;Lcom/amap/location/support/handler/OnHandleMessage;)Lcom/amap/location/support/handler/AmapHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/fusion/util/e;->m:Lcom/amap/location/support/handler/AmapHandler;

    .line 7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 8
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user.dir"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "iod_model_name"

    const-string v5, "iod_model.zip"

    invoke-static {v4, v5}, Lcom/amap/location/support/util/CloudSdkUtils;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, "."

    invoke-static {v0, v3, v1}, Lcom/amap/location/support/util/FileUtils;->unZipFolder(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/location/support/util/FileUtils;->getInnerStoragePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/gnss/model/RF"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v3

    const-string v4, "model/RF"

    invoke-interface {v3, v4, v0}, Lcom/amap/location/support/common/IPlatformStatus;->releaseAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 12
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v4

    const-string v5, "IodDiscern2"

    if-ne v4, v2, :cond_1

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init release model success: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_1
    new-instance v4, Lcom/amap/location/fusion/util/e$1;

    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v6

    const/16 v7, 0xf

    if-ne v6, v7, :cond_2

    const-string v6, "https://aloc-modeldata.aimap.com/model/get"

    goto :goto_0

    :cond_2
    const-string v6, "https://aloc-modeldata.amap.com/model/get"

    :goto_0
    const-string v7, "gnss_cn0_model"

    invoke-direct {v4, p0, p1, v7, v6}, Lcom/amap/location/fusion/util/e$1;-><init>(Lcom/amap/location/fusion/util/e;Lcom/amap/location/support/handler/AmapLooper;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/amap/location/fusion/util/e;->a:Lcom/amap/location/support/model/ModelLoader;

    .line 15
    invoke-virtual {v4}, Lcom/amap/location/support/model/ModelLoader;->toDownLoad()V

    if-eqz v3, :cond_5

    .line 16
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object p1

    invoke-direct {p0}, Lcom/amap/location/fusion/util/e;->c()[D

    move-result-object v3

    invoke-interface {p1, v0, v3}, Lcom/amap/location/support/security/INativeAbility;->initIod(Ljava/lang/String;[D)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 17
    new-instance v0, Lcom/amap/location/fusion/util/e$d;

    invoke-direct {v0, p0}, Lcom/amap/location/fusion/util/e$d;-><init>(Lcom/amap/location/fusion/util/e;)V

    iput-object v0, p0, Lcom/amap/location/fusion/util/e;->h:Lcom/amap/location/fusion/util/e$d;

    .line 18
    new-instance v0, Lcom/amap/location/fusion/util/e$b;

    invoke-direct {v0, p0}, Lcom/amap/location/fusion/util/e$b;-><init>(Lcom/amap/location/fusion/util/e;)V

    iput-object v0, p0, Lcom/amap/location/fusion/util/e;->j:Lcom/amap/location/fusion/util/e$b;

    .line 19
    iget-boolean v0, p0, Lcom/amap/location/fusion/util/e;->d:Z

    if-eqz v0, :cond_3

    .line 20
    new-instance v0, Lcom/amap/location/fusion/util/e$c;

    invoke-direct {v0, p0}, Lcom/amap/location/fusion/util/e$c;-><init>(Lcom/amap/location/fusion/util/e;)V

    iput-object v0, p0, Lcom/amap/location/fusion/util/e;->i:Lcom/amap/location/fusion/util/e$c;

    .line 21
    :cond_3
    invoke-static {}, Lcom/amap/location/support/rtk/EphemerisManager;->getInstance()Lcom/amap/location/support/rtk/EphemerisManager;

    move-result-object v0

    iget-object v3, p0, Lcom/amap/location/fusion/util/e;->p:Lcom/amap/location/support/rtk/EphemerisListener;

    iget-object v4, p0, Lcom/amap/location/fusion/util/e;->b:Lcom/amap/location/support/handler/AmapLooper;

    invoke-virtual {v0, v3, v4}, Lcom/amap/location/support/dispatch/Dispatcher;->addListener(Ljava/lang/Object;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 22
    iput-boolean v1, p0, Lcom/amap/location/fusion/util/e;->k:Z

    goto :goto_1

    .line 23
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    :goto_1
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v0

    if-ne v0, v2, :cond_6

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init iod success: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 26
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "assets is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/amap/location/fusion/util/e;->n:Z

    return-void
.end method

.method public b()V
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/amap/location/fusion/util/e;->k:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/location/fusion/util/e;->a()V

    .line 4
    invoke-static {}, Lcom/amap/location/support/rtk/EphemerisManager;->getInstance()Lcom/amap/location/support/rtk/EphemerisManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/fusion/util/e;->p:Lcom/amap/location/support/rtk/EphemerisListener;

    invoke-virtual {v0, v1}, Lcom/amap/location/support/dispatch/Dispatcher;->removeListener(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/fusion/util/e;->k:Z

    return-void
.end method

.method public b(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 6
    iget-boolean v2, v0, Lcom/amap/location/fusion/util/e;->k:Z

    if-eqz v2, :cond_2

    invoke-static/range {p1 .. p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gps"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v0, Lcom/amap/location/fusion/util/e;->h:Lcom/amap/location/fusion/util/e$d;

    invoke-virtual {v2, v1}, Lcom/amap/location/fusion/util/e$d;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 9
    iget-object v2, v0, Lcom/amap/location/fusion/util/e;->i:Lcom/amap/location/fusion/util/e$c;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v2, v1}, Lcom/amap/location/fusion/util/e$a;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v4

    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    move-result-object v2

    invoke-interface {v2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v10

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v16

    invoke-interface/range {v3 .. v16}, Lcom/amap/location/support/security/INativeAbility;->sendChipGps(JJDDDFFF)I

    :cond_2
    :goto_0
    return-void
.end method

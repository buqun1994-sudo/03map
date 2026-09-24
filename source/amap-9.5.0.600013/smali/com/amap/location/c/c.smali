.class public Lcom/amap/location/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/c/c$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/location/c/b;

.field private b:Lcom/amap/location/c/i/b;

.field private c:Lcom/amap/location/c/g/a;

.field private d:Lcom/amap/location/c/b/c;

.field private e:Lcom/amap/location/support/handler/AmapHandlerThread;

.field private volatile f:Lcom/amap/location/support/handler/AmapHandler;

.field private g:Lcom/amap/location/support/handler/AmapLooper;

.field private h:Z

.field private final i:Ljava/lang/Object;

.field private j:Lcom/amap/location/c/f/c;

.field private k:Lcom/amap/location/c/i/b$a;

.field private l:Lcom/amap/location/support/signal/status/PhoneStatListener;


# direct methods
.method public constructor <init>(Lcom/amap/location/c/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/location/c/c;->h:Z

    .line 7
    new-instance v0, Ljava/lang/Object;

    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object v0, p0, Lcom/amap/location/c/c;->i:Ljava/lang/Object;

    .line 14
    new-instance v0, Lcom/amap/location/c/c$2;

    .line 16
    invoke-direct {v0, p0}, Lcom/amap/location/c/c$2;-><init>(Lcom/amap/location/c/c;)V

    .line 19
    iput-object v0, p0, Lcom/amap/location/c/c;->k:Lcom/amap/location/c/i/b$a;

    .line 21
    new-instance v0, Lcom/amap/location/c/c$3;

    .line 23
    invoke-direct {v0, p0}, Lcom/amap/location/c/c$3;-><init>(Lcom/amap/location/c/c;)V

    .line 26
    iput-object v0, p0, Lcom/amap/location/c/c;->l:Lcom/amap/location/support/signal/status/PhoneStatListener;

    .line 28
    iput-object p1, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    .line 30
    return-void
.end method

.method public static synthetic a(Lcom/amap/location/c/c;Lcom/amap/location/c/f/c;)Lcom/amap/location/c/f/c;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/c/c;->j:Lcom/amap/location/c/f/c;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/c/c;)Lcom/amap/location/c/g/a;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    return-object p0
.end method

.method public static synthetic a(Lcom/amap/location/c/c;Lcom/amap/location/c/g/a;)Lcom/amap/location/c/g/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/c/c;Lcom/amap/location/support/handler/AmapHandler;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/amap/location/c/c;->f:Lcom/amap/location/support/handler/AmapHandler;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/c/c;Lcom/amap/location/support/handler/AmapLooper;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/amap/location/c/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    return-object p1
.end method

.method public static synthetic a(Lcom/amap/location/c/c;Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/c/b/b$a;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/amap/location/c/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/c/b/b$a;)V

    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 30
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getIod()I

    move-result v0

    .line 31
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getLastLocationMatch()Lcom/amap/location/type/location/LocationMatch;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/amap/location/type/location/LocationMatch;->getRoadClass()B

    move-result v1

    goto :goto_0

    :cond_1
    const/16 v1, -0xa

    .line 33
    :goto_0
    iget-object v2, p0, Lcom/amap/location/c/c;->j:Lcom/amap/location/c/f/c;

    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {v2, p1}, Lcom/amap/location/c/f/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-eqz p1, :cond_4

    .line 35
    invoke-static {}, Lcom/amap/location/c/b$a;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 37
    sget v0, Lcom/amap/location/c/c/a;->b:I

    int-to-double v4, v0

    mul-double v4, v4, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v0, p1

    div-double/2addr v4, v0

    invoke-static {v4, v5}, Lcom/amap/location/c/b$a;->a(D)V

    goto :goto_2

    .line 38
    :cond_3
    sget p1, Lcom/amap/location/c/c/a;->b:I

    int-to-double v0, p1

    mul-double v0, v0, v2

    invoke-static {}, Lcom/amap/location/c/b$a;->b()[I

    move-result-object p1

    const/4 v2, 0x1

    aget p1, p1, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/amap/location/c/b$a;->a(D)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x2

    if-ne v0, p1, :cond_5

    .line 39
    sget p1, Lcom/amap/location/c/c/a;->b:I

    int-to-double v0, p1

    mul-double v0, v0, v2

    invoke-static {}, Lcom/amap/location/c/b$a;->b()[I

    move-result-object p1

    const/4 v2, 0x3

    aget p1, p1, v2

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/amap/location/c/b$a;->a(D)V

    goto :goto_2

    .line 40
    :cond_5
    sget v0, Lcom/amap/location/c/c/a;->b:I

    int-to-double v0, v0

    mul-double v0, v0, v2

    invoke-static {}, Lcom/amap/location/c/b$a;->b()[I

    move-result-object v2

    aget p1, v2, p1

    int-to-double v2, p1

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lcom/amap/location/c/b$a;->a(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    const-string v0, "CollectionManager"

    .line 41
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/c/b/b$a;)V
    .locals 6

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v0}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$a;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {}, Lcom/amap/location/c/b$a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-direct {p0, p1}, Lcom/amap/location/c/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 16
    :cond_0
    sget-boolean v0, Lcom/amap/location/c/c/a;->e:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmpl-double v5, v0, v3

    if-nez v5, :cond_1

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v3, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v0, v3

    if-ltz v5, :cond_3

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v5, v0, v3

    if-ltz v5, :cond_3

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 18
    invoke-direct {p0, p2}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/b/b$a;)Z

    move-result p2

    goto :goto_0

    .line 19
    :cond_2
    invoke-direct {p0, p2}, Lcom/amap/location/c/c;->a(Lcom/amap/location/c/b/b$a;)Z

    move-result p2

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 20
    :goto_0
    iget-object v0, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v0}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$b;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 21
    iget-object p2, p0, Lcom/amap/location/c/c;->d:Lcom/amap/location/c/b/c;

    if-nez p2, :cond_4

    .line 22
    new-instance p2, Lcom/amap/location/c/b/c;

    iget-object v0, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v0}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/amap/location/c/b/c;-><init>(Lcom/amap/location/c/b$b;)V

    iput-object p2, p0, Lcom/amap/location/c/c;->d:Lcom/amap/location/c/b/c;

    .line 23
    :cond_4
    iget-object p2, p0, Lcom/amap/location/c/c;->d:Lcom/amap/location/c/b/c;

    invoke-virtual {p2, p1}, Lcom/amap/location/c/b/c;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Lcom/amap/location/c/c/b;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 24
    iget-object p2, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    if-eqz p2, :cond_5

    .line 25
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 26
    invoke-virtual {p1}, Lcom/amap/location/c/c/b;->b()[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v0

    .line 27
    invoke-static {p2, v0}, Lcom/amap/location/c/h/a;->a(Ljava/lang/String;[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amap/location/c/c/b;->a([B)V

    .line 28
    iget-object p2, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    invoke-virtual {p2, p1}, Lcom/amap/location/c/g/a;->a(Lcom/amap/location/c/c/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p2, "CollectionManager"

    .line 29
    invoke-static {p2, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Lcom/amap/location/c/b/b$a;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/amap/location/c/b/b;->a()Lcom/amap/location/c/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/c/b/b;->a(Lcom/amap/location/c/b/b$a;)Lcom/amap/location/c/c/b;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/amap/location/c/c/b;->b()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/support/util/GZipUtils;->compress([B)[B

    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Lcom/amap/location/c/h/a;->a(Ljava/lang/String;[B)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/location/c/c/b;->a([B)V

    .line 47
    iget-object v0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    invoke-virtual {v0, p1}, Lcom/amap/location/c/g/a;->a(Lcom/amap/location/c/c/b;)V

    .line 48
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const-string p1, "fps_collect"

    .line 49
    invoke-static {p1}, Lcom/amap/location/support/util/CloudSdkUtils;->addCount(Ljava/lang/String;)V

    :cond_0
    const p1, 0x18993

    .line 50
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 51
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onForeground()Z

    move-result p1

    if-nez p1, :cond_1

    const p1, 0x18994

    .line 52
    invoke-static {p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic a(Lcom/amap/location/c/c;Z)Z
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/amap/location/c/c;->h:Z

    return p1
.end method

.method public static synthetic b(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapLooper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    return-object p0
.end method

.method public static synthetic c(Lcom/amap/location/c/c;)Lcom/amap/location/c/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    return-object p0
.end method

.method public static synthetic d(Lcom/amap/location/c/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->i:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic e(Lcom/amap/location/c/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/location/c/c;->h:Z

    return p0
.end method

.method public static synthetic f(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapHandler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->f:Lcom/amap/location/support/handler/AmapHandler;

    return-object p0
.end method

.method private f()V
    .locals 9

    const-string v0, ""

    const-string v1, "url_prefix"

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    move-result-object v2

    const-string v3, "c"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "hot_area"

    .line 3
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "enable"

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 5
    invoke-static {v3}, Lcom/amap/location/c/b$a;->c(Z)V

    if-eqz v3, :cond_7

    const-string v3, "https://aloc-gnss-eph.amap.com/collect-hot-grid"

    .line 6
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amap/location/c/b$a;->a(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getProductId()B

    move-result v3

    const/16 v5, 0xf

    if-ne v3, v5, :cond_1

    const-string v3, "https://aloc-gnss-eph.aimap.com/collect-hot-grid"

    .line 8
    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/location/c/b$a;->a(Ljava/lang/String;)V

    :cond_1
    const-string v1, "scene_dist"

    .line 9
    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ";"

    if-nez v3, :cond_2

    .line 11
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {v1}, Lcom/amap/location/c/b$a;->a([Ljava/lang/String;)V

    .line 13
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/16 v6, 0xa

    if-gt v3, v6, :cond_3

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {}, Lcom/amap/location/c/b$a;->b()[I

    move-result-object v7

    aget v7, v7, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const-string v3, "road_dist"

    .line 15
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 17
    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 18
    array-length v3, v0

    if-lez v3, :cond_5

    .line 19
    array-length v3, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v0, v5

    const-string v7, ","

    .line 20
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 21
    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    .line 22
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 23
    :cond_5
    invoke-static {v1}, Lcom/amap/location/c/b$a;->a(Ljava/util/Map;)V

    :cond_6
    const-string v0, "model_timeout"

    const/16 v1, 0xa8

    .line 24
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 25
    invoke-static {v0}, Lcom/amap/location/c/b$a;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "CollectionManager"

    .line 26
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public static synthetic g(Lcom/amap/location/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/c/c;->f()V

    return-void
.end method

.method private g()Z
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fps open:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/c/b$a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " track open:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    .line 3
    invoke-virtual {v1}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/location/c/b$b;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CollectionManager"

    .line 4
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v0}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$a;->d()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v0}, Lcom/amap/location/c/b;->c()Lcom/amap/location/c/b$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/location/c/b$b;->b()Z

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

.method public static synthetic h(Lcom/amap/location/c/c;)Lcom/amap/location/support/signal/status/PhoneStatListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->l:Lcom/amap/location/support/signal/status/PhoneStatListener;

    return-object p0
.end method

.method private h()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/amap/location/c/c;->k:Lcom/amap/location/c/i/b$a;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/c;->b:Lcom/amap/location/c/i/b;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcom/amap/location/c/i/b;

    iget-object v1, p0, Lcom/amap/location/c/c;->a:Lcom/amap/location/c/b;

    invoke-virtual {v1}, Lcom/amap/location/c/b;->b()Lcom/amap/location/c/b$a;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/location/c/c;->k:Lcom/amap/location/c/i/b$a;

    iget-object v3, p0, Lcom/amap/location/c/c;->g:Lcom/amap/location/support/handler/AmapLooper;

    invoke-direct {v0, v1, v2, v3}, Lcom/amap/location/c/i/b;-><init>(Lcom/amap/location/c/b$a;Lcom/amap/location/c/i/b$a;Lcom/amap/location/support/handler/AmapLooper;)V

    iput-object v0, p0, Lcom/amap/location/c/c;->b:Lcom/amap/location/c/i/b;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/location/c/c;->b:Lcom/amap/location/c/i/b;

    invoke-virtual {v0}, Lcom/amap/location/c/i/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CollectionManager"

    .line 6
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/c/c;->k:Lcom/amap/location/c/i/b$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/location/c/c;->b:Lcom/amap/location/c/i/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/c/i/b;->c()V

    .line 4
    iget-object v0, p0, Lcom/amap/location/c/c;->b:Lcom/amap/location/c/i/b;

    invoke-virtual {v0}, Lcom/amap/location/c/i/b;->b()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/location/c/c;->k:Lcom/amap/location/c/i/b$a;

    .line 6
    invoke-static {}, Lcom/amap/location/c/e/c;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CollectionManager"

    .line 7
    invoke-static {v1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic i(Lcom/amap/location/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/c/c;->h()V

    return-void
.end method

.method public static synthetic j(Lcom/amap/location/c/c;)Lcom/amap/location/c/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->d:Lcom/amap/location/c/b/c;

    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/amap/location/c/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/location/c/c;->i()V

    .line 4
    return-void
.end method

.method public static synthetic l(Lcom/amap/location/c/c;)Lcom/amap/location/support/handler/AmapHandlerThread;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/location/c/c;->e:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 8
    invoke-direct {p0}, Lcom/amap/location/c/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;

    move-result-object v0

    new-instance v1, Lcom/amap/location/c/c$1;

    invoke-direct {v1, p0}, Lcom/amap/location/c/c$1;-><init>(Lcom/amap/location/c/c;)V

    const-string v2, "collection"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, v1}, Lcom/amap/location/support/handler/HandlerThreadManager;->createHandlerThread(Ljava/lang/String;ILcom/amap/location/support/handler/OnLooperPrepared;)Lcom/amap/location/support/handler/AmapHandlerThread;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/location/c/c;->e:Lcom/amap/location/support/handler/AmapHandlerThread;

    .line 10
    invoke-interface {v0}, Lcom/amap/location/support/handler/AmapHandlerThread;->start()V

    return-void
.end method

.method public a(ZLcom/amap/location/c/c/b;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/amap/location/c/c;->f:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0, p1, p2}, Lcom/amap/location/c/g/a;->a(ZLcom/amap/location/c/c/b;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/amap/location/c/c;->i:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/amap/location/c/c;->f:Lcom/amap/location/support/handler/AmapHandler;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/amap/location/c/c;->f:Lcom/amap/location/support/handler/AmapHandler;

    invoke-interface {v1, v2}, Lcom/amap/location/support/handler/AmapHandler;->sendMessage(I)Z

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v2, p0, Lcom/amap/location/c/c;->h:Z

    .line 6
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c()Lcom/amap/location/c/c/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/amap/location/c/c;->f:Lcom/amap/location/support/handler/AmapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/location/c/g/a;->e()Lcom/amap/location/c/c/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/amap/location/c/c;->h()V

    .line 3
    iget-object v0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/location/c/g/a;->c()V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/amap/location/c/c;->i()V

    .line 3
    iget-object v0, p0, Lcom/amap/location/c/c;->c:Lcom/amap/location/c/g/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/location/c/g/a;->d()V

    :cond_0
    return-void
.end method

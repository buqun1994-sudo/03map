.class Lcom/amap/location/fusion/a/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/a/a;

.field private b:Lcom/amap/location/support/bean/location/AmapLocation;

.field private c:Z

.field private d:Z

.field private e:Z

.field private final f:Lcom/amap/location/fusion/a/a/a$e;

.field private final g:Lcom/amap/location/fusion/a/a/a$b;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;)V
    .locals 5

    .line 1
    const-string v0, ","

    .line 3
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$a;->a:Lcom/amap/location/fusion/a/a/a;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Lcom/amap/location/fusion/a/a/a$a;->c:Z

    .line 11
    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/amap/location/fusion/a/a/a$a;->d:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/location/fusion/a/a/a$a;->e:Z

    .line 16
    new-instance v3, Lcom/amap/location/fusion/a/a/a$e;

    .line 18
    invoke-direct {v3}, Lcom/amap/location/fusion/a/a/a$e;-><init>()V

    .line 21
    iput-object v3, p0, Lcom/amap/location/fusion/a/a/a$a;->f:Lcom/amap/location/fusion/a/a/a$e;

    .line 23
    new-instance v3, Lcom/amap/location/fusion/a/a/a$b;

    .line 25
    invoke-direct {v3, p1}, Lcom/amap/location/fusion/a/a/a$b;-><init>(Lcom/amap/location/fusion/a/a/a;)V

    .line 28
    iput-object v3, p0, Lcom/amap/location/fusion/a/a/a$a;->g:Lcom/amap/location/fusion/a/a/a$b;

    .line 30
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 33
    move-result-object p1

    .line 34
    const-string v3, "forgery"

    .line 36
    new-instance v4, Lorg/json/JSONObject;

    .line 38
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-virtual {p1, v3, v4}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 44
    move-result-object p1

    .line 45
    const-string v3, "xiaomi"

    .line 47
    iget-boolean v4, p0, Lcom/amap/location/fusion/a/a/a$a;->c:Z

    .line 49
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 52
    move-result v3

    .line 53
    iput-boolean v3, p0, Lcom/amap/location/fusion/a/a/a$a;->c:Z

    .line 55
    const-string v3, "vivo"

    .line 57
    iget-boolean v4, p0, Lcom/amap/location/fusion/a/a/a$a;->d:Z

    .line 59
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 62
    move-result v3

    .line 63
    iput-boolean v3, p0, Lcom/amap/location/fusion/a/a/a$a;->d:Z

    .line 65
    const-string v3, "common"

    .line 67
    iget-boolean v4, p0, Lcom/amap/location/fusion/a/a/a$a;->e:Z

    .line 69
    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 72
    move-result p1

    .line 73
    iput-boolean p1, p0, Lcom/amap/location/fusion/a/a/a$a;->e:Z

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    const-string v3, "eanble:"

    .line 82
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-boolean v3, p0, Lcom/amap/location/fusion/a/a/a$a;->c:Z

    .line 90
    if-eqz v3, :cond_0

    .line 92
    const/4 v3, 0x1

    .line 93
    goto :goto_0

    .line 94
    :cond_0
    const/4 v3, 0x0

    .line 95
    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iget-boolean v3, p0, Lcom/amap/location/fusion/a/a/a$a;->d:Z

    .line 103
    if-eqz v3, :cond_1

    .line 105
    const/4 v3, 0x1

    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const/4 v3, 0x0

    .line 108
    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    iget-boolean v0, p0, Lcom/amap/location/fusion/a/a/a$a;->e:Z

    .line 116
    if-eqz v0, :cond_2

    .line 118
    const/4 v1, 0x1

    .line 119
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, "gpsloc"

    .line 124
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 128
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_2

    .line 132
    :catch_0
    move-exception p1

    .line 133
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 136
    :goto_2
    return-void
.end method

.method private a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const v2, 0x4b189680    # 1.0E7f

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 27
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide v5, 0x416312d000000000L    # 1.0E7

    mul-double v3, v3, v5

    double-to-int v3, v3

    .line 28
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int p1, v7

    .line 29
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v4

    mul-float v4, v4, v2

    float-to-int v2, v4

    .line 30
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int v4, v7

    .line 31
    invoke-virtual {p2}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v7

    mul-double v7, v7, v5

    double-to-int p2, v7

    if-ne v1, v2, :cond_0

    if-ne v3, v4, :cond_0

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)I
    .locals 9

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getPhoneStat()Lcom/amap/location/support/signal/status/IPhoneStatManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amap/location/support/signal/status/IPhoneStatManager;->isLocationDim()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "satelliteCount"

    const/high16 v4, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    if-nez v1, :cond_6

    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isXiamo()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/amap/location/fusion/a/a/a$a;->c:Z

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_7

    const/4 v5, 0x2

    goto :goto_1

    .line 5
    :cond_3
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isVivo()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/amap/location/fusion/a/a/a$a;->d:Z

    if-eqz v1, :cond_7

    .line 6
    invoke-virtual {p1, v3, v2}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v5, :cond_4

    const/16 v5, 0x1f

    if-ne v1, v5, :cond_7

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-nez v1, :cond_7

    .line 8
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v5, 0x42200000    # 40.0f

    cmpl-float v1, v1, v5

    if-gez v1, :cond_5

    .line 9
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v5, 0x41c80000    # 25.0f

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    .line 10
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v5, 0x41e80000    # 29.0f

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_5

    .line 11
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    const/high16 v5, 0x41f00000    # 30.0f

    cmpl-float v1, v1, v5

    if-nez v1, :cond_7

    :cond_5
    const/4 v5, 0x3

    goto :goto_1

    .line 12
    :cond_6
    :goto_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    move-result v1

    const/16 v6, 0x300

    if-ne v1, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v5, -0x1

    .line 13
    :goto_1
    iget-boolean v1, p0, Lcom/amap/location/fusion/a/a/a$a;->e:Z

    if-eqz v1, :cond_b

    if-ne v5, v0, :cond_b

    .line 14
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSubType()I

    move-result v1

    const/16 v6, 0x301

    if-ne v1, v6, :cond_8

    const/4 v5, 0x4

    goto :goto_2

    :cond_8
    const/16 v6, 0x303

    if-ne v1, v6, :cond_9

    .line 15
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_9

    const/4 v5, 0x5

    goto :goto_2

    .line 16
    :cond_9
    invoke-virtual {p1, v3, v2}, Lcom/amap/location/type/location/Location;->getOptAttrInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_a

    .line 17
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_a

    const/4 v5, 0x6

    goto :goto_2

    .line 18
    :cond_a
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$a;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-direct {p0, v1, p1}, Lcom/amap/location/fusion/a/a/a$a;->a(Lcom/amap/location/support/bean/location/AmapLocation;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v5, 0x7

    :cond_b
    :goto_2
    if-ne v5, v0, :cond_c

    .line 19
    iget-object v1, p0, Lcom/amap/location/fusion/a/a/a$a;->f:Lcom/amap/location/fusion/a/a/a$e;

    invoke-virtual {v1, p1}, Lcom/amap/location/fusion/a/a/a$e;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v1

    if-eqz v1, :cond_c

    const v1, 0x1900a

    .line 20
    invoke-static {v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    const/16 v5, 0x8

    :cond_c
    const/16 v1, 0x9

    if-ne v5, v0, :cond_d

    .line 21
    iget-object v2, p0, Lcom/amap/location/fusion/a/a/a$a;->g:Lcom/amap/location/fusion/a/a/a$b;

    invoke-virtual {v2, p1}, Lcom/amap/location/fusion/a/a/a$b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v2

    if-eqz v2, :cond_d

    const v2, 0x1900e

    .line 22
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    const/16 v5, 0x9

    :cond_d
    if-eq v5, v0, :cond_e

    if-eq v5, v1, :cond_e

    .line 23
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$a;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    :cond_e
    return v5
.end method

.method public a()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$a;->f:Lcom/amap/location/fusion/a/a/a$e;

    invoke-virtual {v0}, Lcom/amap/location/fusion/a/a/a$e;->a()V

    .line 25
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$a;->g:Lcom/amap/location/fusion/a/a/a$b;

    invoke-virtual {v0}, Lcom/amap/location/fusion/a/a/a$b;->a()V

    return-void
.end method

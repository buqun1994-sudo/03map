.class Lcom/amap/location/fusion/a/a/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/a/a;

.field private b:Lcom/amap/location/support/bean/location/AmapLocation;

.field private c:Lcom/amap/location/support/bean/location/AmapLocation;

.field private d:Lcom/amap/location/support/bean/location/AmapLocation;

.field private e:I


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$b;->a:Lcom/amap/location/fusion/a/a/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 9
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 11
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 13
    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/amap/location/fusion/a/a/a$b;->e:I

    .line 16
    invoke-static {}, Lcom/amap/location/support/cloud/AmapCloudManager;->getInstance()Lcom/amap/location/support/cloud/AmapCloudManager;

    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    .line 22
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 25
    const-string v1, "forgery"

    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/amap/location/support/cloud/BaseCloud;->getCloud(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 30
    move-result-object p1

    .line 31
    const-string v0, "speedThreshold"

    .line 33
    iget v1, p0, Lcom/amap/location/fusion/a/a/a$b;->e:I

    .line 35
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 38
    move-result p1

    .line 39
    iput p1, p0, Lcom/amap/location/fusion/a/a/a$b;->e:I

    .line 41
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1
    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    iget v3, v0, Lcom/amap/location/fusion/a/a/a$b;->e:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 3
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 4
    iput-object v1, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    return v2

    .line 5
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getBearing()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5

    .line 6
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v6

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-nez v3, :cond_2

    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v6

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-nez v3, :cond_2

    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v3

    iget-object v6, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_2

    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v6

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v8

    cmpl-double v3, v6, v8

    if-nez v3, :cond_2

    .line 11
    iget-object v2, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v2, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 12
    iput-object v1, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    return v4

    .line 13
    :cond_2
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    if-eqz v3, :cond_5

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v6

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0xbb8

    cmp-long v3, v6, v8

    if-gez v3, :cond_5

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 15
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getSpeed()F

    move-result v3

    iget v6, v0, Lcom/amap/location/fusion/a/a/a$b;->e:I

    int-to-float v6, v6

    const v7, 0x40666666    # 3.6f

    div-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-lez v3, :cond_5

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v3

    iget-object v6, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v6}, Lcom/amap/location/type/location/Location;->getAccuracy()F

    move-result v6

    cmpl-float v3, v3, v6

    if-nez v3, :cond_5

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v10

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getAltitude()D

    move-result-wide v12

    cmpl-double v3, v10, v12

    if-nez v3, :cond_5

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v10

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v12

    cmpl-double v3, v10, v12

    if-nez v3, :cond_5

    .line 19
    invoke-virtual/range {p1 .. p1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v10

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v12

    cmpl-double v3, v10, v12

    if-nez v3, :cond_5

    .line 20
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    if-eqz v3, :cond_3

    .line 21
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v10

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    move-result-wide v12

    sub-long/2addr v10, v12

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_3

    cmp-long v3, v10, v8

    if-gez v3, :cond_3

    .line 22
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 23
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v12

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v14

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 24
    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLongitude()D

    move-result-wide v16

    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    invoke-virtual {v3}, Lcom/amap/location/type/location/Location;->getLatitude()D

    move-result-wide v18

    .line 25
    invoke-static/range {v12 .. v19}, Lcom/amap/location/fusion/util/b;->a(DDDD)D

    move-result-wide v8

    long-to-double v10, v10

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v10, v12

    div-double/2addr v8, v10

    double-to-float v3, v8

    .line 26
    iget v6, v0, Lcom/amap/location/fusion/a/a/a$b;->e:I

    int-to-float v6, v6

    div-float/2addr v6, v7

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    .line 27
    iput-object v5, v0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 28
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 29
    iput-object v1, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    return v2

    .line 30
    :cond_4
    iget-object v2, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v2, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 31
    iput-object v1, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 32
    iput-object v1, v0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    return v4

    .line 33
    :cond_5
    iput-object v5, v0, Lcom/amap/location/fusion/a/a/a$b;->b:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 34
    iget-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    iput-object v3, v0, Lcom/amap/location/fusion/a/a/a$b;->d:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 35
    iput-object v1, v0, Lcom/amap/location/fusion/a/a/a$b;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    return v2
.end method

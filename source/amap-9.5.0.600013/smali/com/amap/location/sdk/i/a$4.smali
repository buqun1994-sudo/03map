.class Lcom/amap/location/sdk/i/a$4;
.super Lcom/amap/location/sdk/i/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/amap/location/sdk/i/a;

.field private final c:Landroid/location/LocationListener;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/sdk/i/a$a;-><init>()V

    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/amap/location/sdk/i/a$4;->a:Z

    .line 9
    new-instance p1, Lcom/amap/location/sdk/i/a$4$1;

    .line 11
    invoke-direct {p1, p0}, Lcom/amap/location/sdk/i/a$4$1;-><init>(Lcom/amap/location/sdk/i/a$4;)V

    .line 14
    iput-object p1, p0, Lcom/amap/location/sdk/i/a$4;->c:Landroid/location/LocationListener;

    .line 16
    return-void
.end method

.method private a(Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 8

    const-string v0, ""

    const-string v1, "LocMonitor"

    .line 14
    new-instance v2, Lcom/amap/location/support/bean/location/AmapLocation;

    const/16 v3, -0x3e7

    const-string v4, "gps"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/amap/location/support/bean/location/AmapLocation;-><init>(Ljava/lang/String;II)V

    .line 15
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->setLatitude(D)V

    .line 16
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->setLongitude(D)V

    .line 17
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/amap/location/type/location/Location;->setLocationUtcTime(J)V

    .line 18
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->setLocationTickTime(J)V

    .line 20
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->setAltitude(D)V

    .line 21
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setAccuracy(F)V

    .line 22
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setBearing(F)V

    .line 23
    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/amap/location/type/location/Location;->setSpeed(F)V

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 24
    invoke-static {p1}, Lwo0;->a(Landroid/location/Location;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setBearingAccuracyDegrees(F)V

    .line 25
    invoke-static {p1}, Lyo0;->a(Landroid/location/Location;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    .line 26
    invoke-static {p1}, Lzo0;->a(Landroid/location/Location;)F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setVerticalAccuracyMeters(F)V

    .line 27
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    :try_start_1
    const-string v6, "satelliteCount"

    const-string v7, "satellites"

    .line 28
    invoke-virtual {v3, v7, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    int-to-byte v7, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    .line 29
    invoke-virtual {v2, v6, v7}, Lcom/amap/location/type/location/Location;->putOptAttr(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHonor()Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_1
    const-string v6, "SourceType"

    const/4 v7, -0x1

    .line 31
    invoke-virtual {v3, v6, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v6, 0x80

    if-ne v3, v6, :cond_2

    const/16 v3, 0x300

    .line 32
    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setSubType(I)V

    goto :goto_0

    :cond_2
    and-int/lit8 v6, v3, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_3

    and-int/2addr v3, v4

    if-eq v3, v4, :cond_3

    const/16 v3, 0x302

    .line 33
    invoke-virtual {v2, v3}, Lcom/amap/location/type/location/Location;->setSubType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 34
    :try_start_2
    invoke-static {v1, v0, v3}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/amap/location/signal/impl/util/b;->a(Landroid/location/Location;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v5, 0x1

    :cond_4
    invoke-virtual {v2, v5}, Lcom/amap/location/type/location/Location;->setDiagnosisType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 36
    invoke-static {v1, v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v2
.end method

.method public static synthetic a(Lcom/amap/location/sdk/i/a$4;Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/i/a$4;->a(Landroid/location/Location;)Lcom/amap/location/support/bean/location/AmapLocation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const-string v0, "LocMonitor"

    .line 2
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/location/sdk/i/a$4;->a:Z

    if-nez v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->m(Lcom/amap/location/sdk/i/a;)Landroid/location/LocationManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    invoke-static {v1}, Lcom/amap/location/sdk/i/a;->m(Lcom/amap/location/sdk/i/a;)Landroid/location/LocationManager;

    move-result-object v2

    const-string v3, "gps"

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/amap/location/sdk/i/a$4;->c:Landroid/location/LocationListener;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    :cond_0
    const-string v1, "sys gps fuse"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/amap/location/sdk/i/a$4;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string p1, "LocMonitor"

    .line 8
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/location/sdk/i/a$4;->a:Z

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    invoke-static {v0}, Lcom/amap/location/sdk/i/a;->m(Lcom/amap/location/sdk/i/a;)Landroid/location/LocationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/amap/location/sdk/i/a$4;->b:Lcom/amap/location/sdk/i/a;

    invoke-static {v0}, Lcom/amap/location/sdk/i/a;->m(Lcom/amap/location/sdk/i/a;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/i/a$4;->c:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :cond_0
    const-string v0, "gps fuse quite"

    .line 11
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/amap/location/sdk/i/a$4;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 13
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/location/sdk/i/a$4;->a(Z)V

    .line 5
    return-void
.end method

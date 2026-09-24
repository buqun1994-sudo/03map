.class public Lfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# instance fields
.field public a:Landroid/location/LocationManager;

.field public b:J

.field public c:F

.field public d:Z

.field public e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lfo;->a:Landroid/location/LocationManager;

    .line 7
    const-wide/16 v0, 0x3e8

    .line 9
    iput-wide v0, p0, Lfo;->b:J

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lfo;->c:F

    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lfo;->d:Z

    .line 17
    const-wide/16 v1, 0x0

    .line 19
    iput-wide v1, p0, Lfo;->e:J

    .line 21
    invoke-virtual {p0, v0, v0}, Lfo;->b(II)V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, p0, Lfo;->e:J

    .line 30
    iput-boolean v0, p0, Lfo;->d:Z

    .line 32
    const-string v0, "location"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/location/LocationManager;

    .line 40
    iput-object p1, p0, Lfo;->a:Landroid/location/LocationManager;

    .line 42
    return-void
.end method

.method public static c(III)V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x4

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const v2, 0x5f5e165

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v3

    .line 13
    const/4 v4, 0x0

    .line 14
    aput-object v3, v1, v4

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p0

    .line 20
    const/4 v3, 0x1

    .line 21
    aput-object p0, v1, v3

    .line 23
    const/4 p0, 0x2

    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v1, p0

    .line 30
    const/4 p0, 0x3

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 35
    aput-object p1, v1, p0

    .line 37
    const-string p0, "[%s][3][%d][%d][%d]"

    .line 39
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    new-array p1, v3, [Ljava/lang/Object;

    .line 45
    aput-object p0, p1, v4

    .line 47
    const-string p2, "GpsLocationCollection"

    .line 49
    const-string v0, "collectionInfo = {?}"

    .line 51
    invoke-static {p2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const-string p1, "AUTO_GPS"

    .line 56
    const/16 p2, 0xa

    .line 58
    invoke-static {p1, v2, p0, p2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 61
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lfo;->d:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {p0, v0, v1}, Lfo;->b(II)V

    .line 11
    invoke-static {v0, v0, v1}, Lfo;->c(III)V

    .line 14
    return-void
.end method

.method public b(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p1, p2}, Lfo;->c(III)V

    .line 5
    return-void
.end method

.method public d()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lfo;->a:Landroid/location/LocationManager;

    .line 3
    const-string v1, "gps"

    .line 5
    iget-wide v2, p0, Lfo;->b:J

    .line 7
    iget v4, p0, Lfo;->c:F

    .line 9
    move-object v5, p0

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lfo;->a:Landroid/location/LocationManager;

    .line 3
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :goto_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfo;->d:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lfo;->e()V

    .line 8
    return-void

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    const-string v0, "gps"

    .line 13
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 23
    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lfo;->d:Z

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v0

    .line 30
    iget-wide v2, p0, Lfo;->e:J

    .line 32
    sub-long/2addr v0, v2

    .line 33
    const-wide/16 v2, 0x3e8

    .line 35
    div-long/2addr v0, v2

    .line 36
    long-to-int v1, v0

    .line 37
    invoke-virtual {p0, p1, v1}, Lfo;->b(II)V

    .line 40
    invoke-virtual {p0}, Lfo;->e()V

    .line 43
    :cond_1
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

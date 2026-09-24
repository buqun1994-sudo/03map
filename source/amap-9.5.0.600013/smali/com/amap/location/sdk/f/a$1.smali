.class Lcom/amap/location/sdk/f/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/f/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/f/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/f/a$1;->a:Lcom/amap/location/sdk/f/a;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private a(Landroid/location/Location;)Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->getGnssBlockState()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 9
    return v1

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 12
    return v1

    .line 13
    :cond_1
    invoke-static {}, Lcom/amap/location/support/util/ManuUtil;->isHuawei()Z

    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 25
    :try_start_0
    const-string v0, "SourceType"

    .line 27
    const/4 v3, -0x1

    .line 28
    invoke-virtual {p1, v0, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 31
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    const/16 v0, 0x80

    .line 34
    if-ne p1, v0, :cond_2

    .line 36
    return v1

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 41
    :cond_2
    return v2
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/sdk/f/a;->d()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "gps"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-direct {p0, p1}, Lcom/amap/location/sdk/f/a$1;->a(Landroid/location/Location;)Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/amap/location/sdk/f/a$1;->a:Lcom/amap/location/sdk/f/a;

    .line 30
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 33
    move-result-wide v1

    .line 34
    invoke-static {v0, v1, v2}, Lcom/amap/location/sdk/f/a;->a(Lcom/amap/location/sdk/f/a;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    return-void
.end method

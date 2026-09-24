.class Lcom/amap/location/fusion/a/a/a$5;
.super Lcom/amap/location/support/location/AbstractLocationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/a/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/fusion/a/a/a;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/a/a/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/a/a/a$5;->a:Lcom/amap/location/fusion/a/a/a;

    .line 3
    invoke-direct {p0}, Lcom/amap/location/support/location/AbstractLocationCallback;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/amap/location/support/bean/location/AmapLocation;->isLocationCorrect(Lcom/amap/location/support/bean/location/AmapLocation;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-string p1, "gpsloc"

    .line 9
    const-string v0, "rtk loc is null"

    .line 11
    invoke-static {p1, v0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    const-string v1, "gps"

    .line 21
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_3

    .line 27
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 30
    move-result v0

    .line 31
    const/16 v1, 0xe

    .line 33
    if-eq v0, v1, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    .line 38
    move-result v0

    .line 39
    const/16 v1, 0xf

    .line 41
    if-ne v0, v1, :cond_3

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$5;->a:Lcom/amap/location/fusion/a/a/a;

    .line 45
    invoke-static {v0}, Lcom/amap/location/fusion/a/a/a;->f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;

    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$5;->a:Lcom/amap/location/fusion/a/a/a;

    .line 53
    invoke-static {v0}, Lcom/amap/location/fusion/a/a/a;->f(Lcom/amap/location/fusion/a/a/a;)Lcom/amap/location/fusion/a/a/a$c;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/amap/location/fusion/a/a/a$c;->d()Z

    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_2

    .line 63
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/amap/location/fusion/a/a/a$5;->a:Lcom/amap/location/fusion/a/a/a;

    .line 66
    iget-object v0, v0, Lcom/amap/location/support/location/AbstractLocator;->mCallback:Lcom/amap/location/support/location/AbstractLocationCallback;

    .line 68
    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v0, p1}, Lcom/amap/location/support/location/AbstractLocationCallback;->onSubLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 73
    :cond_3
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

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method public onSubLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 0

    return-void
.end method

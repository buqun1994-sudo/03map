.class public Loy$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Loy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Loy;


# direct methods
.method public constructor <init>(Loy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy$f;->a:Loy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Loy$f;->a:Loy;

    .line 3
    invoke-static {p1}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Loy$f;->a:Loy;

    .line 11
    invoke-static {p1}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 14
    move-result-object p1

    .line 15
    const/4 v0, 0x3

    .line 16
    invoke-interface {p1, v0}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 19
    :cond_0
    return-void
.end method

.method public onSatelliteChanged(IFLjava/util/List;)V
    .locals 0

    .line 1
    iget-object p1, p0, Loy$f;->a:Loy;

    .line 3
    invoke-static {p1}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Loy$f;->a:Loy;

    .line 11
    invoke-static {p1}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 14
    move-result-object p1

    .line 15
    const/4 p2, 0x4

    .line 16
    invoke-interface {p1, p2}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 19
    :cond_0
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Loy$f;->a:Loy;

    .line 3
    invoke-static {v0}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Loy$f;->a:Loy;

    .line 11
    invoke-static {v0}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 19
    :cond_0
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 1
    iget-object v0, p0, Loy$f;->a:Loy;

    .line 3
    invoke-static {v0}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Loy$f;->a:Loy;

    .line 11
    invoke-static {v0}, Loy;->z(Loy;)Landroid/location/GpsStatus$Listener;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 19
    :cond_0
    return-void
.end method

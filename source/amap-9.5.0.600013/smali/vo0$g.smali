.class public Lvo0$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvo0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvo0;


# direct methods
.method public constructor <init>(Lvo0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvo0$g;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 5
    new-array v0, v0, [Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 7
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 14
    move-result-wide v1

    .line 15
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, [Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;

    .line 21
    invoke-static {v0, p2, v1, v2}, Lcom/amap/ams/jni/gnss/NativeGnssLocator;->sendRawMeasurement([Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;Lcom/amap/location/support/bean/gnss/AmapGnssClock;J)V

    .line 24
    const v0, 0x18f3b

    .line 27
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 30
    iget-object v0, p0, Lvo0$g;->a:Lvo0;

    .line 32
    invoke-static {v0}, Lvo0;->Z(Lvo0;)I

    .line 35
    move-result v0

    .line 36
    const/4 v3, 0x1

    .line 37
    if-le v0, v3, :cond_0

    .line 39
    iget-object v0, p0, Lvo0$g;->a:Lvo0;

    .line 41
    invoke-static {v0}, Lvo0;->a0(Lvo0;)Lgw0;

    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1, p2, v1, v2}, Lgw0;->e(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;J)V

    .line 48
    :cond_0
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

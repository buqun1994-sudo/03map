.class Lcom/amap/location/fusion/util/e$c;
.super Lcom/amap/location/fusion/util/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/fusion/util/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic f:Lcom/amap/location/fusion/util/e;

.field private g:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;


# direct methods
.method public constructor <init>(Lcom/amap/location/fusion/util/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/fusion/util/e$c;->f:Lcom/amap/location/fusion/util/e;

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/location/fusion/util/e$a;-><init>(Lcom/amap/location/fusion/util/e;)V

    .line 6
    new-instance p1, Lcom/amap/location/fusion/util/e$c$1;

    .line 8
    invoke-direct {p1, p0}, Lcom/amap/location/fusion/util/e$c$1;-><init>(Lcom/amap/location/fusion/util/e$c;)V

    .line 11
    iput-object p1, p0, Lcom/amap/location/fusion/util/e$c;->g:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 13
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-wide/from16 v13, p1

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/amap/location/fusion/util/e$a;->a()V

    .line 8
    iget-wide v1, v0, Lcom/amap/location/fusion/util/e$a;->b:J

    .line 10
    sub-long v1, v13, v1

    .line 12
    iget-object v3, v0, Lcom/amap/location/fusion/util/e$c;->f:Lcom/amap/location/fusion/util/e;

    .line 14
    invoke-static {v3}, Lcom/amap/location/fusion/util/e;->b(Lcom/amap/location/fusion/util/e;)I

    .line 17
    move-result v3

    .line 18
    add-int/lit16 v3, v3, -0xc8

    .line 20
    int-to-long v3, v3

    .line 21
    const/4 v15, 0x1

    .line 22
    cmp-long v5, v1, v3

    .line 24
    if-gtz v5, :cond_0

    .line 26
    return v15

    .line 27
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 30
    move-result-object v1

    .line 31
    invoke-interface {v1}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->getAmapMeasurements()[Ljava/lang/Object;

    .line 38
    move-result-object v1

    .line 39
    const/16 v16, 0x0

    .line 41
    if-eqz v1, :cond_1

    .line 43
    array-length v2, v1

    .line 44
    const/4 v3, 0x2

    .line 45
    if-lt v2, v3, :cond_1

    .line 47
    iget-object v2, v0, Lcom/amap/location/fusion/util/e$a;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 49
    if-eqz v2, :cond_1

    .line 51
    const/4 v2, -0x1

    .line 52
    filled-new-array {v2, v2}, [I

    .line 55
    move-result-object v17

    .line 56
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 59
    move-result-object v2

    .line 60
    aget-object v3, v1, v16

    .line 62
    check-cast v3, Ljava/util/List;

    .line 64
    aget-object v1, v1, v15

    .line 66
    move-object v4, v1

    .line 67
    check-cast v4, Lcom/amap/location/support/bean/gnss/AmapGnssClock;

    .line 69
    iget-object v1, v0, Lcom/amap/location/fusion/util/e$a;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 71
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLatitude()D

    .line 74
    move-result-wide v6

    .line 75
    iget-object v1, v0, Lcom/amap/location/fusion/util/e$a;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 77
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getLongitude()D

    .line 80
    move-result-wide v8

    .line 81
    iget-object v1, v0, Lcom/amap/location/fusion/util/e$a;->c:Lcom/amap/location/support/bean/location/AmapLocation;

    .line 83
    invoke-virtual {v1}, Lcom/amap/location/type/location/Location;->getAltitude()D

    .line 86
    move-result-wide v10

    .line 87
    move-object v1, v2

    .line 88
    move-object v2, v3

    .line 89
    move-object v3, v4

    .line 90
    move-wide/from16 v4, p1

    .line 92
    move-object/from16 v12, v17

    .line 94
    invoke-interface/range {v1 .. v12}, Lcom/amap/location/support/security/INativeAbility;->getIodByRgm(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;JDDD[I)V

    .line 97
    iget-object v1, v0, Lcom/amap/location/fusion/util/e$c;->f:Lcom/amap/location/fusion/util/e;

    .line 99
    aget v4, v17, v16

    .line 101
    aget v5, v17, v15

    .line 103
    const/4 v6, 0x0

    .line 104
    move-wide/from16 v2, p1

    .line 106
    invoke-static/range {v1 .. v6}, Lcom/amap/location/fusion/util/e;->a(Lcom/amap/location/fusion/util/e;JIIZ)V

    .line 109
    iput-wide v13, v0, Lcom/amap/location/fusion/util/e$a;->b:J

    .line 111
    return v15

    .line 112
    :cond_1
    return v16
.end method

.method public c()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/amap/location/fusion/util/e$c;->g:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 11
    iget-object v2, p0, Lcom/amap/location/fusion/util/e$c;->f:Lcom/amap/location/fusion/util/e;

    .line 13
    invoke-static {v2}, Lcom/amap/location/fusion/util/e;->a(Lcom/amap/location/fusion/util/e;)Lcom/amap/location/support/handler/AmapLooper;

    .line 16
    move-result-object v2

    .line 17
    invoke-interface {v0, v1, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->registerGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;Lcom/amap/location/support/handler/AmapLooper;)Z

    .line 20
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/amap/location/fusion/util/e$c;->g:Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;

    .line 11
    invoke-interface {v0, v1}, Lcom/amap/location/support/signal/gnss/IGnssManager;->unregisterGnssMeasurementsCallback(Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;)Z

    .line 14
    return-void
.end method

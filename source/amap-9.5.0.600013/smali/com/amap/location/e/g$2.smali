.class Lcom/amap/location/e/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/g;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/g$2;->a:Lcom/amap/location/e/g;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapGnssMeasurement;",
            ">;",
            "Lcom/amap/location/support/bean/gnss/AmapGnssClock;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/location/e/g$2;->a:Lcom/amap/location/e/g;

    .line 3
    invoke-static {v0, p1, p2}, Lcom/amap/location/e/g;->a(Lcom/amap/location/e/g;Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V

    .line 6
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    return-void
.end method

.class Lcom/amap/location/e/b$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/b;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/b$3;->a:Lcom/amap/location/e/b;

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
    new-instance v0, Lcom/amap/location/e/a/b/b;

    .line 3
    invoke-direct {v0, p1, p2}, Lcom/amap/location/e/a/b/b;-><init>(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V

    .line 6
    iget-object p1, p0, Lcom/amap/location/e/b$3;->a:Lcom/amap/location/e/b;

    .line 8
    invoke-static {p1}, Lcom/amap/location/e/b;->f(Lcom/amap/location/e/b;)Ljava/util/List;

    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object p1, p0, Lcom/amap/location/e/b$3;->a:Lcom/amap/location/e/b;

    .line 17
    invoke-static {p1}, Lcom/amap/location/e/b;->f(Lcom/amap/location/e/b;)Ljava/util/List;

    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result p1

    .line 25
    sget p2, Lcom/amap/location/e/a/d;->D:I

    .line 27
    if-le p1, p2, :cond_0

    .line 29
    iget-object p1, p0, Lcom/amap/location/e/b$3;->a:Lcom/amap/location/e/b;

    .line 31
    invoke-static {p1}, Lcom/amap/location/e/b;->f(Lcom/amap/location/e/b;)Ljava/util/List;

    .line 34
    move-result-object p1

    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/amap/location/e/b$3;->a:Lcom/amap/location/e/b;

    .line 41
    invoke-static {p1}, Lcom/amap/location/e/b;->g(Lcom/amap/location/e/b;)V

    .line 44
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    return-void
.end method

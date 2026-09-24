.class Lcom/amap/location/e/e$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapGnssMeasurementListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/e/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/e/e;


# direct methods
.method public constructor <init>(Lcom/amap/location/e/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/e/e$4;->a:Lcom/amap/location/e/e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGnssMeasurementsReceived(Ljava/util/List;Lcom/amap/location/support/bean/gnss/AmapGnssClock;)V
    .locals 6
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
    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 18
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 21
    move-result-object p2

    .line 22
    iget-object v2, p0, Lcom/amap/location/e/e$4;->a:Lcom/amap/location/e/e;

    .line 24
    iget v2, v2, Lcom/amap/location/e/e;->f:I

    .line 26
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/amap/location/support/security/INativeAbility;->getCohesionResult(Ljava/util/List;JI)D

    .line 29
    move-result-wide p1

    .line 30
    iget-object v0, p0, Lcom/amap/location/e/e$4;->a:Lcom/amap/location/e/e;

    .line 32
    iget-wide v1, v0, Lcom/amap/location/e/e;->d:D

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x1

    .line 36
    cmpl-double v5, p1, v1

    .line 38
    if-ltz v5, :cond_1

    .line 40
    iget p1, v0, Lcom/amap/location/e/e;->g:I

    .line 42
    add-int/2addr p1, v4

    .line 43
    iput p1, v0, Lcom/amap/location/e/e;->g:I

    .line 45
    iput v3, v0, Lcom/amap/location/e/e;->h:I

    .line 47
    iget p2, v0, Lcom/amap/location/e/e;->e:I

    .line 49
    if-lt p1, p2, :cond_2

    .line 51
    iput-boolean v4, v0, Lcom/amap/location/e/e;->i:Z

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    iget p1, v0, Lcom/amap/location/e/e;->h:I

    .line 56
    add-int/2addr p1, v4

    .line 57
    iput p1, v0, Lcom/amap/location/e/e;->h:I

    .line 59
    iput v3, v0, Lcom/amap/location/e/e;->g:I

    .line 61
    iget p2, v0, Lcom/amap/location/e/e;->e:I

    .line 63
    if-lt p1, p2, :cond_2

    .line 65
    iput-boolean v3, v0, Lcom/amap/location/e/e;->i:Z

    .line 67
    :cond_2
    :goto_0
    return-void
.end method

.method public onStatusChanged(I)V
    .locals 0

    return-void
.end method

.class Lcom/amap/location/e/b$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;


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
    iput-object p1, p0, Lcom/amap/location/e/b$4;->a:Lcom/amap/location/e/b;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0

    return-void
.end method

.method public onSatelliteChanged(IFLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List<",
            "Lcom/amap/location/support/bean/gnss/AmapSatellite;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/amap/location/e/b$4;->a:Lcom/amap/location/e/b;

    .line 3
    invoke-static {p1, p3}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;Ljava/util/List;)Ljava/util/List;

    .line 6
    iget-object p1, p0, Lcom/amap/location/e/b$4;->a:Lcom/amap/location/e/b;

    .line 8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 11
    move-result-object p2

    .line 12
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getElapsedRealtime()J

    .line 15
    move-result-wide p2

    .line 16
    invoke-static {p1, p2, p3}, Lcom/amap/location/e/b;->a(Lcom/amap/location/e/b;J)J

    .line 19
    iget-object p1, p0, Lcom/amap/location/e/b$4;->a:Lcom/amap/location/e/b;

    .line 21
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 28
    move-result-wide p2

    .line 29
    invoke-static {p1, p2, p3}, Lcom/amap/location/e/b;->b(Lcom/amap/location/e/b;J)J

    .line 32
    return-void
.end method

.method public onStarted()V
    .locals 0

    return-void
.end method

.method public onStopped()V
    .locals 0

    return-void
.end method

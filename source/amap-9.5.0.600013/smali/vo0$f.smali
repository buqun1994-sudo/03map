.class public Lvo0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lvo0$f;->a:Lvo0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lvo0$f;->a:Lvo0;

    .line 3
    invoke-static {v0}, Lvo0;->b(Lvo0;)Lcom/amap/location/support/bean/location/AmapLocation;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 16
    move-result-wide v1

    .line 17
    invoke-virtual {v0}, Lcom/amap/location/type/location/Location;->getLocationUtcTime()J

    .line 20
    move-result-wide v3

    .line 21
    sub-long/2addr v1, v3

    .line 22
    const-wide/32 v3, 0x1d4c0

    .line 25
    cmp-long v5, v1, v3

    .line 27
    if-gez v5, :cond_0

    .line 29
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1, v0}, Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;->sendLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 47
    :cond_0
    :goto_0
    return-void
.end method

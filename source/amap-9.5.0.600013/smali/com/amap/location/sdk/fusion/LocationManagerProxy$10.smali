.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/LocationStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;


# direct methods
.method public constructor <init>(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$10;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onDataReport(Ljava/lang/String;JJ[B)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$10;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->t(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/LocationStatusListener;

    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$10;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 11
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->t(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/LocationStatusListener;

    .line 14
    move-result-object v1

    .line 15
    move-object v2, p1

    .line 16
    move-wide v3, p2

    .line 17
    move-wide v5, p4

    .line 18
    move-object v7, p6

    .line 19
    invoke-interface/range {v1 .. v7}, Lcom/amap/location/sdk/fusion/LocationStatusListener;->onDataReport(Ljava/lang/String;JJ[B)V

    .line 22
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;JJLorg/json/JSONObject;)V
    .locals 8

    .line 1
    const-string v0, "OPT"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    long-to-int p1, p2

    .line 10
    long-to-int p2, p4

    .line 11
    invoke-static {p1, p2}, Lcom/amap/location/sdk/e/c;->a(II)V

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "block"

    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    long-to-int p1, p2

    .line 24
    long-to-int p2, p4

    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-static {p1, p2, p3}, Lcom/amap/location/support/gnssblockstate/GnssBlockState;->setGnssBlockState(IIZ)V

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$10;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 32
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->t(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/LocationStatusListener;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$10;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 40
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->t(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/LocationStatusListener;

    .line 43
    move-result-object v1

    .line 44
    move-object v2, p1

    .line 45
    move-wide v3, p2

    .line 46
    move-wide v5, p4

    .line 47
    move-object v7, p6

    .line 48
    invoke-interface/range {v1 .. v7}, Lcom/amap/location/sdk/fusion/LocationStatusListener;->onStatusChanged(Ljava/lang/String;JJLorg/json/JSONObject;)V

    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.class public Lpy$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/signal/gnss/AmapSatelliteStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpy;


# direct methods
.method public constructor <init>(Lpy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpy$c;->a:Lpy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onSatelliteChanged(IFLjava/util/List;)V
    .locals 3

    .line 1
    const/4 p2, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 7
    move-result p3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p3, 0x0

    .line 10
    :goto_0
    sget-object v0, Lpy;->k:Ljava/lang/String;

    .line 12
    const/4 v1, 0x2

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    aput-object v2, v1, p2

    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v2

    .line 26
    aput-object v2, v1, p2

    .line 28
    const-string p2, "onSatelliteChanged\uff0cfixSateSum={?},sateSum={?}"

    .line 30
    invoke-static {v0, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {p1, p3}, Lcom/autonavi/amapauto/location/LocationLinkMonitorNative;->statelliteMonitor(II)V

    .line 36
    return-void
.end method

.method public onStarted()V
    .locals 0

    .line 1
    return-void
.end method

.method public onStopped()V
    .locals 0

    .line 1
    return-void
.end method

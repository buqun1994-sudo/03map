.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;->removeUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)V
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
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    const v0, 0x1ae27

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 8
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getSignalManager()Lcom/amap/location/support/signal/ISignalManager;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Lcom/amap/location/support/signal/ISignalManager;->getGnss()Lcom/amap/location/support/signal/gnss/IGnssManager;

    .line 15
    move-result-object v0

    .line 16
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 18
    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->z(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 21
    move-result-object v2

    .line 22
    invoke-interface {v0, v2}, Lcom/amap/location/support/signal/gnss/IGnssManager;->removePassiveUpdates(Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Z

    .line 25
    invoke-static {}, Lcom/amap/location/sdk/i/a;->a()Lcom/amap/location/sdk/i/a;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/amap/location/sdk/i/a;->d()V

    .line 32
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 34
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 37
    move-result-object v0

    .line 38
    invoke-interface {v0}, Lcom/amap/location/sdk/fusion/a;->b()V

    .line 41
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 43
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->l(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 51
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->m(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 59
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->l(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lcom/amap/location/sdk/i/b;->b()V

    .line 66
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 68
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->m(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/i/b;

    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/amap/location/sdk/i/b;->b()V

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 77
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 80
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$12;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 82
    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 86
    return-void
.end method

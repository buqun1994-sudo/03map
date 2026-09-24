.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/location/sdk/fusion/LocationManagerProxy;->destroy()V
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
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "mainmgrproxy"

    .line 3
    const-string v1, "loc main destroy"

    .line 5
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 10
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->n(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)V

    .line 13
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/support/signal/gnss/AmapLocationListener;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    .line 19
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 25
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 27
    invoke-static {v0, v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/fusion/ILocationExternalProvider;)Lcom/amap/location/sdk/fusion/ILocationExternalProvider;

    .line 30
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 32
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/amap/location/sdk/fusion/a;->e()V

    .line 39
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$8;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 41
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->p(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/amap/location/sdk/fusion/a;->e()V

    .line 48
    invoke-static {}, Lcom/amap/location/sdk/e/c;->c()V

    .line 51
    invoke-static {}, Lcom/amap/location/sdk/i/a;->a()Lcom/amap/location/sdk/i/a;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/amap/location/sdk/i/a;->c()V

    .line 58
    const-string v0, "cmdappexit"

    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-static {v0, v3, v2, v1}, Lcom/amap/location/support/app/MessageCenter;->sendCommand(Ljava/lang/String;IILjava/lang/String;)V

    .line 64
    return-void
.end method

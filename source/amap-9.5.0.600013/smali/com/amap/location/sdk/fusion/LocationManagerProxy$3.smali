.class Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/sdk/fusion/c$a;


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
    iput-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method

.method private b(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->getLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " drive:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->G(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "hasgcj"

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v1, v2}, Lcom/amap/location/type/location/Location;->getOptAttrBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " gcjlat:"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gcjlat"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Lcom/amap/location/type/location/Location;->getOptAttrDouble(Ljava/lang/String;D)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " gcjlng:"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "gcjlng"

    invoke-virtual {p1, v1, v2, v3}, Lcom/amap/location/type/location/Location;->getOptAttrDouble(Ljava/lang/String;D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public a()V
    .locals 7

    const v0, 0x1ae38

    const/4 v1, 0x0

    .line 27
    invoke-static {v0, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 28
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->d(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 29
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 30
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/amap/location/sdk/fusion/a;->b()V

    .line 31
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/fusion/a;)Lcom/amap/location/sdk/fusion/a;

    .line 32
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->A(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/LocationStatusListener;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/location/sdk/fusion/a;->a(Lcom/amap/location/sdk/fusion/LocationStatusListener;)V

    .line 33
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->B(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->B(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/amap/location/sdk/fusion/a;->a(Lorg/json/JSONObject;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    const-string v2, "loc_scene"

    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->getScene()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4, v1}, Lcom/amap/location/sdk/fusion/a;->a(Ljava/lang/String;IILjava/lang/String;)V

    .line 36
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->C(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->C(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    .line 38
    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v2

    const-string v3, "cmdamapcloud"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v4, v1}, Lcom/amap/location/sdk/fusion/a;->a(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->C(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->e(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/ILocationExternalProvider;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 41
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->g(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/ILocationAosProvider;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amap/location/sdk/fusion/a;->a(Lcom/amap/location/sdk/fusion/ILocationAosProvider;)V

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->y(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v1

    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->u(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)I

    move-result v2

    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->v(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)J

    move-result-wide v3

    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->w(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)F

    move-result v5

    invoke-static {}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a()Z

    move-result v6

    invoke-interface/range {v1 .. v6}, Lcom/amap/location/sdk/fusion/a;->a(IJFZ)V

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->D(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 45
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->D(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v2}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->D(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->getMinTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v4}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->E(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amap/location/sdk/fusion/a;->a(Lcom/amap/location/support/signal/gnss/AmapLocationListener;JZ)V

    .line 46
    :cond_5
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 47
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->F(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->F(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method

.method public a(I)V
    .locals 6

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sub process disconnect   reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const v0, 0x1ae3b

    invoke-static {v0, p1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[B)V

    .line 50
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->d(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Z)Z

    .line 51
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->o(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 52
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->p(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->c(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/sdk/fusion/a;)Lcom/amap/location/sdk/fusion/a;

    .line 53
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->B(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->B(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amap/location/sdk/fusion/a;->a(Lorg/json/JSONObject;)V

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->y(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->f(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/sdk/fusion/a;

    move-result-object v0

    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->u(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)I

    move-result v1

    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->v(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)J

    move-result-wide v2

    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->w(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)F

    move-result v4

    invoke-static {}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a()Z

    move-result v5

    invoke-interface/range {v0 .. v5}, Lcom/amap/location/sdk/fusion/a;->a(IJFZ)V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 58
    iget-object p1, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->i(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->F(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public a(Lcom/amap/location/support/bean/location/AmapLocation;)V
    .locals 5

    const-string v0, "mainmgrproxy"

    if-nez p1, :cond_0

    const-string p1, "sub loc callback is null"

    .line 1
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/location/sdk/h/b;->a()Lcom/amap/location/sdk/h/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/location/sdk/h/b;->a(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 3
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    move-result-object v1

    const-string v2, "sdkrcs"

    invoke-virtual {v1, v2}, Lcom/amap/location/support/log/StartTimeConsumingLog;->put(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get sub loc callback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->b(Lcom/amap/location/support/bean/location/AmapLocation;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-static {p1, v2}, Lcom/amap/location/support/util/TextUtils;->getSimpleLocationLog(Lcom/amap/location/support/bean/location/AmapLocation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const v3, 0xea60

    const v4, 0x1ae2b

    invoke-static {v4, v2, v3}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportEvent(I[BI)V

    .line 6
    invoke-static {v0, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Z)Z

    .line 8
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/amap/location/support/log/StartTimeConsumingLog;->getInstance()Lcom/amap/location/support/log/StartTimeConsumingLog;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/location/support/log/StartTimeConsumingLog;->setLocation(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onLocationChanged(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 11
    :cond_1
    invoke-static {}, Lcom/amap/location/sdk/i/a;->a()Lcom/amap/location/sdk/i/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amap/location/sdk/i/a;->a(Z)V

    const v0, 0x1899f

    .line 12
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 13
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gps"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getType()I

    move-result v0

    if-nez v0, :cond_3

    const v0, 0x18f42

    .line 14
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 15
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0, p1}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->a(Lcom/amap/location/sdk/fusion/LocationManagerProxy;Lcom/amap/location/support/bean/location/AmapLocation;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v2, 0x18f50

    .line 16
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/amap/location/support/app/MessageCenter;->onDriveNavi()Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x18fa6

    .line 18
    invoke-static {v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    if-eqz v0, :cond_3

    const v0, 0x18fb4

    .line 19
    invoke-static {v0}, Lcom/amap/location/support/uptunnel/UpTunnel;->addCount(I)V

    .line 20
    :cond_3
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocation(Lcom/amap/location/support/bean/location/AmapLocation;)V

    .line 21
    invoke-virtual {p1}, Lcom/amap/location/type/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 22
    invoke-static {p1}, Lcom/amap/location/support/app/MessageCenter;->setLastLocationGnss(Lcom/amap/location/support/bean/location/AmapLocation;)V

    :cond_4
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderEnabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onStatusChanged(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/location/sdk/fusion/LocationManagerProxy$3;->a:Lcom/amap/location/sdk/fusion/LocationManagerProxy;

    invoke-static {v0}, Lcom/amap/location/sdk/fusion/LocationManagerProxy;->x(Lcom/amap/location/sdk/fusion/LocationManagerProxy;)Lcom/amap/location/support/signal/gnss/AmapLocationListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/location/support/signal/gnss/AmapLocationListener;->onProviderDisabled(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

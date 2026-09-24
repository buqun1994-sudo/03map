.class public Lqm0;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Lpm0;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    const-string p1, "WidgetWeatherUpdateHandler"

    .line 6
    iput-object p1, p0, Lqm0;->a:Ljava/lang/String;

    .line 8
    invoke-virtual {p0}, Lqm0;->c()V

    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetWeatherUpdateHandler"

    .line 6
    const-string v3, "endUpdateWeather"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    return-void
.end method

.method public b()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "WidgetWeatherUpdateHandler"

    .line 6
    const-string v3, "hasWeatherMessage"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public final c()V
    .locals 1

    .line 1
    new-instance v0, Lpm0;

    .line 3
    invoke-direct {v0}, Lpm0;-><init>()V

    .line 6
    iput-object v0, p0, Lqm0;->b:Lpm0;

    .line 8
    return-void
.end method

.method public final d()Z
    .locals 7

    .line 1
    invoke-static {}, Lhm0;->l()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Lnb;->j()Lnb;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lnb;->p()Z

    .line 12
    move-result v1

    .line 13
    invoke-static {}, Lnb;->j()Lnb;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lnb;->r()Z

    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x1

    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    if-nez v1, :cond_0

    .line 27
    if-nez v2, :cond_0

    .line 29
    const/4 v5, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v5, 0x0

    .line 32
    :goto_0
    if-nez v5, :cond_1

    .line 34
    const/4 v6, 0x3

    .line 35
    new-array v6, v6, [Ljava/lang/Object;

    .line 37
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    move-result-object v0

    .line 41
    aput-object v0, v6, v4

    .line 43
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    move-result-object v0

    .line 47
    aput-object v0, v6, v3

    .line 49
    const/4 v0, 0x2

    .line 50
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    move-result-object v1

    .line 54
    aput-object v1, v6, v0

    .line 56
    const-string v0, "WidgetWeatherUpdateHandler"

    .line 58
    const-string v1, "isNeedGetWeather() return false. isWidgetAdded={?}, isCruise={?}, isInNavi={?}"

    .line 60
    invoke-static {v0, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_1
    return v5
.end method

.method public e()V
    .locals 4

    .line 1
    invoke-static {}, Lmb;->e()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "WidgetWeatherUpdateHandler"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string v0, "startUpdateWeather(). jingmoWeather not Configed"

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "startUpdateWeather"

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 28
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    if-eqz p1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const-string p1, "handleMessage MSG_UPDATE_WEATHER"

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v1, v0, [Ljava/lang/Object;

    .line 14
    const-string v2, "WidgetWeatherUpdateHandler"

    .line 16
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    invoke-static {}, Lmb;->e()Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p0}, Lqm0;->d()Z

    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 31
    const/4 p1, 0x5

    .line 32
    invoke-static {p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;->requestWidgetInfo(I)V

    .line 35
    :cond_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 38
    const-wide/32 v1, 0x1b7740

    .line 41
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const-string p1, "handleMessage MSG_UPDATE_WEATHER jingmoWeather not Configed"

    .line 47
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :goto_0
    return-void
.end method

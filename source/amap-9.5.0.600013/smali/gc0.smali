.class public Lgc0;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    const-string p1, "SearchHandler"

    .line 6
    iput-object p1, p0, Lgc0;->a:Ljava/lang/String;

    .line 8
    return-void
.end method

.method public static g(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_OIL_DISTANCE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    sput p1, Llc0;->a:I

    .line 10
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrv;->L()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    return-void
.end method

.method public static h(Landroid/content/Context;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_PARK_DISTANCE"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    sput p1, Llc0;->b:I

    .line 10
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrv;->L()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "SearchHandler"

    .line 6
    const-string v2, "endAllMsg"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lgc0;->b()V

    .line 14
    invoke-virtual {p0}, Lgc0;->c()V

    .line 17
    return-void
.end method

.method public b()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SearchHandler"

    .line 6
    const-string v3, "endOilMsg"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "SearchHandler"

    .line 6
    const-string v2, "endParkMsg"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    return-void
.end method

.method public d()Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "SearchHandler"

    .line 6
    const-string v3, "hasOilMessage"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public e()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "SearchHandler"

    .line 6
    const-string v2, "hasParkMessage"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final f()Z
    .locals 9

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
    invoke-static {}, Lzl0;->a()Z

    .line 16
    move-result v2

    .line 17
    invoke-static {}, Lnb;->j()Lnb;

    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Lnb;->r()Z

    .line 24
    move-result v3

    .line 25
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Lhm0;->h()Z

    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x1

    .line 34
    const/4 v6, 0x0

    .line 35
    if-eqz v0, :cond_0

    .line 37
    if-nez v1, :cond_0

    .line 39
    if-nez v3, :cond_0

    .line 41
    if-eqz v4, :cond_0

    .line 43
    const/4 v7, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v7, 0x0

    .line 46
    :goto_0
    if-nez v7, :cond_1

    .line 48
    const/4 v8, 0x5

    .line 49
    new-array v8, v8, [Ljava/lang/Object;

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 54
    move-result-object v0

    .line 55
    aput-object v0, v8, v6

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object v0

    .line 61
    aput-object v0, v8, v5

    .line 63
    const/4 v0, 0x2

    .line 64
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v1

    .line 68
    aput-object v1, v8, v0

    .line 70
    const/4 v0, 0x3

    .line 71
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 74
    move-result-object v1

    .line 75
    aput-object v1, v8, v0

    .line 77
    const/4 v0, 0x4

    .line 78
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 81
    move-result-object v1

    .line 82
    aput-object v1, v8, v0

    .line 84
    const-string v0, "SearchHandler"

    .line 86
    const-string v1, "isNeedSearchOil() return false. isWidgetAdded={?}, isCruise={?}, is4x3WidgetEnabled={?}, isInNavi={?}, isAppInBackground={?}"

    .line 88
    invoke-static {v0, v1, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :cond_1
    return v7
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    iget p1, p1, Landroid/os/Message;->what:I

    .line 6
    const-wide/16 v0, 0x7530

    .line 8
    const-string v2, "SearchHandler"

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p1, :cond_3

    .line 13
    const/4 v4, 0x1

    .line 14
    if-eq p1, v4, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string p1, "handleMessage MSG_SEARCH_FROM_PARK"

    .line 19
    new-array v5, v3, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lmb;->d()Z

    .line 27
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 30
    invoke-virtual {p0}, Lgc0;->f()Z

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    const/4 p1, 0x3

    .line 37
    invoke-static {p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;->requestWidgetInfo(I)V

    .line 40
    :cond_1
    invoke-virtual {p0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 43
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const-string p1, "jingmoParking not configed"

    .line 49
    new-array v0, v3, [Ljava/lang/Object;

    .line 51
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string p1, "handleMessage MSG_SEARCH_FROM_OIL"

    .line 57
    new-array v4, v3, [Ljava/lang/Object;

    .line 59
    invoke-static {v2, p1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {}, Lmb;->c()Z

    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p0}, Lgc0;->f()Z

    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 74
    const/4 p1, 0x4

    .line 75
    invoke-static {p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetRequest;->requestWidgetInfo(I)V

    .line 78
    :cond_4
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 81
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    const-string p1, "jingmoOil not configed"

    .line 87
    new-array v0, v3, [Ljava/lang/Object;

    .line 89
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void
.end method

.method public i()V
    .locals 3

    .line 1
    invoke-static {}, Lmb;->d()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "SearchHandler"

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string v0, "startParkMsg(). jingmoParking not configed"

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "startParkMsg"

    .line 20
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lgc0;->e()Z

    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 32
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 35
    :cond_1
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 38
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "SearchHandler"

    .line 6
    const-string v2, "startSendAllMsg"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lgc0;->k()V

    .line 14
    invoke-virtual {p0}, Lgc0;->i()V

    .line 17
    return-void
.end method

.method public k()V
    .locals 4

    .line 1
    invoke-static {}, Lmb;->c()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "SearchHandler"

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string v0, "startSendOilMsg(). jingmoOil not configed"

    .line 12
    new-array v2, v2, [Ljava/lang/Object;

    .line 14
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "startSendOilMsg"

    .line 20
    new-array v3, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lgc0;->d()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    :cond_1
    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 37
    return-void
.end method

.class public Lfh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcr;


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lfh;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-object v2, p0, Lfh;->a:Ljava/lang/String;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const/4 v2, 0x1

    .line 10
    aput-object p1, v1, v2

    .line 12
    const-string v4, "CruiseCurrentCurrentRoadNameWidgetListener"

    .line 14
    const-string v5, "onCruiseRoadNameChange(). cruiseRoadName = {?}, newRoadName={?}"

    .line 16
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lfh;->a:Ljava/lang/String;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    if-eqz p1, :cond_1

    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v1, 0x0

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 35
    :goto_1
    iput-object p1, p0, Lfh;->a:Ljava/lang/String;

    .line 37
    invoke-static {}, Lob;->c()Z

    .line 40
    move-result p1

    .line 41
    invoke-static {}, Lnb;->j()Lnb;

    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lnb;->p()Z

    .line 48
    move-result v5

    .line 49
    invoke-static {}, Lmb;->g()Z

    .line 52
    move-result v6

    .line 53
    if-eqz p1, :cond_2

    .line 55
    if-eqz v5, :cond_2

    .line 57
    if-eqz v1, :cond_2

    .line 59
    if-eqz v6, :cond_2

    .line 61
    new-array p1, v2, [Ljava/lang/Object;

    .line 63
    iget-object v0, p0, Lfh;->a:Ljava/lang/String;

    .line 65
    aput-object v0, p1, v3

    .line 67
    const-string v0, "onCruiseRoadNameChange(). update roadName: {?}"

    .line 69
    invoke-static {v4, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-instance p1, Landroid/content/Intent;

    .line 74
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_ROAD_NAME_INFO"

    .line 76
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lrv;->H()Lrv;

    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lrv;->L()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    invoke-static {}, Lrv;->H()Lrv;

    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 101
    goto :goto_2

    .line 102
    :cond_2
    const/4 v7, 0x4

    .line 103
    new-array v7, v7, [Ljava/lang/Object;

    .line 105
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 108
    move-result-object p1

    .line 109
    aput-object p1, v7, v3

    .line 111
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object p1

    .line 115
    aput-object p1, v7, v2

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 120
    move-result-object p1

    .line 121
    aput-object p1, v7, v0

    .line 123
    const/4 p1, 0x3

    .line 124
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 127
    move-result-object v0

    .line 128
    aput-object v0, v7, p1

    .line 130
    const-string p1, "onCruiseRoadNameChange(). isScreenShotEnable={?}, isCruise={?}, isNeedSend={?}, hasXunhangRoadName={?}"

    .line 132
    invoke-static {v4, p1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :goto_2
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 3
    iput-object v0, p0, Lfh;->a:Ljava/lang/String;

    .line 5
    return-void
.end method

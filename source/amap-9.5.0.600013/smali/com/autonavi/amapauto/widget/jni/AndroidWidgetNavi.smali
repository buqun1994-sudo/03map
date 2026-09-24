.class public Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidWidgetNavi"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isInCruise()Z
.end method

.method public static native isInNavi()Z
.end method

.method public static native isInSimulateNavi()Z
.end method

.method public static onHideNaviLaneInfo(I)V
    .locals 6

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "AndroidWidgetNavi"

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 12
    new-array v0, v4, [Ljava/lang/Object;

    .line 14
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v5

    .line 18
    aput-object v5, v0, v2

    .line 20
    const-string v2, "onHideNaviLaneInfo scene:{?}"

    .line 22
    invoke-static {v3, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    if-eqz p0, :cond_1

    .line 27
    if-eq p0, v4, :cond_0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 33
    move-result-object p0

    .line 34
    invoke-virtual {p0, v1}, Lse;->setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lob;->k()V

    .line 41
    invoke-static {}, Lnm;->e()Lnm;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v4}, Lnm;->m(Z)V

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const-string p0, "onHideNaviLaneInfo"

    .line 51
    new-array v0, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lob;->k()V

    .line 59
    invoke-static {}, Lnm;->e()Lnm;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0, v4}, Lnm;->m(Z)V

    .line 66
    invoke-static {}, Lse;->c()Lse;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, v1}, Lse;->setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 73
    :goto_0
    return-void
.end method

.method public static onNaviStatusChange(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p0

    .line 9
    aput-object p0, v0, v1

    .line 11
    const-string p0, "AndroidWidgetNavi"

    .line 13
    const-string v1, "onNaviStatusChange status={?}"

    .line 15
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static onShowNaviCamera(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/widget/jni/NaviCamera;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v1, "AndroidWidgetNavi"

    .line 9
    const-string v2, "onShowNaviCamera naviCameras={?}"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sput-object p0, Lco;->n:Ljava/util/List;

    .line 16
    return-void
.end method

.method public static onShowNaviLaneInfo(ILcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 4

    .line 1
    invoke-static {}, Lib;->l()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "AndroidWidgetNavi"

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_2

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    aput-object p1, v0, v1

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v1

    .line 20
    aput-object v1, v0, v3

    .line 22
    const-string v1, "floatTest onShowNaviLaneInfo laneInfo:{?}, scene:{?}"

    .line 24
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    if-eqz p0, :cond_1

    .line 29
    if-eq p0, v3, :cond_0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lse;->c()Lse;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0, p1}, Lse;->setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {p1}, Lob;->l(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 43
    invoke-static {}, Lnm;->e()Lnm;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p1, v3}, Lnm;->n(Lcom/autonavi/amapauto/widget/jni/LaneInfo;Z)V

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    new-array p0, v3, [Ljava/lang/Object;

    .line 53
    aput-object p1, p0, v1

    .line 55
    const-string v0, "floatTest onShowNaviLaneInfo laneInfo={?}"

    .line 57
    invoke-static {v2, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Lob;->l(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 63
    invoke-static {}, Lnm;->e()Lnm;

    .line 66
    move-result-object p0

    .line 67
    invoke-virtual {p0, p1, v3}, Lnm;->n(Lcom/autonavi/amapauto/widget/jni/LaneInfo;Z)V

    .line 70
    invoke-static {}, Lse;->c()Lse;

    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Lse;->setLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 77
    :goto_0
    return-void
.end method

.method public static onTmcUpdate(Ljava/util/List;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/widget/jni/LightBarItem;",
            ">;II)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 p0, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object p1

    .line 12
    aput-object p1, v0, p0

    .line 14
    const/4 p0, 0x2

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    aput-object p1, v0, p0

    .line 21
    const-string p0, "AndroidWidgetNavi"

    .line 23
    const-string p1, "onTmcUpdate items={?},total={?},rest={?}"

    .line 25
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return-void
.end method

.method public static onUpdateNaviInfo(Ljava/util/List;Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/widget/jni/NaviInfo;",
            ">;",
            "Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    sput-object p0, Lco;->o:Ljava/util/List;

    .line 10
    sput-object p1, Lco;->p:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 12
    invoke-static {}, Lnb;->j()Lnb;

    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lnb;->J()V

    .line 19
    return-void
.end method

.method public static native openTrafficDog(I)V
.end method

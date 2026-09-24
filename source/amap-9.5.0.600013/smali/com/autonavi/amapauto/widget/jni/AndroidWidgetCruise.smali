.class public Lcom/autonavi/amapauto/widget/jni/AndroidWidgetCruise;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidWidgetCruise"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isCruise()Z
.end method

.method public static onCarPositionAngleChanged(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const-string v1, "AndroidWidgetCruise"

    .line 13
    const-string v2, "onCarPositionAngleChanged carAngle={?}"

    .line 15
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-static {}, Lob;->e()Z

    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lhm0;->i()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lnb;->j()Lnb;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lnb;->w(I)V

    .line 38
    :cond_1
    return-void
.end method

.method public static onCruiseRoadNameChange(Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string v2, "AndroidWidgetCruise"

    .line 9
    const-string v3, "onCruiseRoadNameChange roadName={?}"

    .line 11
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {}, Lob;->e()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    return-void

    .line 21
    :cond_0
    invoke-static {}, Lob;->c()Z

    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lnb;->j()Lnb;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lnb;->p()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const-string v0, "onCruiseRoadNameChange inCruise"

    .line 39
    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-static {}, Lnb;->j()Lnb;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lnb;->h()Lcr;

    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0, p0}, Lcr;->b(Ljava/lang/String;)V

    .line 55
    :cond_1
    return-void
.end method

.method public static onCruiseStatusChange(I)V
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
    const-string p0, "AndroidWidgetCruise"

    .line 13
    const-string v1, "onCruiseStatusChange cruiseStatus={?}"

    .line 15
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method public static onHideCruiseLaneInfo()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AndroidWidgetCruise"

    .line 6
    const-string v3, "onHideCruiseLaneInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lob;->k()V

    .line 14
    invoke-static {}, Lnm;->e()Lnm;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, v0}, Lnm;->m(Z)V

    .line 21
    return-void
.end method

.method public static onShowCruiseLaneInfo(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 4

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget v1, p0, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->type:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->frontLane:[I

    .line 15
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const/4 v3, 0x1

    .line 20
    aput-object v1, v0, v3

    .line 22
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->backLane:[I

    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    const/4 v3, 0x2

    .line 29
    aput-object v1, v0, v3

    .line 31
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->tollGate:[I

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const/4 v3, 0x3

    .line 38
    aput-object v1, v0, v3

    .line 40
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->extFlags:[I

    .line 42
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    const/4 v3, 0x4

    .line 47
    aput-object v1, v0, v3

    .line 49
    const-string v1, "AndroidWidgetCruise"

    .line 51
    const-string v3, "floatTest type={?} onShowCruiseLaneInfo frontLane={?},backLane={?},tollGate={?},extFlags={?}"

    .line 53
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lhm0;->l()Z

    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 62
    invoke-static {p0}, Lob;->l(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 65
    :cond_0
    invoke-static {}, Lnm;->e()Lnm;

    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p0, v2}, Lnm;->n(Lcom/autonavi/amapauto/widget/jni/LaneInfo;Z)V

    .line 72
    return-void
.end method

.method public static onUpdateCruiseFacility(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const-string v3, "AndroidWidgetCruise"

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/autonavi/amapauto/widget/jni/CruiseFacilityInfo;

    .line 20
    const/4 v4, 0x1

    .line 21
    new-array v4, v4, [Ljava/lang/Object;

    .line 23
    aput-object v1, v4, v2

    .line 25
    const-string v1, "onUpdateCruiseFacility {?}"

    .line 27
    invoke-static {v3, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lob;->e()Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lob;->c()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_2

    .line 44
    invoke-static {}, Lnb;->j()Lnb;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lnb;->p()Z

    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 54
    const-string v0, "onUpdateCruiseFacility inCruise"

    .line 56
    new-array v1, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lnb;->j()Lnb;

    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {v0, p0}, Lnb;->D(Ljava/util/List;)V

    .line 68
    :cond_2
    return-void
.end method

.class public Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/jni/AndroidDriveNavigation$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidDriveNavigation"

.field private static linkHttpSessionCallback:Lcom/autonavi/amapauto/jni/AndroidDriveNavigation$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native isInNavi()Z
.end method

.method public static native isInSimulateNavi()Z
.end method

.method public static jniISLElecEyeInfoNotify(DDII)V
    .locals 8

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const/4 v1, 0x3

    .line 26
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    aput-object v2, v0, v1

    .line 32
    const-string v1, "AndroidDriveNavigation"

    .line 34
    const-string v2, "jniISLElecEyeInfoNotify, lon={?}, lat={?}, dist={?}, speed={?}"

    .line 36
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 48
    move-result-object v1

    .line 49
    move-wide v2, p0

    .line 50
    move-wide v4, p2

    .line 51
    move v6, p4

    .line 52
    move v7, p5

    .line 53
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->d(DDII)V

    .line 56
    :cond_0
    return-void
.end method

.method public static jniISLEventNotify(I)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v3

    .line 9
    aput-object v3, v1, v2

    .line 11
    const-string v2, "AndroidDriveNavigation"

    .line 13
    const-string v3, "jniISLEventNotify, event = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    if-eq p0, v0, :cond_2

    .line 20
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_1

    .line 23
    const/4 v0, 0x3

    .line 24
    if-eq p0, v0, :cond_0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 30
    move-result-object p0

    .line 31
    if-eqz p0, :cond_3

    .line 33
    new-instance p0, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation$a;

    .line 35
    invoke-direct {p0}, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation$a;-><init>()V

    .line 38
    const-wide/16 v0, 0x3e8

    .line 40
    invoke-static {p0, v0, v1}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 47
    move-result-object p0

    .line 48
    if-eqz p0, :cond_3

    .line 50
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->c()V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Ll30;->g()Ll30;

    .line 61
    move-result-object p0

    .line 62
    new-instance v0, Lgt;

    .line 64
    invoke-direct {v0}, Lgt;-><init>()V

    .line 67
    invoke-virtual {p0, v0}, Ll30;->a(Lec;)V

    .line 70
    :cond_3
    :goto_0
    return-void
.end method

.method public static jniISLJctWayInfoNotify(DDI)V
    .locals 7

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 15
    move-result-object v2

    .line 16
    aput-object v2, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    aput-object v2, v0, v1

    .line 25
    const-string v1, "AndroidDriveNavigation"

    .line 27
    const-string v2, "jniISLJctWayInfoNotify, lon={?}, lat={?}, dist={?}"

    .line 29
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 41
    move-result-object v1

    .line 42
    move-wide v2, p0

    .line 43
    move-wide v4, p2

    .line 44
    move v6, p4

    .line 45
    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->e(DDI)V

    .line 48
    :cond_0
    return-void
.end method

.method public static jniISLRoadClassInfoNotify(Ljava/lang/String;I)V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    aput-object v2, v0, v1

    .line 14
    const-string v1, "AndroidDriveNavigation"

    .line 16
    const-string v2, "jniISLRoadClassInfoNotify, roadName={?}, roadClass={?}"

    .line 18
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->b()Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, p0, p1}, Lcom/autonavi/auto/autostart/IntelligentSpeedLimitService;->f(Ljava/lang/String;I)V

    .line 34
    :cond_0
    return-void
.end method

.method public static jniLinkHttpSessionINNotify(Lcom/autonavi/amapauto/remotecontrol/HttpSession;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "isnull"

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    aput-object p0, v0, v1

    .line 16
    const-string p0, "AndroidDriveNavigation"

    .line 18
    const-string v1, "jniLinkHttpSessionINNotify http:{?}"

    .line 20
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public static jniNzpRouteLinkInfoListNotify(Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AndroidDriveNavigation"

    .line 6
    const-string v2, "jniNzpRouteLinkInfoListNotify nzpRouteLinkInfoData "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lse;->setNzpRouteLinkInfoListNotify(Lcom/autonavi/amapauto/jni/protocol/data/NzpRouteLinkInfoData;)Z

    .line 18
    return-void
.end method

.method public static jniQueryCongestionCallback(DD)V
    .locals 0

    .line 1
    invoke-static {}, Lsl0;->b()Lsl0;

    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lsl0;->a()Lsl0$b;

    .line 8
    return-void
.end method

.method public static native nativeDriveRestrictionStateNotify(I)V
.end method

.method public static native nativeQueryCongestion(Ljava/lang/String;DD)V
.end method

.method public static native nativeSetISLState(Z)Z
.end method

.method public static setLinkHttpSessionCallback(Lcom/autonavi/amapauto/jni/AndroidDriveNavigation$b;)V
    .locals 0

    return-void
.end method

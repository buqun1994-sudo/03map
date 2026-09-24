.class public Lcom/autonavi/floatwindow/FloatViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/floatwindow/FloatViewUtils$ElecticCameraInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatViewUtils"

.field static final TEXT_TYPE_COLORS:[I

.field static final TYPE_BGS:[I

.field static final TYPE_DIRECTIONS:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const v0, -0xfaeaf

    .line 4
    const v1, -0xca379e

    .line 7
    filled-new-array {v0, v1, v1}, [I

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/autonavi/floatwindow/FloatViewUtils;->TEXT_TYPE_COLORS:[I

    .line 13
    sget v0, Lcom/autonavi/floatwindow/R$drawable;->red_night:I

    .line 15
    sget v1, Lcom/autonavi/floatwindow/R$drawable;->green_night:I

    .line 17
    filled-new-array {v0, v1, v1}, [I

    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/autonavi/floatwindow/FloatViewUtils;->TYPE_BGS:[I

    .line 23
    sget v0, Lcom/autonavi/floatwindow/R$drawable;->left_night:I

    .line 25
    sget v1, Lcom/autonavi/floatwindow/R$drawable;->straight_night:I

    .line 27
    sget v2, Lcom/autonavi/floatwindow/R$drawable;->right_night:I

    .line 29
    const/4 v3, 0x0

    .line 30
    filled-new-array {v3, v0, v1, v2}, [I

    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/autonavi/floatwindow/FloatViewUtils;->TYPE_DIRECTIONS:[I

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lig;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/autonavi/floatwindow/FloatViewUtils;->applyNewConstraint(Lig;Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/floatwindow/FloatViewUtils;->applyCameraLightsConstraint(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

    .line 4
    return-void
.end method

.method private static applyCameraLightsConstraint(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V
    .locals 7

    .line 1
    new-instance v6, Lkg;

    .line 3
    invoke-direct {v6}, Lkg;-><init>()V

    .line 6
    invoke-virtual {v6, p1}, Lkg;->f(Lig;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "applyCameraLightsConstraint roadNameShowing:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    const-string v2, "FloatViewUtils"

    .line 31
    invoke-static {v2, v0, v1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x4

    .line 35
    const/4 v1, 0x3

    .line 36
    if-nez p3, :cond_0

    .line 38
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 41
    move-result p3

    .line 42
    invoke-virtual {v6, p3, v1}, Lkg;->e(II)V

    .line 45
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 48
    move-result p3

    .line 49
    invoke-virtual {v6, p3, v0}, Lkg;->e(II)V

    .line 52
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x3

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x3

    .line 59
    const/4 v5, 0x0

    .line 60
    move-object v0, v6

    .line 61
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x4

    .line 69
    const/4 v4, 0x4

    .line 70
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 73
    if-eqz p4, :cond_1

    .line 75
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 78
    move-result p2

    .line 79
    const/4 p3, 0x6

    .line 80
    invoke-virtual {v6, p2, p3}, Lkg;->e(II)V

    .line 83
    sget v1, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 85
    const/4 v2, 0x6

    .line 86
    const/4 v3, 0x0

    .line 87
    const/4 v4, 0x6

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 91
    move-result-object p0

    .line 92
    sget p2, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_90:I

    .line 94
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 97
    move-result v5

    .line 98
    move-object v0, v6

    .line 99
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 102
    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 106
    move-result p3

    .line 107
    invoke-virtual {v6, p3, v1}, Lkg;->e(II)V

    .line 110
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 113
    move-result p3

    .line 114
    invoke-virtual {v6, p3, v0}, Lkg;->e(II)V

    .line 117
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 120
    move-result v1

    .line 121
    const/4 v2, 0x4

    .line 122
    sget v3, Lcom/autonavi/floatwindow/R$id;->cl_speed:I

    .line 124
    const/4 v4, 0x4

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    move-result-object p0

    .line 129
    sget p2, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_27:I

    .line 131
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    move-result v5

    .line 135
    move-object v0, v6

    .line 136
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {v6, p1}, Lkg;->c(Lig;)V

    .line 142
    return-void
.end method

.method private static applyNewConstraint(Lig;Landroid/view/View;Z)V
    .locals 7

    .line 1
    new-instance v6, Lkg;

    .line 3
    invoke-direct {v6}, Lkg;-><init>()V

    .line 6
    invoke-virtual {v6, p0}, Lkg;->f(Lig;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "applyNewConstraint cameraLightsShowing:"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const/4 v1, 0x0

    .line 27
    new-array v1, v1, [Ljava/lang/Object;

    .line 29
    const-string v2, "FloatViewUtils"

    .line 31
    invoke-static {v2, v0, v1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    const/4 v0, 0x4

    .line 35
    const/4 v1, 0x3

    .line 36
    if-nez p2, :cond_0

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 41
    move-result p2

    .line 42
    invoke-virtual {v6, p2, v1}, Lkg;->e(II)V

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 48
    move-result p2

    .line 49
    invoke-virtual {v6, p2, v0}, Lkg;->e(II)V

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 55
    move-result v1

    .line 56
    const/4 v2, 0x3

    .line 57
    const/4 v3, 0x0

    .line 58
    const/4 v4, 0x3

    .line 59
    const/4 v5, 0x0

    .line 60
    move-object v0, v6

    .line 61
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 67
    move-result v1

    .line 68
    const/4 v2, 0x4

    .line 69
    const/4 v4, 0x4

    .line 70
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 77
    move-result p2

    .line 78
    invoke-virtual {v6, p2, v1}, Lkg;->e(II)V

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 84
    move-result p2

    .line 85
    invoke-virtual {v6, p2, v0}, Lkg;->e(II)V

    .line 88
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 91
    move-result v1

    .line 92
    const/4 v2, 0x3

    .line 93
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x3

    .line 95
    const/4 v5, 0x0

    .line 96
    move-object v0, v6

    .line 97
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 100
    :goto_0
    invoke-virtual {v6, p0}, Lkg;->c(Lig;)V

    .line 103
    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/floatwindow/R$layout;->layout_widget_cruise_tbt_info_navigation_widget_asevtwev:I

    .line 3
    return v0
.end method

.method public static getRoadNamePlaceId()I
    .locals 1

    .line 1
    sget v0, Lcom/autonavi/floatwindow/R$id;->stv_street_name_place:I

    .line 3
    return v0
.end method

.method public static refreshLightsGroup(Landroid/view/View;Landroid/content/Context;Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;I)V
    .locals 8

    .line 1
    sget v0, Lcom/autonavi/floatwindow/R$id;->flexbox_layout:I

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    move-result-object v0

    .line 7
    move-object v6, v0

    .line 8
    check-cast v6, Lcom/google/android/flexbox/FlexboxLayout;

    .line 10
    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 26
    move-result-object v0

    .line 27
    new-instance v7, Lcom/autonavi/floatwindow/FloatViewUtils$2;

    .line 29
    move-object v1, v7

    .line 30
    move-object v2, p2

    .line 31
    move v3, p3

    .line 32
    move-object v4, p0

    .line 33
    move-object v5, p1

    .line 34
    invoke-direct/range {v1 .. v6}, Lcom/autonavi/floatwindow/FloatViewUtils$2;-><init>(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;ILandroid/view/View;Landroid/content/Context;Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 37
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 42
    new-array p1, p1, [Ljava/lang/Object;

    .line 44
    const-string p2, "FloatViewUtils"

    .line 46
    const-string v0, "refreshLightsGroup is empty data~"

    .line 48
    invoke-static {p2, v0, p1}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 54
    move-result-object p1

    .line 55
    new-instance p2, Lcom/autonavi/floatwindow/FloatViewUtils$1;

    .line 57
    invoke-direct {p2, v6, p0, p3}, Lcom/autonavi/floatwindow/FloatViewUtils$1;-><init>(Lcom/google/android/flexbox/FlexboxLayout;Landroid/view/View;I)V

    .line 60
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

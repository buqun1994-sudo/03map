.class public Lcom/autonavi/floatwindow/FloatViewHelper;
.super Lcom/autonavi/floatwindow/FloatViewUtils;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FloatViewHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/floatwindow/FloatViewUtils;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(Lig;Landroid/view/View;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/autonavi/floatwindow/FloatViewHelper;->applyNewConstraint(Lig;Landroid/view/View;Z)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/floatwindow/FloatViewHelper;->applyCameraLightsConstraint(Landroid/content/Context;Lig;Landroid/view/View;ZZ)V

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
    const-string v1, ",maxCameras:"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p4

    .line 34
    const/4 v0, 0x0

    .line 35
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    const-string v1, "FloatViewUtils"

    .line 39
    invoke-static {v1, p4, v0}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 p4, 0x4

    .line 43
    const/4 v0, 0x3

    .line 44
    if-nez p3, :cond_0

    .line 46
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 49
    move-result p0

    .line 50
    invoke-virtual {v6, p0, v0}, Lkg;->e(II)V

    .line 53
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 56
    move-result p0

    .line 57
    invoke-virtual {v6, p0, p4}, Lkg;->e(II)V

    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 63
    move-result v1

    .line 64
    const/4 v2, 0x3

    .line 65
    const/4 v3, 0x0

    .line 66
    const/4 v4, 0x3

    .line 67
    const/4 v5, 0x0

    .line 68
    move-object v0, v6

    .line 69
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 72
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 75
    move-result v1

    .line 76
    const/4 v2, 0x4

    .line 77
    const/4 v4, 0x4

    .line 78
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 85
    move-result p3

    .line 86
    invoke-virtual {v6, p3, v0}, Lkg;->e(II)V

    .line 89
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 92
    move-result p3

    .line 93
    invoke-virtual {v6, p3, p4}, Lkg;->e(II)V

    .line 96
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    .line 99
    move-result v1

    .line 100
    const/4 v2, 0x4

    .line 101
    sget v3, Lcom/autonavi/floatwindow/R$id;->cl_speed:I

    .line 103
    const/4 v4, 0x4

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object p0

    .line 108
    sget p2, Lcom/autonavi/floatwindow/R$dimen;->auto_dimen2_27:I

    .line 110
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 113
    move-result v5

    .line 114
    move-object v0, v6

    .line 115
    invoke-virtual/range {v0 .. v5}, Lkg;->h(IIIII)V

    .line 118
    :goto_0
    invoke-virtual {v6, p1}, Lkg;->c(Lig;)V

    .line 121
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
    sget v0, Lcom/autonavi/floatwindow/R$layout;->layout_float_view_new:I

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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    const-string v1, "refreshLightsGroup cameraType:"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ",cameraLightInfoWrapper="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    const/4 v1, 0x0

    .line 36
    new-array v2, v1, [Ljava/lang/Object;

    .line 38
    const-string v3, "FloatViewHelper"

    .line 40
    invoke-static {v3, v0, v2}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    if-nez p2, :cond_1

    .line 45
    if-gtz p3, :cond_1

    .line 47
    const/4 v0, -0x8

    .line 48
    if-eq p3, v0, :cond_0

    .line 50
    const/4 v0, -0x4

    .line 51
    if-eq p3, v0, :cond_0

    .line 53
    if-eqz p3, :cond_0

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    return-void

    .line 57
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 59
    iget-object v0, p2, Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;->a:Ljava/util/List;

    .line 61
    if-eqz v0, :cond_3

    .line 63
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_2

    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 73
    move-result-object v0

    .line 74
    new-instance v7, Lcom/autonavi/floatwindow/FloatViewHelper$2;

    .line 76
    move-object v1, v7

    .line 77
    move-object v2, p2

    .line 78
    move v3, p3

    .line 79
    move-object v4, p0

    .line 80
    move-object v5, p1

    .line 81
    invoke-direct/range {v1 .. v6}, Lcom/autonavi/floatwindow/FloatViewHelper$2;-><init>(Lcom/autonavi/amapauto/CameraLightInfo/CameraLightInfoWrapper;ILandroid/view/View;Landroid/content/Context;Lcom/google/android/flexbox/FlexboxLayout;)V

    .line 84
    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    goto :goto_2

    .line 88
    :cond_3
    :goto_1
    const-string p1, "refreshLightsGroup is empty data~"

    .line 90
    new-array p2, v1, [Ljava/lang/Object;

    .line 92
    invoke-static {v3, p1, p2}, Lcz;->x(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    invoke-static {}, Lvo;->b()Landroid/os/Handler;

    .line 98
    move-result-object p1

    .line 99
    new-instance p2, Lcom/autonavi/floatwindow/FloatViewHelper$1;

    .line 101
    invoke-direct {p2, v6, p0, p3}, Lcom/autonavi/floatwindow/FloatViewHelper$1;-><init>(Lcom/google/android/flexbox/FlexboxLayout;Landroid/view/View;I)V

    .line 104
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 107
    :goto_2
    return-void
.end method

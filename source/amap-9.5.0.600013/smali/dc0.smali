.class public abstract Ldc0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:F

.field public static b:Landroid/graphics/Point;

.field public static c:Landroid/graphics/Point;

.field public static d:I

.field public static e:I


# direct methods
.method public static a()Landroid/graphics/Point;
    .locals 2

    .line 1
    sget-object v0, Ldc0;->b:Landroid/graphics/Point;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ltr;->a()Landroid/app/Application;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "window"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/WindowManager;

    .line 21
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Landroid/graphics/Point;

    .line 27
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 30
    sput-object v1, Ldc0;->b:Landroid/graphics/Point;

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 35
    :cond_0
    sget-object v0, Ldc0;->b:Landroid/graphics/Point;

    .line 37
    return-object v0
.end method

.method public static b()F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    sget v1, Ldc0;->a:F

    .line 4
    cmpl-float v0, v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ltr;->a()Landroid/app/Application;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 23
    move-result-object v0

    .line 24
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 26
    sput v0, Ldc0;->a:F

    .line 28
    :cond_0
    sget v0, Ldc0;->a:F

    .line 30
    return v0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ltr;->a()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "dimen"

    .line 15
    const-string v2, "android"

    .line 17
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    move-result p0

    .line 21
    if-lez p0, :cond_0

    .line 23
    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method public static d()I
    .locals 1

    .line 1
    sget v0, Ldc0;->e:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "navigation_bar_height"

    .line 7
    invoke-static {v0}, Ldc0;->c(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    sput v0, Ldc0;->e:I

    .line 13
    :cond_0
    sget v0, Ldc0;->e:I

    .line 15
    return v0
.end method

.method public static e()Landroid/graphics/Point;
    .locals 2

    .line 1
    sget-object v0, Ldc0;->c:Landroid/graphics/Point;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ltr;->a()Landroid/app/Application;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "window"

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/WindowManager;

    .line 21
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Landroid/graphics/Point;

    .line 27
    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 30
    sput-object v1, Ldc0;->c:Landroid/graphics/Point;

    .line 32
    sget-object v1, Ldc0;->c:Landroid/graphics/Point;

    .line 34
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 37
    :cond_0
    sget-object v0, Ldc0;->c:Landroid/graphics/Point;

    .line 39
    return-object v0
.end method

.method public static f()I
    .locals 1

    .line 1
    sget v0, Ldc0;->d:I

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-string v0, "status_bar_height"

    .line 7
    invoke-static {v0}, Ldc0;->c(Ljava/lang/String;)I

    .line 10
    move-result v0

    .line 11
    sput v0, Ldc0;->d:I

    .line 13
    :cond_0
    sget v0, Ldc0;->d:I

    .line 15
    return v0
.end method

.method public static g()V
    .locals 10

    .line 1
    const-string v0, ", height="

    .line 3
    :try_start_0
    invoke-static {}, Ldc0;->b()F

    .line 6
    move-result v1

    .line 7
    invoke-static {}, Ldc0;->a()Landroid/graphics/Point;

    .line 10
    move-result-object v2

    .line 11
    invoke-static {}, Ldc0;->e()Landroid/graphics/Point;

    .line 14
    move-result-object v3

    .line 15
    iget v4, v2, Landroid/graphics/Point;->x:I

    .line 17
    invoke-static {v4}, Ldc0;->h(I)F

    .line 20
    move-result v4

    .line 21
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 23
    invoke-static {v2}, Ldc0;->h(I)F

    .line 26
    move-result v2

    .line 27
    iget v5, v3, Landroid/graphics/Point;->x:I

    .line 29
    invoke-static {v5}, Ldc0;->h(I)F

    .line 32
    move-result v5

    .line 33
    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 35
    invoke-static {v3}, Ldc0;->h(I)F

    .line 38
    move-result v3

    .line 39
    invoke-static {}, Ldc0;->f()I

    .line 42
    move-result v6

    .line 43
    invoke-static {v6}, Ldc0;->h(I)F

    .line 46
    move-result v6

    .line 47
    invoke-static {}, Ldc0;->d()I

    .line 50
    move-result v7

    .line 51
    invoke-static {v7}, Ldc0;->h(I)F

    .line 54
    move-result v7

    .line 55
    new-instance v8, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    const-string v9, "(dp)app:width="

    .line 62
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, ", real:width="

    .line 76
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v2, "(dp)statusBar="

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, ", navigationBar="

    .line 110
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 116
    const-string v2, ", Density="

    .line 118
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    move-result-object v0

    .line 137
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;)V

    .line 140
    :goto_0
    return-void
.end method

.method public static h(I)F
    .locals 2

    .line 1
    int-to-float p0, p0

    .line 2
    const/high16 v0, 0x41200000    # 10.0f

    .line 4
    mul-float p0, p0, v0

    .line 6
    invoke-static {}, Ldc0;->b()F

    .line 9
    move-result v1

    .line 10
    div-float/2addr p0, v1

    .line 11
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 14
    move-result p0

    .line 15
    int-to-float p0, p0

    .line 16
    div-float/2addr p0, v0

    .line 17
    return p0
.end method

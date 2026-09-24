.class public abstract Lvl0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = 0x1f4

.field public static b:I = 0x1f4

.field public static c:I

.field public static d:I

.field public static e:Landroid/graphics/Bitmap$Config;

.field public static f:Ljava/util/ArrayList;

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 3
    sput-object v0, Lvl0;->e:Landroid/graphics/Bitmap$Config;

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    sput-object v0, Lvl0;->f:Ljava/util/ArrayList;

    .line 12
    const/4 v0, 0x1

    .line 13
    sput v0, Lvl0;->g:I

    .line 15
    sput v0, Lvl0;->h:I

    .line 17
    const/4 v0, -0x1

    .line 18
    sput v0, Lvl0;->i:I

    .line 20
    return-void
.end method

.method public static a()Z
    .locals 6

    .line 1
    invoke-static {}, Lob;->c()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 8
    invoke-static {}, Lvl0;->o()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_4

    .line 14
    sget v0, Lvl0;->h:I

    .line 16
    sget v2, Lvl0;->g:I

    .line 18
    const-string v3, "when AndroidWidgetMap#renderPause"

    .line 20
    const/16 v4, 0x26c

    .line 22
    const-string v5, "WidgetConfig"

    .line 24
    if-ne v0, v2, :cond_2

    .line 26
    invoke-static {}, Lhm0;->j()Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 32
    const-string v0, "ESCREEN_SHOT_MODE_NULL renderPause"

    .line 34
    new-array v2, v1, [Ljava/lang/Object;

    .line 36
    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {v4}, Lib;->u(I)Z

    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/RuntimeException;

    .line 47
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v2, "closeScreenShot 1"

    .line 52
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->renderPause()V

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string v0, "mScreenShotMode renderResume"

    .line 61
    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    invoke-static {v5, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->renderResume()V

    .line 69
    const/4 v0, 0x1

    .line 70
    return v0

    .line 71
    :cond_2
    invoke-static {v4}, Lib;->u(I)Z

    .line 74
    move-result v0

    .line 75
    if-eqz v0, :cond_3

    .line 77
    new-instance v0, Ljava/lang/RuntimeException;

    .line 79
    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 82
    const-string v2, "closeScreenShot 2"

    .line 84
    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 87
    :cond_3
    const-string v0, "mScreenShotMode renderPause"

    .line 89
    new-array v2, v1, [Ljava/lang/Object;

    .line 91
    invoke-static {v5, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->renderPause()V

    .line 97
    :cond_4
    :goto_0
    return v1
.end method

.method public static b(D)V
    .locals 2

    .line 1
    invoke-static {}, Lob;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget v0, Lvl0;->a:I

    .line 9
    int-to-double v0, v0

    .line 10
    mul-double v0, v0, p0

    .line 12
    double-to-int p0, v0

    .line 13
    sget p1, Lvl0;->b:I

    .line 15
    invoke-static {p0, p1}, Lvl0;->c(II)V

    .line 18
    :cond_0
    return-void
.end method

.method public static c(II)V
    .locals 2

    .line 1
    rem-int/lit8 v0, p0, 0x4

    .line 3
    sub-int/2addr p0, v0

    .line 4
    sput p0, Lvl0;->c:I

    .line 6
    sput p1, Lvl0;->d:I

    .line 8
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->widgetMapViewStatusAcquire()V

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p0

    .line 19
    aput-object p0, v0, v1

    .line 21
    const/4 p0, 0x1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 26
    aput-object p1, v0, p0

    .line 28
    const-string p0, "WidgetConfig"

    .line 30
    const-string p1, "changeScreenShotRect widgetMapViewStatusAcquire bitmapWidth:{?},bitmapHeight:{?}"

    .line 32
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public static d(Z)V
    .locals 3

    .line 1
    invoke-static {}, Lob;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 14
    move-result-object v2

    .line 15
    aput-object v2, v0, v1

    .line 17
    sget v1, Lvl0;->a:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const-string v1, "WidgetConfig"

    .line 28
    const-string v2, "isNeedHalf={?} sScreenShotWidth ={?}"

    .line 30
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    sget v0, Lvl0;->a:I

    .line 35
    if-eqz p0, :cond_0

    .line 37
    div-int/lit8 v0, v0, 0x2

    .line 39
    :cond_0
    sget p0, Lvl0;->b:I

    .line 41
    invoke-static {v0, p0}, Lvl0;->c(II)V

    .line 44
    :cond_1
    return-void
.end method

.method public static e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lvl0;->f(Z)V

    .line 5
    return-void
.end method

.method public static f(Z)V
    .locals 2

    .line 1
    invoke-static {}, Lob;->d()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    if-eqz p0, :cond_1

    .line 9
    const/16 p0, 0x26c

    .line 11
    invoke-static {p0}, Lib;->u(I)Z

    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 17
    new-instance p0, Ljava/lang/RuntimeException;

    .line 19
    const-string v0, "when AndroidWidgetMap#renderPausqe"

    .line 21
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    const-string v0, "WidgetConfig"

    .line 26
    const-string v1, "closeScreenShot 3"

    .line 28
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->renderPause()V

    .line 34
    :cond_1
    return-void
.end method

.method public static g(Z)V
    .locals 1

    .line 1
    new-instance v0, Lvl0$a;

    .line 3
    invoke-direct {v0, p0}, Lvl0$a;-><init>(Z)V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public static h()V
    .locals 0

    .line 1
    return-void
.end method

.method public static i()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/widget/jni/RenderFps;-><init>()V

    .line 6
    const/4 v1, 0x6

    .line 7
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->normalRenderFps:I

    .line 9
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->naviRenderFps:I

    .line 11
    const/16 v1, 0xa

    .line 13
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->animationlRenderFps:I

    .line 15
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->gestureRenderFps:I

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v1, v1, [Ljava/lang/Object;

    .line 20
    const/4 v2, 0x0

    .line 21
    aput-object v0, v1, v2

    .line 23
    const-string v2, "WidgetConfig"

    .line 25
    const-string v3, "enterInWidgetRenderFps changeWidgetRenderFps={?}"

    .line 27
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->changeWidgetRenderFps(Lcom/autonavi/amapauto/widget/jni/RenderFps;)V

    .line 33
    return-void
.end method

.method public static j()V
    .locals 4

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/widget/jni/RenderFps;-><init>()V

    .line 6
    const/16 v1, 0x14

    .line 8
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->normalRenderFps:I

    .line 10
    const/16 v1, 0xa

    .line 12
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->naviRenderFps:I

    .line 14
    const/16 v1, 0x32

    .line 16
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->animationlRenderFps:I

    .line 18
    iput v1, v0, Lcom/autonavi/amapauto/widget/jni/RenderFps;->gestureRenderFps:I

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v0, v1, v2

    .line 26
    const-string v2, "WidgetConfig"

    .line 28
    const-string v3, "enterOutWidgetRenderFps changeWidgetRenderFps={?}"

    .line 30
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->changeWidgetRenderFps(Lcom/autonavi/amapauto/widget/jni/RenderFps;)V

    .line 36
    return-void
.end method

.method public static k(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-static {}, Lob;->d()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    const-string v1, "WidgetConfig"

    .line 11
    if-eqz p0, :cond_5

    .line 13
    invoke-static {p0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lsi;->I()I

    .line 20
    move-result v2

    .line 21
    int-to-float v2, v2

    .line 22
    invoke-static {p0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lsi;->H()I

    .line 29
    move-result p0

    .line 30
    int-to-float p0, p0

    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    const-string v4, "getDisplay width="

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 44
    const-string v4, " height="

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    new-array v4, v0, [Ljava/lang/Object;

    .line 58
    invoke-static {v1, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/16 v3, 0xbba

    .line 63
    invoke-static {v3}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 66
    move-result v3

    .line 67
    const/16 v4, 0xbbb

    .line 69
    invoke-static {v4}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 72
    move-result v4

    .line 73
    if-ltz v3, :cond_2

    .line 75
    if-gez v4, :cond_1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    sput v3, Lvl0;->a:I

    .line 80
    sput v4, Lvl0;->b:I

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    :goto_0
    cmpl-float v3, v2, p0

    .line 85
    if-lez v3, :cond_3

    .line 87
    move v4, v2

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    move v4, p0

    .line 90
    :goto_1
    const/high16 v5, 0x44800000    # 1024.0f

    .line 92
    div-float/2addr v4, v5

    .line 93
    if-lez v3, :cond_4

    .line 95
    move v2, p0

    .line 96
    :cond_4
    const/high16 p0, 0x44160000    # 600.0f

    .line 98
    div-float/2addr v2, p0

    .line 99
    const/high16 p0, 0x43fa0000    # 500.0f

    .line 101
    mul-float v4, v4, p0

    .line 103
    float-to-int v3, v4

    .line 104
    sput v3, Lvl0;->a:I

    .line 106
    mul-float v2, v2, p0

    .line 108
    float-to-int p0, v2

    .line 109
    sput p0, Lvl0;->b:I

    .line 111
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 113
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    const-string v2, "getDisplay new sScreenShotWidth="

    .line 118
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    sget v2, Lvl0;->a:I

    .line 123
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string v2, " sScreenShotHeight="

    .line 128
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget v2, Lvl0;->b:I

    .line 133
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object p0

    .line 140
    new-array v0, v0, [Ljava/lang/Object;

    .line 142
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    goto :goto_3

    .line 146
    :cond_5
    const-string p0, "getDisplay context==null"

    .line 148
    new-array v0, v0, [Ljava/lang/Object;

    .line 150
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    :goto_3
    return-void
.end method

.method public static l(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    sget-object v0, Lvl0;->f:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    const-string v3, "WidgetConfig"

    .line 11
    const/4 v4, 0x1

    .line 12
    if-ge v2, v0, :cond_2

    .line 14
    sget-object v5, Lvl0;->f:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 19
    move-result-object v5

    .line 20
    check-cast v5, Landroid/graphics/Bitmap;

    .line 22
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 25
    move-result v6

    .line 26
    if-eqz v6, :cond_0

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    const-string v6, "mScreenShotBitmaps is recycled: "

    .line 35
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v6, ", "

    .line 43
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    new-array v5, v1, [Ljava/lang/Object;

    .line 55
    invoke-static {v3, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    .line 62
    move-result v6

    .line 63
    if-ne v6, p0, :cond_1

    .line 65
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    .line 68
    move-result v6

    .line 69
    if-ne v6, p1, :cond_1

    .line 71
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 74
    move-result-object v6

    .line 75
    if-ne v6, p2, :cond_1

    .line 77
    const/4 p0, 0x1

    .line 78
    goto :goto_2

    .line 79
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    const/4 v5, 0x0

    .line 83
    const/4 p0, 0x0

    .line 84
    :goto_2
    new-array p1, v4, [Ljava/lang/Object;

    .line 86
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object p0

    .line 90
    aput-object p0, p1, v1

    .line 92
    const-string p0, "mScreenShotBitmaps isExist:{?} "

    .line 94
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-object v5
.end method

.method public static m()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "WidgetConfig"

    .line 6
    const-string v2, "initConfig AutoMapView glMapView"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lvl0;->k(Landroid/content/Context;)V

    .line 22
    sget v0, Lvl0;->g:I

    .line 24
    invoke-static {v0}, Lvl0;->n(I)V

    .line 27
    return-void
.end method

.method public static n(I)V
    .locals 1

    .line 1
    invoke-static {}, Lob;->c()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sput p0, Lvl0;->h:I

    .line 9
    :cond_0
    return-void
.end method

.method public static o()Z
    .locals 1

    .line 1
    const/16 v0, 0xbbe

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static p()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sget-boolean v1, Lvl0;->j:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    sget v1, Lvl0;->c:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    aput-object v1, v0, v2

    .line 22
    sget v1, Lvl0;->d:I

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v1

    .line 28
    const/4 v2, 0x2

    .line 29
    aput-object v1, v0, v2

    .line 31
    const-string v1, "WidgetConfig"

    .line 33
    const-string v2, "******onMapViewStatusNotify [updateWidgetScreenShotBackgroundImage] isNorth:{?} bitmapWidth:{?} bitmapHeight:{?} by inner calls!!!!!!!!!!"

    .line 35
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    sget-boolean v0, Lvl0;->j:Z

    .line 40
    invoke-static {v0}, Lvl0;->q(Z)V

    .line 43
    return-void
.end method

.method public static q(Z)V
    .locals 17

    .line 1
    sput-boolean p0, Lvl0;->j:Z

    .line 3
    const/4 v0, 0x3

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    invoke-static/range {p0 .. p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    sget v2, Lvl0;->c:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    const/4 v4, 0x1

    .line 20
    aput-object v2, v1, v4

    .line 22
    sget v2, Lvl0;->d:I

    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v2

    .line 28
    const/4 v5, 0x2

    .line 29
    aput-object v2, v1, v5

    .line 31
    const-string v2, "WidgetConfig"

    .line 33
    const-string v6, "onMapViewStatusNotify isNorth:{?} bitmapWidth:{?} bitmapHeight:{?}"

    .line 35
    invoke-static {v2, v6, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->getMapCenter()Lcom/autonavi/amapauto/widget/jni/MapCenter;

    .line 41
    move-result-object v1

    .line 42
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->getMapBound()Lcom/autonavi/amapauto/widget/jni/MapBound;

    .line 45
    move-result-object v6

    .line 46
    if-eqz v1, :cond_7

    .line 48
    if-nez v6, :cond_0

    .line 50
    goto/16 :goto_3

    .line 52
    :cond_0
    iget v7, v6, Lcom/autonavi/amapauto/widget/jni/MapBound;->width:I

    .line 54
    iget v6, v6, Lcom/autonavi/amapauto/widget/jni/MapBound;->height:I

    .line 56
    iget v8, v1, Lcom/autonavi/amapauto/widget/jni/MapCenter;->x:I

    .line 58
    iget v1, v1, Lcom/autonavi/amapauto/widget/jni/MapCenter;->y:I

    .line 60
    sget v9, Lvl0;->c:I

    .line 62
    div-int/2addr v9, v5

    .line 63
    if-eqz p0, :cond_1

    .line 65
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const-wide v10, 0x3fe2aaaaaaaaaaaaL    # 0.5833333333333333

    .line 73
    :goto_0
    sget v12, Lvl0;->d:I

    .line 75
    int-to-double v12, v12

    .line 76
    mul-double v10, v10, v12

    .line 78
    double-to-int v10, v10

    .line 79
    const/4 v11, 0x6

    .line 80
    new-array v11, v11, [Ljava/lang/Object;

    .line 82
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object v12

    .line 86
    aput-object v12, v11, v3

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    move-result-object v12

    .line 92
    aput-object v12, v11, v4

    .line 94
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 97
    move-result-object v12

    .line 98
    aput-object v12, v11, v5

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v12

    .line 104
    aput-object v12, v11, v0

    .line 106
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v12

    .line 110
    const/4 v13, 0x4

    .line 111
    aput-object v12, v11, v13

    .line 113
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v12

    .line 117
    const/4 v14, 0x5

    .line 118
    aput-object v12, v11, v14

    .line 120
    const-string v12, "changeScreenShotRect. mapCenterX ={?} mapCenterY ={?} mapViewWidth ={?} mapViewHeight ={?} halfBitmapWidth ={?} halfBitmapHeight ={?} "

    .line 122
    invoke-static {v2, v12, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    sub-int v11, v8, v9

    .line 127
    sub-int v12, v1, v10

    .line 129
    add-int/2addr v9, v8

    .line 130
    sget v15, Lvl0;->d:I

    .line 132
    add-int v16, v1, v15

    .line 134
    sub-int v10, v16, v10

    .line 136
    if-lez v8, :cond_6

    .line 138
    if-gtz v1, :cond_2

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    if-le v10, v6, :cond_3

    .line 143
    sub-int v12, v6, v15

    .line 145
    move v10, v6

    .line 146
    if-gez v12, :cond_3

    .line 148
    const/4 v12, 0x0

    .line 149
    :cond_3
    if-le v9, v7, :cond_4

    .line 151
    sget v9, Lvl0;->c:I

    .line 153
    sub-int v11, v7, v9

    .line 155
    if-gez v11, :cond_5

    .line 157
    const/4 v11, 0x0

    .line 158
    goto :goto_1

    .line 159
    :cond_4
    move v7, v9

    .line 160
    :cond_5
    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    .line 162
    invoke-direct {v9, v11, v12, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 165
    new-array v14, v14, [Ljava/lang/Object;

    .line 167
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 170
    move-result-object v8

    .line 171
    aput-object v8, v14, v3

    .line 173
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    move-result-object v1

    .line 177
    aput-object v1, v14, v4

    .line 179
    sget v1, Lvl0;->c:I

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    move-result-object v1

    .line 185
    aput-object v1, v14, v5

    .line 187
    sget v1, Lvl0;->d:I

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v1

    .line 193
    aput-object v1, v14, v0

    .line 195
    invoke-virtual {v9}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    aput-object v0, v14, v13

    .line 201
    const-string v0, "changeScreenShotRect(). mapCenterX={?}, mapCenterY={?}, bitmapWidth={?}, bitmapHeight={?}. rect={?}"

    .line 203
    invoke-static {v2, v0, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    invoke-static {v11, v12, v7, v10, v6}, Lvl0;->t(IIIII)V

    .line 209
    return-void

    .line 210
    :cond_6
    :goto_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 212
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v5

    .line 216
    aput-object v5, v0, v3

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    move-result-object v1

    .line 222
    aput-object v1, v0, v4

    .line 224
    const-string v1, "changeScreenShotRect(). mapCenterIllegal mapCenterX={?}, mapCenterY={?}."

    .line 226
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void

    .line 230
    :cond_7
    :goto_3
    new-array v0, v5, [Ljava/lang/Object;

    .line 232
    aput-object v1, v0, v3

    .line 234
    aput-object v6, v0, v4

    .line 236
    const-string v1, "changeScreenShotRect mapCenter:{?} mapBound:{?}"

    .line 238
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    return-void
.end method

.method public static r()V
    .locals 1

    .line 1
    new-instance v0, Lvl0$b;

    .line 3
    invoke-direct {v0}, Lvl0$b;-><init>()V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public static s()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lvl0;->f(Z)V

    .line 5
    return-void
.end method

.method public static t(IIIII)V
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v2, v1, v4

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v2

    .line 22
    const/4 v5, 0x2

    .line 23
    aput-object v2, v1, v5

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v2

    .line 29
    const/4 v6, 0x3

    .line 30
    aput-object v2, v1, v6

    .line 32
    const-string v2, "WidgetConfig"

    .line 34
    const-string v7, "setScreenShotRect changeScreenShotRect leftTopX={?},leftTopY={?},rightBottomX={?},rightBottomY={?}"

    .line 36
    invoke-static {v2, v7, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    if-gez p0, :cond_0

    .line 41
    rem-int/lit8 p0, p2, 0x4

    .line 43
    sub-int/2addr p2, p0

    .line 44
    const/4 p0, 0x0

    .line 45
    :cond_0
    if-gez p1, :cond_1

    .line 47
    rem-int/lit8 p1, p3, 0x4

    .line 49
    sub-int/2addr p3, p1

    .line 50
    const/4 p1, 0x0

    .line 51
    :cond_1
    sub-int/2addr p2, p0

    .line 52
    sub-int p1, p3, p1

    .line 54
    if-lez p2, :cond_5

    .line 56
    if-lez p1, :cond_5

    .line 58
    :try_start_0
    sget-object v1, Lvl0;->e:Landroid/graphics/Bitmap$Config;

    .line 60
    if-eqz v1, :cond_5

    .line 62
    invoke-static {p2, p1, v1}, Lvl0;->l(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 65
    move-result-object v1

    .line 66
    if-nez v1, :cond_2

    .line 68
    const-string v1, "Bitmap.createBitmap width={?},height={?}"

    .line 70
    new-array v7, v5, [Ljava/lang/Object;

    .line 72
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v8

    .line 76
    aput-object v8, v7, v3

    .line 78
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    move-result-object v8

    .line 82
    aput-object v8, v7, v4

    .line 84
    invoke-static {v2, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    sget-object v1, Lvl0;->e:Landroid/graphics/Bitmap$Config;

    .line 89
    invoke-static {p2, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_3

    .line 95
    invoke-static {v1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->addScreenShotBitmapCache(Landroid/graphics/Bitmap;)V

    .line 98
    const-string v7, "setScreenShotRect mScreenShotBitmaps.add"

    .line 100
    new-array v8, v3, [Ljava/lang/Object;

    .line 102
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    sget-object v7, Lvl0;->f:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v7, v3, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 110
    sput-object v1, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->bitmap:Landroid/graphics/Bitmap;

    .line 112
    goto :goto_0

    .line 113
    :cond_2
    sput-object v1, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->bitmap:Landroid/graphics/Bitmap;

    .line 115
    :cond_3
    :goto_0
    const-string v1, "setScreenShotRect setScreenShotRect"

    .line 117
    new-array v7, v3, [Ljava/lang/Object;

    .line 119
    invoke-static {v2, v1, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    sub-int/2addr p4, p3

    .line 123
    invoke-static {p0, p4, p2, p1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->setScreenShotRect(IIII)V

    .line 126
    invoke-static {v4}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->setScreenShotCallBackMethod(I)V

    .line 129
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 132
    move-result-object p3

    .line 133
    invoke-virtual {p3}, Lhm0;->k()Z

    .line 136
    move-result p3

    .line 137
    if-eqz p3, :cond_4

    .line 139
    invoke-static {v4}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->setScreenShotMode(I)V

    .line 142
    :cond_4
    const-string p3, "setScreenShotRect changeScreenShotRect setScreenShotRect left:{?} top:{?} w:{?} h:{?}"

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object p0

    .line 150
    aput-object p0, v0, v3

    .line 152
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    move-result-object p0

    .line 156
    aput-object p0, v0, v4

    .line 158
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    move-result-object p0

    .line 162
    aput-object p0, v0, v5

    .line 164
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    move-result-object p0

    .line 168
    aput-object p0, v0, v6

    .line 170
    invoke-static {v2, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    goto :goto_1

    .line 174
    :catch_0
    move-exception p0

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    const-string p2, "setScreenShotRect e: "

    .line 182
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 188
    move-result-object p0

    .line 189
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    move-result-object p0

    .line 196
    new-array p1, v3, [Ljava/lang/Object;

    .line 198
    invoke-static {v2, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    :cond_5
    :goto_1
    return-void
.end method

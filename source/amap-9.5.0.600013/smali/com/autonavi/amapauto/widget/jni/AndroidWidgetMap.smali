.class public Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidWidgetMap"

.field public static bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native addScreenShotBitmapCache(Landroid/graphics/Bitmap;)V
.end method

.method public static native changeWidgetRenderFps(Lcom/autonavi/amapauto/widget/jni/RenderFps;)V
.end method

.method public static native destroyConfigWithAutoStart()V
.end method

.method public static native getMapBound()Lcom/autonavi/amapauto/widget/jni/MapBound;
.end method

.method public static native getMapCenter()Lcom/autonavi/amapauto/widget/jni/MapCenter;
.end method

.method public static native getZoomMode()I
.end method

.method public static handleWidgetEnableNotify(Z)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 3
    invoke-static {}, Lnb;->j()Lnb;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lnb;->m()Lmm0;

    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    invoke-static {}, Lnb;->j()Lnb;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lnb;->m()Lmm0;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lmm0;->c()V

    .line 24
    :cond_0
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lhm0;->e()Lh1;

    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_3

    .line 34
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lhm0;->e()Lh1;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lh1;->k()V

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-static {}, Lnb;->j()Lnb;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lnb;->m()Lmm0;

    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_2

    .line 56
    invoke-static {}, Lnb;->j()Lnb;

    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lnb;->m()Lmm0;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lmm0;->b()V

    .line 67
    :cond_2
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lhm0;->e()Lh1;

    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_3

    .line 77
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lhm0;->e()Lh1;

    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lh1;->j()V

    .line 88
    :cond_3
    :goto_0
    invoke-static {}, Lhm0;->m()Z

    .line 91
    invoke-static {p0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->widgetEnableNotify(Z)Z

    .line 94
    return-void
.end method

.method public static native initConfigWithAutoStart()V
.end method

.method public static isWidgetsAdded()Z
    .locals 1

    .line 1
    invoke-static {}, Lhm0;->l()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static onMapViewStatusNotify(I)V
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    invoke-static {p0}, Lvl0;->q(Z)V

    .line 9
    return-void
.end method

.method public static onScreenShotFinishedWithBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    const-string v0, "AndroidWidgetMap"

    .line 6
    const-string v1, "onScreenShotFinishedWithBitmap"

    .line 8
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static onScreenShotFinishedWithBuffer(J)V
    .locals 1

    .line 1
    const/4 p0, 0x0

    .line 2
    new-array p0, p0, [Ljava/lang/Object;

    .line 4
    const-string p1, "AndroidWidgetMap"

    .line 6
    const-string v0, "onScreenShotFinishedWithBuffer"

    .line 8
    invoke-static {p1, v0, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    return-void
.end method

.method public static onScreenShotFinishedWithByteArray([BI)V
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    sget-object v1, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->bitmap:Landroid/graphics/Bitmap;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v1, v0, v3

    .line 16
    const-string v1, "AndroidWidgetMap"

    .line 18
    const-string v4, " updateWidgetScreenShotBackgroundImage onScreenShotFinishedWithByteArray bitmap={?} config={?}"

    .line 20
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    sget-object v0, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->bitmap:Landroid/graphics/Bitmap;

    .line 25
    if-eqz v0, :cond_2

    .line 27
    if-ne p1, v3, :cond_0

    .line 29
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 34
    :goto_0
    sget-object v0, Lvl0;->e:Landroid/graphics/Bitmap$Config;

    .line 36
    if-eq v0, p1, :cond_1

    .line 38
    sput-object p1, Lvl0;->e:Landroid/graphics/Bitmap$Config;

    .line 40
    invoke-static {}, Lvl0;->p()V

    .line 43
    :cond_1
    :try_start_0
    sget-object p1, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->bitmap:Landroid/graphics/Bitmap;

    .line 45
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {p1, p0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    new-instance p0, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap$a;

    .line 58
    invoke-direct {p0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap$a;-><init>()V

    .line 61
    invoke-static {p0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string p1, "when execute copyPixelsFromBuffer ocuur a RuntimeException:"

    .line 68
    new-array v0, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {v1, p1, p0, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method public static onScreenShotFinishedWithPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    const-string p0, "AndroidWidgetMap"

    .line 9
    const-string v1, "onScreenShotFinishedWithPath path=%d"

    .line 11
    invoke-static {p0, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method

.method public static native renderPause()V
.end method

.method public static native renderResume()V
.end method

.method public static native setScreenShotCallBackMethod(I)V
.end method

.method public static native setScreenShotMode(I)V
.end method

.method public static native setScreenShotRect(IIII)V
.end method

.method public static native widgetEnableNotify(Z)Z
.end method

.method public static native widgetMapViewStatusAcquire()V
.end method

.method public static native zoomIn()V
.end method

.method public static native zoomOut()V
.end method

.class public Lcom/autonavi/amapauto/jni/MultiScreenNative;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static mObserver:Les;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultiScreenUiSurface(I)Landroid/view/Surface;
    .locals 1

    .line 1
    invoke-static {}, La20;->l()La20;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, La20;->k(I)Lhl;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lhl;->g()Landroid/view/Surface;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static getMultiScreenUiViewInfo(I)Lcom/autonavi/amapauto/jni/ViewInfo;
    .locals 1

    .line 1
    invoke-static {}, La20;->l()La20;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, La20;->k(I)Lhl;

    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lhl;->h()Lcom/autonavi/amapauto/jni/ViewInfo;

    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
.end method

.method public static onSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I
    .locals 1

    .line 1
    invoke-static {}, Lib;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/autonavi/amapauto/jni/MultiScreenNative;->mObserver:Les;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p0, p1, p2}, Les;->b(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->surfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static onSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I
    .locals 1

    .line 1
    invoke-static {}, Lib;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/autonavi/amapauto/jni/MultiScreenNative;->mObserver:Les;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p0, p1, p2}, Les;->a(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->surfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static onSurfaceDestroyed(I)I
    .locals 1

    .line 1
    invoke-static {}, Lib;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/autonavi/amapauto/jni/MultiScreenNative;->mObserver:Les;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p0}, Les;->e(I)I

    .line 14
    move-result p0

    .line 15
    return p0

    .line 16
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->surfaceDestroyed(I)I

    .line 19
    move-result p0

    .line 20
    return p0
.end method

.method public static onSurfaceStatus(II)V
    .locals 1

    .line 1
    invoke-static {}, Lib;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v0, Lcom/autonavi/amapauto/jni/MultiScreenNative;->mObserver:Les;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-interface {v0, p0, p1}, Les;->c(II)V

    .line 14
    return-void

    .line 15
    :cond_0
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->surfaceStatus(II)V

    .line 18
    return-void
.end method

.method public static onTouchEvent(I[I[F[FI)V
    .locals 7

    .line 1
    invoke-static {}, Lib;->n()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/autonavi/amapauto/jni/MultiScreenNative;->mObserver:Les;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    move v2, p0

    .line 12
    move-object v3, p1

    .line 13
    move-object v4, p2

    .line 14
    move-object v5, p3

    .line 15
    move v6, p4

    .line 16
    invoke-interface/range {v1 .. v6}, Les;->d(I[I[F[FI)V

    .line 19
    return-void

    .line 20
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/autonavi/amapauto/jni/MultiScreenNative;->onTouchEventNative(I[I[F[FI)V

    .line 23
    return-void
.end method

.method private static native onTouchEventNative(I[I[F[FI)V
.end method

.method public static setMulitScreenObserver(Les;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/autonavi/amapauto/jni/MultiScreenNative;->mObserver:Les;

    .line 3
    return-void
.end method

.method private static native surfaceChanged(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I
.end method

.method private static native surfaceCreated(ILandroid/view/Surface;Lcom/autonavi/amapauto/jni/ViewInfo;)I
.end method

.method private static native surfaceDestroyed(I)I
.end method

.method private static native surfaceStatus(II)V
.end method

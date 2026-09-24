.class public Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/eaglet/multiscreen/IMultiScreenHandler;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "MultiScreenImpl"


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

.method private static native onTouchEventNative(I[I[F[FI)V
.end method

.method private static native surfaceChangedNative(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I
.end method

.method private static native surfaceCreatedNative(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I
.end method

.method private static native surfaceDestroyedNative(I)I
.end method

.method private static native surfaceStatusNative(II)V
.end method


# virtual methods
.method public handleSurfaceChanged(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "handleSurfaceChanged"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1, p2, p3}, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->surfaceChangedNative(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public handleSurfaceCreated(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->TAG:Ljava/lang/String;

    .line 3
    const-string v1, "handleSurfaceCreated"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-static {p1, p2, p3}, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->surfaceCreatedNative(ILandroid/view/Surface;Lcom/autonavi/eaglet/multiscreen/EagletViewInfo;)I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public handleSurfaceDestroy(I)I
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->surfaceDestroyedNative(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public handleSurfaceStatusChanged(II)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->surfaceStatusNative(II)V

    .line 4
    return-void
.end method

.method public handleTouchEvent(I[I[F[FI)V
    .locals 0

    .line 1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/eaglet/multiscreen/MultiScreenImpl;->onTouchEventNative(I[I[F[FI)V

    .line 4
    return-void
.end method

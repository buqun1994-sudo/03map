.class public Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;
    }
.end annotation


# static fields
.field private static final SCREEN_MODE_CHANGE_ACTION:Ljava/lang/String; = "com.rmt.action.SWITCH_SCREEN"

.field private static final SCREEN_MODE_FULL_SCREEN:I = 0x3

.field private static final SCREEN_MODE_HALF_SCREEN:I = 0x1

.field private static final SCREEN_MODE_WHOLE_SCREEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScreenModehangeListener"

.field private static mInstance:Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static synthetic access$000(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->notifyScreenModeChange(I)V

    .line 4
    return-void
.end method

.method private static getModeReceiver()Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->mInstance:Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 16
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;-><init>(Landroid/os/Handler;)V

    .line 19
    sput-object v0, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->mInstance:Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 21
    :cond_0
    sget-object v0, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->mInstance:Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 23
    return-object v0
.end method

.method public static getScreenSplitMode()I
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "rmt_split_screen"

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 19
    move-result v0

    .line 20
    return v0
.end method

.method private static native notifyScreenModeChange(I)V
.end method

.method public static registScreenModeChangeListener()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ScreenModehangeListener"

    .line 6
    const-string v2, "registScreenModeChangeListener: "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->getModeReceiver()Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;->a()V

    .line 18
    return-void
.end method

.method public static unRegistScreenModeChangeListener()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "ScreenModehangeListener"

    .line 6
    const-string v2, "unRegistScreenModeChangeListener: "

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->getModeReceiver()Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;->b()V

    .line 18
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener;->mInstance:Lcom/autonavi/amapauto/ar/camera/receiver/ScreenModehangeListener$a;

    .line 21
    return-void
.end method

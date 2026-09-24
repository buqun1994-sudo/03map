.class public Lcom/autonavi/eaglet/utils/AndroidPlatform;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final ACTION_GFRAME_PER_DRAW:Ljava/lang/String; = "action_gframe_per_draw"

.field private static final FALLBACK_BBK_FONT:Ljava/lang/String; = "DroidSansFallbackBBK.ttf"

.field private static final FALLBACK_FONT:Ljava/lang/String; = "DroidSansFallback.ttf"

.field private static final SANS_CJK_FONT:Ljava/lang/String; = "NotoSansCJK-Regular.ttc"

.field private static final SANS_HANS_FONT:Ljava/lang/String; = "NotoSansHans-Regular.otf"

.field private static final SANS_SC_FONT:Ljava/lang/String; = "NotoSansSC-Regular.otf"

.field private static final SYSTEM_FONT_LOCATION:Ljava/lang/String; = "/system/fonts/"

.field private static final TAG:Ljava/lang/String; = "AndroidPlatform"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAssetManager(Landroid/content/Context;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static getConfigPath()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltk;->b()Landroid/app/Application;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public static getDefaultDisplayDpi(Landroid/content/Context;)I
    .locals 4

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltk;->c()Lir;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lir;->o()I

    .line 12
    move-result v0

    .line 13
    if-lez v0, :cond_0

    .line 15
    invoke-static {}, Ltk;->d()Ltk;

    .line 18
    move-result-object p0

    .line 19
    invoke-virtual {p0}, Ltk;->c()Lir;

    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Lir;->o()I

    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object v1

    .line 46
    iget v1, v1, Landroid/util/DisplayMetrics;->xdpi:F

    .line 48
    float-to-int v1, v1

    .line 49
    new-instance v2, Ljava/io/File;

    .line 51
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 59
    move-result-object p0

    .line 60
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 64
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p0, "/ppi.txt"

    .line 69
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 82
    move-result p0

    .line 83
    if-eqz p0, :cond_1

    .line 85
    return v1

    .line 86
    :cond_1
    return v0
.end method

.method public static getDefaultDisplayHeight(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 13
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget p0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static getDefaultDisplayWidth(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "window"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/view/WindowManager;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    new-instance v0, Landroid/util/DisplayMetrics;

    .line 13
    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 16
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 23
    iget p0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0
.end method

.method public static getDisplayDpi(Landroid/content/Context;I)I
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Lcom/autonavi/eaglet/utils/AndroidPlatform;->getDefaultDisplayDpi(Landroid/content/Context;)I

    .line 6
    move-result p0

    .line 7
    goto :goto_2

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    if-lez p1, :cond_3

    .line 11
    const-string v1, "display"

    .line 13
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 19
    if-eqz p0, :cond_3

    .line 21
    invoke-static {}, Ltk;->d()Ltk;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ltk;->c()Lir;

    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-interface {v1}, Lir;->isRealDevices()Z

    .line 34
    move-result v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    :goto_0
    if-eqz v1, :cond_2

    .line 39
    const/4 v1, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v1, "android.hardware.display.category.PRESENTATION"

    .line 43
    :goto_1
    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_3

    .line 49
    array-length v1, p0

    .line 50
    if-lt v1, p1, :cond_3

    .line 52
    add-int/lit8 p1, p1, -0x1

    .line 54
    aget-object p0, p0, p1

    .line 56
    new-instance p1, Landroid/util/DisplayMetrics;

    .line 58
    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 61
    invoke-virtual {p0, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 64
    iget p0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 66
    goto :goto_2

    .line 67
    :cond_3
    const/4 p0, 0x0

    .line 68
    :goto_2
    return p0
.end method

.method public static getDisplayHeight(Landroid/content/Context;I)I
    .locals 4

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltk;->c()Lir;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-static {p0}, Lcom/autonavi/eaglet/utils/AndroidPlatform;->getDefaultDisplayHeight(Landroid/content/Context;)I

    .line 15
    move-result p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    if-lez p1, :cond_3

    .line 19
    const-string v2, "display"

    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 27
    if-eqz p0, :cond_3

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0}, Lir;->isRealDevices()Z

    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-eqz v2, :cond_2

    .line 39
    const/4 v2, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v2, "android.hardware.display.category.PRESENTATION"

    .line 43
    :goto_1
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_3

    .line 49
    array-length v2, p0

    .line 50
    if-lt v2, p1, :cond_3

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    .line 54
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 57
    add-int/lit8 v3, p1, -0x1

    .line 59
    aget-object p0, p0, v3

    .line 61
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 67
    move-result p0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 p0, 0x0

    .line 70
    :goto_2
    if-eqz v0, :cond_4

    .line 72
    const/4 v2, 0x2

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    aput-object p1, v2, v1

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p1

    .line 85
    const/4 v1, 0x1

    .line 86
    aput-object p1, v2, v1

    .line 88
    const-string p1, "AndroidPlatform"

    .line 90
    const-string v1, "getDisplayWidth screenId:{?},height:{?} "

    .line 92
    invoke-interface {v0, p1, v1, v2}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_4
    return p0
.end method

.method public static getDisplayWidth(Landroid/content/Context;I)I
    .locals 4

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltk;->c()Lir;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez p1, :cond_0

    .line 12
    invoke-static {p0}, Lcom/autonavi/eaglet/utils/AndroidPlatform;->getDefaultDisplayDpi(Landroid/content/Context;)I

    .line 15
    move-result p0

    .line 16
    goto :goto_2

    .line 17
    :cond_0
    if-lez p1, :cond_3

    .line 19
    const-string v2, "display"

    .line 21
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/hardware/display/DisplayManager;

    .line 27
    if-eqz p0, :cond_3

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0}, Lir;->isRealDevices()Z

    .line 34
    move-result v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v2, 0x0

    .line 37
    :goto_0
    if-eqz v2, :cond_2

    .line 39
    const/4 v2, 0x0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    const-string v2, "android.hardware.display.category.PRESENTATION"

    .line 43
    :goto_1
    invoke-virtual {p0, v2}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    .line 46
    move-result-object p0

    .line 47
    if-eqz p0, :cond_3

    .line 49
    array-length v2, p0

    .line 50
    if-lt v2, p1, :cond_3

    .line 52
    new-instance v2, Landroid/graphics/Rect;

    .line 54
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 57
    add-int/lit8 v3, p1, -0x1

    .line 59
    aget-object p0, p0, v3

    .line 61
    invoke-virtual {p0, v2}, Landroid/view/Display;->getRectSize(Landroid/graphics/Rect;)V

    .line 64
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 67
    move-result p0

    .line 68
    goto :goto_2

    .line 69
    :cond_3
    const/4 p0, 0x0

    .line 70
    :goto_2
    if-eqz v0, :cond_4

    .line 72
    const/4 v2, 0x2

    .line 73
    new-array v2, v2, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object p1

    .line 79
    aput-object p1, v2, v1

    .line 81
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object p1

    .line 85
    const/4 v1, 0x1

    .line 86
    aput-object p1, v2, v1

    .line 88
    const-string p1, "AndroidPlatform"

    .line 90
    const-string v1, "getDisplayWidth screenId:{?},width:{?} "

    .line 92
    invoke-interface {v0, p1, v1, v2}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :cond_4
    return p0
.end method

.method public static getFallbackFont()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/system/fonts/DroidSansFallbackBBK.ttf"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    return-object v1

    .line 15
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 17
    const-string v1, "/system/fonts/NotoSansHans-Regular.otf"

    .line 19
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    return-object v1

    .line 29
    :cond_1
    new-instance v0, Ljava/io/File;

    .line 31
    const-string v1, "/system/fonts/NotoSansSC-Regular.otf"

    .line 33
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_2

    .line 42
    return-object v1

    .line 43
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 45
    const-string v1, "/system/fonts/NotoSansCJK-Regular.ttc"

    .line 47
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 56
    return-object v1

    .line 57
    :cond_3
    new-instance v0, Ljava/io/File;

    .line 59
    const-string v1, "/system/fonts/DroidSansFallback.ttf"

    .line 61
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 70
    return-object v1

    .line 71
    :cond_4
    const/4 v0, 0x0

    .line 72
    return-object v0
.end method

.method public static getGLVersion(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/app/ActivityManager;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    .line 14
    move-result-object p0

    .line 15
    iget p0, p0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public static getResPath()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "/amapauto9/"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public static getStorageAvailableSize()J
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "/amapauto9/"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    :try_start_0
    new-instance v1, Landroid/os/StatFs;

    .line 28
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 34
    move-result-wide v2

    .line 35
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 38
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    mul-long v0, v0, v2

    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    const-wide/16 v0, 0x0

    .line 48
    :goto_0
    return-wide v0
.end method

.method public static getSystemStatusBarHeight()I
    .locals 4

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltk;->b()Landroid/app/Application;

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
    const-string v3, "status_bar_height"

    .line 19
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    if-lez v0, :cond_0

    .line 25
    invoke-static {}, Ltk;->d()Ltk;

    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ltk;->b()Landroid/app/Application;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    move-result v0

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, -0x1

    .line 43
    :goto_0
    return v0
.end method

.method public static getUISurfaceShowHeight()I
    .locals 9

    .line 1
    invoke-static {}, Ltk;->d()Ltk;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ltk;->c()Lir;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Lir;->e()Z

    .line 15
    move-result v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x1

    .line 18
    :goto_0
    invoke-static {}, Ltk;->d()Ltk;

    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v3}, Ltk;->b()Landroid/app/Application;

    .line 25
    move-result-object v3

    .line 26
    const-string v4, "window"

    .line 28
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Landroid/view/WindowManager;

    .line 34
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 37
    move-result-object v3

    .line 38
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 40
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43
    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 46
    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 48
    const/4 v5, 0x0

    .line 49
    const-string v6, "AndroidPlatform"

    .line 51
    if-eqz v0, :cond_1

    .line 53
    const/4 v7, 0x2

    .line 54
    new-array v7, v7, [Ljava/lang/Object;

    .line 56
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v8

    .line 60
    aput-object v8, v7, v5

    .line 62
    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 64
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v4

    .line 68
    aput-object v4, v7, v1

    .line 70
    const-string v4, "WindowManager metrics.heightPixels:{?} widthPixels:{?}"

    .line 72
    invoke-interface {v0, v6, v4, v7}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :cond_1
    if-nez v2, :cond_2

    .line 77
    invoke-static {}, Lcom/autonavi/eaglet/utils/AndroidPlatform;->getSystemStatusBarHeight()I

    .line 80
    move-result v2

    .line 81
    sub-int/2addr v3, v2

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 84
    new-array v1, v1, [Ljava/lang/Object;

    .line 86
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v2

    .line 90
    aput-object v2, v1, v5

    .line 92
    const-string v2, "getUISurfaceShowHeight heightPixels:{?} "

    .line 94
    invoke-interface {v0, v6, v2, v1}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v1, "log getUISurfaceShowHeight showHeight:"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return v3
.end method

.method public static onPreDraw()V
    .locals 0

    return-void
.end method

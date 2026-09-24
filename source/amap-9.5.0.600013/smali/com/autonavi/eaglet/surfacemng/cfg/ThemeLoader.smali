.class public final Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader$a;,
        Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader$b;
    }
.end annotation


# static fields
.field public static final BACK_DOOR_THEME_NAVI:Ljava/lang/String; = "styles.xml"

.field public static final BACK_DOOR_THEME_USB:Ljava/lang/String; = "styles_usb.xml"

.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerThm"


# instance fields
.field private mInitiated:Z

.field private mRootBuilder:Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->applyTheme(Landroid/app/Activity;Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method private applyTheme(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->mInitiated:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->initRootBuilder(Landroid/app/Activity;Ljava/lang/String;)V

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->mInitiated:Z

    .line 11
    :cond_0
    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerThm"

    .line 3
    invoke-static {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private initFromFile(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v1, "initFromFile begin: "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 33
    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    invoke-direct {p0, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->initFromStream(Ljava/io/InputStream;)Z

    .line 39
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p2

    .line 45
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception v0

    .line 50
    :try_start_4
    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    :goto_0
    throw p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    :catch_0
    move-exception p2

    .line 55
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v0, "initFromFile end: "

    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p2

    .line 82
    invoke-static {p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_2
    return p1
.end method

.method private initFromRes(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, ".xml"

    .line 3
    const-string v1, ""

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "raw"

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    move-result v0

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    const-string p2, "="

    .line 33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p2

    .line 43
    invoke-static {p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 46
    const/4 p2, 0x0

    .line 47
    if-nez v0, :cond_0

    .line 49
    return p2

    .line 50
    :cond_0
    const-string v1, "initFromRes begin"

    .line 52
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 55
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 62
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->initFromStream(Ljava/io/InputStream;)Z

    .line 66
    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    if-eqz p1, :cond_2

    .line 69
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    goto :goto_1

    .line 73
    :catchall_0
    move-exception v0

    .line 74
    if-eqz p1, :cond_1

    .line 76
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 79
    goto :goto_0

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    :try_start_4
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 84
    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 85
    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 93
    :cond_2
    :goto_1
    const-string p1, "initFromRes end"

    .line 95
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->debugLog(Ljava/lang/String;)V

    .line 98
    return p2
.end method

.method private initFromStream(Ljava/io/InputStream;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;-><init>()V

    .line 6
    const-string v1, "resources"

    .line 8
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader$a;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-string v1, "style"

    .line 15
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader$b;

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    const-string v1, "item"

    .line 22
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 27
    invoke-virtual {v0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->initFromStream(Ljava/io/InputStream;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 30
    move-result-object p1

    .line 31
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 34
    const/4 p1, 0x0

    .line 35
    return p1
.end method


# virtual methods
.method public initRootBuilder(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->getBackDoorFullPath(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->initFromFile(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/autonavi/eaglet/surfacemng/cfg/ThemeLoader;->initFromRes(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 14
    :cond_0
    return-void
.end method

.class public final Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$a;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$d;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$b;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$f;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$c;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$e;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$h;,
        Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$g;
    }
.end annotation


# static fields
.field public static final BACK_DOOR_FILE:Ljava/lang/String; = "eaglet_adaptor.xml"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerVar"

.field public static final TAG_VER_DEVELOP:Ljava/lang/String; = "sm_is_verDevelop"

.field private static sChannelInfo:Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$a;

.field public static sInitFromRes:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300()Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$a;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static native addChannelVariableNative([Ljava/lang/String;[I)V
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerVar"

    .line 3
    invoke-static {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method private static native getChannelVariableNative(Ljava/lang/String;I)I
.end method

.method public static getEagletVariable(Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->getChannelVariableNative(Ljava/lang/String;I)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static getVariable(Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;ZZ)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->initFromBackdoor()Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    if-eqz p2, :cond_1

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->initFromRes(Landroid/content/Context;)V

    .line 17
    :cond_1
    return-void
.end method

.method private static initFromBackdoor()Z
    .locals 1

    .line 1
    const-string v0, "eaglet_adaptor.xml"

    .line 3
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->getBackDoorFullPath(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->initFromFile(Ljava/lang/String;)Z

    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method private static initFromFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "initFromBackdoor begin "

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 33
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->initFromStream(Ljava/io/InputStream;)Z

    .line 39
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    goto :goto_1

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 48
    goto :goto_0

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    :try_start_4
    invoke-virtual {p0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 53
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v1, "initFromBackdoor end ret="

    .line 72
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 85
    :cond_1
    :goto_2
    return v0
.end method

.method private static initFromRes(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->sInitFromRes:Z

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 8
    const-string v1, "raw"

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object v2

    .line 14
    const-string v3, "eaglet_adaptor"

    .line 16
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    move-result v0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    const-string v2, "eaglet_adaptor="

    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 40
    if-nez v0, :cond_0

    .line 42
    return-void

    .line 43
    :cond_0
    const-string v1, "initFromRes begin"

    .line 45
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 48
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 55
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :try_start_1
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->initFromStream(Ljava/io/InputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz p0, :cond_2

    .line 61
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    if-eqz p0, :cond_1

    .line 68
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 71
    goto :goto_0

    .line 72
    :catchall_1
    move-exception p0

    .line 73
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 76
    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 77
    :catch_0
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 85
    :cond_2
    :goto_1
    const-string p0, "initFromRes end"

    .line 87
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method private static initFromStream(Ljava/io/InputStream;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->sInitFromRes:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->isVerDevelop()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    :cond_0
    const-string v0, "sm_is_verDevelop"

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setEagletVariable(Ljava/lang/String;I)V

    .line 17
    :cond_1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;

    .line 19
    invoke-direct {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;-><init>()V

    .line 22
    const-string v1, "channel"

    .line 24
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$b;

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 29
    const-string v1, "int"

    .line 31
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$f;

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 36
    const-string v1, "redirect"

    .line 38
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$c;

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 43
    const-string v1, "redirect_if"

    .line 45
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$e;

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 50
    const-string v1, "SetString"

    .line 52
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$h;

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 57
    const-string v1, "UiCfg"

    .line 59
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;

    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 64
    const-string v1, "SetStringFunc"

    .line 66
    const-class v3, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder$g;

    .line 68
    invoke-virtual {v0, v1, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 71
    const-string v1, "FnCfg"

    .line 73
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 76
    invoke-virtual {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->initFromStream(Ljava/io/InputStream;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 83
    const/4 p0, 0x0

    .line 84
    return p0
.end method

.method public static isVerDevelop()Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Ltr;->b()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const-string v2, "."

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 15
    move-result v2

    .line 16
    const/4 v3, 0x1

    .line 17
    add-int/2addr v2, v3

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    move-result v2

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v5, "isVerDevelop versionName="

    .line 33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 46
    const v1, 0x186a0

    .line 49
    div-int/2addr v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    if-gt v2, v3, :cond_0

    .line 52
    const/4 v0, 0x1

    .line 53
    :cond_0
    return v0

    .line 54
    :catch_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->debugLog(Ljava/lang/String;)V

    .line 62
    return v0
.end method

.method public static redirectMsgForChannel(Landroid/os/Message;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/os/Message;->what:I

    .line 3
    return p0
.end method

.method private static native setChannelVariableNative(Ljava/lang/String;I)I
.end method

.method public static setEagletVariable(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/VarBuilder;->setChannelVariableNative(Ljava/lang/String;I)I

    .line 4
    return-void
.end method

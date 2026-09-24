.class public Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader$a;
    }
.end annotation


# static fields
.field private static final BACK_DOOR_FILE:Ljava/lang/String; = "sm_channels"

.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerLoad"

.field private static final TAG_NEW_CONFIG:Ljava/lang/String; = "string"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "SurfaceViewManagerLoad"

    .line 3
    invoke-static {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->debugLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public static init(Landroid/app/Application;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->preLoad()V

    .line 4
    const-string v0, "sm_channels.xml"

    .line 6
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->getBackDoorFullPath(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->initFromBackdoor(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 16
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->initFromRaw(Landroid/app/Application;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->initFromValues(Landroid/app/Application;)Z

    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 32
    :goto_1
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->finishLoad()V

    .line 35
    return p0
.end method

.method private static initFromBackdoor(Ljava/lang/String;)Z
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
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 31
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 33
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->initFromStream(Ljava/io/InputStream;)Z

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
    move-result-object p0

    .line 59
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 62
    :goto_1
    const-string p0, "initFromBackdoor end"

    .line 64
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 67
    :cond_1
    :goto_2
    return v0
.end method

.method private static initFromRaw(Landroid/app/Application;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "raw"

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 11
    const-string v3, "sm_channels"

    .line 13
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    move-result v0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v2, "initFromRaw resId="

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 40
    return v1

    .line 41
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->initFromStream(Ljava/io/InputStream;)Z

    .line 52
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-eqz p0, :cond_2

    .line 55
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    if-eqz p0, :cond_1

    .line 62
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 65
    goto :goto_0

    .line 66
    :catchall_1
    move-exception p0

    .line 67
    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 70
    :cond_1
    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 71
    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    move-result-object p0

    .line 76
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 79
    :cond_2
    :goto_1
    const-string p0, "initFromRaw end"

    .line 81
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 84
    return v1
.end method

.method private static initFromStream(Ljava/io/InputStream;)Z
    .locals 3

    .line 1
    new-instance v0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;-><init>()V

    .line 6
    const-string v1, "resources"

    .line 8
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader$a;

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 13
    const-string v1, "string"

    .line 15
    const-class v2, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;

    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->addBuilder(Ljava/lang/String;Ljava/lang/Class;)V

    .line 20
    invoke-virtual {v0, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->initFromStream(Ljava/io/InputStream;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 23
    move-result-object p0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
.end method

.method private static initFromValues(Landroid/app/Application;)Z
    .locals 5

    .line 1
    const-string v0, "initFromRes begin"

    .line 3
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/cfg/Config;->getConfigList()Ljava/util/List;

    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/autonavi/eaglet/surfacemng/cfg/Config$b;

    .line 34
    iget-object v3, v2, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->a:Ljava/lang/String;

    .line 36
    const-string v4, "string"

    .line 38
    invoke-virtual {v0, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 44
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v2, v3}, Lcom/autonavi/eaglet/surfacemng/cfg/Config$a;->b(Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const-string p0, "initFromRes end"

    .line 54
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/ConfigLoader;->debugLog(Ljava/lang/String;)V

    .line 57
    const/4 p0, 0x1

    .line 58
    return p0
.end method

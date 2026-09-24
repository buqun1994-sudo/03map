.class public final Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;,
        Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;,
        Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$a;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final NAVI_PATH:Ljava/lang/String; = "/amapauto9/"

.field public static final SDCARD_PATH:Ljava/lang/String; = "/sdcard"

.field private static final TAG:Ljava/lang/String; = "SurfaceViewManagerXml"


# instance fields
.field public final declareInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->declareInfoMap:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->debugLog(Ljava/lang/String;)V

    .line 4
    return-void
.end method

.method public static synthetic access$300(Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->getObject(Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static debugLog(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public static getBackDoorFullPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/autonavi/eaglet/surfacemng/Adapter;->JNIContext()Ltr;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ltr;->c()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 38
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object p0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->debugLog(Ljava/lang/String;)V

    .line 48
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v1, "/amapauto9/"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    new-instance v0, Ljava/io/File;

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v2, "/sdcard"

    .line 74
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p0

    .line 84
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 90
    move-result p0

    .line 91
    if-eqz p0, :cond_1

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 96
    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    return-object p0

    .line 98
    :catch_1
    move-exception p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    move-result-object p0

    .line 103
    invoke-static {p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->debugLog(Ljava/lang/String;)V

    .line 106
    :cond_1
    const/4 p0, 0x0

    .line 107
    return-object p0
.end method

.method private getObject(Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->declareInfoMap:Ljava/util/Map;

    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Class;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 15
    move-result-object v0

    .line 16
    :cond_0
    if-nez v1, :cond_1

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    const-string v2, "Item not declared: "

    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->debugLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    :cond_1
    :goto_0
    check-cast v0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 45
    return-object v0
.end method


# virtual methods
.method public addBuilder(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;->declareInfoMap:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public initFromFile(Ljava/lang/String;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->a(Ljava/lang/String;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public initFromStream(Ljava/io/InputStream;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$c;->b(Ljava/io/InputStream;Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader;)Lcom/autonavi/eaglet/surfacemng/cfg/XmlLoader$b;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.class public Lcj0$i;
.super Lcj0$k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcj0$k;-><init>(Lcj0$b;)V

    .line 5
    return-void
.end method


# virtual methods
.method public l()Ljava/util/List;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "UsbDiskPathFuncRepository"

    .line 6
    const-string v3, "getUsbDiskPath func:17"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    const-string v3, "/mnt/media_rw"

    .line 15
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    new-instance v3, Ljava/util/ArrayList;

    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    array-length v4, v1

    .line 30
    if-lez v4, :cond_1

    .line 32
    array-length v4, v1

    .line 33
    const/4 v5, 0x0

    .line 34
    :goto_0
    if-ge v5, v4, :cond_1

    .line 36
    aget-object v6, v1, v5

    .line 38
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 41
    move-result v7

    .line 42
    if-eqz v7, :cond_0

    .line 44
    invoke-virtual {v6}, Ljava/io/File;->canWrite()Z

    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_0

    .line 50
    const-string v7, "sdcard"

    .line 52
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result v7

    .line 60
    if-nez v7, :cond_0

    .line 62
    const-string v7, "/"

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 67
    move-result-object v8

    .line 68
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v7

    .line 72
    if-nez v7, :cond_0

    .line 74
    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 77
    move-result-object v6

    .line 78
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    const-string v7, "getUsbUpdataPath uDiskPath={?}"

    .line 83
    const/4 v8, 0x1

    .line 84
    new-array v8, v8, [Ljava/lang/Object;

    .line 86
    aput-object v6, v8, v0

    .line 88
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 93
    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    const-string v4, "getUsbUpdataPath Exception:"

    .line 97
    new-array v0, v0, [Ljava/lang/Object;

    .line 99
    invoke-static {v2, v4, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 102
    :cond_1
    return-object v3
.end method

.method public varargs p([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

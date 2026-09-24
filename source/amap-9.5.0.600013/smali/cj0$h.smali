.class public Lcj0$h;
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
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/mnt/media_rw"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    const/4 v2, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 20
    array-length v3, v0

    .line 21
    if-lez v3, :cond_2

    .line 23
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    const/4 v4, 0x0

    .line 25
    :goto_0
    if-ge v2, v3, :cond_1

    .line 27
    :try_start_1
    aget-object v5, v0, v2

    .line 29
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    .line 32
    move-result v6

    .line 33
    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    .line 38
    move-result v6

    .line 39
    if-eqz v6, :cond_0

    .line 41
    const-string v6, "sdcard"

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v6

    .line 51
    if-nez v6, :cond_0

    .line 53
    const-string v6, "/"

    .line 55
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 58
    move-result-object v7

    .line 59
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v6

    .line 63
    if-nez v6, :cond_0

    .line 65
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 68
    move-result-object v5

    .line 69
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    const/4 v4, 0x1

    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    move v2, v4

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v2, v4

    .line 80
    goto :goto_2

    .line 81
    :catch_1
    move-exception v0

    .line 82
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 85
    :cond_2
    :goto_2
    if-eqz v2, :cond_3

    .line 87
    goto :goto_3

    .line 88
    :cond_3
    const/4 v1, 0x0

    .line 89
    :goto_3
    return-object v1
.end method

.method public varargs p([Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

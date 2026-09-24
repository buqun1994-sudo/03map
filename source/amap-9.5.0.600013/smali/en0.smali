.class public abstract Len0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "en0"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 13
    return v0

    .line 14
    :cond_1
    invoke-static {p0}, Len0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 21
    move-result v1

    .line 22
    const/16 v2, 0x8

    .line 24
    if-ge v1, v2, :cond_2

    .line 26
    return v0

    .line 27
    :cond_2
    const-string v1, "A:"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_3

    .line 35
    return v0

    .line 36
    :cond_3
    const-string v1, ":"

    .line 38
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 41
    move-result v1

    .line 42
    add-int/lit8 v1, v1, 0x1

    .line 44
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Len0;->v(Ljava/lang/String;)Z

    .line 51
    move-result p0

    .line 52
    if-nez p0, :cond_4

    .line 54
    return v0

    .line 55
    :cond_4
    const/4 p0, 0x3

    .line 56
    return p0
.end method

.method public static b(Landroid/net/wifi/p2p/WifiP2pDevice;)I
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 7
    invoke-static {p0}, Len0;->c(Ljava/lang/String;)I

    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static c(Ljava/lang/String;)I
    .locals 6

    .line 1
    sget-object v0, Len0;->a:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object p0, v2, v3

    .line 9
    const-string v4, "checkValidServerDevice name = {?}"

    .line 11
    invoke-static {v0, v4, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    return v3

    .line 21
    :cond_0
    invoke-static {p0}, Len0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 28
    move-result v0

    .line 29
    const/16 v2, 0x8

    .line 31
    if-ge v0, v2, :cond_1

    .line 33
    return v3

    .line 34
    :cond_1
    const-string v0, ":"

    .line 36
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 43
    move-result v4

    .line 44
    add-int/lit8 v4, v4, -0x6

    .line 46
    if-eq v2, v4, :cond_2

    .line 48
    return v3

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 52
    move-result v4

    .line 53
    add-int/lit8 v4, v4, -0x6

    .line 55
    if-ne v2, v4, :cond_6

    .line 57
    const-string v4, "M:"

    .line 59
    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 62
    move-result v4

    .line 63
    const/4 v5, 0x2

    .line 64
    if-eqz v4, :cond_4

    .line 66
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 73
    move-result p0

    .line 74
    if-le p0, v5, :cond_3

    .line 76
    return v1

    .line 77
    :cond_3
    return v3

    .line 78
    :cond_4
    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 89
    move-result v2

    .line 90
    add-int/lit8 v2, v2, -0x9

    .line 92
    if-eq v0, v2, :cond_5

    .line 94
    return v3

    .line 95
    :cond_5
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 102
    move-result p0

    .line 103
    if-lt p0, v1, :cond_6

    .line 105
    return v5

    .line 106
    :cond_6
    return v3
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "[\\u4e00-\\u9fa5]"

    .line 15
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 24
    move-result v4

    .line 25
    if-ge v2, v4, :cond_2

    .line 27
    add-int/lit8 v4, v2, 0x1

    .line 29
    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    .line 40
    move-result v5

    .line 41
    const/16 v6, 0xf

    .line 43
    if-eqz v5, :cond_1

    .line 45
    add-int/lit8 v3, v3, 0x2

    .line 47
    if-ge v3, v6, :cond_2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 55
    if-ge v3, v6, :cond_2

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    :goto_1
    move v2, v4

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    return-object p0
.end method

.method public static e(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-static {p0}, Len0;->a(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v1, v2, :cond_1

    .line 12
    return-object v0

    .line 13
    :cond_1
    invoke-static {p0}, Lym0;->f(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 16
    move-result-object p0

    .line 17
    iput v1, p0, Lym0;->a:I

    .line 19
    iget-object v0, p0, Lym0;->g:Ljava/lang/String;

    .line 21
    const-string v1, ":"

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 26
    move-result v1

    .line 27
    add-int/lit8 v2, v1, 0x1

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    iput-object v2, p0, Lym0;->b:Ljava/lang/String;

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lym0;->c:Ljava/lang/String;

    .line 42
    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/HashSet;

    .line 8
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 11
    const-string v2, "WIFI_DIRECT_CONNECT_HISTORY"

    .line 13
    invoke-static {p0, v2, v1}, Lbn0;->c(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    return-object v0

    .line 24
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Ljava/lang/String;

    .line 40
    invoke-static {v1}, Lym0;->e(Ljava/lang/String;)Lym0;

    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-object v0
.end method

.method public static g(Ljava/util/List;Ljava/lang/String;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 10
    return-void

    .line 11
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 14
    if-nez p2, :cond_2

    .line 16
    const-string p2, "/directS"

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const-string p2, "/directM"

    .line 21
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 47
    return-void

    .line 48
    :cond_3
    const/4 p1, 0x0

    .line 49
    :try_start_0
    new-instance p2, Ljava/io/FileInputStream;

    .line 51
    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 56
    new-instance v1, Ljava/io/InputStreamReader;

    .line 58
    invoke-direct {v1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 61
    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 64
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    if-eqz v1, :cond_4

    .line 74
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 77
    :goto_2
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 80
    goto :goto_4

    .line 81
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 84
    move-result v1

    .line 85
    const/4 v2, 0x4

    .line 86
    if-eq v1, v2, :cond_5

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 92
    goto :goto_1

    .line 93
    :catchall_0
    move-exception p0

    .line 94
    move-object p1, v0

    .line 95
    goto :goto_5

    .line 96
    :catch_0
    move-exception p0

    .line 97
    move-object p1, v0

    .line 98
    goto :goto_3

    .line 99
    :catch_1
    move-exception p0

    .line 100
    goto :goto_3

    .line 101
    :catchall_1
    move-exception p0

    .line 102
    move-object p2, p1

    .line 103
    goto :goto_5

    .line 104
    :catch_2
    move-exception p0

    .line 105
    move-object p2, p1

    .line 106
    :goto_3
    :try_start_5
    sget-object v0, Len0;->a:Ljava/lang/String;

    .line 108
    const-string v1, "getConnectHostFeatureCodeFromFile error = {?}"

    .line 110
    const/4 v2, 0x1

    .line 111
    new-array v2, v2, [Ljava/lang/Object;

    .line 113
    const/4 v3, 0x0

    .line 114
    aput-object p0, v2, v3

    .line 116
    invoke-static {v0, v1, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 119
    if-eqz p1, :cond_6

    .line 121
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 124
    :cond_6
    if-eqz p2, :cond_7

    .line 126
    goto :goto_2

    .line 127
    :catch_3
    :cond_7
    :goto_4
    return-void

    .line 128
    :catchall_2
    move-exception p0

    .line 129
    :goto_5
    if-eqz p1, :cond_8

    .line 131
    :try_start_7
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 134
    :cond_8
    if-eqz p2, :cond_9

    .line 136
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 139
    :catch_4
    :cond_9
    throw p0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Len0;->p(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xf

    .line 20
    if-ge v0, v1, :cond_1

    .line 22
    return-object p0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 28
    return-object p0

    .line 29
    :cond_2
    invoke-static {p0}, Len0;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string p0, "/direct"

    .line 22
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 35
    move-result p0

    .line 36
    if-nez p0, :cond_1

    .line 38
    return-object v1

    .line 39
    :cond_1
    const/4 p0, 0x0

    .line 40
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 42
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 47
    new-instance v3, Ljava/io/InputStreamReader;

    .line 49
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 52
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 55
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 58
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 59
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 62
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 65
    :catch_0
    return-object p0

    .line 66
    :catch_1
    move-exception p0

    .line 67
    goto :goto_0

    .line 68
    :catch_2
    move-exception v0

    .line 69
    move-object v7, v0

    .line 70
    move-object v0, p0

    .line 71
    move-object p0, v7

    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    move-object v2, p0

    .line 74
    goto :goto_1

    .line 75
    :catch_3
    move-exception v0

    .line 76
    move-object v2, p0

    .line 77
    move-object p0, v0

    .line 78
    move-object v0, v2

    .line 79
    :goto_0
    :try_start_4
    sget-object v3, Len0;->a:Ljava/lang/String;

    .line 81
    const-string v4, "getFeatureCodeFromFile error = {?}"

    .line 83
    const/4 v5, 0x1

    .line 84
    new-array v5, v5, [Ljava/lang/Object;

    .line 86
    const/4 v6, 0x0

    .line 87
    aput-object p0, v5, v6

    .line 89
    invoke-static {v3, v4, v5}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 92
    if-eqz v0, :cond_2

    .line 94
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 97
    :cond_2
    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 102
    :catch_4
    :cond_3
    return-object v1

    .line 103
    :catchall_1
    move-object p0, v0

    .line 104
    :catchall_2
    :goto_1
    if-eqz p0, :cond_4

    .line 106
    :try_start_6
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V

    .line 109
    :cond_4
    if-eqz v2, :cond_5

    .line 111
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 114
    :catch_5
    :cond_5
    return-object v1
.end method

.method public static j()C
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    const/16 v0, 0xc

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    .line 17
    move-result v0

    .line 18
    const/16 v1, 0x3c

    .line 20
    if-nez v0, :cond_0

    .line 22
    const/16 v0, 0x3c

    .line 24
    :cond_0
    const/16 v2, 0x41

    .line 26
    const/4 v3, 0x1

    .line 27
    if-gt v3, v0, :cond_1

    .line 29
    const/16 v4, 0x1a

    .line 31
    if-gt v0, v4, :cond_1

    .line 33
    add-int/lit8 v1, v0, -0x1

    .line 35
    add-int/2addr v1, v2

    .line 36
    :goto_0
    int-to-char v2, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/16 v4, 0x1b

    .line 40
    if-gt v4, v0, :cond_2

    .line 42
    const/16 v4, 0x34

    .line 44
    if-gt v0, v4, :cond_2

    .line 46
    add-int/lit8 v1, v0, -0x1b

    .line 48
    add-int/lit8 v1, v1, 0x61

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/16 v4, 0x35

    .line 53
    if-gt v4, v0, :cond_3

    .line 55
    if-gt v0, v1, :cond_3

    .line 57
    add-int/lit8 v1, v0, -0x35

    .line 59
    add-int/lit8 v1, v1, 0x30

    .line 61
    goto :goto_0

    .line 62
    :cond_3
    :goto_1
    sget-object v1, Len0;->a:Ljava/lang/String;

    .line 64
    const/4 v4, 0x2

    .line 65
    new-array v4, v4, [Ljava/lang/Object;

    .line 67
    const/4 v5, 0x0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 71
    move-result-object v0

    .line 72
    aput-object v0, v4, v5

    .line 74
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 77
    move-result-object v0

    .line 78
    aput-object v0, v4, v3

    .line 80
    const-string v0, "getLastTimeCode minutes = {?},result = "

    .line 82
    invoke-static {v1, v0, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    return v2
.end method

.method public static k()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "Permission Denial"

    .line 3
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "dumpsys wifip2p"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/BufferedReader;

    .line 19
    new-instance v3, Ljava/io/InputStreamReader;

    .line 21
    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_0

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v1

    .line 46
    sget-object v2, Len0;->a:Ljava/lang/String;

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    const-string v4, "result content : "

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 65
    const/4 v4, 0x0

    .line 66
    new-array v4, v4, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 74
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    if-eqz v2, :cond_1

    .line 77
    return-object v0

    .line 78
    :cond_1
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    const-string v0, ""

    .line 85
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-static {v0}, Len0;->m(I)Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    return-object v0
.end method

.method public static m(I)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/Random;

    .line 3
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 6
    new-instance v1, Ljava/lang/StringBuffer;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, p0, :cond_0

    .line 14
    const/16 v3, 0x3e

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/Random;->nextInt(I)I

    .line 19
    move-result v3

    .line 20
    const-string v4, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"

    .line 22
    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    .line 25
    move-result v3

    .line 26
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    add-int/lit8 v2, v2, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static n(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p0, :cond_0

    .line 6
    sget-object v3, Len0;->a:Ljava/lang/String;

    .line 8
    new-array v2, v2, [Ljava/lang/Object;

    .line 10
    aput-object p0, v2, v0

    .line 12
    const-string p0, "getServerDeviceFromP2pDevice serverDevice = {?}"

    .line 14
    invoke-static {v3, p0, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-object v1

    .line 18
    :cond_0
    invoke-static {p0}, Len0;->b(Landroid/net/wifi/p2p/WifiP2pDevice;)I

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_1

    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-static {p0}, Lym0;->f(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;

    .line 28
    move-result-object p0

    .line 29
    iput v3, p0, Lym0;->a:I

    .line 31
    iget-object v4, p0, Lym0;->g:Ljava/lang/String;

    .line 33
    const-string v5, ":"

    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 38
    move-result v6

    .line 39
    const/4 v7, 0x2

    .line 40
    if-ne v3, v2, :cond_2

    .line 42
    add-int/lit8 v8, v6, 0x1

    .line 44
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 47
    move-result v9

    .line 48
    sub-int/2addr v9, v2

    .line 49
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 52
    move-result-object v8

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    if-ne v3, v7, :cond_3

    .line 56
    add-int/lit8 v8, v6, 0x1

    .line 58
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 61
    move-result v9

    .line 62
    sub-int/2addr v9, v2

    .line 63
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 66
    move-result-object v8

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    move-object v8, v1

    .line 69
    :goto_0
    invoke-static {v8}, Len0;->v(Ljava/lang/String;)Z

    .line 72
    move-result v9

    .line 73
    if-nez v9, :cond_4

    .line 75
    return-object v1

    .line 76
    :cond_4
    iput-object v8, p0, Lym0;->b:Ljava/lang/String;

    .line 78
    invoke-virtual {v4, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    if-ne v3, v2, :cond_5

    .line 84
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 87
    move-result-object v0

    .line 88
    iput-object v0, p0, Lym0;->c:Ljava/lang/String;

    .line 90
    goto :goto_1

    .line 91
    :cond_5
    if-ne v3, v7, :cond_6

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v4, "DIRECT-"

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 106
    move-result v4

    .line 107
    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lym0;->c:Ljava/lang/String;

    .line 120
    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 123
    move-result v0

    .line 124
    add-int/2addr v0, v2

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    iput-object v0, p0, Lym0;->d:Ljava/lang/String;

    .line 131
    :cond_6
    :goto_1
    return-object p0
.end method

.method public static o(C)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    return p0
.end method

.method public static p(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "[\\u4e00-\\u9fa5]"

    .line 11
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 18
    move-result-object p0

    .line 19
    :cond_1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->groupCount()I

    .line 28
    move-result v0

    .line 29
    if-ltz v0, :cond_1

    .line 31
    const/4 p0, 0x1

    .line 32
    return p0

    .line 33
    :cond_2
    return v1
.end method

.method public static q(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-object v1

    .line 10
    :cond_0
    const-string v0, "[Phone] "

    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    :cond_1
    return-object p0
.end method

.method public static r(Landroid/content/Context;Ljava/util/List;)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 9
    const-string v1, "WIFI_DIRECT_CONNECT_HISTORY"

    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz p1, :cond_3

    .line 14
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result v3

    .line 25
    const/4 v4, 0x0

    .line 26
    :goto_0
    if-ge v4, v3, :cond_2

    .line 28
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lym0;

    .line 34
    invoke-static {v5}, Lym0;->a(Lym0;)Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    sget-object p1, Len0;->a:Ljava/lang/String;

    .line 46
    const/4 v3, 0x1

    .line 47
    new-array v3, v3, [Ljava/lang/Object;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    aput-object v4, v3, v2

    .line 55
    const-string v2, "saveClientList result = {?}"

    .line 57
    invoke-static {p1, v2, v3}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p0, v1, v0}, Lbn0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 63
    return-void

    .line 64
    :cond_3
    :goto_1
    sget-object p1, Len0;->a:Ljava/lang/String;

    .line 66
    const-string v3, "saveClientList result = empty"

    .line 68
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    invoke-static {p1, v3, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-static {p0, v1, v0}, Lbn0;->e(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 76
    return-void
.end method

.method public static s(Ljava/util/List;Ljava/lang/String;I)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 11
    const-string p2, "/directS"

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const-string p2, "/directM"

    .line 16
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 18
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_4

    .line 27
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 30
    move-result v2

    .line 31
    const-string v3, "1"

    .line 33
    if-eqz v2, :cond_3

    .line 35
    new-instance v2, Ljava/io/File;

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_2

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 64
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget-object p0, Len0;->a:Ljava/lang/String;

    .line 70
    const-string p1, "saveFeatureCodeToFile deleteFile error"

    .line 72
    new-array p2, v1, [Ljava/lang/Object;

    .line 74
    invoke-static {p0, p1, p2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return v1

    .line 78
    :cond_3
    :goto_1
    new-instance v0, Ljava/io/File;

    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_5

    .line 104
    new-instance v2, Ljava/io/File;

    .line 106
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 130
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 133
    goto :goto_2

    .line 134
    :cond_4
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p1

    .line 154
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 160
    :cond_5
    :goto_2
    if-eqz p0, :cond_9

    .line 162
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 165
    move-result p1

    .line 166
    if-eqz p1, :cond_6

    .line 168
    goto :goto_6

    .line 169
    :cond_6
    const/4 p1, 0x1

    .line 170
    const/4 p2, 0x0

    .line 171
    :try_start_1
    new-instance v2, Ljava/io/FileWriter;

    .line 173
    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    :try_start_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 179
    move-result-object p0

    .line 180
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    move-result p2

    .line 184
    if-eqz p2, :cond_7

    .line 186
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object p2

    .line 190
    check-cast p2, Ljava/lang/String;

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string p2, "\r\n"

    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p2

    .line 209
    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 212
    goto :goto_3

    .line 213
    :cond_7
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 216
    :try_start_3
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 219
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 222
    :catch_0
    return p1

    .line 223
    :catchall_0
    move-object p2, v2

    .line 224
    goto :goto_5

    .line 225
    :catch_1
    move-exception p0

    .line 226
    move-object p2, v2

    .line 227
    goto :goto_4

    .line 228
    :catch_2
    move-exception p0

    .line 229
    :goto_4
    :try_start_4
    sget-object v0, Len0;->a:Ljava/lang/String;

    .line 231
    const-string v2, "saveConnectHostToFile error = {?}"

    .line 233
    new-array p1, p1, [Ljava/lang/Object;

    .line 235
    aput-object p0, p1, v1

    .line 237
    invoke-static {v0, v2, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 240
    if-eqz p2, :cond_8

    .line 242
    :try_start_5
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 245
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 248
    :catch_3
    :cond_8
    return v1

    .line 249
    :catchall_1
    :goto_5
    if-eqz p2, :cond_9

    .line 251
    :try_start_6
    invoke-virtual {p2}, Ljava/io/Writer;->flush()V

    .line 254
    invoke-virtual {p2}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 257
    :catch_4
    :cond_9
    :goto_6
    return v1
.end method

.method public static t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 11
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 17
    move-result v2

    .line 18
    const-string v3, "/direct"

    .line 20
    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 25
    move-result v2

    .line 26
    const-string v4, "1"

    .line 28
    if-eqz v2, :cond_2

    .line 30
    new-instance v2, Ljava/io/File;

    .line 32
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 59
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget-object p0, Len0;->a:Ljava/lang/String;

    .line 65
    const-string p1, "saveFeatureCodeToFile deleteFile error"

    .line 67
    new-array v0, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {p0, p1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return v1

    .line 73
    :cond_2
    :goto_0
    new-instance v0, Ljava/io/File;

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 96
    move-result v2

    .line 97
    if-eqz v2, :cond_4

    .line 99
    new-instance v2, Ljava/io/File;

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p1

    .line 119
    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 125
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 128
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 132
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 134
    new-instance v2, Ljava/lang/StringBuilder;

    .line 136
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object p1

    .line 149
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 155
    :cond_4
    :goto_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_5

    .line 161
    return v1

    .line 162
    :cond_5
    const/4 p1, 0x1

    .line 163
    const/4 v2, 0x0

    .line 164
    :try_start_1
    new-instance v3, Ljava/io/FileWriter;

    .line 166
    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 169
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 171
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string p0, "\r\n"

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    move-result-object p0

    .line 186
    invoke-virtual {v3, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :try_start_3
    invoke-virtual {v3}, Ljava/io/Writer;->flush()V

    .line 195
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 198
    :catch_0
    return p1

    .line 199
    :catchall_0
    move-object v2, v3

    .line 200
    goto :goto_3

    .line 201
    :catch_1
    move-exception p0

    .line 202
    move-object v2, v3

    .line 203
    goto :goto_2

    .line 204
    :catch_2
    move-exception p0

    .line 205
    :goto_2
    :try_start_4
    sget-object v0, Len0;->a:Ljava/lang/String;

    .line 207
    const-string v3, "saveFeatureCodeToFile error = {?}"

    .line 209
    new-array p1, p1, [Ljava/lang/Object;

    .line 211
    aput-object p0, p1, v1

    .line 213
    invoke-static {v0, v3, p1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 216
    if-eqz v2, :cond_6

    .line 218
    :try_start_5
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 221
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 224
    :catch_3
    :cond_6
    return v1

    .line 225
    :catchall_1
    :goto_3
    if-eqz v2, :cond_7

    .line 227
    :try_start_6
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 230
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 233
    :catch_4
    :cond_7
    return v1
.end method

.method public static u(Lnj;Lym0;Z)Lap;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    new-instance p2, Ldp;

    .line 5
    invoke-direct {p2, p0, p1}, Ldp;-><init>(Lnj;Lym0;)V

    .line 8
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 11
    return-object p2

    .line 12
    :cond_0
    new-instance p2, Lcp;

    .line 14
    invoke-direct {p2, p0, p1}, Lcp;-><init>(Lnj;Lym0;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 20
    return-object p2
.end method

.method public static v(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x4

    .line 14
    if-eq v0, v2, :cond_1

    .line 16
    return v1

    .line 17
    :cond_1
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v0, :cond_3

    .line 20
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 23
    move-result v3

    .line 24
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    .line 27
    move-result v4

    .line 28
    if-nez v4, :cond_2

    .line 30
    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_2

    .line 36
    return v1

    .line 37
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 p0, 0x1

    .line 41
    return p0
.end method

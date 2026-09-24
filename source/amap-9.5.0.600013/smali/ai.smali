.class public abstract Lai;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lrv;->H()Lrv;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 17
    move-result-object v1

    .line 18
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "/cpplibs"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lai;->a:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static a()I
    .locals 6

    .line 1
    invoke-static {}, Lai;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne v0, v2, :cond_0

    .line 9
    const/4 v3, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_0
    const/4 v4, 0x2

    .line 13
    if-ne v0, v4, :cond_1

    .line 15
    const/4 v5, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v5, 0x0

    .line 18
    :goto_1
    or-int/2addr v3, v5

    .line 19
    if-eqz v3, :cond_2

    .line 21
    const/4 v0, 0x2

    .line 22
    goto :goto_4

    .line 23
    :cond_2
    const/4 v3, 0x3

    .line 24
    if-ne v0, v3, :cond_3

    .line 26
    const/4 v3, 0x1

    .line 27
    goto :goto_2

    .line 28
    :cond_3
    const/4 v3, 0x0

    .line 29
    :goto_2
    const/4 v4, 0x4

    .line 30
    if-ne v0, v4, :cond_4

    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_3

    .line 34
    :cond_4
    const/4 v4, 0x0

    .line 35
    :goto_3
    or-int/2addr v3, v4

    .line 36
    const/4 v4, 0x5

    .line 37
    if-ne v0, v4, :cond_5

    .line 39
    const/4 v1, 0x1

    .line 40
    :cond_5
    or-int/2addr v1, v3

    .line 41
    if-eqz v1, :cond_6

    .line 43
    const/4 v0, 0x1

    .line 44
    :cond_6
    :goto_4
    return v0
.end method

.method public static b()I
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "amapautoadapter/locationMode.txt"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_4

    .line 19
    const/4 v1, 0x0

    .line 20
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    .line 22
    new-instance v4, Ljava/io/FileInputStream;

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 27
    move-result-object v0

    .line 28
    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 31
    invoke-direct {v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 36
    invoke-direct {v0, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_0

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 53
    :cond_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 59
    goto :goto_5

    .line 60
    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    goto :goto_5

    .line 65
    :catch_1
    move-exception v1

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object v5, v1

    .line 69
    move-object v1, v0

    .line 70
    move-object v0, v5

    .line 71
    goto :goto_1

    .line 72
    :catch_2
    move-exception v0

    .line 73
    move-object v5, v1

    .line 74
    move-object v1, v0

    .line 75
    move-object v0, v5

    .line 76
    goto :goto_0

    .line 77
    :catchall_1
    move-exception v0

    .line 78
    move-object v3, v1

    .line 79
    move-object v1, v0

    .line 80
    move-object v0, v3

    .line 81
    goto :goto_1

    .line 82
    :catch_3
    move-exception v0

    .line 83
    move-object v3, v1

    .line 84
    move-object v1, v0

    .line 85
    move-object v0, v3

    .line 86
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 89
    if-eqz v3, :cond_1

    .line 91
    :try_start_5
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 94
    :cond_1
    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 99
    goto :goto_5

    .line 100
    :catchall_2
    move-exception v1

    .line 101
    :goto_1
    if-eqz v3, :cond_2

    .line 103
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 106
    goto :goto_2

    .line 107
    :catch_4
    move-exception v0

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 111
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 114
    goto :goto_4

    .line 115
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    :cond_3
    :goto_4
    throw v1

    .line 119
    :cond_4
    :goto_5
    return v2
.end method

.method public static c()Ljava/lang/String;
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "amapautoadapter/locationMode.txt"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    const-string v2, "AutoCpp"

    .line 19
    const-string v3, ""

    .line 21
    if-nez v0, :cond_0

    .line 23
    const-string v0, "getRelatedInfo,locationModeFile not exists!"

    .line 25
    new-array v1, v1, [Ljava/lang/Object;

    .line 27
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return-object v3

    .line 31
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 33
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 36
    move-result-object v4

    .line 37
    const-string v5, "amapautoadapter/relatedInfo.txt"

    .line 39
    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    move-result v4

    .line 46
    if-eqz v4, :cond_4

    .line 48
    const/4 v4, 0x0

    .line 49
    :try_start_0
    new-instance v5, Ljava/io/InputStreamReader;

    .line 51
    new-instance v6, Ljava/io/FileInputStream;

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 56
    move-result-object v0

    .line 57
    invoke-direct {v6, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 60
    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 63
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    .line 65
    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 71
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 72
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 75
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 78
    goto :goto_6

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 83
    goto :goto_6

    .line 84
    :catch_1
    move-exception v4

    .line 85
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    .line 87
    move-object v0, v4

    .line 88
    goto :goto_1

    .line 89
    :catch_2
    move-exception v0

    .line 90
    move-object v7, v4

    .line 91
    move-object v4, v0

    .line 92
    move-object v0, v7

    .line 93
    goto :goto_0

    .line 94
    :catchall_1
    move-exception v1

    .line 95
    move-object v0, v4

    .line 96
    goto :goto_2

    .line 97
    :catch_3
    move-exception v0

    .line 98
    move-object v5, v4

    .line 99
    move-object v4, v0

    .line 100
    move-object v0, v5

    .line 101
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 104
    if-eqz v5, :cond_1

    .line 106
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStreamReader;->close()V

    .line 109
    :cond_1
    if-eqz v0, :cond_4

    .line 111
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 114
    goto :goto_6

    .line 115
    :catchall_2
    move-exception v1

    .line 116
    :goto_1
    move-object v4, v5

    .line 117
    :goto_2
    if-eqz v4, :cond_2

    .line 119
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 122
    goto :goto_3

    .line 123
    :catch_4
    move-exception v0

    .line 124
    goto :goto_4

    .line 125
    :cond_2
    :goto_3
    if-eqz v0, :cond_3

    .line 127
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 130
    goto :goto_5

    .line 131
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 134
    :cond_3
    :goto_5
    throw v1

    .line 135
    :cond_4
    :goto_6
    const/4 v0, 0x1

    .line 136
    new-array v0, v0, [Ljava/lang/Object;

    .line 138
    aput-object v3, v0, v1

    .line 140
    const-string v1, "getRelatedInfo ={?}"

    .line 142
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    return-object v3
.end method

.method public static d()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, "amapautoadapter/locationMode.txt"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public static e()Z
    .locals 2

    .line 1
    invoke-static {}, Lai;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x5

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public static f()Z
    .locals 2

    .line 1
    invoke-static {}, Lai;->b()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/4 v1, 0x5

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.class public Lip;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public cleanup()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lbc;->cleanup()Z

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "/proc/cpuinfo"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_3

    .line 15
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 17
    new-instance v3, Ljava/io/FileReader;

    .line 19
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 22
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    const-string v3, "Serial"

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 39
    const-string v3, ":"

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 47
    array-length v3, v0

    .line 48
    if-lez v3, :cond_0

    .line 50
    const/4 v3, 0x1

    .line 51
    aget-object v0, v0, v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 53
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 61
    :goto_0
    return-object v0

    .line 62
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 65
    goto :goto_6

    .line 66
    :catch_1
    move-exception v0

    .line 67
    goto :goto_1

    .line 68
    :catch_2
    move-exception v0

    .line 69
    goto :goto_2

    .line 70
    :catch_3
    move-exception v0

    .line 71
    goto :goto_3

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_4

    .line 74
    :catch_4
    move-exception v0

    .line 75
    move-object v1, v2

    .line 76
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 79
    if-eqz v1, :cond_3

    .line 81
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 84
    goto :goto_6

    .line 85
    :catch_5
    move-exception v0

    .line 86
    move-object v1, v2

    .line 87
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 90
    if-eqz v1, :cond_3

    .line 92
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 95
    goto :goto_6

    .line 96
    :catch_6
    move-exception v0

    .line 97
    move-object v1, v2

    .line 98
    :goto_3
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 101
    if-eqz v1, :cond_3

    .line 103
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 106
    goto :goto_6

    .line 107
    :catch_7
    move-exception v0

    .line 108
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    goto :goto_6

    .line 112
    :catchall_1
    move-exception v0

    .line 113
    move-object v2, v1

    .line 114
    :goto_4
    if-eqz v2, :cond_2

    .line 116
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 119
    goto :goto_5

    .line 120
    :catch_8
    move-exception v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    :cond_2
    :goto_5
    throw v0

    .line 125
    :cond_3
    :goto_6
    return-object v2
.end method

.method public getBooleanValue(I)Z
    .locals 3

    .line 1
    const/16 v0, 0x2711

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lei;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    .line 12
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 15
    new-instance v0, Landroid/content/ComponentName;

    .line 17
    const-string v1, "com.hazens.hazenswifi"

    .line 19
    const-string v2, "com.hazens.hazenswifi.WifiActivity"

    .line 21
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 27
    const/high16 v0, 0x10800000

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v0, p0, Lac;->a:Landroid/content/Context;

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const/4 p1, 0x1

    .line 38
    return p1

    .line 39
    :catch_0
    const/4 p1, 0x0

    .line 40
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const v0, 0x9c43

    .line 4
    if-eq p1, v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lei;->getStringValue(I)Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-virtual {p0}, Lip;->e()Ljava/lang/String;

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

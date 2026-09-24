.class public abstract Ltd;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltd$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ltd$a;
    .locals 11

    .line 1
    const-string v0, "copyFilesFromAssets exception:"

    .line 3
    const-string v1, "CRCUtil"

    .line 5
    new-instance v2, Ljava/util/zip/CRC32;

    .line 7
    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 10
    new-instance v3, Ltd$a;

    .line 12
    invoke-direct {v3}, Ltd$a;-><init>()V

    .line 15
    const/4 v4, 0x0

    .line 16
    const/4 v5, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 24
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 25
    :try_start_1
    new-instance v6, Ljava/io/FileOutputStream;

    .line 27
    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    const/high16 p2, 0x20000

    .line 32
    :try_start_2
    new-array p2, p2, [B

    .line 34
    const-wide/16 v7, 0x0

    .line 36
    :goto_0
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    .line 39
    move-result v5

    .line 40
    const/4 v9, -0x1

    .line 41
    if-eq v5, v9, :cond_0

    .line 43
    int-to-long v9, v5

    .line 44
    add-long/2addr v7, v9

    .line 45
    invoke-virtual {v6, p2, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 48
    invoke-virtual {v2, p2, v4, v5}, Ljava/util/zip/CRC32;->update([BII)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 55
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 58
    move-result-wide v9

    .line 59
    iput-wide v9, v3, Ltd$a;->b:J

    .line 61
    iput-wide v7, v3, Ltd$a;->a:J

    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string v2, "copyFilesFromAssets file:"

    .line 70
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    new-array p2, v4, [Ljava/lang/Object;

    .line 82
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 85
    invoke-static {p0}, Lns;->a(Ljava/io/Closeable;)V

    .line 88
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 91
    return-object v3

    .line 92
    :catchall_0
    move-exception p1

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p1

    .line 95
    goto :goto_2

    .line 96
    :catchall_1
    move-exception p1

    .line 97
    move-object v6, v5

    .line 98
    :goto_1
    move-object v5, p0

    .line 99
    goto :goto_4

    .line 100
    :catch_1
    move-exception p1

    .line 101
    move-object v6, v5

    .line 102
    :goto_2
    move-object v5, p0

    .line 103
    goto :goto_3

    .line 104
    :catchall_2
    move-exception p1

    .line 105
    move-object v6, v5

    .line 106
    goto :goto_4

    .line 107
    :catch_2
    move-exception p1

    .line 108
    move-object v6, v5

    .line 109
    :goto_3
    :try_start_3
    new-array p0, v4, [Ljava/lang/Object;

    .line 111
    invoke-static {v1, v0, p1, p0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 114
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 117
    invoke-static {v5}, Lns;->a(Ljava/io/Closeable;)V

    .line 120
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 123
    return-object v3

    .line 124
    :catchall_3
    move-exception p1

    .line 125
    :goto_4
    invoke-static {v5}, Lns;->a(Ljava/io/Closeable;)V

    .line 128
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 131
    throw p1
.end method

.method public static b(Ljava/io/File;)J
    .locals 10

    .line 1
    const-string v0, "getCRC32 exception:"

    .line 3
    const-string v1, "CRCUtil"

    .line 5
    const-wide/16 v2, 0x0

    .line 7
    if-nez p0, :cond_0

    .line 9
    return-wide v2

    .line 10
    :cond_0
    new-instance v4, Ljava/util/zip/CRC32;

    .line 12
    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    .line 15
    const/4 v5, 0x0

    .line 16
    const/4 v6, 0x0

    .line 17
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    .line 19
    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    const/high16 p0, 0x20000

    .line 24
    :try_start_1
    new-array p0, p0, [B

    .line 26
    :goto_0
    invoke-virtual {v7, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 29
    move-result v6

    .line 30
    const/4 v8, -0x1

    .line 31
    if-eq v8, v6, :cond_1

    .line 33
    invoke-virtual {v4, p0, v5, v6}, Ljava/util/zip/CRC32;->update([BII)V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    .line 40
    move-result-wide v8

    .line 41
    new-instance p0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v4, "getCRC32 crc32Value:"

    .line 48
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 58
    new-array v4, v5, [Ljava/lang/Object;

    .line 60
    invoke-static {v1, p0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    invoke-static {v7}, Lns;->a(Ljava/io/Closeable;)V

    .line 66
    return-wide v8

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    move-object v6, v7

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception p0

    .line 71
    move-object v6, v7

    .line 72
    goto :goto_1

    .line 73
    :catchall_1
    move-exception p0

    .line 74
    goto :goto_2

    .line 75
    :catch_1
    move-exception p0

    .line 76
    :goto_1
    :try_start_2
    new-array v4, v5, [Ljava/lang/Object;

    .line 78
    invoke-static {v1, v0, p0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 81
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 84
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 87
    return-wide v2

    .line 88
    :goto_2
    invoke-static {v6}, Lns;->a(Ljava/io/Closeable;)V

    .line 91
    throw p0
.end method

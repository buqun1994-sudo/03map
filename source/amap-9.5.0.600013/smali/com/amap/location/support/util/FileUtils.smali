.class public Lcom/amap/location/support/util/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sExternalStoragePath:Ljava/lang/String; = "sdcard/"

.field private static sInnerStoragePath:Ljava/lang/String; = "sdcard/"


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5([B)Ljava/lang/String;
    .locals 5

    :try_start_0
    const-string v0, "MD5"

    .line 3
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 7
    aget-byte v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v4, v1

    const-string v3, "%02X"

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static MD5(Ljava/lang/String;)[B
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "MD5"

    .line 1
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "UTF-8"

    .line 2
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static appendToFile(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, p1, v0}, Lcom/amap/location/support/util/FileUtils;->writeToFile(Ljava/lang/String;Ljava/io/File;Z)Z

    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static checkFileMD5(Ljava/io/File;Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 4
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    .line 14
    const/16 v3, 0x400

    .line 16
    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 19
    :try_start_1
    new-instance v3, Ljava/io/FileInputStream;

    .line 21
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    const/16 p0, 0x1000

    .line 26
    :try_start_2
    new-array p0, p0, [B

    .line 28
    :goto_0
    invoke-virtual {v3, p0}, Ljava/io/FileInputStream;->read([B)I

    .line 31
    move-result v1

    .line 32
    const/4 v4, -0x1

    .line 33
    if-eq v1, v4, :cond_1

    .line 35
    invoke-virtual {v2, p0, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 42
    move-result-object p0

    .line 43
    invoke-static {p0}, Lcom/amap/location/support/util/FileUtils;->MD5([B)Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 51
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 54
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 57
    return p0

    .line 58
    :catchall_0
    move-object v3, v1

    .line 59
    :catchall_1
    move-object v1, v2

    .line 60
    goto :goto_1

    .line 61
    :catchall_2
    move-object v3, v1

    .line 62
    :goto_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 65
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    :cond_2
    :goto_2
    return v0
.end method

.method public static deleteFileOrDir(Ljava/io/File;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    new-instance v2, Ljava/util/ArrayList;

    .line 27
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 36
    move-result p0

    .line 37
    const/4 v3, 0x0

    .line 38
    if-lez p0, :cond_5

    .line 40
    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 43
    move-result-object p0

    .line 44
    check-cast p0, Ljava/io/File;

    .line 46
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 52
    move-result-object p0

    .line 53
    if-eqz p0, :cond_2

    .line 55
    array-length v4, p0

    .line 56
    if-lez v4, :cond_2

    .line 58
    array-length v4, p0

    .line 59
    const/4 v5, 0x0

    .line 60
    :goto_0
    if-ge v5, v4, :cond_2

    .line 62
    aget-object v6, p0, v5

    .line 64
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_3

    .line 70
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_4

    .line 80
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_4

    .line 86
    return v3

    .line 87
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 93
    move-result p0

    .line 94
    sub-int/2addr p0, v1

    .line 95
    :goto_2
    if-ltz p0, :cond_7

    .line 97
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    move-result-object v2

    .line 101
    check-cast v2, Ljava/io/File;

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 106
    move-result v4

    .line 107
    if-eqz v4, :cond_6

    .line 109
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_6

    .line 115
    return v3

    .line 116
    :cond_6
    add-int/lit8 p0, p0, -0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_7
    return v1
.end method

.method public static deleteFileOrDirDep(Ljava/io/File;)Z
    .locals 5

    .line 1
    if-eqz p0, :cond_3

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 18
    move-result p0

    .line 19
    return p0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 26
    array-length v1, v0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    :goto_0
    if-ge v3, v1, :cond_2

    .line 31
    aget-object v4, v0, v3

    .line 33
    invoke-static {v4}, Lcom/amap/location/support/util/FileUtils;->deleteFileOrDir(Ljava/io/File;)Z

    .line 36
    move-result v4

    .line 37
    if-nez v4, :cond_1

    .line 39
    return v2

    .line 40
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 46
    move-result p0

    .line 47
    return p0

    .line 48
    :cond_3
    const/4 p0, 0x1

    .line 49
    return p0
.end method

.method public static deleteOvertimeFile(Ljava/io/File;JJ)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    .line 12
    move-result-wide v0

    .line 13
    sub-long/2addr p1, v0

    .line 14
    cmp-long v0, p1, p3

    .line 16
    if-lez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static deleteOvertimeFileOrDir(Ljava/io/File;J)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getCurrentTimeMillis()J

    .line 16
    move-result-wide v2

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    invoke-static {p0, v2, v3, p1, p2}, Lcom/amap/location/support/util/FileUtils;->deleteOvertimeFile(Ljava/io/File;JJ)Z

    .line 26
    move-result p0

    .line 27
    return p0

    .line 28
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 39
    move-result p0

    .line 40
    if-lez p0, :cond_5

    .line 42
    const/4 p0, 0x0

    .line 43
    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/io/File;

    .line 49
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 52
    move-result-object v4

    .line 53
    if-eqz v4, :cond_2

    .line 55
    array-length v5, v4

    .line 56
    if-lez v5, :cond_2

    .line 58
    array-length v5, v4

    .line 59
    :goto_0
    if-ge p0, v5, :cond_2

    .line 61
    aget-object v6, v4, p0

    .line 63
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 66
    move-result v7

    .line 67
    if-eqz v7, :cond_3

    .line 69
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    .line 76
    move-result v7

    .line 77
    if-eqz v7, :cond_4

    .line 79
    invoke-static {v6, v2, v3, p1, p2}, Lcom/amap/location/support/util/FileUtils;->deleteOvertimeFile(Ljava/io/File;JJ)Z

    .line 82
    :cond_4
    :goto_1
    add-int/lit8 p0, p0, 0x1

    .line 84
    goto :goto_0

    .line 85
    :cond_5
    return v1
.end method

.method public static getExternalStoragePath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/util/FileUtils;->sExternalStoragePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static getInnerStoragePath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/util/FileUtils;->sInnerStoragePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method private static outPutStream(Ljava/io/File;Ljava/util/zip/ZipInputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 3
    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6
    const/16 p0, 0x400

    .line 8
    new-array p0, p0, [B

    .line 10
    :goto_0
    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, p0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 21
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 28
    return-void
.end method

.method public static readBytes(Ljava/io/File;)[B
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->readBytes(Ljava/io/InputStream;)[B

    .line 10
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_1
    move-exception p0

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    throw p0

    .line 23
    :catch_0
    move-object v1, v0

    .line 24
    :catch_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    return-object v0
.end method

.method public static readLines(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz p0, :cond_1

    .line 9
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_1

    .line 15
    new-instance v2, Ljava/io/BufferedReader;

    .line 17
    new-instance v3, Ljava/io/FileReader;

    .line 19
    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 22
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 25
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    if-eqz p0, :cond_0

    .line 31
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    :cond_0
    move-object v1, v2

    .line 36
    goto :goto_2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    move-object v1, v2

    .line 39
    goto :goto_1

    .line 40
    :catchall_1
    move-exception p0

    .line 41
    :goto_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 44
    throw p0

    .line 45
    :catch_1
    :cond_1
    :goto_2
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 48
    return-object v0
.end method

.method public static readString(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->readString(Ljava/io/InputStream;)Ljava/lang/String;

    .line 10
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    return-object p0

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    move-object v0, v1

    .line 17
    goto :goto_0

    .line 18
    :catchall_1
    move-exception p0

    .line 19
    :goto_0
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 22
    throw p0

    .line 23
    :catch_0
    move-object v1, v0

    .line 24
    :catch_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 27
    return-object v0
.end method

.method public static setExternalStoragePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/util/FileUtils;->sExternalStoragePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static setInnerStoragePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/util/FileUtils;->sInnerStoragePath:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public static unZipFolder(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipInputStream;

    .line 4
    new-instance v2, Ljava/io/FileInputStream;

    .line 6
    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-direct {v1, v2}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 12
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_4

    .line 18
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    new-instance v2, Ljava/io/File;

    .line 24
    invoke-direct {v2, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    new-instance v3, Ljava/io/File;

    .line 33
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    .line 50
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 63
    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 69
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 76
    move-result p0

    .line 77
    if-nez p0, :cond_2

    .line 79
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 86
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 89
    invoke-static {v2, v1}, Lcom/amap/location/support/util/FileUtils;->outPutStream(Ljava/io/File;Ljava/util/zip/ZipInputStream;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_2
    if-eqz p2, :cond_0

    .line 95
    invoke-static {v2, v1}, Lcom/amap/location/support/util/FileUtils;->outPutStream(Ljava/io/File;Ljava/util/zip/ZipInputStream;)V

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string p2, "error: "

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p1

    .line 118
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 121
    throw p0

    .line 122
    :cond_4
    invoke-virtual {v1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 125
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 128
    goto :goto_2

    .line 129
    :catchall_0
    move-exception p0

    .line 130
    move-object v0, v1

    .line 131
    goto :goto_3

    .line 132
    :catch_0
    move-exception p0

    .line 133
    move-object v0, v1

    .line 134
    goto :goto_1

    .line 135
    :catchall_1
    move-exception p0

    .line 136
    goto :goto_3

    .line 137
    :catch_1
    move-exception p0

    .line 138
    :goto_1
    :try_start_2
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 144
    :goto_2
    return-void

    .line 145
    :goto_3
    invoke-static {v0}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 148
    throw p0
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/io/File;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 4
    throw p0

    .line 5
    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0
.end method

.method public static writeToFile([BLjava/io/File;Z)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {v2}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    throw p0

    .line 10
    :catch_1
    :goto_1
    invoke-static {v1}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return v0
.end method

.class public Lcom/autonavi/amapauto/utils/FileUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHECK_STATUS_BOTH_ERROR:I = 0x3

.field private static final CHECK_STATUS_BOTH_SUCCESS:I = 0x0

.field private static final CHECK_STATUS_MD5_ERROR:I = 0x2

.field private static final CHECK_STATUS_PKG_ERROR:I = 0x1

.field public static final ILLEGAL_CHAR:Ljava/lang/String; = "\\.\\./"

.field private static TAG:Ljava/lang/String; = "FileUtils"


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

.method public static checkAndDeleteFile(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 16
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    return p0

    .line 18
    :cond_0
    return v0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget-object v1, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v3, "checkAndDeleteFile exception:"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 43
    new-array v2, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    return v0
.end method

.method private static checkApkMD5(Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_2

    .line 10
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lnz;->c(Ljava/io/File;)Ljava/lang/String;

    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_1

    .line 23
    return v0

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_2

    .line 30
    const/4 p0, 0x1

    .line 31
    return p0

    .line 32
    :cond_2
    :goto_0
    return v0
.end method

.method public static checkApkPkgName(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    if-eqz p1, :cond_0

    .line 17
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 19
    if-eqz v2, :cond_0

    .line 21
    const/4 v2, 0x2

    .line 22
    new-array v2, v2, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    aput-object v3, v2, v0

    .line 30
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 32
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 34
    aput-object v0, v2, v1

    .line 36
    const-string v0, "AutoAppUpdateUtil"

    .line 38
    const-string v1, "checkApkPkgName app = {?}, apk = {?}"

    .line 40
    invoke-static {v0, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 46
    move-result-object p0

    .line 47
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 49
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 51
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result p0

    .line 55
    return p0

    .line 56
    :cond_0
    return v0
.end method

.method private static cleanChar(C)C
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x3a

    if-ge p0, v0, :cond_0

    return p0

    :cond_0
    const/16 v0, 0x41

    if-gt v0, p0, :cond_1

    const/16 v0, 0x5b

    if-ge p0, v0, :cond_1

    return p0

    :cond_1
    const/16 v0, 0x61

    if-gt v0, p0, :cond_2

    const/16 v0, 0x7b

    if-ge p0, v0, :cond_2

    return p0

    :cond_2
    const/16 v0, 0x20

    if-eq p0, v0, :cond_3

    const/16 v0, 0x5f

    if-eq p0, v0, :cond_3

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x25

    :cond_3
    :pswitch_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static final cleanIllegalString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 18
    move-result v2

    .line 19
    if-ge v1, v2, :cond_1

    .line 21
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 24
    move-result v2

    .line 25
    invoke-static {v2}, Lcom/autonavi/amapauto/utils/FileUtils;->cleanChar(C)C

    .line 28
    move-result v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_0
    :goto_0
    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, "/"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 37
    const/4 v0, 0x1

    .line 38
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/utils/FileUtils;->createFile(Ljava/io/File;Z)V

    .line 41
    :goto_0
    const/4 v0, 0x0

    .line 42
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 44
    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 47
    :try_start_1
    new-instance p0, Ljava/io/FileOutputStream;

    .line 49
    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    const/16 p1, 0x400

    .line 54
    :try_start_2
    new-array p1, p1, [B

    .line 56
    :goto_1
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 59
    move-result v0

    .line 60
    const/4 v2, -0x1

    .line 61
    if-eq v0, v2, :cond_1

    .line 63
    invoke-virtual {p0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    invoke-static {v1}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 70
    goto :goto_8

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception p1

    .line 74
    goto :goto_3

    .line 75
    :catch_1
    move-exception p1

    .line 76
    goto :goto_4

    .line 77
    :catchall_1
    move-exception p1

    .line 78
    move-object p0, v0

    .line 79
    :goto_2
    move-object v0, v1

    .line 80
    goto :goto_9

    .line 81
    :catch_2
    move-exception p1

    .line 82
    move-object p0, v0

    .line 83
    :goto_3
    move-object v0, v1

    .line 84
    goto :goto_5

    .line 85
    :catch_3
    move-exception p1

    .line 86
    move-object p0, v0

    .line 87
    :goto_4
    move-object v0, v1

    .line 88
    goto :goto_6

    .line 89
    :catchall_2
    move-exception p1

    .line 90
    move-object p0, v0

    .line 91
    goto :goto_9

    .line 92
    :catch_4
    move-exception p1

    .line 93
    move-object p0, v0

    .line 94
    :goto_5
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    goto :goto_7

    .line 98
    :catch_5
    move-exception p1

    .line 99
    move-object p0, v0

    .line 100
    :goto_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 103
    :goto_7
    invoke-static {v0}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    :goto_8
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 109
    return-void

    .line 110
    :catchall_3
    move-exception p1

    .line 111
    :goto_9
    invoke-static {v0}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 114
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    throw p1
.end method

.method public static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3

    .line 1
    if-eqz p0, :cond_2

    .line 3
    if-nez p1, :cond_0

    .line 5
    goto :goto_1

    .line 6
    :cond_0
    const/16 v0, 0x400

    .line 8
    new-array v0, v0, [B

    .line 10
    :goto_0
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    .line 13
    move-result v1

    .line 14
    const/4 v2, -0x1

    .line 15
    if-eq v1, v2, :cond_1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 26
    invoke-static {p1}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 29
    throw v0

    .line 30
    :catch_0
    :cond_1
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 33
    invoke-static {p1}, Lcom/autonavi/amapauto/utils/FileUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 36
    :cond_2
    :goto_1
    return-void
.end method

.method public static createFile(Ljava/io/File;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 17
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 20
    move-result-object p0

    .line 21
    const/4 p1, 0x0

    .line 22
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/utils/FileUtils;->createFile(Ljava/io/File;Z)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    if-eqz p1, :cond_1

    .line 28
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 40
    :cond_2
    :goto_0
    return-void
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 4

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 14
    if-eqz v0, :cond_1

    .line 16
    array-length v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 20
    aget-object v3, v0, v2

    .line 22
    invoke-static {v3}, Lcom/autonavi/amapauto/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 31
    return-void
.end method

.method public static getAvailableByteSize(Ljava/lang/String;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 3
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 13
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    mul-long v3, v3, v1

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    const-wide/16 v3, 0x0

    .line 23
    :goto_0
    return-wide v3
.end method

.method public static installApk(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 3
    const/4 v1, 0x1

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p0, v1, v2

    .line 9
    const-string v3, "install: filePath = {?}"

    .line 11
    invoke-static {v0, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    new-instance v0, Ljava/io/File;

    .line 16
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    new-instance p0, Landroid/content/Intent;

    .line 25
    const-string v1, "android.intent.action.VIEW"

    .line 27
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 30
    const/high16 v1, 0x10000000

    .line 32
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 35
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 38
    move-result-object v0

    .line 39
    const-string v1, "application/vnd.android.package-archive"

    .line 41
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    invoke-static {}, Lrv;->H()Lrv;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0}, Lrv;->F()Landroid/app/Activity;

    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {v0, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object p0, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 60
    const-string v0, "installApk get null hostActivity"

    .line 62
    new-array v1, v2, [Ljava/lang/Object;

    .line 64
    invoke-static {p0, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :goto_0
    return-void
.end method

.method public static installApkAndCheck(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    sget-object v1, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " AppDownLoader getDepinfo : result = {?}"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x1

    .line 21
    new-array v2, v1, [Ljava/lang/Object;

    .line 23
    const/4 v3, 0x0

    .line 24
    aput-object p0, v2, v3

    .line 26
    invoke-static {v0, v2}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    new-instance v0, Ljava/io/File;

    .line 31
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-static {p1, v0}, Lcom/autonavi/amapauto/utils/FileUtils;->checkApkMD5(Ljava/lang/String;Ljava/io/File;)Z

    .line 41
    move-result p1

    .line 42
    invoke-static {}, Lrv;->H()Lrv;

    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2, p0}, Lcom/autonavi/amapauto/utils/FileUtils;->checkApkPkgName(Landroid/content/Context;Ljava/lang/String;)Z

    .line 53
    move-result v2

    .line 54
    if-eqz p1, :cond_0

    .line 56
    if-eqz v2, :cond_0

    .line 58
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->installApk(Ljava/lang/String;)V

    .line 61
    return v3

    .line 62
    :cond_0
    invoke-static {v0}, Lcom/autonavi/amapauto/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 65
    if-eqz p1, :cond_1

    .line 67
    sget-object p0, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 69
    const-string p1, " VoiceDownloader getDepinfo : \u5305\u540d\u6821\u9a8c\u5931\u8d25"

    .line 71
    new-array v0, v3, [Ljava/lang/Object;

    .line 73
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    return v1

    .line 77
    :cond_1
    if-eqz v2, :cond_2

    .line 79
    sget-object p0, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 81
    const-string p1, " VoiceDownloader getDepinfo : MD5\u6821\u9a8c\u5931\u8d25"

    .line 83
    new-array v0, v3, [Ljava/lang/Object;

    .line 85
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const/4 p0, 0x2

    .line 89
    return p0

    .line 90
    :cond_2
    sget-object p0, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 92
    const-string p1, " VoiceDownloader getDepinfo : \u5305\u540d\u6821\u9a8c\u5931\u8d25\uff0cMD5\u6821\u9a8c\u5931\u8d25"

    .line 94
    new-array v0, v3, [Ljava/lang/Object;

    .line 96
    invoke-static {p0, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const/4 p0, 0x3

    .line 100
    return p0
.end method

.method public static readFile(Ljava/io/File;)[B
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result p0

    new-array p0, p0, [B

    .line 5
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_1

    move-object v0, p0

    .line 6
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    nop

    goto :goto_1

    :catch_2
    nop

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 7
    :catch_3
    :cond_2
    throw p0

    :catch_4
    nop

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 8
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    goto :goto_4

    :catch_5
    nop

    move-object v1, v0

    :goto_3
    if-eqz v1, :cond_3

    goto :goto_2

    :catch_6
    :cond_3
    :goto_4
    return-object v0
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/autonavi/amapauto/utils/FileUtils;->readFile(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static readStringFromAsets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    .line 17
    move-result p0

    .line 18
    new-array p0, p0, [B

    .line 20
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    .line 23
    move-result p1

    .line 24
    if-gtz p1, :cond_0

    .line 26
    sget-object v1, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 28
    const-string v2, "readStringFromAsets - the number of bytes read into the buffer is {?} !!!!!"

    .line 30
    const/4 v3, 0x1

    .line 31
    new-array v3, v3, [Ljava/lang/Object;

    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p1

    .line 37
    const/4 v4, 0x0

    .line 38
    aput-object p1, v3, v4

    .line 40
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_0
    const-string p1, "utf-8"

    .line 45
    invoke-static {p0, p1}, Lxk;->b([BLjava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p0

    .line 54
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 57
    throw p0

    .line 58
    :catch_0
    invoke-static {v0}, Lns;->a(Ljava/io/Closeable;)V

    .line 61
    const-string p0, ""

    .line 63
    :goto_0
    return-object p0
.end method

.method public static replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

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
    const-string v0, "\\.\\./"

    .line 12
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 16
    return-object p0
.end method

.method public static writeDatasToFile(Ljava/lang/String;[B)V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz p1, :cond_2

    .line 16
    :try_start_0
    array-length v2, p1

    .line 17
    if-nez v2, :cond_0

    .line 19
    goto :goto_3

    .line 20
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 24
    new-instance v2, Ljava/io/File;

    .line 26
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 32
    move-result p0

    .line 33
    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 38
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 41
    new-instance p0, Ljava/io/FileOutputStream;

    .line 43
    invoke-direct {p0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 49
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    invoke-static {p0}, Lns;->a(Ljava/io/Closeable;)V

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    move-object v1, p0

    .line 58
    move-object p0, p1

    .line 59
    goto :goto_2

    .line 60
    :catch_0
    move-exception p1

    .line 61
    move-object v1, p0

    .line 62
    move-object p0, p1

    .line 63
    goto :goto_0

    .line 64
    :catchall_1
    move-exception p0

    .line 65
    goto :goto_2

    .line 66
    :catch_1
    move-exception p0

    .line 67
    :goto_0
    :try_start_2
    sget-object p1, Lcom/autonavi/amapauto/utils/FileUtils;->TAG:Ljava/lang/String;

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    const-string v3, "writeDatasToFile ex:"

    .line 76
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    move-result-object p0

    .line 83
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    const/4 v2, 0x0

    .line 91
    new-array v2, v2, [Ljava/lang/Object;

    .line 93
    invoke-static {p1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 96
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 99
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 102
    return-void

    .line 103
    :goto_2
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 109
    throw p0

    .line 110
    :cond_2
    :goto_3
    invoke-static {v1}, Lns;->a(Ljava/io/Closeable;)V

    .line 113
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 116
    return-void
.end method

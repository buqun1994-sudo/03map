.class public Lcom/amap/location/support/icecream/IcecreamUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "IcecreamUtils"

.field private static sAppRunningCpuType:Ljava/lang/String; = "unknow"

.field private static sClassLoders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    sput-object v0, Lcom/amap/location/support/icecream/IcecreamUtils;->sClassLoders:Ljava/util/Map;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildSysInfo()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "|"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object v2, Lcom/amap/location/support/icecream/IcecreamUtils;->sAppRunningCpuType:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getBrand()Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getDeviceMode()Ljava/lang/String;

    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-static {}, Lcom/amap/location/support/header/HeaderConfig;->getSystemVersionInt()I

    .line 42
    move-result v2

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

.method private static deleteDecryptFile(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsDecryptPath()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Ljava/io/File;

    .line 34
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 40
    move-result p0

    .line 41
    if-eqz p0, :cond_1

    .line 43
    invoke-static {v0}, Lcom/amap/location/support/util/FileUtils;->deleteFileOrDir(Ljava/io/File;)Z

    .line 46
    :cond_1
    return-void
.end method

.method private static getLibSoPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "lib"

    .line 3
    const-string v1, "IcecreamUtils"

    .line 5
    const-string v2, "unknow"

    .line 7
    :try_start_0
    new-instance v3, Ljava/io/File;

    .line 9
    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_0

    .line 18
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 24
    return-object v2

    .line 25
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    new-instance v5, Ljava/io/File;

    .line 40
    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    const-string v6, ".zip"

    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v5

    .line 53
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v3

    .line 60
    invoke-static {p0, v3}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {v3, p1, v0}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->unZip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance p0, Ljava/io/File;

    .line 68
    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 77
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 82
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object p0

    .line 98
    new-instance p1, Ljava/io/File;

    .line 100
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 106
    move-result p1

    .line 107
    if-eqz p1, :cond_4

    .line 109
    sget-object p1, Lcom/amap/location/support/icecream/IcecreamUtils;->sAppRunningCpuType:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_2

    .line 117
    sget-object p1, Lcom/amap/location/support/icecream/IcecreamUtils;->sAppRunningCpuType:Ljava/lang/String;

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_2

    .line 125
    new-instance p1, Ljava/io/File;

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object p0, Lcom/amap/location/support/icecream/IcecreamUtils;->sAppRunningCpuType:Ljava/lang/String;

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 153
    move-result p0

    .line 154
    if-eqz p0, :cond_5

    .line 156
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 159
    move-result-object v2

    .line 160
    goto :goto_0

    .line 161
    :cond_2
    new-instance p1, Ljava/io/File;

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v3, "armeabi-v7a"

    .line 176
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v0

    .line 183
    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_3

    .line 192
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 195
    move-result-object v2

    .line 196
    goto :goto_0

    .line 197
    :cond_3
    new-instance p1, Ljava/io/File;

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string p0, "armeabi"

    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    move-result-object p0

    .line 219
    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 225
    move-result p0

    .line 226
    if-eqz p0, :cond_5

    .line 228
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 231
    move-result-object v2

    .line 232
    goto :goto_0

    .line 233
    :cond_4
    const/4 v2, 0x0

    .line 234
    const-string p0, "\u672c\u5730\u6ca1\u6709\u63d2\u4ef6\u5e93"

    .line 236
    invoke-static {v1, p0}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    goto :goto_0

    .line 240
    :catchall_0
    move-exception p0

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    .line 243
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    const-string v0, "get lib error:"

    .line 248
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    invoke-static {p0}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 254
    move-result-object p0

    .line 255
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    move-result-object p0

    .line 262
    invoke-static {v1, p0}, Lcom/amap/location/support/log/ALLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_5
    :goto_0
    return-object v2
.end method

.method private static initAppRunningCpuType()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/amap/location/support/common/IPlatformStatus;->getPrimaryCpuAbi()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/amap/location/support/icecream/IcecreamUtils;->sAppRunningCpuType:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static loadIceCreamMainClass(Lcom/amap/location/support/icecream/IcecreamInfo;)Ljava/lang/Class;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/location/support/icecream/IcecreamInfo;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->initAppRunningCpuType()V

    .line 5
    sget-object v1, Lcom/amap/location/support/icecream/IcecreamUtils;->sClassLoders:Ljava/util/Map;

    .line 7
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 9
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 15
    const-string v2, "IcecreamUtils"

    .line 17
    if-nez v1, :cond_7

    .line 19
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsRootPath()Ljava/lang/String;

    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v5, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    new-instance v5, Ljava/io/File;

    .line 47
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 53
    move-result v6

    .line 54
    if-nez v6, :cond_0

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    const-string v3, "origin apk not exist:"

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-object v0

    .line 81
    :cond_0
    iget-boolean v6, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->encrypted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 83
    const/4 v7, 0x0

    .line 84
    if-eqz v6, :cond_2

    .line 86
    :try_start_2
    new-instance v3, Ljava/io/FileInputStream;

    .line 88
    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    :try_start_3
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->readBytes(Ljava/io/InputStream;)[B

    .line 94
    move-result-object v5

    .line 95
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getNativeAbility()Lcom/amap/location/support/security/INativeAbility;

    .line 98
    move-result-object v6

    .line 99
    const/4 v8, -0x1

    .line 100
    invoke-interface {v6, v5, v8}, Lcom/amap/location/support/security/INativeAbility;->xxt([BI)[B

    .line 103
    move-result-object v5

    .line 104
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsDecryptPath()Ljava/lang/String;

    .line 107
    move-result-object v6

    .line 108
    new-instance v8, Ljava/io/File;

    .line 110
    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 116
    move-result v6

    .line 117
    if-nez v6, :cond_1

    .line 119
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 122
    :cond_1
    new-instance v6, Ljava/io/File;

    .line 124
    iget-object v9, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 126
    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 129
    invoke-static {v5, v6, v7}, Lcom/amap/location/support/util/FileUtils;->writeToFile([BLjava/io/File;Z)Z

    .line 132
    const-string v5, "decrypt is suc"

    .line 134
    invoke-static {v2, v5}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 140
    move-result-object v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 141
    :try_start_4
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 144
    move-object v3, v5

    .line 145
    goto :goto_2

    .line 146
    :catch_0
    move-exception v1

    .line 147
    goto :goto_0

    .line 148
    :catchall_0
    move-exception v1

    .line 149
    move-object v3, v0

    .line 150
    goto :goto_1

    .line 151
    :catch_1
    move-exception v1

    .line 152
    move-object v3, v0

    .line 153
    :goto_0
    :try_start_5
    iget-object v4, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 155
    invoke-static {v4}, Lcom/amap/location/support/icecream/IcecreamUtils;->deleteDecryptFile(Ljava/lang/String;)V

    .line 158
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 161
    :try_start_6
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 164
    return-object v0

    .line 165
    :catchall_1
    move-exception v1

    .line 166
    :goto_1
    invoke-static {v3}, Lcom/amap/location/support/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 169
    throw v1

    .line 170
    :cond_2
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-static {}, Lcom/amap/location/support/icecream/IceCreamFileUtils;->getPluginsRunPath()Ljava/lang/String;

    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-object v4, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 187
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    move-result-object v4

    .line 194
    invoke-static {v3, v4}, Lcom/amap/location/support/icecream/IcecreamUtils;->getLibSoPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 197
    move-result-object v5

    .line 198
    const-string v6, "unknow"

    .line 200
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result v6

    .line 204
    if-eqz v6, :cond_3

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    .line 208
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 230
    move-result-object v1

    .line 231
    const v2, 0x186d5

    .line 234
    invoke-static {v2, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 237
    iget-object v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 239
    invoke-static {v1}, Lcom/amap/location/support/icecream/IcecreamUtils;->deleteDecryptFile(Ljava/lang/String;)V

    .line 242
    return-object v0

    .line 243
    :cond_3
    invoke-static {v5}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_5

    .line 249
    iget-boolean v5, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->hasSO:Z

    .line 251
    if-eqz v5, :cond_4

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    const-string v3, "\u8be5\u63d2\u4ef6\u542b\u6709so\uff0c\u4f46\u662fso\u6587\u4ef6\u8def\u5f84\u6709\u5f02\u5e38\u4e0d\u80fd\u52a0\u8f7d\u63d2\u4ef6:"

    .line 260
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget-object v3, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 265
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v1

    .line 272
    invoke-static {v2, v1}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 277
    invoke-static {v1}, Lcom/amap/location/support/icecream/IcecreamUtils;->deleteDecryptFile(Ljava/lang/String;)V

    .line 280
    return-object v0

    .line 281
    :cond_4
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 284
    move-result-object v5

    .line 285
    invoke-interface {v5}, Lcom/amap/location/support/common/IPlatformStatus;->getNativeLibraryDir()Ljava/lang/String;

    .line 288
    move-result-object v5

    .line 289
    :cond_5
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 291
    const-string v8, "\u5373\u5c06\u52a0\u8f7dapk:%s\n\u6240\u5728\u8def\u5f84:%s\n\u5e93\u8def\u5f84:%s"

    .line 293
    const/4 v9, 0x3

    .line 294
    new-array v9, v9, [Ljava/lang/Object;

    .line 296
    aput-object v3, v9, v7

    .line 298
    const/4 v7, 0x1

    .line 299
    aput-object v4, v9, v7

    .line 301
    const/4 v7, 0x2

    .line 302
    aput-object v5, v9, v7

    .line 304
    invoke-static {v6, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 307
    move-result-object v6

    .line 308
    invoke-static {v2, v6}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 313
    const/16 v7, 0x22

    .line 315
    if-lt v6, v7, :cond_6

    .line 317
    :try_start_7
    new-instance v6, Ljava/io/File;

    .line 319
    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v6}, Ljava/io/File;->setReadOnly()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 325
    goto :goto_3

    .line 326
    :catch_2
    move-exception v6

    .line 327
    :try_start_8
    invoke-static {v2, v6}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 330
    :cond_6
    :goto_3
    :try_start_9
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 333
    move-result-object v2

    .line 334
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;

    .line 337
    move-result-object v6

    .line 338
    invoke-interface {v6}, Lcom/amap/location/support/common/IPlatformStatus;->getPathClassLoader()Ljava/lang/ClassLoader;

    .line 341
    move-result-object v6

    .line 342
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/amap/location/support/common/IPlatformStatus;->getDexClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    .line 345
    move-result-object v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 346
    goto :goto_4

    .line 347
    :catchall_2
    move-exception v2

    .line 348
    :try_start_a
    new-instance v3, Ljava/lang/StringBuilder;

    .line 350
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    iget-object v4, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 355
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 361
    move-result-object v4

    .line 362
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-static {v2}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 368
    move-result-object v2

    .line 369
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    .line 379
    move-result-object v2

    .line 380
    const v3, 0x186d6

    .line 383
    invoke-static {v3, v2}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 386
    goto :goto_4

    .line 387
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 389
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 392
    const-string v4, "\u8be5ClassLoader\u5df2\u7ecf\u88ab\u52a0\u8f7d\u8fc7:"

    .line 394
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    iget-object v4, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 399
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v3

    .line 406
    invoke-static {v2, v3}, Lcom/amap/location/support/log/ALLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_4
    if-eqz v1, :cond_9

    .line 411
    iget-object v2, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->mainClass:Ljava/lang/String;

    .line 413
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 416
    move-result-object v2

    .line 417
    if-eqz v2, :cond_8

    .line 419
    sget-object v3, Lcom/amap/location/support/icecream/IcecreamUtils;->sClassLoders:Ljava/util/Map;

    .line 421
    iget-object v4, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->md5:Ljava/lang/String;

    .line 423
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_8
    iget-object v1, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 428
    invoke-static {v1}, Lcom/amap/location/support/icecream/IcecreamUtils;->deleteDecryptFile(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 431
    return-object v2

    .line 432
    :catchall_3
    move-exception v1

    .line 433
    new-instance v2, Ljava/lang/StringBuilder;

    .line 435
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 438
    iget-object v3, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 440
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-static {}, Lcom/amap/location/support/icecream/IcecreamUtils;->buildSysInfo()Ljava/lang/String;

    .line 446
    move-result-object v3

    .line 447
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-static {v1}, Lcom/amap/location/support/util/LogUtils;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 460
    move-result-object v1

    .line 461
    const v2, 0x186d8

    .line 464
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    .line 467
    move-result-object v1

    .line 468
    invoke-static {v2, v1}, Lcom/amap/location/support/uptunnel/UpTunnel;->reportBlockData(I[B)V

    .line 471
    :cond_9
    iget-object p0, p0, Lcom/amap/location/support/icecream/IcecreamInfo;->name:Ljava/lang/String;

    .line 473
    invoke-static {p0}, Lcom/amap/location/support/icecream/IcecreamUtils;->deleteDecryptFile(Ljava/lang/String;)V

    .line 476
    return-object v0
.end method

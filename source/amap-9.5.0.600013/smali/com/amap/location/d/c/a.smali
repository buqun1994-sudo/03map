.class public Lcom/amap/location/d/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/location/support/common/IPlatformStatus;


# static fields
.field private static a:Ljava/lang/String; = "unknow"


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amap/location/support/common/IBroadcastListener;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/d/c/a;->b:Ljava/util/Map;

    .line 11
    return-void
.end method

.method private static a(Ljava/io/File;)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/os/StatFs;

    .line 3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    .line 17
    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    mul-long v1, v1, v3

    .line 20
    return-wide v1

    .line 21
    :catch_0
    const-wide/16 v0, 0x0

    .line 23
    return-wide v0
.end method


# virtual methods
.method public getBatteryPropertyCapacity()I
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "batterymanager"

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/os/BatteryManager;

    .line 13
    const/4 v1, 0x4

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 17
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-static {v0}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 23
    const/4 v0, -0x1

    .line 24
    :goto_0
    return v0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getDexClassLoader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    new-instance v0, Ldalvik/system/DexClassLoader;

    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 6
    return-object v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public getNativeLibraryDir()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 11
    return-object v0
.end method

.method public getPathClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getPrimaryCpuAbi()Ljava/lang/String;
    .locals 3

    .line 1
    const-string v0, "unknow"

    .line 3
    sget-object v1, Lcom/amap/location/d/c/a;->a:Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    :try_start_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 18
    move-result-object v0

    .line 19
    const-class v1, Landroid/content/pm/ApplicationInfo;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    move-result-object v1

    .line 29
    const-string v2, "primaryCpuAbi"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/String;

    .line 45
    sput-object v0, Lcom/amap/location/d/c/a;->a:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    const-string v1, "PhonePlatformStatus"

    .line 51
    const-string v2, "get cpu type error "

    .line 53
    invoke-static {v1, v2, v0}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_0
    :goto_0
    sget-object v0, Lcom/amap/location/d/c/a;->a:Ljava/lang/String;

    .line 58
    return-object v0
.end method

.method public getSdcardAvailableSpace()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/amap/location/d/c/a;->isExternalStorageWritable()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const-wide/16 v0, 0x0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/amap/location/d/c/a;->a(Ljava/io/File;)J

    .line 22
    move-result-wide v0

    .line 23
    return-wide v0
.end method

.method public getSystemAvailableSpace()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/amap/location/d/c/a;->a(Ljava/io/File;)J

    .line 12
    move-result-wide v0

    .line 13
    return-wide v0
.end method

.method public isExternalStorageWritable()Z
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    return v0
.end method

.method public registerReceiver(Lcom/amap/location/support/common/IBroadcastListener;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_3

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/d/c/a;->b:Ljava/util/Map;

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    .line 14
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 17
    invoke-interface {p1}, Lcom/amap/location/support/common/IBroadcastListener;->getAction()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 27
    invoke-interface {p1}, Lcom/amap/location/support/common/IBroadcastListener;->getAction()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    :cond_1
    new-instance v2, Lcom/amap/location/d/c/a$1;

    .line 36
    invoke-direct {v2, p0, p1}, Lcom/amap/location/d/c/a$1;-><init>(Lcom/amap/location/d/c/a;Lcom/amap/location/support/common/IBroadcastListener;)V

    .line 39
    iget-object v0, p0, Lcom/amap/location/d/c/a;->b:Ljava/util/Map;

    .line 41
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 46
    const/16 v1, 0x22

    .line 48
    if-lt v0, v1, :cond_2

    .line 50
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    move-object v1, v0

    .line 55
    check-cast v1, Landroid/content/Context;

    .line 57
    invoke-interface {p1}, Lcom/amap/location/support/common/IBroadcastListener;->getBroadcastPermission()Ljava/lang/String;

    .line 60
    move-result-object v4

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x2

    .line 63
    invoke-static/range {v1 .. v6}, Luo0;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/content/Context;

    .line 73
    invoke-interface {p1}, Lcom/amap/location/support/common/IBroadcastListener;->getBroadcastPermission()Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {v0, v2, v3, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    goto :goto_0

    .line 82
    :catchall_0
    move-exception p1

    .line 83
    const-string v0, "PhonePlatformStatus"

    .line 85
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 88
    :cond_3
    :goto_0
    return-void
.end method

.method public releaseAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 5
    move-result v1

    .line 6
    if-nez v1, :cond_5

    .line 8
    invoke-static {p2}, Lcom/amap/location/support/util/TextUtils;->isEmpty(Ljava/lang/String;)Z

    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    goto/16 :goto_1

    .line 16
    :cond_0
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    array-length v3, v1

    .line 33
    if-lez v3, :cond_2

    .line 35
    new-instance v3, Ljava/io/File;

    .line 37
    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_1

    .line 46
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_1

    .line 52
    return v0

    .line 53
    :cond_1
    array-length v3, v1

    .line 54
    const/4 v4, 0x0

    .line 55
    :goto_0
    if-ge v4, v3, :cond_4

    .line 57
    aget-object v5, v1, v4

    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v6

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {p0, v6, v5}, Lcom/amap/location/d/c/a;->releaseAssetsFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    add-int/lit8 v4, v4, 0x1

    .line 100
    goto :goto_0

    .line 101
    :cond_2
    invoke-static {}, Lcom/amap/location/d/d;->a()Landroid/content/Context;

    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 112
    move-result-object p1

    .line 113
    if-eqz p1, :cond_5

    .line 115
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 118
    move-result v1

    .line 119
    if-lez v1, :cond_5

    .line 121
    new-instance v1, Ljava/io/File;

    .line 123
    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 129
    move-result p2

    .line 130
    if-eqz p2, :cond_3

    .line 132
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 135
    :cond_3
    new-instance p2, Ljava/io/FileOutputStream;

    .line 137
    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 140
    invoke-static {p1, p2}, Lcom/amap/location/support/util/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_4
    const/4 p1, 0x1

    .line 144
    return p1

    .line 145
    :cond_5
    :goto_1
    return v0

    .line 146
    :catch_0
    move-exception p1

    .line 147
    invoke-static {p1}, Lcom/amap/location/support/log/ALLog;->d(Ljava/lang/Throwable;)V

    .line 150
    return v0
.end method

.method public setCurrentTimeMillis(J)V
    .locals 0

    return-void
.end method

.method public setElapsedRealtime(J)V
    .locals 0

    return-void
.end method

.method public unregisterReceiver(Lcom/amap/location/support/common/IBroadcastListener;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/location/d/c/a;->b:Ljava/util/Map;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/amap/location/support/AmapContext;->getContext()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Landroid/content/Context;

    .line 17
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/amap/location/d/c/a;->b:Ljava/util/Map;

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string v0, "PhonePlatformStatus"

    .line 29
    invoke-static {v0, p1}, Lcom/amap/location/support/log/ALLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :goto_0
    return-void
.end method

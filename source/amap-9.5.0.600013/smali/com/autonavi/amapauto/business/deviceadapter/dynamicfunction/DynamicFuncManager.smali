.class public Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager$a;
    }
.end annotation


# static fields
.field private static final CLOUD_FUNC_REPOSITORY_NAME:Ljava/lang/String; = "cc_AdapterFuncRepository.dat"

.field private static final FUNC_REPOSITORY_NAME:Ljava/lang/String; = "AdapterFuncRepository.dat"

.field private static final INNER_ADAPTER_DIR:Ljava/lang/String; = "/AutoDeviceAdapter/"

.field private static final PACKAGE_INFO_NAME:Ljava/lang/String; = "packageInfo.txt"

.field private static final TAG:Ljava/lang/String; = "DynamicFuncManager"


# instance fields
.field private final MODULE_TYPE_ARRAY:[I

.field private mExternalAdapterDir:Ljava/lang/String;

.field private mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

.field private mInternalAdapterDir:Ljava/lang/String;

.field private mPackageVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 8
    const/16 v0, 0x8

    .line 10
    new-array v0, v0, [I

    .line 12
    fill-array-data v0, :array_0

    .line 15
    iput-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->MODULE_TYPE_ARRAY:[I

    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
    .end array-data
.end method

.method private clearDexFiles()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DynamicFuncManager"

    .line 6
    const-string v3, "clearDexFiles"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    iget-object v3, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 15
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 21
    move-result-object v3

    .line 22
    if-nez v3, :cond_0

    .line 24
    return-void

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 28
    move-result-object v1

    .line 29
    array-length v3, v1

    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v3, :cond_2

    .line 33
    aget-object v5, v1, v4

    .line 35
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 38
    move-result-object v6

    .line 39
    const-string v7, ".jar"

    .line 41
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_1

    .line 47
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 50
    move-result v6

    .line 51
    const/4 v7, 0x2

    .line 52
    new-array v7, v7, [Ljava/lang/Object;

    .line 54
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 58
    aput-object v5, v7, v0

    .line 60
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v5

    .line 64
    const/4 v6, 0x1

    .line 65
    aput-object v5, v7, v6

    .line 67
    const-string v5, "delete: {?} {?}"

    .line 69
    invoke-static {v2, v5, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method

.method public static getInstance()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager$a;->a()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private isNeedUpdateDex()Z
    .locals 8

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mExternalAdapterDir:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "cc_AdapterFuncRepository.dat"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    move-result v1

    .line 29
    const-string v2, "DynamicFuncManager"

    .line 31
    const/4 v3, 0x0

    .line 32
    if-nez v1, :cond_0

    .line 34
    new-instance v0, Ljava/io/File;

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    iget-object v4, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mExternalAdapterDir:Ljava/lang/String;

    .line 43
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    const-string v4, "AdapterFuncRepository.dat"

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 61
    move-result v1

    .line 62
    if-nez v1, :cond_0

    .line 64
    const-string v0, "checkDexUpdate, repositoryFile not exists"

    .line 66
    new-array v1, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v3

    .line 72
    :cond_0
    invoke-static {}, Lp1;->b()Lp1;

    .line 75
    move-result-object v1

    .line 76
    const-string v4, "dynamicFuncRepositorySize"

    .line 78
    const-wide/16 v5, 0x0

    .line 80
    invoke-virtual {v1, v4, v5, v6}, Lp1;->d(Ljava/lang/String;J)J

    .line 83
    move-result-wide v4

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 87
    move-result-wide v0

    .line 88
    const/4 v6, 0x1

    .line 89
    cmp-long v7, v4, v0

    .line 91
    if-eqz v7, :cond_1

    .line 93
    const/4 v7, 0x2

    .line 94
    new-array v7, v7, [Ljava/lang/Object;

    .line 96
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    move-result-object v4

    .line 100
    aput-object v4, v7, v3

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 105
    move-result-object v0

    .line 106
    aput-object v0, v7, v6

    .line 108
    const-string v0, "checkDexUpdate, preSize={?}, crnSize={?}"

    .line 110
    invoke-static {v2, v0, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return v6

    .line 114
    :cond_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Lpi;->j()Lm1;

    .line 121
    move-result-object v0

    .line 122
    const/16 v1, 0xbf

    .line 124
    const-string v4, ""

    .line 126
    invoke-virtual {v0, v1, v4}, Ldc;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_2

    .line 136
    new-instance v1, Ljava/io/File;

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    iget-object v5, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 145
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object v4

    .line 155
    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 161
    move-result v1

    .line 162
    if-nez v1, :cond_2

    .line 164
    new-array v1, v6, [Ljava/lang/Object;

    .line 166
    aput-object v0, v1, v3

    .line 168
    const-string v0, "checkDexUpdate, dexFileName{?} lost"

    .line 170
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return v6

    .line 174
    :cond_2
    const-string v0, "checkDexUpdate, isNeedUpdateDex is false"

    .line 176
    new-array v1, v3, [Ljava/lang/Object;

    .line 178
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return v3
.end method

.method private readPackageVersion()V
    .locals 7

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    iget-object v2, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v2, "packageInfo.txt"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 22
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    const-string v3, "DynamicFuncManager"

    .line 32
    if-nez v1, :cond_0

    .line 34
    const-string v0, "readPackageVersion"

    .line 36
    new-array v1, v2, [Ljava/lang/Object;

    .line 38
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    return-void

    .line 42
    :cond_0
    new-instance v1, Ljava/util/Properties;

    .line 44
    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 47
    const/4 v4, 0x0

    .line 48
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 50
    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 53
    :try_start_1
    invoke-virtual {v1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    invoke-static {v5}, Lms;->a(Ljava/io/Closeable;)V

    .line 59
    goto :goto_1

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    move-object v4, v5

    .line 62
    goto :goto_2

    .line 63
    :catch_0
    move-exception v0

    .line 64
    move-object v4, v5

    .line 65
    goto :goto_0

    .line 66
    :catchall_1
    move-exception v0

    .line 67
    goto :goto_2

    .line 68
    :catch_1
    move-exception v0

    .line 69
    :goto_0
    :try_start_2
    const-string v5, "readDeviceId exception:"

    .line 71
    new-array v6, v2, [Ljava/lang/Object;

    .line 73
    invoke-static {v3, v5, v0, v6}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 76
    invoke-static {v4}, Lms;->a(Ljava/io/Closeable;)V

    .line 79
    :goto_1
    const-string v0, "version"

    .line 81
    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    iput-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mPackageVersion:Ljava/lang/String;

    .line 87
    const/4 v1, 0x1

    .line 88
    new-array v1, v1, [Ljava/lang/Object;

    .line 90
    aput-object v0, v1, v2

    .line 92
    const-string v0, "readPackageVersion:{?}"

    .line 94
    invoke-static {v3, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {}, Lp1;->b()Lp1;

    .line 100
    move-result-object v0

    .line 101
    const-string v1, "dynamicFuncPackageVersion"

    .line 103
    iget-object v2, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mPackageVersion:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1, v2}, Lp1;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void

    .line 109
    :goto_2
    invoke-static {v4}, Lms;->a(Ljava/io/Closeable;)V

    .line 112
    throw v0
.end method

.method private registerListener()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DynamicFuncManager"

    .line 6
    const-string v3, "registerListener"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->MODULE_TYPE_ARRAY:[I

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_2

    .line 17
    aget v4, v1, v3

    .line 19
    invoke-static {}, Lpi;->n()Lpi;

    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Lpi;->o(I)Lhc;

    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    :goto_1
    invoke-virtual {v4}, Lhc;->c()Landroid/util/SparseArray;

    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_1

    .line 41
    invoke-virtual {v4}, Lhc;->c()Landroid/util/SparseArray;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lfq;

    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method

.method private releaseDexFiles(Ljava/lang/String;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DynamicFuncManager"

    .line 6
    const-string v3, "releaseDexFiles start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/io/File;

    .line 13
    new-instance v3, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    iget-object v4, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mExternalAdapterDir:Ljava/lang/String;

    .line 20
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v4, "cc_AdapterFuncRepository.dat"

    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 38
    move-result v3

    .line 39
    if-nez v3, :cond_0

    .line 41
    new-instance v1, Ljava/io/File;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    iget-object v4, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mExternalAdapterDir:Ljava/lang/String;

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v4, "AdapterFuncRepository.dat"

    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 62
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 68
    move-result v3

    .line 69
    if-nez v3, :cond_0

    .line 71
    const-string p1, "releaseDexFiles repository file not exist"

    .line 73
    new-array v1, v0, [Ljava/lang/Object;

    .line 75
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    return v0

    .line 79
    :cond_0
    const/4 v3, 0x1

    .line 80
    new-array v4, v3, [Ljava/lang/Object;

    .line 82
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 85
    move-result-object v5

    .line 86
    aput-object v5, v4, v0

    .line 88
    const-string v5, "releaseDexFiles load file:{?}"

    .line 90
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-static {}, Lp1;->b()Lp1;

    .line 96
    move-result-object v4

    .line 97
    const-string v5, "dynamicFuncRepositorySize"

    .line 99
    invoke-virtual {v1}, Ljava/io/File;->length()J

    .line 102
    move-result-wide v6

    .line 103
    invoke-virtual {v4, v5, v6, v7}, Lp1;->j(Ljava/lang/String;J)V

    .line 106
    const/4 v4, 0x0

    .line 107
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    .line 109
    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 112
    :try_start_1
    invoke-static {v5}, Lu1;->b(Ljava/io/InputStream;)[B

    .line 115
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    invoke-static {v5}, Lns;->a(Ljava/io/Closeable;)V

    .line 119
    if-eqz v1, :cond_5

    .line 121
    array-length v5, v1

    .line 122
    if-nez v5, :cond_1

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    const-string v5, "releaseDexFiles decrypt"

    .line 127
    new-array v6, v0, [Ljava/lang/Object;

    .line 129
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    array-length v5, v1

    .line 133
    invoke-static {v1, v5, v4}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeConfigDecrypt([BILjava/lang/String;)[B

    .line 136
    move-result-object v1

    .line 137
    if-eqz v1, :cond_4

    .line 139
    array-length v4, v1

    .line 140
    if-nez v4, :cond_2

    .line 142
    goto :goto_0

    .line 143
    :cond_2
    const-string v4, "releaseDexFiles uncompressFiles"

    .line 145
    new-array v5, v0, [Ljava/lang/Object;

    .line 147
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v4, Ljava/io/ByteArrayInputStream;

    .line 152
    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 155
    invoke-static {v4, p1}, Lu1;->g(Ljava/io/InputStream;Ljava/lang/String;)Z

    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_3

    .line 161
    const-string p1, "releaseDexFiles uncompressFiles fail"

    .line 163
    new-array v1, v0, [Ljava/lang/Object;

    .line 165
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    return v0

    .line 169
    :cond_3
    const-string p1, "releaseDexFiles end"

    .line 171
    new-array v0, v0, [Ljava/lang/Object;

    .line 173
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    return v3

    .line 177
    :cond_4
    :goto_0
    const-string p1, "releaseDexFiles nativeConfigDecrypt fail"

    .line 179
    new-array v1, v0, [Ljava/lang/Object;

    .line 181
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 184
    return v0

    .line 185
    :cond_5
    :goto_1
    const-string p1, "releaseDexFiles file is empty"

    .line 187
    new-array v1, v0, [Ljava/lang/Object;

    .line 189
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return v0

    .line 193
    :catchall_0
    move-exception p1

    .line 194
    move-object v4, v5

    .line 195
    goto :goto_3

    .line 196
    :catch_0
    move-exception p1

    .line 197
    move-object v4, v5

    .line 198
    goto :goto_2

    .line 199
    :catchall_1
    move-exception p1

    .line 200
    goto :goto_3

    .line 201
    :catch_1
    move-exception p1

    .line 202
    :goto_2
    :try_start_2
    const-string v1, "releaseDexFiles loadAdapterDatabase exception"

    .line 204
    new-array v3, v0, [Ljava/lang/Object;

    .line 206
    invoke-static {v2, v1, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 209
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 212
    return v0

    .line 213
    :goto_3
    invoke-static {v4}, Lns;->a(Ljava/io/Closeable;)V

    .line 216
    throw p1
.end method

.method private unRegisterListener()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DynamicFuncManager"

    .line 6
    const-string v3, "unRegisterListener"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->MODULE_TYPE_ARRAY:[I

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    if-ge v3, v2, :cond_2

    .line 17
    aget v4, v1, v3

    .line 19
    invoke-static {}, Lpi;->n()Lpi;

    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, v4}, Lpi;->o(I)Lhc;

    .line 26
    move-result-object v4

    .line 27
    if-nez v4, :cond_0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    const/4 v5, 0x0

    .line 31
    :goto_1
    invoke-virtual {v4}, Lhc;->c()Landroid/util/SparseArray;

    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    .line 38
    move-result v6

    .line 39
    if-ge v5, v6, :cond_1

    .line 41
    invoke-virtual {v4}, Lhc;->c()Landroid/util/SparseArray;

    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 48
    move-result-object v6

    .line 49
    check-cast v6, Lfq;

    .line 51
    add-int/lit8 v5, v5, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public collectionResult(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->t()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    invoke-static {p2}, Ll1;->h(Ljava/lang/String;)Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lpi;->j()Lm1;

    .line 26
    move-result-object v0

    .line 27
    const/16 v1, 0xbf

    .line 29
    const-string v2, ""

    .line 31
    invoke-virtual {v0, v1, v2}, Ldc;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    const-string v3, "DynamicFuncResult="

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    const-string p1, ",packageVersion="

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    iget-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mPackageVersion:Ljava/lang/String;

    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string p1, ",dynamicFuncDexName="

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p1, ",tag="

    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_2

    .line 80
    const-string p1, "["

    .line 82
    const-string v0, "("

    .line 84
    invoke-virtual {p3, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    const-string p3, "]"

    .line 90
    const-string v0, ")"

    .line 92
    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 95
    move-result-object p1

    .line 96
    const-string p3, "\'"

    .line 98
    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    const-string p3, "\""

    .line 104
    invoke-virtual {p1, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 107
    move-result-object p3

    .line 108
    const-string p1, ",appendInfo="

    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_2
    const/4 p1, 0x2

    .line 117
    new-array p1, p1, [Ljava/lang/Object;

    .line 119
    const/4 v0, 0x0

    .line 120
    aput-object p2, p1, v0

    .line 122
    const/4 v0, 0x1

    .line 123
    aput-object p3, p1, v0

    .line 125
    const-string p3, "DynamicFuncManager"

    .line 127
    const-string v0, "collectionResult, uploadKey:{?}, appendInfo:{?}"

    .line 129
    invoke-static {p3, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object p1

    .line 136
    invoke-static {p2, p1}, Ll1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method public getImplProxy()Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 3
    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DynamicFuncManager"

    .line 6
    const-string v3, "init"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    invoke-static {}, Lr50;->d()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v3, "/AutoDeviceAdapter/"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mExternalAdapterDir:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string p1, "init, context.getFilesDir() is null"

    .line 68
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-array v1, v0, [Ljava/lang/Object;

    .line 73
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mExternalAdapterDir:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lu1;->a(Ljava/lang/String;)Z

    .line 81
    iget-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 83
    invoke-static {p1}, Lu1;->a(Ljava/lang/String;)Z

    .line 86
    invoke-static {}, Lp1;->b()Lp1;

    .line 89
    move-result-object p1

    .line 90
    const-string v1, "dynamicFuncPackageVersion"

    .line 92
    const-string v3, ""

    .line 94
    invoke-virtual {p1, v1, v3}, Lp1;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mPackageVersion:Ljava/lang/String;

    .line 100
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->isNeedUpdateDex()Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->clearDexFiles()V

    .line 109
    iget-object p1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 111
    invoke-direct {p0, p1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->releaseDexFiles(Ljava/lang/String;)Z

    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_1

    .line 117
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->readPackageVersion()V

    .line 120
    :cond_1
    const-string p1, "inited"

    .line 122
    new-array v0, v0, [Ljava/lang/Object;

    .line 124
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public onCleanup()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DynamicFuncManager"

    .line 6
    const-string v2, "cleanup"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->cleanup()Z

    .line 18
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->unRegisterListener()V

    .line 21
    iget-object v0, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->setAutoProxy(Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;)V

    .line 27
    iput-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 29
    :cond_0
    return-void
.end method

.method public onStartup()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "DynamicFuncManager"

    .line 6
    const-string v3, "startup"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lpi;->t()Z

    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Lpi;->j()Lm1;

    .line 29
    move-result-object v1

    .line 30
    const/16 v3, 0xbf

    .line 32
    const-string v4, ""

    .line 34
    invoke-virtual {v1, v3, v4}, Ldc;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    const/4 v3, 0x1

    .line 39
    new-array v5, v3, [Ljava/lang/Object;

    .line 41
    aput-object v1, v5, v0

    .line 43
    const-string v6, "dynamicFuncDexName:{?}"

    .line 45
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 54
    return-void

    .line 55
    :cond_1
    new-instance v5, Ljava/io/File;

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v7, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 80
    move-result v6

    .line 81
    if-eqz v6, :cond_4

    .line 83
    invoke-static {}, Lrv;->H()Lrv;

    .line 86
    move-result-object v5

    .line 87
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 90
    move-result-object v5

    .line 91
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    iget-object v7, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mInternalAdapterDir:Ljava/lang/String;

    .line 98
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-static {v5, v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->build(Landroid/content/Context;Ljava/lang/String;)Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 111
    move-result-object v1

    .line 112
    iput-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 114
    if-eqz v1, :cond_3

    .line 116
    new-instance v5, Lr7;

    .line 118
    invoke-direct {v5}, Lr7;-><init>()V

    .line 121
    invoke-virtual {v1, v5}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->setAutoProxy(Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/IAutoProxy;)V

    .line 124
    iget-object v1, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 126
    invoke-virtual {v1}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;->startup()Z

    .line 129
    move-result v1

    .line 130
    if-eqz v1, :cond_2

    .line 132
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->registerListener()V

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    const/4 v5, 0x0

    .line 137
    iput-object v5, p0, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->mImplProxy:Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncImplProxy;

    .line 139
    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 141
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 144
    move-result-object v5

    .line 145
    aput-object v5, v3, v0

    .line 147
    const-string v0, "onStartup, isSuccess={?}"

    .line 149
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    xor-int/lit8 v0, v1, 0x1

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    const-string v3, "startup is "

    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {p0, v0, v1, v4}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_3
    invoke-static {}, Lp1;->b()Lp1;

    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lp1;->m()V

    .line 181
    goto :goto_1

    .line 182
    :cond_4
    new-array v4, v3, [Ljava/lang/Object;

    .line 184
    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    .line 187
    move-result-object v5

    .line 188
    aput-object v5, v4, v0

    .line 190
    const-string v0, "onStartup, dexFile:{?} not exist"

    .line 192
    invoke-static {v2, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string v2, "dex:"

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    move-result-object v0

    .line 212
    const-string v1, "dex file not exist"

    .line 214
    invoke-virtual {p0, v3, v1, v0}, Lcom/autonavi/amapauto/business/deviceadapter/dynamicfunction/DynamicFuncManager;->collectionResult(ILjava/lang/String;Ljava/lang/String;)V

    .line 217
    :goto_1
    return-void
.end method

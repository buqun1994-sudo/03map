.class public Lcom/autonavi/core/network/util/SdCardUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStoragePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 3
    const-class v1, Landroid/os/storage/StorageManager;

    .line 5
    const-string v2, "mounted"

    .line 7
    :try_start_0
    const-string v4, "storage"

    .line 9
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    move-result-object v4

    .line 13
    check-cast v4, Landroid/os/storage/StorageManager;

    .line 15
    const-string v5, "getVolumeList"

    .line 17
    const/4 v6, 0x0

    .line 18
    new-array v7, v6, [Ljava/lang/Class;

    .line 20
    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 23
    move-result-object v5

    .line 24
    const-string v7, "getVolumeState"

    .line 26
    const/4 v8, 0x1

    .line 27
    new-array v9, v8, [Ljava/lang/Class;

    .line 29
    const-class v10, Ljava/lang/String;

    .line 31
    aput-object v10, v9, v6

    .line 33
    invoke-virtual {v1, v7, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v1

    .line 37
    new-array v7, v6, [Ljava/lang/Object;

    .line 39
    invoke-virtual {v5, v4, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    check-cast v5, [Ljava/lang/Object;

    .line 45
    array-length v7, v5
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    const-string v9, ""

    .line 48
    move-object v10, v9

    .line 49
    const/4 v11, 0x0

    .line 50
    :goto_0
    if-ge v11, v7, :cond_5

    .line 52
    :try_start_1
    aget-object v12, v5, v11

    .line 54
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    move-result-object v13

    .line 58
    const-string v14, "getPath"

    .line 60
    new-array v15, v6, [Ljava/lang/Class;

    .line 62
    invoke-virtual {v13, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 65
    move-result-object v13

    .line 66
    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    move-result-object v14

    .line 70
    const-string v15, "isRemovable"

    .line 72
    new-array v3, v6, [Ljava/lang/Class;

    .line 74
    invoke-virtual {v14, v15, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 77
    move-result-object v3

    .line 78
    new-array v14, v6, [Ljava/lang/Object;

    .line 80
    invoke-virtual {v13, v12, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v14

    .line 84
    check-cast v14, Ljava/lang/String;

    .line 86
    new-array v15, v8, [Ljava/lang/Object;

    .line 88
    new-array v8, v6, [Ljava/lang/Object;

    .line 90
    invoke-virtual {v13, v12, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    move-result-object v8

    .line 94
    aput-object v8, v15, v6

    .line 96
    invoke-virtual {v1, v4, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    move-result-object v8

    .line 100
    check-cast v8, Ljava/lang/String;

    .line 102
    new-array v13, v6, [Ljava/lang/Object;

    .line 104
    invoke-virtual {v3, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    move-result-object v3

    .line 108
    check-cast v3, Ljava/lang/Boolean;

    .line 110
    sget-object v12, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 112
    invoke-virtual {v14, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 115
    move-result-object v12

    .line 116
    const-string v13, "private"

    .line 118
    invoke-virtual {v12, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 121
    move-result v12

    .line 122
    if-eqz v12, :cond_0

    .line 124
    goto :goto_2

    .line 125
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 128
    move-result v3

    .line 129
    if-eqz v3, :cond_3

    .line 131
    if-eqz v8, :cond_4

    .line 133
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    if-eqz v3, :cond_4

    .line 139
    const/4 v1, 0x0

    .line 140
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_6

    .line 146
    array-length v1, v0

    .line 147
    if-lez v1, :cond_6

    .line 149
    array-length v1, v0

    .line 150
    move-object v3, v14

    .line 151
    :goto_1
    if-ge v6, v1, :cond_2

    .line 153
    aget-object v4, v0, v6

    .line 155
    if-eqz v4, :cond_1

    .line 157
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 161
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_1

    .line 167
    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 170
    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 171
    if-eqz v5, :cond_1

    .line 173
    move-object v3, v4

    .line 174
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 176
    goto :goto_1

    .line 177
    :cond_2
    move-object v14, v3

    .line 178
    goto :goto_3

    .line 179
    :cond_3
    move-object v9, v8

    .line 180
    move-object v10, v14

    .line 181
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    .line 183
    const/4 v8, 0x1

    .line 184
    goto/16 :goto_0

    .line 186
    :cond_5
    const/4 v14, 0x0

    .line 187
    :catchall_0
    :cond_6
    :goto_3
    if-eqz v10, :cond_7

    .line 189
    if-eqz v9, :cond_7

    .line 191
    :try_start_3
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    move-result v0
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0

    .line 195
    if-eqz v0, :cond_7

    .line 197
    goto :goto_4

    .line 198
    :cond_7
    move-object v10, v14

    .line 199
    :goto_4
    return-object v10

    .line 200
    :catch_0
    nop

    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v0

    .line 209
    if-eqz v0, :cond_8

    .line 211
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 214
    move-result-object v0

    .line 215
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 218
    move-result-object v0

    .line 219
    return-object v0

    .line 220
    :cond_8
    const/4 v0, 0x0

    .line 221
    return-object v0
.end method

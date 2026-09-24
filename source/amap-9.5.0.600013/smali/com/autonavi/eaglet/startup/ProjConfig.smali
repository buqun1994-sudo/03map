.class public Lcom/autonavi/eaglet/startup/ProjConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ProjConfig"

.field private static mHelper:Lir;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doConfigUiPathUpdate()V
    .locals 6

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ltk;->d()Ltk;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ltk;->c()Lir;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 15
    :cond_0
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 17
    invoke-interface {v0}, Lir;->m()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 23
    invoke-static {}, Lcom/autonavi/eaglet/startup/ProjConfig;->handleVolvoLibPath()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_3

    .line 29
    sget-object v1, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 31
    const-string v2, "UiPath"

    .line 33
    invoke-interface {v1, v2}, Lir;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    const-string v3, ","

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    move-result-object v1

    .line 43
    new-instance v4, Ljava/lang/StringBuffer;

    .line 45
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const/4 v0, 0x1

    .line 55
    :cond_1
    :goto_0
    array-length v5, v1

    .line 56
    if-ge v0, v5, :cond_2

    .line 58
    aget-object v5, v1, v0

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    add-int/lit8 v0, v0, 0x1

    .line 65
    array-length v5, v1

    .line 66
    if-ge v0, v5, :cond_1

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v2, v1}, Lir;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_3
    return-void
.end method

.method private static handleVolvoLibPath()Ljava/lang/String;
    .locals 12

    .line 1
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ltk;->d()Ltk;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ltk;->c()Lir;

    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 15
    :cond_0
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 17
    const/4 v1, 0x1

    .line 18
    new-array v2, v1, [Ljava/lang/Object;

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 23
    move-result-wide v3

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    aput-object v3, v2, v4

    .line 31
    const-string v3, "ProjConfig"

    .line 33
    const-string v5, "volvo resetPath begins! curTime={?}"

    .line 35
    invoke-interface {v0, v3, v5, v2}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Ltk;->d()Ltk;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ltk;->b()Landroid/app/Application;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 49
    move-result-object v0

    .line 50
    new-array v2, v4, [Ljava/lang/String;

    .line 52
    :try_start_0
    const-string v5, "res/sysres"

    .line 54
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 57
    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :goto_0
    const-string v0, "libcmb_"

    .line 65
    if-eqz v2, :cond_2

    .line 67
    array-length v5, v2

    .line 68
    if-lez v5, :cond_2

    .line 70
    array-length v5, v2

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_1
    if-ge v6, v5, :cond_2

    .line 74
    aget-object v7, v2, v6

    .line 76
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 79
    move-result v7

    .line 80
    if-eqz v7, :cond_1

    .line 82
    sget-object v2, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 84
    new-array v5, v1, [Ljava/lang/Object;

    .line 86
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    aput-object v6, v5, v4

    .line 90
    const-string v6, "volvo before resetPath, libName.startsWith(libcmd_\uff09:{?}"

    .line 92
    invoke-interface {v2, v3, v6, v5}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 v2, 0x1

    .line 96
    goto :goto_2

    .line 97
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 99
    goto :goto_1

    .line 100
    :cond_2
    const/4 v2, 0x0

    .line 101
    :goto_2
    sget-object v5, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 103
    new-array v6, v1, [Ljava/lang/Object;

    .line 105
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 108
    move-result-wide v7

    .line 109
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 112
    move-result-object v7

    .line 113
    aput-object v7, v6, v4

    .line 115
    const-string v7, "volvo resetPath middle ! curTime={?}"

    .line 117
    invoke-interface {v5, v3, v7, v6}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    if-eqz v2, :cond_6

    .line 122
    sget-object v2, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 124
    invoke-interface {v2}, Lir;->i()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    new-instance v5, Ljava/io/File;

    .line 130
    const-string v6, "sysres"

    .line 132
    invoke-direct {v5, v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    sget-object v6, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 137
    new-array v7, v1, [Ljava/lang/Object;

    .line 139
    aput-object v2, v7, v4

    .line 141
    const-string v2, "sodir basePath:{?}"

    .line 143
    invoke-interface {v6, v3, v2, v7}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 149
    move-result v2

    .line 150
    const-string v6, "volvo  resetPath end! curTime={?}"

    .line 152
    if-eqz v2, :cond_4

    .line 154
    sget-object v2, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 156
    const-string v7, "volvo  UiPath sodir.exists true!!"

    .line 158
    new-array v8, v4, [Ljava/lang/Object;

    .line 160
    invoke-interface {v2, v3, v7, v8}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    if-eqz v2, :cond_5

    .line 169
    array-length v7, v2

    .line 170
    if-lez v7, :cond_5

    .line 172
    array-length v7, v2

    .line 173
    const/4 v8, 0x0

    .line 174
    :goto_3
    if-ge v8, v7, :cond_5

    .line 176
    aget-object v9, v2, v8

    .line 178
    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 181
    move-result v9

    .line 182
    if-eqz v9, :cond_3

    .line 184
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 186
    const-string v2, "volvo  UiPath libcmb_ true!!"

    .line 188
    new-array v7, v4, [Ljava/lang/Object;

    .line 190
    invoke-interface {v0, v3, v2, v7}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, ","

    .line 207
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    sget-object v2, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 216
    new-array v1, v1, [Ljava/lang/Object;

    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 221
    move-result-wide v7

    .line 222
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 225
    move-result-object v5

    .line 226
    aput-object v5, v1, v4

    .line 228
    invoke-interface {v2, v3, v6, v1}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    return-object v0

    .line 232
    :cond_3
    sget-object v9, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 234
    const-string v10, "volvo  UiPath libcmb_ false!!"

    .line 236
    new-array v11, v4, [Ljava/lang/Object;

    .line 238
    invoke-interface {v9, v3, v10, v11}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    add-int/lit8 v8, v8, 0x1

    .line 243
    goto :goto_3

    .line 244
    :cond_4
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 246
    const-string v2, "volvo  UiPath sodir.exists false!!"

    .line 248
    new-array v5, v4, [Ljava/lang/Object;

    .line 250
    invoke-interface {v0, v3, v2, v5}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    :cond_5
    sget-object v0, Lcom/autonavi/eaglet/startup/ProjConfig;->mHelper:Lir;

    .line 255
    new-array v1, v1, [Ljava/lang/Object;

    .line 257
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 260
    move-result-wide v7

    .line 261
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    move-result-object v2

    .line 265
    aput-object v2, v1, v4

    .line 267
    invoke-interface {v0, v3, v6, v1}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    :cond_6
    const/4 v0, 0x0

    .line 271
    return-object v0
.end method

.method public static loadConfig()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static throwNativeException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string p1, "throwNativeException "

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    const-string p1, "Activity"

    .line 20
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method

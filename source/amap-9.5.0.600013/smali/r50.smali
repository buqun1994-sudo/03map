.class public abstract Lr50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lr50;->f()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lr50;->a:Ljava/lang/String;

    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lr50;->b:Ljava/lang/String;

    .line 10
    sput-object v0, Lr50;->d:Ljava/lang/String;

    .line 12
    sput-object v0, Lr50;->e:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lr50;->q(Ljava/lang/String;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public static c(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 3
    new-instance p0, Ljava/lang/NullPointerException;

    .line 5
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 8
    const-string v0, "PathUtils"

    .line 10
    const-string v1, "getAbsolutePath when a null object!!!"

    .line 12
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    const-string p0, ""

    .line 17
    return-object p0

    .line 18
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lr50;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static declared-synchronized e()Ljava/lang/String;
    .locals 4

    .line 1
    const-class v0, Lr50;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lr50;->c:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    const-string v1, "PathUtils"

    .line 14
    const-string v2, "getAutoLogRootPath loadLogPathFromAssets start"

    .line 16
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lr50;->r(Landroid/content/Context;)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    const-string v2, "PathUtils"

    .line 33
    const-string v3, "getAutoLogRootPath loadLogPathFromAssets end"

    .line 35
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 44
    sget-object v2, Lr50;->b:Ljava/lang/String;

    .line 46
    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_0

    .line 54
    const-string v2, "/sdcard"

    .line 56
    sget-object v3, Lr50;->b:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    sput-object v1, Lr50;->c:Ljava/lang/String;

    .line 64
    goto :goto_0

    .line 65
    :cond_0
    const-string v2, "/sdcard"

    .line 67
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    sput-object v1, Lr50;->c:Ljava/lang/String;

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    sget-object v2, Lr50;->a:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "Log"

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object v1

    .line 97
    sput-object v1, Lr50;->c:Ljava/lang/String;

    .line 99
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    sget-object v2, Lr50;->c:Ljava/lang/String;

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v1

    .line 118
    sput-object v1, Lr50;->c:Ljava/lang/String;

    .line 120
    const-string v1, "PathUtils"

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v3, "getAutoLogRootPath path = "

    .line 129
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v3, Lr50;->c:Ljava/lang/String;

    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v2

    .line 141
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_2
    sget-object v1, Lr50;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    monitor-exit v0

    .line 147
    return-object v1

    .line 148
    :catchall_0
    move-exception v1

    .line 149
    monitor-exit v0

    .line 150
    throw v1
.end method

.method public static f()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, "/amapauto9/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "PathUtils"

    .line 3
    sget-object v1, Lr50;->e:Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    sget-object v0, Lr50;->e:Ljava/lang/String;

    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {}, Lrv;->H()Lrv;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Lrv;->L()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    const/16 v3, 0x80

    .line 36
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 39
    move-result-object v1

    .line 40
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 42
    sget-object v2, Lzm;->Q:Ljava/lang/String;

    .line 44
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 47
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    move-result-object v1

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const/4 v1, 0x0

    .line 58
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v3, "getAvailableSdcardPath, isNeedFrontMemory:"

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v2

    .line 75
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const/4 v2, 0x1

    .line 79
    if-ne v1, v2, :cond_1

    .line 81
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 84
    move-result-object v0

    .line 85
    invoke-static {v0}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 88
    move-result-object v0

    .line 89
    sput-object v0, Lr50;->e:Ljava/lang/String;

    .line 91
    return-object v0

    .line 92
    :cond_1
    new-instance v1, Lsd0;

    .line 94
    const-string v2, "auto_config"

    .line 96
    invoke-direct {v1, v2}, Lsd0;-><init>(Ljava/lang/String;)V

    .line 99
    const-string v2, "AutoUsedSdcardPath"

    .line 101
    const-string v3, ""

    .line 103
    invoke-virtual {v1, v2, v3}, Lsd0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v6, "getAvailableSdcardPath, spUsedInnerPath = "

    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v5

    .line 124
    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :try_start_1
    invoke-static {v4}, Lr50;->q(Ljava/lang/String;)Z

    .line 130
    move-result v5

    .line 131
    if-eqz v5, :cond_2

    .line 133
    sput-object v4, Lr50;->e:Ljava/lang/String;

    .line 135
    const-string v1, "getAvailableSdcardPath, isExternalFilesDir"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    goto :goto_2

    .line 141
    :cond_2
    invoke-static {}, Lu50;->c()Z

    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_3

    .line 147
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 150
    move-result-object v3

    .line 151
    invoke-static {v3}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    sput-object v3, Lr50;->e:Ljava/lang/String;

    .line 157
    goto :goto_1

    .line 158
    :cond_3
    invoke-static {v3}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 161
    move-result-object v3

    .line 162
    invoke-static {v3}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 165
    move-result-object v3

    .line 166
    sput-object v3, Lr50;->e:Ljava/lang/String;

    .line 168
    :goto_1
    sget-object v3, Lr50;->e:Ljava/lang/String;

    .line 170
    invoke-virtual {v1, v2, v3}, Lsd0;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    .line 175
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 178
    const-string v2, "getAvailableSdcardPath, hasStoragePermissions = "

    .line 180
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 193
    goto :goto_2

    .line 194
    :catch_1
    move-exception v1

    .line 195
    const-string v2, "getAvailableSdcardPath exception"

    .line 197
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 203
    move-result-object v1

    .line 204
    invoke-static {v1}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 207
    move-result-object v1

    .line 208
    sput-object v1, Lr50;->e:Ljava/lang/String;

    .line 210
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 212
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    const-string v2, "getAvailableSdcardPath, mAutoUsedSdcardPath = "

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    sget-object v2, Lr50;->e:Ljava/lang/String;

    .line 222
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    sget-object v0, Lr50;->e:Ljava/lang/String;

    .line 234
    new-instance v1, Lr50$a;

    .line 236
    invoke-direct {v1, v0}, Lr50$a;-><init>(Ljava/lang/String;)V

    .line 239
    invoke-static {v1}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 242
    sget-object v0, Lr50;->e:Ljava/lang/String;

    .line 244
    return-object v0
.end method

.method public static h(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->S()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 11
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lrv;->U()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 33
    move-result-object p0

    .line 34
    return-object p0

    .line 35
    :cond_1
    :goto_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public static i()Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->S()Z

    .line 8
    move-result v0

    .line 9
    const-string v1, "PathUtils"

    .line 11
    if-nez v0, :cond_2

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lrv;->U()Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 27
    move-result-object v0

    .line 28
    if-nez v0, :cond_1

    .line 30
    const-string v0, "getExternalStorageDirectory Environment.getExternalStorageDirectory is NULL use getExternalFilesDir instead~"

    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 39
    move-result-object v0

    .line 40
    :cond_1
    return-object v0

    .line 41
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v2, "getExternalStorageDirectory isDirectAware ="

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {}, Lrv;->H()Lrv;

    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Lrv;->S()Z

    .line 58
    move-result v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v2, "  isDisableExternalFilesDir = "

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {}, Lrv;->H()Lrv;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Lrv;->U()Z

    .line 74
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lrv;->H()Lrv;

    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 96
    move-result-object v0

    .line 97
    return-object v0
.end method

.method public static declared-synchronized j()Ljava/lang/String;
    .locals 3

    .line 1
    const-class v0, Lr50;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lr50;->p()Z

    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_1

    .line 10
    const-string v1, ""

    .line 12
    invoke-static {v1}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string v1, ""

    .line 20
    invoke-static {v1}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 27
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    monitor-exit v0

    .line 29
    return-object v1

    .line 30
    :cond_0
    :try_start_1
    const-string v1, "PathUtils"

    .line 32
    const-string v2, "getInnerSdcardPath, getExternalFilesDir is null"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 44
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    monitor-exit v0

    .line 46
    return-object v1

    .line 47
    :cond_1
    :try_start_2
    invoke-static {}, Lib;->c()Z

    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_3

    .line 53
    invoke-static {}, Lib;->d()Z

    .line 56
    move-result v1

    .line 57
    if-nez v1, :cond_3

    .line 59
    invoke-static {}, Lib;->e()Z

    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_3

    .line 65
    invoke-static {}, Lib;->q()Z

    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-static {}, Lr50;->i()Ljava/io/File;

    .line 75
    move-result-object v1

    .line 76
    invoke-static {v1}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 79
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    monitor-exit v0

    .line 81
    return-object v1

    .line 82
    :cond_3
    :goto_0
    :try_start_3
    invoke-static {}, Lr50;->g()Ljava/lang/String;

    .line 85
    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86
    monitor-exit v0

    .line 87
    return-object v1

    .line 88
    :catchall_0
    move-exception v1

    .line 89
    monitor-exit v0

    .line 90
    throw v1
.end method

.method public static k()Ljava/lang/String;
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
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    invoke-static {v0}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lr50;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lr50;->d:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lr50;->d:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lr50;->o()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 18
    const-string v0, "/system/lib64"

    .line 20
    return-object v0

    .line 21
    :cond_1
    const-string v0, "/system/lib"

    .line 23
    return-object v0
.end method

.method public static o()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "dalvik.system.VMRuntime"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 7
    move-result-object v1

    .line 8
    const-string v2, "getRuntime"

    .line 10
    new-array v3, v0, [Ljava/lang/Class;

    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 15
    move-result-object v2

    .line 16
    if-nez v2, :cond_0

    .line 18
    return v0

    .line 19
    :cond_0
    new-array v3, v0, [Ljava/lang/Object;

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_1

    .line 28
    return v0

    .line 29
    :cond_1
    const-string v3, "is64Bit"

    .line 31
    new-array v4, v0, [Ljava/lang/Class;

    .line 33
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_2

    .line 39
    return v0

    .line 40
    :cond_2
    new-array v3, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    instance-of v2, v1, Ljava/lang/Boolean;

    .line 48
    if-eqz v2, :cond_3

    .line 50
    check-cast v1, Ljava/lang/Boolean;

    .line 52
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 55
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :catchall_0
    :cond_3
    return v0
.end method

.method public static p()Z
    .locals 4

    .line 1
    invoke-static {}, Lr50;->b()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v3, "isAdapterAndroidR targetSdkVersion = "

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    const-string v3, "PathUtils"

    .line 42
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    const/16 v2, 0x1e

    .line 47
    if-lt v0, v2, :cond_1

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/4 v1, 0x0

    .line 51
    :goto_0
    return v1
.end method

.method public static q(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    const-string v0, ""

    .line 5
    invoke-static {v0}, Lr50;->h(Ljava/lang/String;)Ljava/io/File;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lr50;->c(Ljava/io/File;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    :goto_0
    return p0
.end method

.method public static r(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 10
    move-result-object p0

    .line 11
    const-string v2, "ProjConfig.json"

    .line 13
    invoke-virtual {p0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 16
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    .line 19
    new-instance v3, Ljava/io/InputStreamReader;

    .line 21
    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 24
    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 27
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    if-eqz v3, :cond_0

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    if-eqz p0, :cond_1

    .line 42
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 45
    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    :cond_1
    :goto_1
    :try_start_3
    new-instance p0, Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    invoke-direct {p0, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 59
    const-string v0, "Log"

    .line 61
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 64
    move-result-object p0

    .line 65
    const-string v0, "LogPath"

    .line 67
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object p0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 71
    return-object p0

    .line 72
    :catch_1
    move-exception p0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    return-object v1

    .line 77
    :catch_2
    move-exception v0

    .line 78
    goto :goto_2

    .line 79
    :catchall_0
    move-exception v0

    .line 80
    goto :goto_4

    .line 81
    :catch_3
    move-exception v0

    .line 82
    move-object p0, v1

    .line 83
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 86
    if-eqz p0, :cond_2

    .line 88
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 91
    goto :goto_3

    .line 92
    :catch_4
    move-exception p0

    .line 93
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :cond_2
    :goto_3
    return-object v1

    .line 97
    :catchall_1
    move-exception v0

    .line 98
    move-object v1, p0

    .line 99
    :goto_4
    if-eqz v1, :cond_3

    .line 101
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 104
    goto :goto_5

    .line 105
    :catch_5
    move-exception p0

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    :cond_3
    :goto_5
    throw v0
.end method

.method public static declared-synchronized s(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lr50;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lr50;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0

    .line 10
    throw p0
.end method

.method public static t(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lr50;->d:Ljava/lang/String;

    .line 3
    return-void
.end method

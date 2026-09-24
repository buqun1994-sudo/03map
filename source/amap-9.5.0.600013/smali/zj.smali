.class public Lzj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lyj;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

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
    const-string v1, "/"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ".AutoDiu"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lzj;->c:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    sget-object v2, Lzj;->c:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "auto_diu.txt"

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lzj;->d:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    sget-object v2, Lzj;->c:Ljava/lang/String;

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, "new_auto_diu.txt"

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lzj;->e:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lzj;->a:Landroid/content/Context;

    .line 14
    new-instance v0, Lyj;

    .line 16
    invoke-direct {v0}, Lyj;-><init>()V

    .line 19
    iput-object v0, p0, Lzj;->b:Lyj;

    .line 21
    invoke-virtual {p0}, Lzj;->e()V

    .line 24
    invoke-virtual {p0}, Lzj;->i()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lzj;->f:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lzj;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lzj;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic c(Lzj;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lzj;->a:Landroid/content/Context;

    .line 3
    return-object p0
.end method

.method public static h()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "DiuGenerator"

    .line 3
    const-string v1, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 9
    move-result-object v3

    .line 10
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 17
    move-result-object v3

    .line 18
    const-string v4, "android_id"

    .line 20
    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v3, "Settings.Secure.getString(Settings.Secure.ANDROID_ID) = {?}"

    .line 26
    const/4 v4, 0x1

    .line 27
    new-array v4, v4, [Ljava/lang/Object;

    .line 29
    aput-object v1, v4, v2

    .line 31
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v3

    .line 36
    const-string v4, "getAndoirdId "

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v0, v4, v3, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final d()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "auto_device_diu"

    .line 15
    const-string v2, ""

    .line 17
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    invoke-virtual {p0}, Lzj;->f()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const/4 v1, 0x1

    .line 26
    new-array v1, v1, [Ljava/lang/Object;

    .line 28
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    aput-object v0, v1, v2

    .line 35
    const-string v0, "DiuGenerator"

    .line 37
    const-string v2, "clear old DiuToSystemSetting : Exception = {?}="

    .line 39
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    sget-object v0, Lzj;->c:Ljava/lang/String;

    .line 3
    const-string v1, "/"

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v2, ".AutoDiu"

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lzj;->c:Ljava/lang/String;

    .line 33
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 35
    sget-object v2, Lzj;->c:Ljava/lang/String;

    .line 37
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_1

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 55
    :cond_1
    sget-object v0, Lzj;->e:Ljava/lang/String;

    .line 57
    if-nez v0, :cond_2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    sget-object v2, Lzj;->c:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, "auto_diu.txt"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    sput-object v0, Lzj;->e:Ljava/lang/String;

    .line 83
    :cond_2
    new-instance v0, Ljava/io/File;

    .line 85
    sget-object v1, Lzj;->e:Ljava/lang/String;

    .line 87
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_3

    .line 96
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_3

    .line 102
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :catch_0
    :cond_3
    return-void
.end method

.method public final f()V
    .locals 1

    .line 1
    new-instance v0, Lzj$b;

    .line 3
    invoke-direct {v0, p0}, Lzj$b;-><init>(Lzj;)V

    .line 6
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const v1, 0xea61

    .line 8
    invoke-virtual {v0, v1}, Lse;->getOptionalValue(I)Leq$a;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Leq$a;->b()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    invoke-virtual {p0}, Lzj;->i()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lzj;->b:Lyj;

    .line 25
    if-nez v0, :cond_1

    .line 27
    new-instance v0, Lyj;

    .line 29
    invoke-direct {v0}, Lyj;-><init>()V

    .line 32
    iput-object v0, p0, Lzj;->b:Lyj;

    .line 34
    :cond_1
    const-string v0, ""

    .line 36
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, "getDiu end. diu = {?}"

    .line 3
    const-string v1, "DiuGenerator"

    .line 5
    sget-object v2, Lzj;->f:Ljava/lang/String;

    .line 7
    if-eqz v2, :cond_0

    .line 9
    return-object v2

    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-static {}, Lib;->h()Z

    .line 15
    move-result v4

    .line 16
    if-nez v4, :cond_3

    .line 18
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    const/16 v5, 0x17

    .line 22
    if-lt v4, v5, :cond_3

    .line 24
    iget-object v4, p0, Lzj;->a:Landroid/content/Context;

    .line 26
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 28
    invoke-static {v4, v5}, Lvg0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 31
    move-result v4

    .line 32
    if-eqz v4, :cond_3

    .line 34
    const-string v4, "checkSelfPermission WRITE_EXTERNAL_STORAGE = false;"

    .line 36
    new-array v5, v3, [Ljava/lang/Object;

    .line 38
    invoke-static {v1, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    sget-object v4, Lzj;->f:Ljava/lang/String;

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_2

    .line 49
    invoke-virtual {p0}, Lzj;->m()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 53
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 56
    move-result v5

    .line 57
    if-eqz v5, :cond_1

    .line 59
    invoke-virtual {p0}, Lzj;->j()Ljava/lang/String;

    .line 62
    move-result-object v4

    .line 63
    sput-object v4, Lzj;->f:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    sput-object v4, Lzj;->f:Ljava/lang/String;

    .line 68
    :cond_2
    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    sget-object v4, Lzj;->f:Ljava/lang/String;

    .line 72
    aput-object v4, v2, v3

    .line 74
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    .line 78
    return-object v0

    .line 79
    :cond_3
    const v4, 0xea61

    .line 82
    const v5, 0x9c43

    .line 85
    :try_start_1
    invoke-static {}, Lzm;->d()Lzm;

    .line 88
    move-result-object v6

    .line 89
    sget-object v7, Lzm;->e:Ljava/lang/String;

    .line 91
    invoke-virtual {v6, v7, v3}, Lzm;->e(Ljava/lang/String;I)I

    .line 94
    move-result v6

    .line 95
    if-eqz v6, :cond_5

    .line 97
    invoke-static {}, Lse;->c()Lse;

    .line 100
    move-result-object v6

    .line 101
    invoke-virtual {v6, v5}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-static {}, Lse;->c()Lse;

    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7, v4}, Lse;->getOptionalValue(I)Leq$a;

    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v7}, Leq$a;->b()Z

    .line 116
    move-result v7

    .line 117
    if-eqz v7, :cond_4

    .line 119
    sput-object v6, Lzj;->f:Ljava/lang/String;

    .line 121
    goto :goto_1

    .line 122
    :cond_4
    invoke-static {v6}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getFormatDeviceId(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v6

    .line 126
    sput-object v6, Lzj;->f:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    goto :goto_1

    .line 129
    :catch_0
    move-exception v6

    .line 130
    :try_start_2
    const-string v7, "UnsatisfiedLinkError !!"

    .line 132
    invoke-static {v1, v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :cond_5
    :goto_1
    invoke-static {}, Lse;->c()Lse;

    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v6, v4}, Lse;->getOptionalValue(I)Leq$a;

    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4}, Leq$a;->b()Z

    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_6

    .line 149
    invoke-static {}, Lse;->c()Lse;

    .line 152
    move-result-object v6

    .line 153
    invoke-virtual {v6, v5}, Lse;->getStringValue(I)Ljava/lang/String;

    .line 156
    move-result-object v5

    .line 157
    const-string v6, "deviceId:{?} channelOptional:{?}"

    .line 159
    const/4 v7, 0x2

    .line 160
    new-array v7, v7, [Ljava/lang/Object;

    .line 162
    aput-object v5, v7, v3

    .line 164
    invoke-virtual {v4}, Leq$a;->b()Z

    .line 167
    move-result v4

    .line 168
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 171
    move-result-object v4

    .line 172
    aput-object v4, v7, v2

    .line 174
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    sput-object v5, Lzj;->f:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    :cond_6
    sget-object v4, Lzj;->f:Ljava/lang/String;

    .line 181
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_8

    .line 187
    invoke-virtual {p0}, Lzj;->m()Ljava/lang/String;

    .line 190
    move-result-object v4

    .line 191
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 194
    move-result v5

    .line 195
    if-eqz v5, :cond_7

    .line 197
    invoke-virtual {p0}, Lzj;->j()Ljava/lang/String;

    .line 200
    move-result-object v4

    .line 201
    sput-object v4, Lzj;->f:Ljava/lang/String;

    .line 203
    goto :goto_2

    .line 204
    :cond_7
    sput-object v4, Lzj;->f:Ljava/lang/String;

    .line 206
    :cond_8
    :goto_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 208
    sget-object v4, Lzj;->f:Ljava/lang/String;

    .line 210
    aput-object v4, v2, v3

    .line 212
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    goto :goto_4

    .line 216
    :catchall_0
    move-exception v4

    .line 217
    goto :goto_5

    .line 218
    :catch_1
    move-exception v4

    .line 219
    :try_start_3
    const-string v5, "getDiu : autodiv MD5 error = {?}"

    .line 221
    new-array v6, v2, [Ljava/lang/Object;

    .line 223
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 226
    move-result-object v4

    .line 227
    aput-object v4, v6, v3

    .line 229
    invoke-static {v1, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 232
    sget-object v4, Lzj;->f:Ljava/lang/String;

    .line 234
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 237
    move-result v4

    .line 238
    if-eqz v4, :cond_a

    .line 240
    invoke-virtual {p0}, Lzj;->m()Ljava/lang/String;

    .line 243
    move-result-object v4

    .line 244
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 247
    move-result v5

    .line 248
    if-eqz v5, :cond_9

    .line 250
    invoke-virtual {p0}, Lzj;->j()Ljava/lang/String;

    .line 253
    move-result-object v4

    .line 254
    sput-object v4, Lzj;->f:Ljava/lang/String;

    .line 256
    goto :goto_3

    .line 257
    :cond_9
    sput-object v4, Lzj;->f:Ljava/lang/String;

    .line 259
    :cond_a
    :goto_3
    new-array v2, v2, [Ljava/lang/Object;

    .line 261
    sget-object v4, Lzj;->f:Ljava/lang/String;

    .line 263
    aput-object v4, v2, v3

    .line 265
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_4
    sget-object v0, Lzj;->f:Ljava/lang/String;

    .line 270
    return-object v0

    .line 271
    :goto_5
    sget-object v5, Lzj;->f:Ljava/lang/String;

    .line 273
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 276
    move-result v5

    .line 277
    if-eqz v5, :cond_c

    .line 279
    invoke-virtual {p0}, Lzj;->m()Ljava/lang/String;

    .line 282
    move-result-object v5

    .line 283
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 286
    move-result v6

    .line 287
    if-eqz v6, :cond_b

    .line 289
    invoke-virtual {p0}, Lzj;->j()Ljava/lang/String;

    .line 292
    move-result-object v5

    .line 293
    sput-object v5, Lzj;->f:Ljava/lang/String;

    .line 295
    goto :goto_6

    .line 296
    :cond_b
    sput-object v5, Lzj;->f:Ljava/lang/String;

    .line 298
    :cond_c
    :goto_6
    new-array v2, v2, [Ljava/lang/Object;

    .line 300
    sget-object v5, Lzj;->f:Ljava/lang/String;

    .line 302
    aput-object v5, v2, v3

    .line 304
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    throw v4
.end method

.method public j()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    sget-object v2, Lzj;->g:Ljava/lang/String;

    .line 7
    aput-object v2, v0, v1

    .line 9
    const-string v1, "DiuGenerator"

    .line 11
    const-string v2, "getDiu4 diu4 = {?}"

    .line 13
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    sget-object v0, Lzj;->g:Ljava/lang/String;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    return-object v0

    .line 21
    :cond_0
    iget-object v0, p0, Lzj;->b:Lyj;

    .line 23
    if-nez v0, :cond_1

    .line 25
    new-instance v0, Lyj;

    .line 27
    invoke-direct {v0}, Lyj;-><init>()V

    .line 30
    iput-object v0, p0, Lzj;->b:Lyj;

    .line 32
    :cond_1
    iget-object v0, p0, Lzj;->b:Lyj;

    .line 34
    invoke-virtual {v0}, Lyj;->g()Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lzj;->g:Ljava/lang/String;

    .line 40
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "new_auto_device_diu"

    .line 3
    const-string v1, "DiuGenerator"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v5

    .line 20
    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    const-string v6, "getDiuFromNewStore System def localDiu = {?}"

    .line 26
    new-array v7, v2, [Ljava/lang/Object;

    .line 28
    aput-object v5, v7, v3

    .line 30
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 39
    const-string v6, "getDiuFromNewStore System before decryptAES localDiu = {?}"

    .line 41
    new-array v7, v2, [Ljava/lang/Object;

    .line 43
    aput-object v5, v7, v3

    .line 45
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-static {v5}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v5

    .line 52
    const-string v6, "getDiuFromNewStore System after decryptAES localDiu = {?}"

    .line 54
    new-array v7, v2, [Ljava/lang/Object;

    .line 56
    aput-object v5, v7, v3

    .line 58
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 61
    return-object v5

    .line 62
    :catch_0
    move-exception v6

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception v6

    .line 65
    move-object v5, v4

    .line 66
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    new-array v7, v2, [Ljava/lang/Object;

    .line 71
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    move-result-object v6

    .line 75
    aput-object v6, v7, v3

    .line 77
    const-string v6, "getDiuFromNewStore Settings Exception:"

    .line 79
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    .line 84
    sget-object v7, Lzj;->e:Ljava/lang/String;

    .line 86
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 89
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    .line 92
    move-result v4

    .line 93
    new-array v7, v4, [B

    .line 95
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 98
    move-result v8

    .line 99
    const-string v9, "getDiuFromNewStore available length = {?}, read length = {?}:"

    .line 101
    const/4 v10, 0x2

    .line 102
    new-array v10, v10, [Ljava/lang/Object;

    .line 104
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v4

    .line 108
    aput-object v4, v10, v3

    .line 110
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 113
    move-result-object v4

    .line 114
    aput-object v4, v10, v2

    .line 116
    invoke-static {v1, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    const-string v4, "UTF-8"

    .line 121
    invoke-static {v7, v4}, Lxk;->b([BLjava/lang/String;)Ljava/lang/String;

    .line 124
    move-result-object v5

    .line 125
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_1

    .line 131
    invoke-virtual {p0, v5}, Lzj;->r(Ljava/lang/String;)V

    .line 134
    const-string v4, "getDiuFromNewStore file before decryptAES filediu = {?}"

    .line 136
    new-array v7, v2, [Ljava/lang/Object;

    .line 138
    aput-object v5, v7, v3

    .line 140
    invoke-static {v1, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-static {v5}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 146
    move-result-object v5

    .line 147
    const-string v4, "getDiuFromNewStore file after decryptAES filediu = {?}"

    .line 149
    new-array v7, v2, [Ljava/lang/Object;

    .line 151
    aput-object v5, v7, v3

    .line 153
    invoke-static {v1, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 156
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 159
    goto :goto_1

    .line 160
    :catch_2
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    :goto_1
    return-object v5

    .line 165
    :cond_1
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 168
    goto :goto_3

    .line 169
    :catch_3
    move-exception v4

    .line 170
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    goto :goto_3

    .line 174
    :catch_4
    move-exception v4

    .line 175
    goto :goto_2

    .line 176
    :catchall_0
    move-exception v0

    .line 177
    goto :goto_4

    .line 178
    :catch_5
    move-exception v6

    .line 179
    move-object v11, v6

    .line 180
    move-object v6, v4

    .line 181
    move-object v4, v11

    .line 182
    :goto_2
    :try_start_6
    const-string v7, "occur an Exception !! e:"

    .line 184
    new-array v8, v2, [Ljava/lang/Object;

    .line 186
    aput-object v4, v8, v3

    .line 188
    invoke-static {v1, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 191
    if-eqz v6, :cond_2

    .line 193
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 196
    :cond_2
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 199
    move-result v4

    .line 200
    if-nez v4, :cond_3

    .line 202
    return-object v5

    .line 203
    :cond_3
    :try_start_8
    iget-object v4, p0, Lzj;->a:Landroid/content/Context;

    .line 205
    const-string v6, "auto_diu_sp"

    .line 207
    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 210
    move-result-object v4

    .line 211
    const-string v6, ""

    .line 213
    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    move-result-object v5

    .line 217
    const-string v0, "getDiuFromNewStore SharedPreferences localDiu = {?}"

    .line 219
    new-array v4, v2, [Ljava/lang/Object;

    .line 221
    aput-object v5, v4, v3

    .line 223
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 229
    move-result v0

    .line 230
    if-nez v0, :cond_4

    .line 232
    invoke-virtual {p0, v5}, Lzj;->r(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, v5}, Lzj;->p(Ljava/lang/String;)V

    .line 238
    invoke-static {v5}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 241
    move-result-object v5

    .line 242
    const-string v0, "getDiuFromNewStore SharedPreferences localDiu={?}"

    .line 244
    new-array v4, v2, [Ljava/lang/Object;

    .line 246
    aput-object v5, v4, v3

    .line 248
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 251
    return-object v5

    .line 252
    :catch_6
    move-exception v0

    .line 253
    new-array v2, v2, [Ljava/lang/Object;

    .line 255
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 258
    move-result-object v0

    .line 259
    aput-object v0, v2, v3

    .line 261
    const-string v0, "getDiuFromNewStore getsp Exception !! e:"

    .line 263
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    :cond_4
    return-object v5

    .line 267
    :catchall_1
    move-exception v0

    .line 268
    move-object v4, v6

    .line 269
    :goto_4
    if-eqz v4, :cond_5

    .line 271
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 274
    goto :goto_5

    .line 275
    :catch_7
    move-exception v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    :cond_5
    :goto_5
    throw v0
.end method

.method public final l()Ljava/lang/String;
    .locals 12

    .line 1
    const-string v0, "auto_device_diu"

    .line 3
    const-string v1, "DiuGenerator"

    .line 5
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v5

    .line 12
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 15
    move-result-object v5

    .line 16
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 19
    move-result-object v5

    .line 20
    invoke-static {v5, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 24
    :try_start_1
    const-string v6, "getDiuFromStore System def localDiu = {?}"

    .line 26
    new-array v7, v2, [Ljava/lang/Object;

    .line 28
    aput-object v5, v7, v3

    .line 30
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v6

    .line 37
    if-nez v6, :cond_0

    .line 39
    invoke-static {v5}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object v6

    .line 43
    invoke-virtual {p0, v6}, Lzj;->o(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 46
    return-object v5

    .line 47
    :catch_0
    move-exception v6

    .line 48
    goto :goto_0

    .line 49
    :catch_1
    move-exception v6

    .line 50
    move-object v5, v4

    .line 51
    :goto_0
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    new-array v7, v2, [Ljava/lang/Object;

    .line 56
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    move-result-object v6

    .line 60
    aput-object v6, v7, v3

    .line 62
    const-string v6, "getDiuFromStore Settings Exception:"

    .line 64
    invoke-static {v1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    :cond_0
    :try_start_2
    new-instance v6, Ljava/io/FileInputStream;

    .line 69
    sget-object v7, Lzj;->d:Ljava/lang/String;

    .line 71
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 74
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->available()I

    .line 77
    move-result v4

    .line 78
    new-array v7, v4, [B

    .line 80
    invoke-virtual {v6, v7}, Ljava/io/FileInputStream;->read([B)I

    .line 83
    move-result v8

    .line 84
    const-string v9, "getDiuFromStore available length = {?}, read length = {?}:"

    .line 86
    const/4 v10, 0x2

    .line 87
    new-array v10, v10, [Ljava/lang/Object;

    .line 89
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    move-result-object v4

    .line 93
    aput-object v4, v10, v3

    .line 95
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v4

    .line 99
    aput-object v4, v10, v2

    .line 101
    invoke-static {v1, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    const-string v4, "UTF-8"

    .line 106
    invoke-static {v7, v4}, Lxk;->b([BLjava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v4

    .line 110
    const-string v7, ","

    .line 112
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    aget-object v7, v4, v3

    .line 118
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    move-result v7

    .line 122
    if-nez v7, :cond_1

    .line 124
    aget-object v4, v4, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 126
    :try_start_4
    invoke-static {v4}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object v5

    .line 130
    invoke-virtual {p0, v5}, Lzj;->o(Ljava/lang/String;)V

    .line 133
    const-string v5, "getDiuFromStore FileInputStream diu={?}"

    .line 135
    new-array v7, v2, [Ljava/lang/Object;

    .line 137
    aput-object v4, v7, v3

    .line 139
    invoke-static {v1, v5, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 142
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 145
    goto :goto_1

    .line 146
    :catch_2
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    :goto_1
    return-object v4

    .line 151
    :catch_3
    move-exception v5

    .line 152
    move-object v11, v6

    .line 153
    move-object v6, v4

    .line 154
    move-object v4, v11

    .line 155
    goto :goto_2

    .line 156
    :cond_1
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 159
    goto :goto_4

    .line 160
    :catch_4
    move-exception v4

    .line 161
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 164
    goto :goto_4

    .line 165
    :catchall_0
    move-exception v0

    .line 166
    move-object v4, v6

    .line 167
    goto/16 :goto_5

    .line 169
    :catch_5
    move-exception v4

    .line 170
    move-object v11, v5

    .line 171
    move-object v5, v4

    .line 172
    move-object v4, v6

    .line 173
    move-object v6, v11

    .line 174
    goto :goto_2

    .line 175
    :catchall_1
    move-exception v0

    .line 176
    goto :goto_5

    .line 177
    :catch_6
    move-exception v6

    .line 178
    move-object v11, v6

    .line 179
    move-object v6, v5

    .line 180
    move-object v5, v11

    .line 181
    :goto_2
    :try_start_7
    const-string v7, "occur an Exception !! e:"

    .line 183
    new-array v8, v2, [Ljava/lang/Object;

    .line 185
    aput-object v5, v8, v3

    .line 187
    invoke-static {v1, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 190
    if-eqz v4, :cond_2

    .line 192
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 195
    goto :goto_3

    .line 196
    :catch_7
    move-exception v4

    .line 197
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    :cond_2
    :goto_3
    move-object v5, v6

    .line 201
    :goto_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 204
    move-result v4

    .line 205
    if-nez v4, :cond_3

    .line 207
    return-object v5

    .line 208
    :cond_3
    :try_start_9
    iget-object v4, p0, Lzj;->a:Landroid/content/Context;

    .line 210
    const-string v6, "auto_diu_sp"

    .line 212
    invoke-virtual {v4, v6, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 215
    move-result-object v4

    .line 216
    const-string v6, ""

    .line 218
    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 221
    move-result-object v5

    .line 222
    const-string v0, "getDiuFromStore SharedPreferences localDiu = {?}"

    .line 224
    new-array v4, v2, [Ljava/lang/Object;

    .line 226
    aput-object v5, v4, v3

    .line 228
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_4

    .line 237
    invoke-static {v5}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {p0, v0}, Lzj;->o(Ljava/lang/String;)V

    .line 244
    const-string v0, "getDiuFromStore SharedPreferences localDiu={?}"

    .line 246
    new-array v4, v2, [Ljava/lang/Object;

    .line 248
    aput-object v5, v4, v3

    .line 250
    invoke-static {v1, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 253
    return-object v5

    .line 254
    :catch_8
    move-exception v0

    .line 255
    new-array v2, v2, [Ljava/lang/Object;

    .line 257
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 260
    move-result-object v0

    .line 261
    aput-object v0, v2, v3

    .line 263
    const-string v0, "getDiuFromStore getsp Exception !! e:"

    .line 265
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_4
    return-object v5

    .line 269
    :goto_5
    if-eqz v4, :cond_5

    .line 271
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 274
    goto :goto_6

    .line 275
    :catch_9
    move-exception v1

    .line 276
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 279
    :cond_5
    :goto_6
    throw v0
.end method

.method public final m()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lzj;->l()Ljava/lang/String;

    .line 4
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 5
    :try_start_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0}, Lzj;->k()Ljava/lang/String;

    .line 15
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    goto :goto_1

    .line 17
    :catch_0
    move-exception v1

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception v1

    .line 20
    const/4 v0, 0x0

    .line 21
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :goto_1
    return-object v0
.end method

.method public n()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lzj;->g()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lzj;->f:Ljava/lang/String;

    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v0, v1, v2

    .line 13
    const-string v0, "DiuGenerator"

    .line 15
    const-string v2, "reGenerateDiu diu={?}"

    .line 17
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    return-void
.end method

.method public final o(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lzj;->r(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lzj;->p(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lzj;->q(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lzj;->d()V

    .line 13
    return-void
.end method

.method public final p(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DiuGenerator"

    .line 6
    const-string v2, "saveDiuToSdCard"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lzj$a;

    .line 13
    invoke-direct {v0, p0, p1}, Lzj$a;-><init>(Lzj;Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public final q(Ljava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "DiuGenerator"

    .line 6
    const-string v2, "saveDiuToSp"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lzj$c;

    .line 13
    invoke-direct {v0, p0, p1}, Lzj$c;-><init>(Lzj;Ljava/lang/String;)V

    .line 16
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 19
    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "new_auto_device_diu"

    .line 15
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    const/4 v0, 0x1

    .line 21
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    aput-object p1, v0, v1

    .line 30
    const-string p1, "DiuGenerator"

    .line 32
    const-string v1, "saveDiuToSystemSetting : Exception = {?}="

    .line 34
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    :goto_0
    return-void
.end method

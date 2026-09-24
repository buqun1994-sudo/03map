.class public Lyj;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


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
    const-string v1, "/.AutoDiu"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lyj;->d:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    const-string v2, "/auto_diu4.txt"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lyj;->e:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "/new_auto_diu4.txt"

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    sput-object v0, Lyj;->f:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lyj;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lyj;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lzj;->h()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget-object v2, p0, Lyj;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v2, p0, Lyj;->c:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    invoke-static {v0}, Lnz;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    const/4 v2, 0x5

    .line 32
    new-array v2, v2, [Ljava/lang/Object;

    .line 34
    const/4 v3, 0x0

    .line 35
    aput-object p1, v2, v3

    .line 37
    const/4 v4, 0x1

    .line 38
    aput-object v0, v2, v4

    .line 40
    const/4 v5, 0x2

    .line 41
    aput-object v1, v2, v5

    .line 43
    const/4 v5, 0x3

    .line 44
    iget-object v6, p0, Lyj;->b:Ljava/lang/String;

    .line 46
    aput-object v6, v2, v5

    .line 48
    const/4 v5, 0x4

    .line 49
    iget-object v6, p0, Lyj;->c:Ljava/lang/String;

    .line 51
    aput-object v6, v2, v5

    .line 53
    const-string v5, "Diu4Provider"

    .line 55
    const-string v6, "checkDiu4 currentDiu4={?},md5AutoDiu={?},androidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 57
    invoke-static {v5, v6, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_0

    .line 66
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_0

    .line 72
    new-array v0, v4, [Ljava/lang/Object;

    .line 74
    aput-object p1, v0, v3

    .line 76
    const-string v1, "checkDiu4 equals diu4 = {?}"

    .line 78
    invoke-static {v5, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-object p1

    .line 82
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result p1

    .line 86
    if-nez p1, :cond_1

    .line 88
    iget-object p1, p0, Lyj;->a:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result p1

    .line 94
    if-nez p1, :cond_1

    .line 96
    invoke-virtual {p0}, Lyj;->f()Ljava/lang/String;

    .line 99
    move-result-object p1

    .line 100
    new-array v0, v4, [Ljava/lang/Object;

    .line 102
    aput-object p1, v0, v3

    .line 104
    const-string v1, "checkDiu4 campare1 = {?}"

    .line 106
    invoke-static {v5, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-object p1

    .line 110
    :cond_1
    new-array p1, v4, [Ljava/lang/Object;

    .line 112
    aput-object v0, p1, v3

    .line 114
    const-string v1, "checkDiu4 campare2 = {?}"

    .line 116
    invoke-static {v5, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-object v0
.end method

.method public final d()V
    .locals 3

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, "auto_device_diu4"

    .line 17
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v1

    .line 32
    const-string v2, "auto_device_androidid"

    .line 34
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 37
    invoke-static {}, Lrv;->H()Lrv;

    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 48
    move-result-object v1

    .line 49
    const-string v2, "auto_device_build_display"

    .line 51
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    invoke-static {}, Lrv;->H()Lrv;

    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    move-result-object v1

    .line 66
    const-string v2, "auto_device_build_id"

    .line 68
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    invoke-virtual {p0}, Lyj;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    const/4 v1, 0x1

    .line 77
    new-array v1, v1, [Ljava/lang/Object;

    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 84
    aput-object v0, v1, v2

    .line 86
    const-string v0, "Diu4Provider"

    .line 88
    const-string v2, "clear old DiuToSystemSetting : Exception = {?}="

    .line 90
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    new-instance v0, Lyj$c;

    .line 3
    invoke-direct {v0, p0}, Lyj$c;-><init>(Lyj;)V

    .line 6
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lyj;->k()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v1, v1, [Ljava/lang/Object;

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v0, v1, v2

    .line 11
    const-string v2, "Diu4Provider"

    .line 13
    const-string v3, "generateNewDiu4() = {?}"

    .line 15
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p0, v0}, Lyj;->l(Ljava/lang/String;)V

    .line 21
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Diu4Provider"

    .line 6
    const-string v3, "get() start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, ""

    .line 13
    const/4 v3, 0x1

    .line 14
    :try_start_0
    invoke-virtual {p0}, Lyj;->j()Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v5

    .line 22
    if-nez v5, :cond_0

    .line 24
    invoke-virtual {p0, v4}, Lyj;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lyj;->k()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lyj;->l(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v4

    .line 38
    new-array v5, v3, [Ljava/lang/Object;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 43
    move-result-object v4

    .line 44
    aput-object v4, v5, v0

    .line 46
    const-string v4, "get error = {?}"

    .line 48
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    :goto_0
    new-array v3, v3, [Ljava/lang/Object;

    .line 53
    aput-object v1, v3, v0

    .line 55
    const-string v0, "get() = {?}"

    .line 57
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return-object v1
.end method

.method public final h()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "new_auto_device_build_id"

    .line 5
    const-string v3, "new_auto_device_build_display"

    .line 7
    const-string v4, "new_auto_device_androidid"

    .line 9
    const-string v5, "new_auto_device_diu4"

    .line 11
    const-string v6, ""

    .line 13
    const-string v7, "Diu4Provider"

    .line 15
    const/4 v8, 0x4

    .line 16
    const/4 v11, 0x1

    .line 17
    const/4 v12, 0x0

    .line 18
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 34
    :try_start_1
    const-string v0, "getDiu4FromNewStore Settings.System diu4 = {?}"

    .line 36
    new-array v15, v11, [Ljava/lang/Object;

    .line 38
    aput-object v14, v15, v12

    .line 40
    invoke-static {v7, v0, v15}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_0

    .line 49
    invoke-static {}, Lrv;->H()Lrv;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {}, Lrv;->H()Lrv;

    .line 68
    move-result-object v15

    .line 69
    invoke-virtual {v15}, Lrv;->z()Landroid/content/Context;

    .line 72
    move-result-object v15

    .line 73
    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 76
    move-result-object v15

    .line 77
    invoke-static {v15, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v15

    .line 81
    invoke-static {}, Lrv;->H()Lrv;

    .line 84
    move-result-object v16

    .line 85
    invoke-virtual/range {v16 .. v16}, Lrv;->z()Landroid/content/Context;

    .line 88
    move-result-object v16

    .line 89
    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 92
    move-result-object v13

    .line 93
    invoke-static {v13, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    move-result-object v13

    .line 97
    const-string v10, "getDiu4FromNewStore Settings before decryptAES diu4 = {?}"

    .line 99
    new-array v9, v11, [Ljava/lang/Object;

    .line 101
    aput-object v14, v9, v12

    .line 103
    invoke-static {v7, v10, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {v14}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    :try_start_2
    invoke-static {v0}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    iput-object v0, v1, Lyj;->a:Ljava/lang/String;

    .line 116
    invoke-static {v15}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    move-result-object v0

    .line 120
    iput-object v0, v1, Lyj;->b:Ljava/lang/String;

    .line 122
    invoke-static {v13}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 126
    iput-object v0, v1, Lyj;->c:Ljava/lang/String;

    .line 128
    const-string v10, "getDiu4FromNewStore System diu4={?} mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 130
    new-array v13, v8, [Ljava/lang/Object;

    .line 132
    aput-object v9, v13, v12

    .line 134
    iget-object v14, v1, Lyj;->a:Ljava/lang/String;

    .line 136
    aput-object v14, v13, v11

    .line 138
    iget-object v14, v1, Lyj;->b:Ljava/lang/String;

    .line 140
    const/4 v15, 0x2

    .line 141
    aput-object v14, v13, v15

    .line 143
    const/4 v14, 0x3

    .line 144
    aput-object v0, v13, v14

    .line 146
    invoke-static {v7, v10, v13}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 149
    return-object v9

    .line 150
    :catch_0
    move-exception v0

    .line 151
    move-object v14, v9

    .line 152
    goto :goto_0

    .line 153
    :catch_1
    move-exception v0

    .line 154
    goto :goto_0

    .line 155
    :catch_2
    move-exception v0

    .line 156
    const/4 v14, 0x0

    .line 157
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    :cond_0
    :try_start_3
    new-instance v9, Ljava/io/FileInputStream;

    .line 162
    sget-object v0, Lyj;->f:Ljava/lang/String;

    .line 164
    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 167
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->available()I

    .line 170
    move-result v10

    .line 171
    new-array v13, v10, [B

    .line 173
    invoke-virtual {v9, v13}, Ljava/io/FileInputStream;->read([B)I

    .line 176
    move-result v15

    .line 177
    const-string v8, "getDiu4FromNewStore available length = {?}, read length = {?}, path={?}"

    .line 179
    const/4 v11, 0x3

    .line 180
    new-array v12, v11, [Ljava/lang/Object;

    .line 182
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v10

    .line 186
    const/4 v11, 0x0

    .line 187
    aput-object v10, v12, v11

    .line 189
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v10

    .line 193
    const/4 v11, 0x1

    .line 194
    aput-object v10, v12, v11

    .line 196
    const/4 v10, 0x2

    .line 197
    aput-object v0, v12, v10

    .line 199
    invoke-static {v7, v8, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    const-string v0, "UTF-8"

    .line 204
    invoke-static {v13, v0}, Lxk;->b([BLjava/lang/String;)Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    const-string v8, ","

    .line 210
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 213
    move-result-object v0

    .line 214
    const/4 v8, 0x0

    .line 215
    aget-object v10, v0, v8

    .line 217
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 220
    move-result v10

    .line 221
    if-nez v10, :cond_1

    .line 223
    aget-object v10, v0, v8

    .line 225
    const/4 v8, 0x1

    .line 226
    aget-object v11, v0, v8

    .line 228
    const/4 v8, 0x2

    .line 229
    aget-object v12, v0, v8

    .line 231
    const/4 v8, 0x3

    .line 232
    aget-object v0, v0, v8

    .line 234
    invoke-virtual {v1, v10, v11, v12, v0}, Lyj;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v10}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    move-result-object v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 241
    :try_start_5
    invoke-static {v11}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 244
    move-result-object v10

    .line 245
    iput-object v10, v1, Lyj;->a:Ljava/lang/String;

    .line 247
    invoke-static {v12}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 250
    move-result-object v10

    .line 251
    iput-object v10, v1, Lyj;->b:Ljava/lang/String;

    .line 253
    invoke-static {v0}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 256
    move-result-object v0

    .line 257
    iput-object v0, v1, Lyj;->c:Ljava/lang/String;

    .line 259
    const-string v10, "getDiu4FromNewStore FileInputStream diu4={?},mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 261
    const/4 v11, 0x4

    .line 262
    new-array v12, v11, [Ljava/lang/Object;

    .line 264
    const/4 v11, 0x0

    .line 265
    aput-object v8, v12, v11

    .line 267
    iget-object v11, v1, Lyj;->a:Ljava/lang/String;

    .line 269
    const/4 v13, 0x1

    .line 270
    aput-object v11, v12, v13

    .line 272
    iget-object v11, v1, Lyj;->b:Ljava/lang/String;

    .line 274
    const/4 v13, 0x2

    .line 275
    aput-object v11, v12, v13

    .line 277
    const/4 v11, 0x3

    .line 278
    aput-object v0, v12, v11

    .line 280
    invoke-static {v7, v10, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 283
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 286
    goto :goto_1

    .line 287
    :catch_3
    move-exception v0

    .line 288
    move-object v2, v0

    .line 289
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    :goto_1
    return-object v8

    .line 293
    :catch_4
    move-exception v0

    .line 294
    move-object v14, v8

    .line 295
    goto :goto_2

    .line 296
    :cond_1
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 299
    goto :goto_4

    .line 300
    :catch_5
    move-exception v0

    .line 301
    move-object v8, v0

    .line 302
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 305
    goto :goto_4

    .line 306
    :catchall_0
    move-exception v0

    .line 307
    move-object v2, v0

    .line 308
    move-object v13, v9

    .line 309
    goto/16 :goto_6

    .line 311
    :catch_6
    move-exception v0

    .line 312
    :goto_2
    move-object v13, v9

    .line 313
    goto :goto_3

    .line 314
    :catchall_1
    move-exception v0

    .line 315
    move-object v2, v0

    .line 316
    const/4 v13, 0x0

    .line 317
    goto/16 :goto_6

    .line 319
    :catch_7
    move-exception v0

    .line 320
    const/4 v13, 0x0

    .line 321
    :goto_3
    :try_start_8
    const-string v8, "occur an Exception !! e:"

    .line 323
    const/4 v9, 0x1

    .line 324
    new-array v10, v9, [Ljava/lang/Object;

    .line 326
    const/4 v9, 0x0

    .line 327
    aput-object v0, v10, v9

    .line 329
    invoke-static {v7, v8, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 332
    if-eqz v13, :cond_2

    .line 334
    :try_start_9
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 337
    :cond_2
    :goto_4
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 340
    move-result v0

    .line 341
    if-nez v0, :cond_3

    .line 343
    return-object v14

    .line 344
    :cond_3
    :try_start_a
    invoke-static {}, Lrv;->H()Lrv;

    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 351
    move-result-object v0

    .line 352
    const-string v8, "auto_diu4_sp"

    .line 354
    const/4 v9, 0x0

    .line 355
    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 358
    move-result-object v0

    .line 359
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 362
    move-result-object v5

    .line 363
    const-string v8, "getDiu4FromNewStore SharedPreferences diu4 = {?}"

    .line 365
    const/4 v9, 0x1

    .line 366
    new-array v10, v9, [Ljava/lang/Object;

    .line 368
    const/4 v9, 0x0

    .line 369
    aput-object v5, v10, v9

    .line 371
    invoke-static {v7, v8, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 377
    move-result v8

    .line 378
    if-nez v8, :cond_4

    .line 380
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    move-result-object v4

    .line 384
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 387
    move-result-object v3

    .line 388
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    move-result-object v0

    .line 392
    invoke-virtual {v1, v5, v4, v3, v0}, Lyj;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1, v5, v4, v3, v0}, Lyj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-static {v5}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 401
    move-result-object v14

    .line 402
    invoke-static {v4}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    move-result-object v2

    .line 406
    iput-object v2, v1, Lyj;->a:Ljava/lang/String;

    .line 408
    invoke-static {v3}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 411
    move-result-object v2

    .line 412
    iput-object v2, v1, Lyj;->b:Ljava/lang/String;

    .line 414
    invoke-static {v0}, Lb2;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 417
    move-result-object v0

    .line 418
    iput-object v0, v1, Lyj;->c:Ljava/lang/String;

    .line 420
    const-string v2, "getDiu4FromNewStore SharedPreferences diu4={?},mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 422
    const/4 v3, 0x4

    .line 423
    new-array v3, v3, [Ljava/lang/Object;

    .line 425
    const/4 v4, 0x0

    .line 426
    aput-object v14, v3, v4

    .line 428
    iget-object v4, v1, Lyj;->a:Ljava/lang/String;

    .line 430
    const/4 v5, 0x1

    .line 431
    aput-object v4, v3, v5

    .line 433
    iget-object v4, v1, Lyj;->b:Ljava/lang/String;

    .line 435
    const/4 v5, 0x2

    .line 436
    aput-object v4, v3, v5

    .line 438
    const/4 v4, 0x3

    .line 439
    aput-object v0, v3, v4

    .line 441
    invoke-static {v7, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    .line 444
    goto :goto_5

    .line 445
    :catch_8
    move-exception v0

    .line 446
    const/4 v2, 0x1

    .line 447
    new-array v2, v2, [Ljava/lang/Object;

    .line 449
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 452
    move-result-object v0

    .line 453
    const/4 v3, 0x0

    .line 454
    aput-object v0, v2, v3

    .line 456
    const-string v0, "getDiu4FromNewStore  Exception !! e:"

    .line 458
    invoke-static {v7, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    :cond_4
    :goto_5
    return-object v14

    .line 462
    :catchall_2
    move-exception v0

    .line 463
    move-object v2, v0

    .line 464
    :goto_6
    if-eqz v13, :cond_5

    .line 466
    :try_start_b
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 469
    goto :goto_7

    .line 470
    :catch_9
    move-exception v0

    .line 471
    move-object v3, v0

    .line 472
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 475
    :cond_5
    :goto_7
    throw v2
.end method

.method public final i()Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "auto_device_build_id"

    .line 5
    const-string v3, "auto_device_build_display"

    .line 7
    const-string v4, "auto_device_androidid"

    .line 9
    const-string v5, "auto_device_diu4"

    .line 11
    const-string v6, ""

    .line 13
    const-string v7, "Diu4Provider"

    .line 15
    const/4 v8, 0x2

    .line 16
    const/4 v9, 0x3

    .line 17
    const/4 v10, 0x1

    .line 18
    const/4 v11, 0x0

    .line 19
    const/4 v12, 0x0

    .line 20
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 36
    :try_start_1
    const-string v0, "getDiu4FromOldStore Settings.System diu4 = {?}"

    .line 38
    new-array v14, v10, [Ljava/lang/Object;

    .line 40
    aput-object v13, v14, v11

    .line 42
    invoke-static {v7, v0, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lrv;->H()Lrv;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    iput-object v0, v1, Lyj;->a:Ljava/lang/String;

    .line 69
    invoke-static {}, Lrv;->H()Lrv;

    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    iput-object v0, v1, Lyj;->b:Ljava/lang/String;

    .line 87
    invoke-static {}, Lrv;->H()Lrv;

    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 98
    move-result-object v0

    .line 99
    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    iput-object v0, v1, Lyj;->c:Ljava/lang/String;

    .line 105
    invoke-virtual {v1, v13}, Lyj;->l(Ljava/lang/String;)V

    .line 108
    const-string v0, "getDiu4FromOldStore System mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 110
    new-array v14, v9, [Ljava/lang/Object;

    .line 112
    iget-object v15, v1, Lyj;->a:Ljava/lang/String;

    .line 114
    aput-object v15, v14, v11

    .line 116
    iget-object v15, v1, Lyj;->b:Ljava/lang/String;

    .line 118
    aput-object v15, v14, v10

    .line 120
    iget-object v15, v1, Lyj;->c:Ljava/lang/String;

    .line 122
    aput-object v15, v14, v8

    .line 124
    invoke-static {v7, v0, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    return-object v13

    .line 128
    :catch_0
    move-exception v0

    .line 129
    goto :goto_0

    .line 130
    :catch_1
    move-exception v0

    .line 131
    move-object v13, v12

    .line 132
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    :cond_0
    :try_start_2
    new-instance v15, Ljava/io/FileInputStream;

    .line 137
    sget-object v0, Lyj;->e:Ljava/lang/String;

    .line 139
    invoke-direct {v15, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 142
    :try_start_3
    invoke-virtual {v15}, Ljava/io/FileInputStream;->available()I

    .line 145
    move-result v12

    .line 146
    new-array v14, v12, [B

    .line 148
    invoke-virtual {v15, v14}, Ljava/io/FileInputStream;->read([B)I

    .line 151
    move-result v16

    .line 152
    const-string v8, "getDiu4FromOldStore available length = {?}, read length = {?}, path={?}"

    .line 154
    new-array v10, v9, [Ljava/lang/Object;

    .line 156
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v12

    .line 160
    aput-object v12, v10, v11

    .line 162
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v12

    .line 166
    const/16 v16, 0x1

    .line 168
    aput-object v12, v10, v16

    .line 170
    const/4 v12, 0x2

    .line 171
    aput-object v0, v10, v12

    .line 173
    invoke-static {v7, v8, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const-string v0, "UTF-8"

    .line 178
    invoke-static {v14, v0}, Lxk;->b([BLjava/lang/String;)Ljava/lang/String;

    .line 181
    move-result-object v0

    .line 182
    const-string v8, ","

    .line 184
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 188
    aget-object v8, v0, v11

    .line 190
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 193
    move-result v8

    .line 194
    if-nez v8, :cond_1

    .line 196
    aget-object v8, v0, v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    const/4 v10, 0x1

    .line 199
    :try_start_4
    aget-object v12, v0, v10

    .line 201
    iput-object v12, v1, Lyj;->a:Ljava/lang/String;

    .line 203
    const/4 v10, 0x2

    .line 204
    aget-object v12, v0, v10

    .line 206
    iput-object v12, v1, Lyj;->b:Ljava/lang/String;

    .line 208
    aget-object v0, v0, v9

    .line 210
    iput-object v0, v1, Lyj;->c:Ljava/lang/String;

    .line 212
    invoke-virtual {v1, v8}, Lyj;->l(Ljava/lang/String;)V

    .line 215
    const-string v0, "getDiu4FromOldStore FileInputStream diu4={?},mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 217
    const/4 v10, 0x4

    .line 218
    new-array v12, v10, [Ljava/lang/Object;

    .line 220
    aput-object v8, v12, v11

    .line 222
    iget-object v10, v1, Lyj;->a:Ljava/lang/String;

    .line 224
    const/4 v13, 0x1

    .line 225
    aput-object v10, v12, v13

    .line 227
    iget-object v10, v1, Lyj;->b:Ljava/lang/String;

    .line 229
    const/4 v13, 0x2

    .line 230
    aput-object v10, v12, v13

    .line 232
    iget-object v10, v1, Lyj;->c:Ljava/lang/String;

    .line 234
    aput-object v10, v12, v9

    .line 236
    invoke-static {v7, v0, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 239
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 242
    goto :goto_1

    .line 243
    :catch_2
    move-exception v0

    .line 244
    move-object v2, v0

    .line 245
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 248
    :goto_1
    return-object v8

    .line 249
    :catch_3
    move-exception v0

    .line 250
    move-object v13, v8

    .line 251
    goto :goto_2

    .line 252
    :cond_1
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 255
    goto :goto_4

    .line 256
    :catch_4
    move-exception v0

    .line 257
    move-object v8, v0

    .line 258
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 261
    goto :goto_4

    .line 262
    :catchall_0
    move-exception v0

    .line 263
    move-object v2, v0

    .line 264
    move-object v12, v15

    .line 265
    goto/16 :goto_6

    .line 267
    :catch_5
    move-exception v0

    .line 268
    :goto_2
    move-object v12, v15

    .line 269
    goto :goto_3

    .line 270
    :catchall_1
    move-exception v0

    .line 271
    move-object v2, v0

    .line 272
    goto :goto_6

    .line 273
    :catch_6
    move-exception v0

    .line 274
    :goto_3
    :try_start_7
    const-string v8, "occur an Exception !! e:"

    .line 276
    const/4 v10, 0x1

    .line 277
    new-array v14, v10, [Ljava/lang/Object;

    .line 279
    aput-object v0, v14, v11

    .line 281
    invoke-static {v7, v8, v14}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 284
    if-eqz v12, :cond_2

    .line 286
    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 289
    :cond_2
    :goto_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 292
    move-result v0

    .line 293
    if-nez v0, :cond_3

    .line 295
    return-object v13

    .line 296
    :cond_3
    :try_start_9
    invoke-static {}, Lrv;->H()Lrv;

    .line 299
    move-result-object v0

    .line 300
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 303
    move-result-object v0

    .line 304
    const-string v8, "auto_diu4_sp"

    .line 306
    invoke-virtual {v0, v8, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 309
    move-result-object v0

    .line 310
    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 313
    move-result-object v13

    .line 314
    const-string v5, "getDiu4FromOldStore SharedPreferences diu4 = {?}"

    .line 316
    const/4 v8, 0x1

    .line 317
    new-array v10, v8, [Ljava/lang/Object;

    .line 319
    aput-object v13, v10, v11

    .line 321
    invoke-static {v7, v5, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 327
    move-result v5

    .line 328
    if-nez v5, :cond_4

    .line 330
    invoke-interface {v0, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 333
    move-result-object v4

    .line 334
    iput-object v4, v1, Lyj;->a:Ljava/lang/String;

    .line 336
    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 339
    move-result-object v3

    .line 340
    iput-object v3, v1, Lyj;->b:Ljava/lang/String;

    .line 342
    invoke-interface {v0, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 345
    move-result-object v0

    .line 346
    iput-object v0, v1, Lyj;->c:Ljava/lang/String;

    .line 348
    invoke-virtual {v1, v13}, Lyj;->l(Ljava/lang/String;)V

    .line 351
    const-string v0, "getDiu4FromOldStore SharedPreferences diu4={?},mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 353
    const/4 v2, 0x4

    .line 354
    new-array v2, v2, [Ljava/lang/Object;

    .line 356
    aput-object v13, v2, v11

    .line 358
    iget-object v3, v1, Lyj;->a:Ljava/lang/String;

    .line 360
    const/4 v4, 0x1

    .line 361
    aput-object v3, v2, v4

    .line 363
    iget-object v3, v1, Lyj;->b:Ljava/lang/String;

    .line 365
    const/4 v4, 0x2

    .line 366
    aput-object v3, v2, v4

    .line 368
    iget-object v3, v1, Lyj;->c:Ljava/lang/String;

    .line 370
    aput-object v3, v2, v9

    .line 372
    invoke-static {v7, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 375
    goto :goto_5

    .line 376
    :catch_7
    move-exception v0

    .line 377
    const/4 v2, 0x1

    .line 378
    new-array v2, v2, [Ljava/lang/Object;

    .line 380
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 383
    move-result-object v0

    .line 384
    aput-object v0, v2, v11

    .line 386
    const-string v0, "getDiu4FromSp  Exception !! e:"

    .line 388
    invoke-static {v7, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_4
    :goto_5
    return-object v13

    .line 392
    :goto_6
    if-eqz v12, :cond_5

    .line 394
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 397
    goto :goto_7

    .line 398
    :catch_8
    move-exception v0

    .line 399
    move-object v3, v0

    .line 400
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 403
    :cond_5
    :goto_7
    throw v2
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lyj;->i()Ljava/lang/String;

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
    invoke-virtual {p0}, Lyj;->h()Ljava/lang/String;

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

.method public final k()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-static {}, Lzj;->h()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Lyj;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lyj;->b:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lyj;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Lnz;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x4

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    const/4 v2, 0x0

    .line 41
    aput-object v0, v1, v2

    .line 43
    const/4 v2, 0x1

    .line 44
    iget-object v3, p0, Lyj;->a:Ljava/lang/String;

    .line 46
    aput-object v3, v1, v2

    .line 48
    const/4 v2, 0x2

    .line 49
    iget-object v3, p0, Lyj;->b:Ljava/lang/String;

    .line 51
    aput-object v3, v1, v2

    .line 53
    const/4 v2, 0x3

    .line 54
    iget-object v3, p0, Lyj;->c:Ljava/lang/String;

    .line 56
    aput-object v3, v1, v2

    .line 58
    const-string v2, "Diu4Provider"

    .line 60
    const-string v3, "obtainAutoDiu4 md5Diu={?},mAndroidId={?},mBuildsiaplay={?},mBuildid={?}"

    .line 62
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lyj;->a:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lyj;->b:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lyj;->c:Ljava/lang/String;

    .line 19
    invoke-static {v2}, Lb2;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {p0, p1, v0, v1, v2}, Lyj;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p1, v0, v1, v2}, Lyj;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p0, p1, v0, v1, v2}, Lyj;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lyj;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    aput-object p1, v0, v1

    .line 47
    const-string p1, "Diu4Provider"

    .line 49
    const-string v1, "saveAutoDiu4 Exception: {?}"

    .line 51
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    :goto_0
    return-void
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p1, v0, v1

    .line 7
    const/4 v1, 0x1

    .line 8
    sget-object v2, Lyj;->f:Ljava/lang/String;

    .line 10
    aput-object v2, v0, v1

    .line 12
    const-string v1, "Diu4Provider"

    .line 14
    const-string v2, "saveDiu4ToSdCard diu4={?}, path={?}"

    .line 16
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    new-instance v0, Lyj$a;

    .line 21
    move-object v3, v0

    .line 22
    move-object v4, p0

    .line 23
    move-object v5, p1

    .line 24
    move-object v6, p2

    .line 25
    move-object v7, p3

    .line 26
    move-object v8, p4

    .line 27
    invoke-direct/range {v3 .. v8}, Lyj$a;-><init>(Lyj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 33
    return-void
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "Diu4Provider"

    .line 6
    const-string v2, "saveDiu4ToSp"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Lyj$b;

    .line 13
    move-object v3, v0

    .line 14
    move-object v4, p0

    .line 15
    move-object v5, p2

    .line 16
    move-object v6, p3

    .line 17
    move-object v7, p4

    .line 18
    move-object v8, p1

    .line 19
    invoke-direct/range {v3 .. v8}, Lyj$b;-><init>(Lyj;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 25
    return-void
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Diu4Provider"

    .line 6
    const-string v3, "saveDiu4ToSystemSetting"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 22
    move-result-object v1

    .line 23
    const-string v3, "new_auto_device_androidid"

    .line 25
    invoke-static {v1, v3, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 28
    invoke-static {}, Lrv;->H()Lrv;

    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 39
    move-result-object p2

    .line 40
    const-string v1, "new_auto_device_build_display"

    .line 42
    invoke-static {p2, v1, p3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 45
    invoke-static {}, Lrv;->H()Lrv;

    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 56
    move-result-object p2

    .line 57
    const-string p3, "new_auto_device_build_id"

    .line 59
    invoke-static {p2, p3, p4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 62
    invoke-static {}, Lrv;->H()Lrv;

    .line 65
    move-result-object p2

    .line 66
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 73
    move-result-object p2

    .line 74
    const-string p3, "new_auto_device_diu4"

    .line 76
    invoke-static {p2, p3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p1

    .line 81
    const/4 p2, 0x1

    .line 82
    new-array p2, p2, [Ljava/lang/Object;

    .line 84
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    aput-object p1, p2, v0

    .line 90
    const-string p1, "saveDiu4ToSystemSetting : Exception = {?}="

    .line 92
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void
.end method

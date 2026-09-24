.class public abstract Lu50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 3
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lu50;->a:[Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static varargs a(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 12

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 12
    move-result v0

    .line 13
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 16
    move-result v1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eq v0, v1, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-static {}, Lse;->c()Lse;

    .line 26
    move-result-object v1

    .line 27
    const v4, 0xea61

    .line 30
    invoke-virtual {v1, v4}, Lse;->getOptionalValue(I)Leq$a;

    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Leq$a;->b()Z

    .line 37
    move-result v1

    .line 38
    if-nez v1, :cond_2

    .line 40
    const/4 v0, 0x0

    .line 41
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    const-string v4, "checkPermissions isFromOtherPid "

    .line 48
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    const-string v4, " getCallingPid "

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    .line 62
    move-result v4

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v4, " myPid "

    .line 68
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 74
    move-result v4

    .line 75
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object v1

    .line 82
    new-array v4, v3, [Ljava/lang/Object;

    .line 84
    const-string v5, "PermissionUtils"

    .line 86
    invoke-static {v5, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    if-eqz v0, :cond_3

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 94
    move-result-wide v6

    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const-wide/16 v6, 0x0

    .line 98
    :goto_1
    array-length v1, p1

    .line 99
    const/4 v4, 0x0

    .line 100
    :goto_2
    if-ge v4, v1, :cond_11

    .line 102
    aget-object v8, p1, v4

    .line 104
    invoke-static {}, Lrv;->H()Lrv;

    .line 107
    move-result-object v9

    .line 108
    invoke-virtual {v9}, Lrv;->Q()Z

    .line 111
    move-result v9

    .line 112
    if-eqz v9, :cond_5

    .line 114
    const-string v9, "android.car.permission.CAR_ENERGY"

    .line 116
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v9

    .line 120
    if-eqz v9, :cond_5

    .line 122
    const-string p0, "checkPermissions:android.car.permission.CAR_ENERGY"

    .line 124
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz v0, :cond_4

    .line 129
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 132
    :cond_4
    return v2

    .line 133
    :cond_5
    invoke-static {}, Lr50;->b()Z

    .line 136
    move-result v9

    .line 137
    if-eqz v9, :cond_8

    .line 139
    const-string v9, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 141
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    move-result v9

    .line 145
    if-nez v9, :cond_6

    .line 147
    const-string v9, "android.permission.READ_PHONE_STATE"

    .line 149
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    move-result v9

    .line 153
    if-eqz v9, :cond_8

    .line 155
    :cond_6
    const-string p0, "checkPermissions:disableStoragePhoneStatePermisions"

    .line 157
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz v0, :cond_7

    .line 162
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    :cond_7
    return v2

    .line 166
    :cond_8
    invoke-static {v8}, Lh5;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object v9

    .line 170
    const/4 v10, 0x2

    .line 171
    new-array v10, v10, [Ljava/lang/Object;

    .line 173
    aput-object v8, v10, v3

    .line 175
    aput-object v9, v10, v2

    .line 177
    const-string v11, "permission:{?} && op:{?}"

    .line 179
    invoke-static {v5, v11, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    new-instance v10, Ljava/lang/StringBuilder;

    .line 184
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    const-string v11, "checkPermissions, permission:"

    .line 189
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v11, ",op:"

    .line 197
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    move-result-object v10

    .line 207
    invoke-static {v5, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    move-result v10

    .line 214
    if-eqz v10, :cond_9

    .line 216
    goto/16 :goto_3

    .line 218
    :cond_9
    invoke-static {}, Lrv;->H()Lrv;

    .line 221
    move-result-object v10

    .line 222
    invoke-virtual {v10}, Lrv;->z()Landroid/content/Context;

    .line 225
    move-result-object v10

    .line 226
    invoke-static {v10, v8}, Ltg;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 229
    move-result v10

    .line 230
    if-eqz v10, :cond_b

    .line 232
    new-instance p0, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    const-string p1, "checkPermissions, checkSelfPermission1,result:"

    .line 239
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 248
    move-result-object p0

    .line 249
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    if-eqz v0, :cond_a

    .line 254
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 257
    :cond_a
    return v3

    .line 258
    :cond_b
    if-eqz p0, :cond_d

    .line 260
    invoke-static {p0, v8}, Lvg0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 263
    move-result v8

    .line 264
    const/4 v11, -0x1

    .line 265
    if-ne v8, v11, :cond_d

    .line 267
    new-instance p0, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    const-string p1, "checkPermissions, checkSelfPermission2,result:"

    .line 274
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    move-result-object p0

    .line 284
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    if-eqz v0, :cond_c

    .line 289
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 292
    :cond_c
    return v3

    .line 293
    :cond_d
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 296
    move-result-object v8

    .line 297
    invoke-virtual {v8}, Lrv;->z()Landroid/content/Context;

    .line 300
    move-result-object v8

    .line 301
    invoke-static {}, Lrv;->H()Lrv;

    .line 304
    move-result-object v10

    .line 305
    invoke-virtual {v10}, Lrv;->L()Ljava/lang/String;

    .line 308
    move-result-object v10

    .line 309
    invoke-static {v8, v9, v10}, Lh5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    new-instance v9, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    const-string v10, "checkPermissions, noteProxyOp,result:"

    .line 320
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v9

    .line 330
    invoke-static {v5, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    if-eqz v8, :cond_f

    .line 335
    if-eq v8, v2, :cond_f

    .line 337
    if-eqz v0, :cond_e

    .line 339
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 342
    :cond_e
    return v3

    .line 343
    :cond_f
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 345
    goto/16 :goto_2

    .line 347
    :catch_0
    move-exception p0

    .line 348
    const-string p1, "checkPermissions, noteProxyOp exception~"

    .line 350
    new-array v1, v3, [Ljava/lang/Object;

    .line 352
    invoke-static {v5, p1, p0, v1}, Lcz;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 355
    if-eqz v0, :cond_10

    .line 357
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 360
    :cond_10
    return v3

    .line 361
    :cond_11
    if-eqz v0, :cond_12

    .line 363
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 366
    :cond_12
    return v2
.end method

.method public static b(Landroid/app/Activity;)Z
    .locals 3

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
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 11
    const/16 v2, 0x17

    .line 13
    if-lt v0, v2, :cond_2

    .line 15
    const/4 v0, 0x0

    .line 16
    :try_start_0
    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 18
    invoke-static {p0, v2}, Lt50;->a(Landroid/app/Activity;Ljava/lang/String;)I

    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 24
    sget-object v2, Lu50;->a:[Ljava/lang/String;

    .line 26
    invoke-static {p0, v2, v1}, Li1;->a(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v0

    .line 30
    :cond_1
    return v1

    .line 31
    :catch_0
    move-exception p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    return v0

    .line 36
    :cond_2
    return v1
.end method

.method public static c()Z
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    const/4 v2, 0x1

    .line 6
    if-ge v0, v1, :cond_0

    .line 8
    return v2

    .line 9
    :cond_0
    sget-object v0, Lu50;->a:[Ljava/lang/String;

    .line 11
    array-length v1, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 14
    :goto_0
    if-ge v4, v1, :cond_5

    .line 16
    aget-object v5, v0, v4

    .line 18
    invoke-static {v5}, Lh5;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v6

    .line 22
    new-instance v7, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v8, "permission:{?}"

    .line 29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v8, " && op:{?}"

    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object v7

    .line 47
    const-string v8, "PermissionUtils"

    .line 49
    invoke-static {v8, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_1

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 62
    move-result-object v7

    .line 63
    invoke-virtual {v7}, Lrv;->z()Landroid/content/Context;

    .line 66
    move-result-object v7

    .line 67
    invoke-static {v7, v5}, Ltg;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_2

    .line 73
    return v3

    .line 74
    :cond_2
    invoke-static {}, Lrv;->H()Lrv;

    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Lrv;->z()Landroid/content/Context;

    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7, v5}, Lvg0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 85
    move-result v5

    .line 86
    const/4 v7, -0x1

    .line 87
    if-ne v5, v7, :cond_3

    .line 89
    return v3

    .line 90
    :cond_3
    invoke-static {}, Lrv;->H()Lrv;

    .line 93
    move-result-object v5

    .line 94
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 97
    move-result-object v5

    .line 98
    invoke-static {}, Lrv;->H()Lrv;

    .line 101
    move-result-object v7

    .line 102
    invoke-virtual {v7}, Lrv;->L()Ljava/lang/String;

    .line 105
    move-result-object v7

    .line 106
    invoke-static {v5, v6, v7}, Lh5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    move-result v5

    .line 110
    if-eqz v5, :cond_4

    .line 112
    if-eq v5, v2, :cond_4

    .line 114
    return v3

    .line 115
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 117
    goto :goto_0

    .line 118
    :cond_5
    return v2
.end method

.method public static d(Landroid/content/Context;)Ljava/util/Map;
    .locals 10

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    if-lt v0, v1, :cond_c

    .line 7
    const-string v1, "lackOfPermissions"

    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    const-string v4, "PermissionUtils"

    .line 14
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 19
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 22
    const-string v3, "\u5b9a\u4f4d"

    .line 24
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    .line 26
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {}, Lr50;->b()Z

    .line 32
    move-result v3

    .line 33
    const-string v5, "android.permission.READ_PHONE_STATE"

    .line 35
    if-nez v3, :cond_0

    .line 37
    const-string v3, "\u7535\u8bdd"

    .line 39
    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const-string v3, "\u5b58\u50a8"

    .line 44
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 46
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :cond_0
    const-string v3, "\u9ea6\u514b\u98ce"

    .line 51
    const-string v6, "android.permission.RECORD_AUDIO"

    .line 53
    invoke-interface {v1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const/16 v3, 0x21

    .line 58
    if-lt v0, v3, :cond_1

    .line 60
    const-string v3, "\u901a\u77e5"

    .line 62
    const-string v7, "android.permission.POST_NOTIFICATIONS"

    .line 64
    invoke-interface {v1, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_1
    invoke-static {}, Lzm;->d()Lzm;

    .line 70
    move-result-object v3

    .line 71
    sget-object v7, Lzm;->g:Ljava/lang/String;

    .line 73
    invoke-virtual {v3, v7, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_2

    .line 79
    invoke-static {}, Lzm;->d()Lzm;

    .line 82
    move-result-object v3

    .line 83
    sget-object v7, Lzm;->i:Ljava/lang/String;

    .line 85
    invoke-virtual {v3, v7, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_3

    .line 91
    :cond_2
    invoke-static {}, Lib;->k()Z

    .line 94
    move-result v3

    .line 95
    if-nez v3, :cond_3

    .line 97
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v7, "android.permission"

    .line 104
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v7, ".CAMERA"

    .line 109
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    const-string v7, "\u6444\u50cf\u5934"

    .line 118
    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    :cond_3
    invoke-static {}, Lse;->c()Lse;

    .line 124
    move-result-object v3

    .line 125
    const/16 v7, 0x2721

    .line 127
    invoke-virtual {v3, v7}, Lse;->getBooleanValue(I)Z

    .line 130
    move-result v3

    .line 131
    const-string v7, "android.car.permission.CAR_SPEED"

    .line 133
    const-string v8, "\u8f66\u901f"

    .line 135
    if-eqz v3, :cond_4

    .line 137
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v3, "\u65b0\u80fd\u6e90"

    .line 142
    const-string v9, "android.car.permission.CAR_ENERGY"

    .line 144
    invoke-interface {v1, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_4
    invoke-static {}, Lse;->c()Lse;

    .line 150
    move-result-object v3

    .line 151
    const/16 v9, 0x273e

    .line 153
    invoke-virtual {v3, v9}, Lse;->getBooleanValue(I)Z

    .line 156
    move-result v3

    .line 157
    if-eqz v3, :cond_5

    .line 159
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_5
    invoke-static {}, Lse;->c()Lse;

    .line 165
    move-result-object v3

    .line 166
    const/16 v7, 0x274c

    .line 168
    invoke-virtual {v3, v7}, Lse;->getBooleanValue(I)Z

    .line 171
    move-result v3

    .line 172
    if-eqz v3, :cond_6

    .line 174
    const/16 v3, 0x1d

    .line 176
    if-lt v0, v3, :cond_6

    .line 178
    const-string v0, "\u540e\u53f0\u5b9a\u4f4d"

    .line 180
    const-string v3, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 182
    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :cond_6
    invoke-static {}, Lse;->c()Lse;

    .line 188
    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lse;->getSpecPermissions()Ljava/util/Map;

    .line 192
    move-result-object v0

    .line 193
    if-eqz v0, :cond_7

    .line 195
    const-string v3, "specPermissionsMap not null"

    .line 197
    new-array v7, v2, [Ljava/lang/Object;

    .line 199
    invoke-static {v4, v3, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 205
    move-result-object v0

    .line 206
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    move-result-object v0

    .line 210
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    move-result v3

    .line 214
    if-eqz v3, :cond_7

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    move-result-object v3

    .line 220
    check-cast v3, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 225
    move-result-object v7

    .line 226
    check-cast v7, Ljava/lang/String;

    .line 228
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Ljava/lang/String;

    .line 234
    const/4 v8, 0x2

    .line 235
    new-array v8, v8, [Ljava/lang/Object;

    .line 237
    aput-object v7, v8, v2

    .line 239
    const/4 v9, 0x1

    .line 240
    aput-object v3, v8, v9

    .line 242
    const-string v9, "permissionName = {?}; permission = {?}"

    .line 244
    invoke-static {v4, v9, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-instance v8, Ljava/lang/StringBuilder;

    .line 249
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    const-string v9, "lackOfPermissions permissionName = "

    .line 254
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v9, "; permission = {?}"

    .line 262
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object v8

    .line 272
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    invoke-interface {v1, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    goto :goto_0

    .line 279
    :cond_7
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 281
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 284
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 287
    move-result-object v1

    .line 288
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 291
    move-result-object v1

    .line 292
    :cond_8
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    move-result v3

    .line 296
    if-eqz v3, :cond_b

    .line 298
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    move-result-object v3

    .line 302
    check-cast v3, Ljava/util/Map$Entry;

    .line 304
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 307
    move-result-object v7

    .line 308
    check-cast v7, Ljava/lang/String;

    .line 310
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 313
    move-result-object v3

    .line 314
    check-cast v3, Ljava/lang/String;

    .line 316
    invoke-static {}, Lib;->i()Z

    .line 319
    move-result v8

    .line 320
    if-eqz v8, :cond_9

    .line 322
    invoke-static {}, Lse;->c()Lse;

    .line 325
    move-result-object v8

    .line 326
    const/16 v9, 0x2731

    .line 328
    invoke-virtual {v8, v9}, Lse;->getBooleanValue(I)Z

    .line 331
    move-result v8

    .line 332
    if-nez v8, :cond_9

    .line 334
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    move-result v8

    .line 338
    if-eqz v8, :cond_9

    .line 340
    goto :goto_1

    .line 341
    :cond_9
    invoke-static {}, Lse;->c()Lse;

    .line 344
    move-result-object v8

    .line 345
    const/16 v9, 0x2739

    .line 347
    invoke-virtual {v8, v9}, Lse;->getBooleanValue(I)Z

    .line 350
    move-result v8

    .line 351
    if-nez v8, :cond_a

    .line 353
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_a

    .line 359
    goto :goto_1

    .line 360
    :cond_a
    invoke-static {p0, v3}, Lvg0;->a(Landroid/content/Context;Ljava/lang/String;)I

    .line 363
    move-result v8

    .line 364
    const/4 v9, -0x1

    .line 365
    if-ne v8, v9, :cond_8

    .line 367
    new-instance v8, Ljava/lang/StringBuilder;

    .line 369
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    const-string v9, "permission denied lack "

    .line 374
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object v8

    .line 384
    new-array v9, v2, [Ljava/lang/Object;

    .line 386
    invoke-static {v4, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    new-instance v8, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 394
    const-string v9, "lackOfPermissions permission denied lack "

    .line 396
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v8

    .line 406
    invoke-static {v4, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    invoke-interface {v0, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    goto :goto_1

    .line 413
    :cond_b
    return-object v0

    .line 414
    :cond_c
    const/4 p0, 0x0

    .line 415
    return-object p0
.end method

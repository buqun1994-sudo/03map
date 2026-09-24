.class public Llm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile b:Llm;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Llm;->a:Z

    .line 7
    return-void
.end method

.method public static b()Llm;
    .locals 2

    .line 1
    sget-object v0, Llm;->b:Llm;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Llm;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Llm;->b:Llm;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Llm;

    .line 14
    invoke-direct {v1}, Llm;-><init>()V

    .line 17
    sput-object v1, Llm;->b:Llm;

    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Llm;->b:Llm;

    .line 26
    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "FloatPermissionManager"

    .line 6
    const-string v3, "\u8bf7\u6c42\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650\u5f00\u59cb"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    new-array v3, v1, [Ljava/lang/Object;

    .line 14
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v5

    .line 20
    aput-object v5, v3, v0

    .line 22
    const-string v5, "\u8bf7\u6c42\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u7cfb\u7edfSDK_INT\uff1a{?}"

    .line 24
    invoke-static {v2, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    const/16 v3, 0x17

    .line 29
    if-lt v4, v3, :cond_0

    .line 31
    :try_start_0
    const-class v3, Landroid/provider/Settings;

    .line 33
    const-string v4, "ACTION_MANAGE_OVERLAY_PERMISSION"

    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 38
    move-result-object v3

    .line 39
    new-instance v4, Landroid/content/Intent;

    .line 41
    const/4 v6, 0x0

    .line 42
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    move-result-object v3

    .line 50
    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    const/high16 v3, 0x10000000

    .line 55
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v6, "package:"

    .line 65
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v3

    .line 79
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    goto :goto_0

    .line 90
    :catch_0
    move-exception p1

    .line 91
    new-array v1, v1, [Ljava/lang/Object;

    .line 93
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 95
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v3

    .line 99
    aput-object v3, v1, v0

    .line 101
    invoke-static {v2, v5, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 104
    const-string v1, "\u8bf7\u6c42\u6743\u9650\u9875\u9762\u6253\u5f00\u5931\u8d25"

    .line 106
    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    invoke-static {v2, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 111
    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Ldb0;->d()Z

    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_1

    .line 118
    invoke-static {p1}, Lq10;->a(Landroid/content/Context;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    invoke-static {}, Ldb0;->c()Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_2

    .line 128
    invoke-static {p1}, Lq00;->a(Landroid/content/Context;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    invoke-static {}, Ldb0;->b()Z

    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_3

    .line 138
    invoke-static {p1}, Lxp;->a(Landroid/content/Context;)V

    .line 141
    goto :goto_0

    .line 142
    :cond_3
    invoke-static {}, Ldb0;->a()Z

    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_4

    .line 148
    invoke-static {p1}, Lh80;->a(Landroid/content/Context;)V

    .line 151
    :cond_4
    :goto_0
    return-void
.end method

.method public c(Landroid/content/Context;)Z
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "FloatPermissionManager"

    .line 6
    const-string v3, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650\u5f00\u59cb"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Ldb0;->c()Z

    .line 14
    move-result v1

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    const-string v1, "ro.build.display.id"

    .line 20
    invoke-static {v1}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    new-array v3, v3, [Ljava/lang/Object;

    .line 26
    aput-object v1, v3, v0

    .line 28
    const-string v0, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u4e3a\u9b45\u65cf\u7cfb\u7edf\uff1adisplay.id\uff1a{?}"

    .line 30
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0, p1}, Llm;->f(Landroid/content/Context;)Z

    .line 36
    move-result p1

    .line 37
    return p1

    .line 38
    :cond_0
    new-array v1, v3, [Ljava/lang/Object;

    .line 40
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 42
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v5

    .line 46
    aput-object v5, v1, v0

    .line 48
    const-string v5, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u5f53\u524d\u7cfb\u7edfAPI\u7248\u672c\u53f7\uff1aVERSION.SDK_INT\uff1a{?}"

    .line 50
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    const/16 v1, 0x17

    .line 55
    if-lt v4, v1, :cond_6

    .line 57
    const/16 v1, 0x1a

    .line 59
    if-lt v4, v1, :cond_5

    .line 61
    const-string v1, "appops"

    .line 63
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/app/AppOpsManager;

    .line 69
    if-nez v1, :cond_1

    .line 71
    return v0

    .line 72
    :cond_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 75
    move-result v4

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 80
    const-string v5, "android:system_alert_window"

    .line 82
    invoke-virtual {v1, v5, v4, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 85
    move-result p1

    .line 86
    invoke-static {}, Lse;->c()Lse;

    .line 89
    move-result-object v1

    .line 90
    const/16 v4, 0x754f

    .line 92
    invoke-virtual {v1, v4}, Lse;->getIntValue(I)I

    .line 95
    move-result v1

    .line 96
    const/4 v4, 0x2

    .line 97
    if-eqz v1, :cond_3

    .line 99
    if-gt p1, v1, :cond_2

    .line 101
    const/4 v5, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_2
    const/4 v5, 0x0

    .line 104
    :goto_0
    const/4 v6, 0x3

    .line 105
    new-array v6, v6, [Ljava/lang/Object;

    .line 107
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object v7

    .line 111
    aput-object v7, v6, v0

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    move-result-object v0

    .line 117
    aput-object v0, v6, v3

    .line 119
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object p1

    .line 123
    aput-object p1, v6, v4

    .line 125
    const-string p1, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u662f\u5426\u53ef\u4ee5\u6dfb\u52a0\u60ac\u6d6e\u7a97\uff1acanDrawOverlays\uff1a{?} acceptedMaxValue:{?},mode:{?}"

    .line 127
    invoke-static {v2, p1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return v5

    .line 131
    :cond_3
    if-nez p1, :cond_4

    .line 133
    const/4 v1, 0x1

    .line 134
    goto :goto_1

    .line 135
    :cond_4
    const/4 v1, 0x0

    .line 136
    :goto_1
    new-array v4, v4, [Ljava/lang/Object;

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 141
    move-result-object v5

    .line 142
    aput-object v5, v4, v0

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object p1

    .line 148
    aput-object p1, v4, v3

    .line 150
    const-string p1, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u662f\u5426\u53ef\u4ee5\u6dfb\u52a0\u60ac\u6d6e\u7a97\uff1acanDrawOverlays\uff1a{?} mode:{?}"

    .line 152
    invoke-static {v2, p1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    return v1

    .line 156
    :cond_5
    const-class v1, Landroid/provider/Settings;

    .line 158
    :try_start_0
    const-string v4, "canDrawOverlays"

    .line 160
    new-array v5, v3, [Ljava/lang/Class;

    .line 162
    const-class v6, Landroid/content/Context;

    .line 164
    aput-object v6, v5, v0

    .line 166
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 169
    move-result-object v1

    .line 170
    new-array v4, v3, [Ljava/lang/Object;

    .line 172
    aput-object p1, v4, v0

    .line 174
    const/4 p1, 0x0

    .line 175
    invoke-virtual {v1, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-result-object p1

    .line 179
    check-cast p1, Ljava/lang/Boolean;

    .line 181
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 184
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :try_start_1
    const-string v1, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u662f\u5426\u53ef\u4ee5\u6dfb\u52a0\u60ac\u6d6e\u7a97\uff1acanDrawOverlays\uff1a{?}"

    .line 187
    new-array v4, v3, [Ljava/lang/Object;

    .line 189
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 192
    move-result-object v5

    .line 193
    aput-object v5, v4, v0

    .line 195
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    goto/16 :goto_3

    .line 200
    :catch_0
    move-exception v1

    .line 201
    goto :goto_2

    .line 202
    :catch_1
    move-exception v1

    .line 203
    const/4 p1, 0x0

    .line 204
    :goto_2
    const-string v4, "getDeclaredMethod ocuur a error!!"

    .line 206
    new-array v5, v0, [Ljava/lang/Object;

    .line 208
    invoke-static {v2, v4, v1, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 211
    goto :goto_3

    .line 212
    :cond_6
    invoke-static {}, Ldb0;->d()Z

    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_7

    .line 218
    invoke-virtual {p0, p1}, Llm;->g(Landroid/content/Context;)Z

    .line 221
    move-result p1

    .line 222
    new-array v1, v3, [Ljava/lang/Object;

    .line 224
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 227
    move-result-object v3

    .line 228
    aput-object v3, v1, v0

    .line 230
    const-string v0, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u4e3a\u5c0f\u7c73\u7cfb\u7edf\uff1ahasFloatPermission\uff1a{?}"

    .line 232
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    return p1

    .line 236
    :cond_7
    invoke-static {}, Ldb0;->c()Z

    .line 239
    move-result v1

    .line 240
    if-eqz v1, :cond_8

    .line 242
    invoke-virtual {p0, p1}, Llm;->f(Landroid/content/Context;)Z

    .line 245
    move-result p1

    .line 246
    new-array v1, v3, [Ljava/lang/Object;

    .line 248
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 251
    move-result-object v3

    .line 252
    aput-object v3, v1, v0

    .line 254
    const-string v0, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u4e3a\u9b45\u65cf\u7cfb\u7edf\uff1ahasFloatPermission\uff1a{?}"

    .line 256
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    return p1

    .line 260
    :cond_8
    invoke-static {}, Ldb0;->b()Z

    .line 263
    move-result v1

    .line 264
    if-eqz v1, :cond_9

    .line 266
    invoke-virtual {p0, p1}, Llm;->d(Landroid/content/Context;)Z

    .line 269
    move-result p1

    .line 270
    new-array v1, v3, [Ljava/lang/Object;

    .line 272
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    move-result-object v3

    .line 276
    aput-object v3, v1, v0

    .line 278
    const-string v0, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u4e3a\u534e\u4e3a\u7cfb\u7edf\uff1ahasFloatPermission\uff1a{?}"

    .line 280
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    return p1

    .line 284
    :cond_9
    invoke-static {}, Ldb0;->a()Z

    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_a

    .line 290
    invoke-virtual {p0, p1}, Llm;->h(Landroid/content/Context;)Z

    .line 293
    move-result p1

    .line 294
    new-array v1, v3, [Ljava/lang/Object;

    .line 296
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 299
    move-result-object v3

    .line 300
    aput-object v3, v1, v0

    .line 302
    const-string v0, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u4e3a360\u7cfb\u7edf\uff1ahasFloatPermission\uff1a{?}"

    .line 304
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    return p1

    .line 308
    :cond_a
    new-array p1, v3, [Ljava/lang/Object;

    .line 310
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 312
    aput-object v1, p1, v0

    .line 314
    const-string v1, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u901a\u7528\u5b89\u5353\u7cfb\u7edf\uff1ahasFloatPermission\uff1a{?}"

    .line 316
    invoke-static {v2, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    const/4 p1, 0x1

    .line 320
    :goto_3
    invoke-virtual {p0}, Llm;->e()Z

    .line 323
    move-result v1

    .line 324
    if-eqz v1, :cond_b

    .line 326
    new-array p1, v3, [Ljava/lang/Object;

    .line 328
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 330
    aput-object v1, p1, v0

    .line 332
    const-string v1, "\u5224\u65ad\u662f\u5426\u62e5\u6709\u60ac\u6d6e\u7a97\u663e\u793a\u6743\u9650->\u8bc6\u522b\u901a\u7528\u5b89\u5353\u7cfb\u7edf\uff1aisCrashForPermissions\uff1a{?}"

    .line 334
    invoke-static {v2, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    goto :goto_4

    .line 338
    :cond_b
    move v0, p1

    .line 339
    :goto_4
    return v0
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lxp;->b(Landroid/content/Context;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llm;->a:Z

    .line 3
    return v0
.end method

.method public final f(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lq00;->b(Landroid/content/Context;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final g(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lq10;->b(Landroid/content/Context;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public final h(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lh80;->b(Landroid/content/Context;)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public i(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Llm;->a:Z

    .line 3
    return-void
.end method

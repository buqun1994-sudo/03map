.class public Lec0;
.super Landroid/os/Handler;
.source "SourceFile"


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;

.field public static final b:Ljava/text/SimpleDateFormat;

.field public static final c:Ljava/lang/ThreadLocal;

.field public static final d:Ljava/lang/ThreadLocal;

.field public static e:J

.field public static f:I

.field public static g:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyyMMddHHmm"

    .line 5
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lec0;->a:Ljava/text/SimpleDateFormat;

    .line 10
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    const-string v1, "yyyyMMdd_HH_mm_ss__SSS"

    .line 14
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    sput-object v0, Lec0;->b:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Lec0$a;

    .line 21
    invoke-direct {v0}, Lec0$a;-><init>()V

    .line 24
    sput-object v0, Lec0;->c:Ljava/lang/ThreadLocal;

    .line 26
    new-instance v0, Lec0$b;

    .line 28
    invoke-direct {v0}, Lec0$b;-><init>()V

    .line 31
    sput-object v0, Lec0;->d:Ljava/lang/ThreadLocal;

    .line 33
    const-wide/16 v0, 0x0

    .line 35
    sput-wide v0, Lec0;->e:J

    .line 37
    const/4 v0, 0x0

    .line 38
    sput v0, Lec0;->f:I

    .line 40
    sput v0, Lec0;->g:I

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 1
    const-string v0, " imageIndex="

    .line 3
    const-string v1, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler backupScreenshotFile parentPath="

    .line 5
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 11
    new-instance v2, Ljava/io/File;

    .line 13
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->cleanIllegalString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v3

    .line 17
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    const-string v3, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler backupScreenshotFile oldFile.exist ={?}"

    .line 22
    const/4 v4, 0x1

    .line 23
    new-array v5, v4, [Ljava/lang/Object;

    .line 25
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 28
    move-result v6

    .line 29
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 32
    move-result-object v6

    .line 33
    const/4 v7, 0x0

    .line 34
    aput-object v6, v5, v7

    .line 36
    invoke-static {v3, v5}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget v5, Lec0;->g:I

    .line 65
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v3

    .line 72
    new-array v5, v7, [Ljava/lang/Object;

    .line 74
    invoke-static {v3, v5}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    const-string v5, "/backupFile"

    .line 87
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sget v5, Lec0;->g:I

    .line 92
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v5, ".jpg"

    .line 97
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    .line 106
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget v0, Lec0;->g:I

    .line 120
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v0

    .line 127
    new-array v1, v7, [Ljava/lang/Object;

    .line 129
    invoke-static {v0, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    new-instance v0, Ljava/io/File;

    .line 134
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    move-result-object v1

    .line 138
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 144
    sget v0, Lec0;->g:I

    .line 146
    add-int/2addr v0, v4

    .line 147
    sput v0, Lec0;->g:I

    .line 149
    rem-int/lit8 v0, v0, 0x2

    .line 151
    sput v0, Lec0;->g:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 158
    :cond_0
    :goto_0
    return-object p0
.end method

.method public static b()V
    .locals 10

    .line 1
    invoke-static {}, Lvl0;->o()Z

    .line 4
    move-result v0

    .line 5
    const-string v1, "ScreenShotHandler"

    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lhm0;->j()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_6

    .line 17
    const-string v0, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_BITMAP useInternalWidget WidgetLifeCycleManager.isWidgetAdded()"

    .line 19
    new-array v4, v3, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v4}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    new-instance v0, Landroid/content/Intent;

    .line 26
    const-string v4, "action_internal_widget_auto_bitmap"

    .line 28
    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lrv;->H()Lrv;

    .line 34
    move-result-object v4

    .line 35
    invoke-virtual {v4}, Lrv;->L()Ljava/lang/String;

    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    const-string v4, "extra_auto_bitmap_type"

    .line 44
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v2, "extra_auto_bitmap"

    .line 49
    const-string v4, ""

    .line 51
    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    const-string v2, "handleScreenShotBitamp occur a Exception!!!"

    .line 69
    new-array v3, v3, [Ljava/lang/Object;

    .line 71
    invoke-static {v1, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    :goto_0
    invoke-static {}, Lec0;->j()V

    .line 77
    goto/16 :goto_3

    .line 79
    :cond_0
    const/16 v0, 0xbbe

    .line 81
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 84
    move-result v0

    .line 85
    if-ne v2, v0, :cond_6

    .line 87
    invoke-static {}, Lwc;->d()Landroid/graphics/Bitmap;

    .line 90
    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 93
    const-string v0, "handleScreenShotBitmap popBitmap == null"

    .line 95
    new-array v2, v3, [Ljava/lang/Object;

    .line 97
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void

    .line 101
    :cond_1
    const/16 v4, 0x1389

    .line 103
    invoke-static {v4}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 106
    move-result-object v4

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v6, "amapauto_screenshot.jpg"

    .line 122
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v5

    .line 129
    new-instance v6, Ljava/io/File;

    .line 131
    new-array v7, v2, [Ljava/lang/Object;

    .line 133
    sget-object v8, Lec0;->c:Ljava/lang/ThreadLocal;

    .line 135
    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 138
    move-result-object v8

    .line 139
    check-cast v8, Ljava/text/SimpleDateFormat;

    .line 141
    new-instance v9, Ljava/util/Date;

    .line 143
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 146
    invoke-virtual {v8, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 149
    move-result-object v8

    .line 150
    aput-object v8, v7, v3

    .line 152
    const-string v8, "widget_%s"

    .line 154
    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 157
    move-result-object v7

    .line 158
    invoke-direct {v6, v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_2

    .line 167
    const/4 v7, 0x1

    .line 168
    goto :goto_1

    .line 169
    :cond_2
    const/4 v7, 0x0

    .line 170
    :goto_1
    const/4 v8, 0x2

    .line 171
    new-array v8, v8, [Ljava/lang/Object;

    .line 173
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 176
    move-result-object v9

    .line 177
    aput-object v9, v8, v3

    .line 179
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_3

    .line 185
    const/4 v6, 0x1

    .line 186
    goto :goto_2

    .line 187
    :cond_3
    const/4 v6, 0x0

    .line 188
    :goto_2
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 191
    move-result-object v6

    .line 192
    aput-object v6, v8, v2

    .line 194
    const-string v6, "\u622a\u56fe handleScreenShotBitamp saveScreenShotHook configDir:{?} needDebug:{?}"

    .line 196
    invoke-static {v1, v6, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    if-nez v7, :cond_4

    .line 201
    invoke-static {v4}, Lec0;->d(Ljava/lang/String;)Z

    .line 204
    move-result v7

    .line 205
    :cond_4
    invoke-static {v5, v0, v7}, Lec0;->h(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z

    .line 208
    move-result v4

    .line 209
    if-nez v4, :cond_5

    .line 211
    const-string v0, "handleScreenShotBitmap saveImage fail!"

    .line 213
    new-array v2, v3, [Ljava/lang/Object;

    .line 215
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    return-void

    .line 219
    :cond_5
    invoke-static {v5}, Lec0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 222
    move-result-object v4

    .line 223
    new-array v2, v2, [Ljava/lang/Object;

    .line 225
    aput-object v4, v2, v3

    .line 227
    const-string v3, "notify external widget bitmap path = {?}"

    .line 229
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    invoke-static {v4}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->sendWidgetScreenShowPath(Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 238
    move-result v1

    .line 239
    if-nez v1, :cond_6

    .line 241
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 244
    :cond_6
    :goto_3
    return-void
.end method

.method public static c(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE filePath="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    invoke-static {v0, v2}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 30
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 34
    new-instance v0, Ljava/io/File;

    .line 36
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v2, 0x1

    .line 40
    new-array v3, v2, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 45
    move-result v4

    .line 46
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 49
    move-result-object v4

    .line 50
    aput-object v4, v3, v1

    .line 52
    const-string v4, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE oldFile.exist ={?}"

    .line 54
    invoke-static {v4, v3}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v5, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE parentPath="

    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v6, " imageIndex="

    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    sget v7, Lec0;->f:I

    .line 87
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v4

    .line 94
    new-array v7, v1, [Ljava/lang/Object;

    .line 96
    invoke-static {v4, v7}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v3, "/bakimage"

    .line 109
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    sget v3, Lec0;->f:I

    .line 114
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    const-string v3, ".jpg"

    .line 119
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object v3

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    sget v5, Lec0;->f:I

    .line 142
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    move-result-object v4

    .line 149
    new-array v5, v1, [Ljava/lang/Object;

    .line 151
    invoke-static {v4, v5}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    if-eqz p1, :cond_0

    .line 156
    invoke-static {p0, v3}, Lec0;->g(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 159
    move-result-object p0

    .line 160
    invoke-static {p0}, Lwc;->a(Landroid/graphics/Bitmap;)V

    .line 163
    goto :goto_0

    .line 164
    :cond_0
    new-instance p0, Ljava/io/File;

    .line 166
    invoke-static {v3}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    move-result-object p1

    .line 170
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 176
    invoke-static {v3}, Lec0;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 179
    move-result-object p0

    .line 180
    invoke-static {p0}, Lwc;->a(Landroid/graphics/Bitmap;)V

    .line 183
    :goto_0
    sget p0, Lec0;->f:I

    .line 185
    add-int/2addr p0, v2

    .line 186
    sput p0, Lec0;->f:I

    .line 188
    rem-int/lit8 p0, p0, 0x2

    .line 190
    sput p0, Lec0;->f:I

    .line 192
    new-instance p0, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const-string p1, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE imageIndex="

    .line 199
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    sget p1, Lec0;->f:I

    .line 204
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    move-result-object p0

    .line 211
    new-array p1, v1, [Ljava/lang/Object;

    .line 213
    invoke-static {p0, p1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance p0, Ljava/lang/StringBuilder;

    .line 218
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    const-string p1, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE UseInternalWidget WidgetLifeCycleManager.isWidgetAdded = "

    .line 223
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-static {}, Lhm0;->j()Z

    .line 229
    move-result p1

    .line 230
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 236
    move-result-object p0

    .line 237
    new-array p1, v1, [Ljava/lang/Object;

    .line 239
    invoke-static {p0, p1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-static {}, Lhm0;->j()Z

    .line 245
    move-result p0

    .line 246
    if-eqz p0, :cond_1

    .line 248
    const-string p0, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE UseInternalWidget WidgetLifeCycleManager.isWidgetAdded()"

    .line 250
    new-array p1, v1, [Ljava/lang/Object;

    .line 252
    invoke-static {p0, p1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance p0, Landroid/content/Intent;

    .line 257
    const-string p1, "action_internal_widget_auto_bitmap"

    .line 259
    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lrv;->H()Lrv;

    .line 265
    move-result-object p1

    .line 266
    invoke-virtual {p1}, Lrv;->L()Ljava/lang/String;

    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 273
    const-string p1, "extra_auto_bitmap_type"

    .line 275
    invoke-virtual {p0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 278
    const-string p1, "extra_auto_bitmap"

    .line 280
    const-string v0, ""

    .line 282
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string p1, "extra_auto_bitmap_path"

    .line 287
    invoke-virtual {p0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    invoke-static {}, Lrv;->H()Lrv;

    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 297
    move-result-object p1

    .line 298
    invoke-virtual {p1, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 301
    invoke-static {}, Lec0;->j()V

    .line 304
    :cond_1
    return-void
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xc

    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->roll(II)V

    .line 11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 14
    move-result-object v3

    .line 15
    new-instance v4, Ljava/io/File;

    .line 17
    const/4 v5, 0x1

    .line 18
    new-array v6, v5, [Ljava/lang/Object;

    .line 20
    sget-object v7, Lec0;->c:Ljava/lang/ThreadLocal;

    .line 22
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 25
    move-result-object v8

    .line 26
    check-cast v8, Ljava/text/SimpleDateFormat;

    .line 28
    invoke-virtual {v8, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    const/4 v8, 0x0

    .line 33
    aput-object v3, v6, v8

    .line 35
    const-string v3, "widget_%s"

    .line 37
    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    move-result-object v6

    .line 41
    invoke-direct {v4, p0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->roll(II)V

    .line 47
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Ljava/io/File;

    .line 53
    new-array v2, v5, [Ljava/lang/Object;

    .line 55
    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 59
    check-cast v6, Ljava/text/SimpleDateFormat;

    .line 61
    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    aput-object v0, v2, v8

    .line 67
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    invoke-direct {v1, p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 77
    move-result p0

    .line 78
    if-nez p0, :cond_1

    .line 80
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 83
    move-result p0

    .line 84
    if-eqz p0, :cond_0

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const/4 p0, 0x0

    .line 88
    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 90
    :goto_1
    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v3, ","

    .line 107
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    aput-object v1, v0, v8

    .line 123
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 126
    move-result-object v1

    .line 127
    aput-object v1, v0, v5

    .line 129
    const-string v1, "ScreenShotHandler"

    .line 131
    const-string v2, "\u622a\u56fe saveScreenShotHook configDir1+2:{?} needDebug1+2:{?}"

    .line 133
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    return p0
.end method

.method public static e(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 8
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->cleanIllegalString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    .line 17
    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 20
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 22
    iput-object v4, p0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 24
    const/4 v4, 0x1

    .line 25
    iput-boolean v4, p0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 27
    iput v4, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 29
    new-instance v4, Ljava/lang/ref/SoftReference;

    .line 31
    invoke-static {v3, v2, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 34
    move-result-object p0

    .line 35
    invoke-direct {v4, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 47
    move-object v2, p0

    .line 48
    goto :goto_3

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_0

    .line 51
    :catch_0
    move-exception p0

    .line 52
    goto :goto_1

    .line 53
    :catchall_1
    move-exception p0

    .line 54
    move-object v3, v2

    .line 55
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 58
    goto :goto_2

    .line 59
    :catch_1
    move-exception p0

    .line 60
    move-object v3, v2

    .line 61
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 64
    :goto_2
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 67
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    const-string v3, "AutoWidgetProvider onReceive action_auto_bitmap pathToBitmap time = "

    .line 74
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 80
    move-result-wide v3

    .line 81
    sub-long/2addr v3, v0

    .line 82
    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    move-result-object p0

    .line 89
    const/4 v0, 0x0

    .line 90
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    const-string v1, "MapManager"

    .line 94
    invoke-static {v1, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    return-object v2

    .line 98
    :catchall_2
    move-exception p0

    .line 99
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 102
    throw p0
.end method

.method public static f(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v1, "AutoWidgetProvider onReceive action_auto_bitmap newBitmap bitmap="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    new-array v2, v1, [Ljava/lang/Object;

    .line 33
    const-string v3, "MapManager"

    .line 35
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    new-instance v9, Landroid/graphics/Matrix;

    .line 40
    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 43
    const/high16 v0, 0x3f800000    # 1.0f

    .line 45
    const/high16 v2, -0x40800000    # -1.0f

    .line 47
    invoke-virtual {v9, v0, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 50
    const/4 v5, 0x0

    .line 51
    const/4 v6, 0x0

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 55
    move-result v7

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 59
    move-result v8

    .line 60
    const/4 v10, 0x1

    .line 61
    move-object v4, p1

    .line 62
    invoke-static/range {v4 .. v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    const-string v4, "AutoWidgetProvider onReceive action_auto_bitmap pathToBitmap newBitmap="

    .line 73
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    .line 79
    move-result v4

    .line 80
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 87
    new-array v4, v1, [Ljava/lang/Object;

    .line 89
    invoke-static {v3, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    if-eqz p2, :cond_0

    .line 94
    invoke-static {v0}, Lec0;->i(Landroid/graphics/Bitmap;)V

    .line 97
    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    move-result p2

    .line 102
    if-nez p2, :cond_1

    .line 104
    invoke-static {p0, v0, v1}, Lec0;->h(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z

    .line 107
    goto :goto_0

    .line 108
    :cond_1
    invoke-static {v0}, Lec0;->i(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_0
    if-eqz p3, :cond_2

    .line 113
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 116
    move-result p0

    .line 117
    if-nez p0, :cond_2

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 122
    :cond_2
    return-object v0

    .line 123
    :cond_3
    const/4 p0, 0x0

    .line 124
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    .line 1
    invoke-static {p0}, Lec0;->e(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p1, p0, v0, v1}, Lec0;->f(Ljava/lang/String;Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static h(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z
    .locals 9

    .line 1
    const-string v0, "ScreenShotHandler"

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 10
    new-instance v4, Ljava/io/File;

    .line 12
    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    if-eqz p2, :cond_0

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    invoke-virtual {v4}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, "/screenshot/screenshot_"

    .line 31
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget-object p2, Lec0;->d:Ljava/lang/ThreadLocal;

    .line 36
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 39
    move-result-object p2

    .line 40
    check-cast p2, Ljava/text/SimpleDateFormat;

    .line 42
    new-instance v4, Ljava/util/Date;

    .line 44
    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 47
    invoke-virtual {p2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string p2, ".jpg"

    .line 56
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object p0

    .line 63
    new-instance v4, Ljava/io/File;

    .line 65
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p0

    .line 69
    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    const-string p0, "saveImage debugSave:{?}"

    .line 74
    new-array p2, v2, [Ljava/lang/Object;

    .line 76
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 79
    move-result-object v5

    .line 80
    aput-object v5, p2, v1

    .line 82
    invoke-static {v0, p0, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    sget-wide v5, Lec0;->e:J

    .line 87
    const-wide/16 v7, 0x1

    .line 89
    add-long/2addr v5, v7

    .line 90
    sput-wide v5, Lec0;->e:J

    .line 92
    const-wide/16 v7, 0x3c

    .line 94
    cmp-long p0, v5, v7

    .line 96
    if-lez p0, :cond_0

    .line 98
    const-wide/16 v5, 0x0

    .line 100
    sput-wide v5, Lec0;->e:J

    .line 102
    :cond_0
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 105
    move-result-object p0

    .line 106
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 109
    move-result p0

    .line 110
    if-nez p0, :cond_1

    .line 112
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 115
    move-result-object p0

    .line 116
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 119
    :cond_1
    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 124
    move-result p0

    .line 125
    if-nez p0, :cond_2

    .line 127
    new-instance p0, Ljava/io/FileOutputStream;

    .line 129
    invoke-direct {p0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 132
    :try_start_1
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 134
    const/16 v3, 0x50

    .line 136
    invoke-virtual {p1, p2, v3, p0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 139
    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    move-object v3, p0

    .line 143
    goto :goto_0

    .line 144
    :catchall_0
    move-exception p1

    .line 145
    move-object v3, p0

    .line 146
    move-object p0, p1

    .line 147
    goto :goto_2

    .line 148
    :catch_0
    move-exception p1

    .line 149
    move-object v3, p0

    .line 150
    move-object p0, p1

    .line 151
    goto :goto_1

    .line 152
    :cond_2
    :goto_0
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 155
    return v2

    .line 156
    :catchall_1
    move-exception p0

    .line 157
    goto :goto_2

    .line 158
    :catch_1
    move-exception p0

    .line 159
    :goto_1
    :try_start_2
    const-string p1, "saveImage Exception {?}"

    .line 161
    new-array p2, v2, [Ljava/lang/Object;

    .line 163
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 166
    move-result-object p0

    .line 167
    aput-object p0, p2, v1

    .line 169
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 172
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 175
    return v1

    .line 176
    :goto_2
    invoke-static {v3}, Lns;->a(Ljava/io/Closeable;)V

    .line 179
    throw p0
.end method

.method public static i(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 1
    const/16 v0, 0x1389

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    .line 9
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Object;

    .line 12
    sget-object v4, Lec0;->c:Ljava/lang/ThreadLocal;

    .line 14
    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 17
    move-result-object v4

    .line 18
    check-cast v4, Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v5, Ljava/util/Date;

    .line 22
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 25
    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x0

    .line 30
    aput-object v4, v3, v5

    .line 32
    const-string v4, "widget_%s"

    .line 34
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    move-result-object v3

    .line 38
    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 47
    const/4 v3, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 v3, 0x0

    .line 50
    :goto_0
    const/4 v4, 0x2

    .line 51
    new-array v4, v4, [Ljava/lang/Object;

    .line 53
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 56
    move-result-object v6

    .line 57
    aput-object v6, v4, v5

    .line 59
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 65
    const/4 v5, 0x1

    .line 66
    :cond_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v1

    .line 70
    aput-object v1, v4, v2

    .line 72
    const-string v1, "ScreenShotHandler"

    .line 74
    const-string v5, "\u622a\u56fe saveScreenShotHook configDir:{?} needDebug:{?}"

    .line 76
    invoke-static {v1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    if-nez v3, :cond_2

    .line 81
    invoke-static {v0}, Lec0;->d(Ljava/lang/String;)Z

    .line 84
    move-result v3

    .line 85
    :cond_2
    if-eqz v3, :cond_3

    .line 87
    invoke-static {v0, p0, v2}, Lec0;->h(Ljava/lang/String;Landroid/graphics/Bitmap;Z)Z

    .line 90
    :cond_3
    return-void
.end method

.method public static j()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p1, v1, v2

    .line 10
    const-string v3, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage msg={?} "

    .line 12
    invoke-static {v3, v1}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    iget v1, p1, Landroid/os/Message;->what:I

    .line 17
    if-eq v1, v0, :cond_1

    .line 19
    const/4 v3, 0x2

    .line 20
    if-eq v1, v3, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string v1, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_FILE"

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {v1, v2}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    check-cast p1, Ljava/lang/String;

    .line 34
    invoke-static {p1, v0}, Lec0;->c(Ljava/lang/String;Z)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const-string p1, "\u622a\u56fe\uff1aonScreenShotFinished ScreenShotHandler handleMessage MSG_FROM_BITMAP"

    .line 40
    new-array v0, v2, [Ljava/lang/Object;

    .line 42
    invoke-static {p1, v0}, Lcz;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lec0;->b()V

    .line 48
    :goto_0
    return-void
.end method

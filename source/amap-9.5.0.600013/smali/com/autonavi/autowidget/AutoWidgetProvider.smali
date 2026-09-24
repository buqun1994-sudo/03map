.class public Lcom/autonavi/autowidget/AutoWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"

# interfaces
.implements Lpq;


# static fields
.field public static a:Landroid/graphics/Bitmap;

.field public static b:Ljava/util/HashMap;

.field public static volatile c:Landroid/os/HandlerThread;

.field public static volatile d:Z

.field public static volatile e:Z

.field public static f:Lgc0;

.field public static g:Ldm0;

.field public static h:Lqm0;

.field public static i:Ljm0;

.field public static j:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc0;

    .line 3
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lgc0;-><init>(Landroid/os/Looper;)V

    .line 14
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 16
    new-instance v0, Ldm0;

    .line 18
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ldm0;-><init>(Landroid/os/Looper;)V

    .line 29
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 31
    new-instance v0, Lqm0;

    .line 33
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Lqm0;-><init>(Landroid/os/Looper;)V

    .line 44
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 46
    new-instance v0, Ljm0;

    .line 48
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljm0;-><init>(Landroid/os/Looper;)V

    .line 59
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 61
    const/4 v0, 0x0

    .line 62
    sput v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->j:I

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 4
    return-void
.end method

.method public static D()V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 19
    return-void
.end method

.method public static I()Landroid/os/HandlerThread;
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->c:Landroid/os/HandlerThread;

    .line 3
    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->c:Landroid/os/HandlerThread;

    .line 10
    if-nez v1, :cond_0

    .line 12
    new-instance v1, Landroid/os/HandlerThread;

    .line 14
    const-string v2, "AutoWidgetProvider"

    .line 16
    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 19
    sput-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->c:Landroid/os/HandlerThread;

    .line 21
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->c:Landroid/os/HandlerThread;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 26
    :cond_0
    monitor-exit v0

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception v1

    .line 29
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v1

    .line 31
    :cond_1
    :goto_0
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->c:Landroid/os/HandlerThread;

    .line 33
    return-object v0
.end method

.method public static m()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "checkHandlerThread"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-nez v1, :cond_3

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v3, "checkHandlerThread handlerThread.isAlive() = "

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 52
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 59
    move-result v3

    .line 60
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-string v3, "false(null)"

    .line 67
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, " handlerThread.isInterrupted() = "

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    .line 81
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    move-result-object v3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const-string v3, "true(null)"

    .line 96
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    new-instance v0, Lgc0;

    .line 117
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Lgc0;-><init>(Landroid/os/Looper;)V

    .line 128
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 130
    new-instance v0, Ldm0;

    .line 132
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 139
    move-result-object v1

    .line 140
    invoke-direct {v0, v1}, Ldm0;-><init>(Landroid/os/Looper;)V

    .line 143
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 145
    new-instance v0, Lqm0;

    .line 147
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 154
    move-result-object v1

    .line 155
    invoke-direct {v0, v1}, Lqm0;-><init>(Landroid/os/Looper;)V

    .line 158
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 160
    new-instance v0, Ljm0;

    .line 162
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 169
    move-result-object v1

    .line 170
    invoke-direct {v0, v1}, Ljm0;-><init>(Landroid/os/Looper;)V

    .line 173
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 175
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 177
    invoke-virtual {v0}, Lgc0;->j()V

    .line 180
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 182
    invoke-virtual {v0}, Ldm0;->d()V

    .line 185
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 187
    invoke-virtual {v0}, Lqm0;->e()V

    .line 190
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 192
    invoke-virtual {v0}, Ljm0;->e()V

    .line 195
    goto/16 :goto_3

    .line 197
    :cond_3
    const-string v1, "checkHandlerThread restart messages"

    .line 199
    new-array v3, v0, [Ljava/lang/Object;

    .line 201
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 206
    if-eqz v1, :cond_5

    .line 208
    const-string v1, "checkHandlerThread restart messages searchHandler!=null"

    .line 210
    new-array v3, v0, [Ljava/lang/Object;

    .line 212
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 217
    invoke-virtual {v1}, Lgc0;->d()Z

    .line 220
    move-result v1

    .line 221
    if-nez v1, :cond_4

    .line 223
    const-string v1, "checkHandlerThread restart messages searchHandler!=null !searchHandler.hasOilMessage()"

    .line 225
    new-array v3, v0, [Ljava/lang/Object;

    .line 227
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 232
    invoke-virtual {v1}, Lgc0;->k()V

    .line 235
    :cond_4
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 237
    invoke-virtual {v1}, Lgc0;->e()Z

    .line 240
    move-result v1

    .line 241
    if-nez v1, :cond_5

    .line 243
    const-string v1, "checkHandlerThread restart messages searchHandler!=null !searchHandler.hasParkMessage()"

    .line 245
    new-array v3, v0, [Ljava/lang/Object;

    .line 247
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 252
    invoke-virtual {v1}, Lgc0;->i()V

    .line 255
    :cond_5
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 257
    if-eqz v1, :cond_6

    .line 259
    invoke-virtual {v1}, Ldm0;->b()Z

    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_6

    .line 265
    const-string v1, "checkHandlerThread restart messages !widgetHomeCompanyCheckHandler.hasHomeCompanyMessage()"

    .line 267
    new-array v3, v0, [Ljava/lang/Object;

    .line 269
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 274
    invoke-virtual {v1}, Ldm0;->d()V

    .line 277
    :cond_6
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 279
    if-eqz v1, :cond_7

    .line 281
    invoke-virtual {v1}, Lqm0;->b()Z

    .line 284
    move-result v1

    .line 285
    if-nez v1, :cond_7

    .line 287
    const-string v1, "checkHandlerThread restart messages !widgetWeatherUpdateHandler.hasWeatherMessage()"

    .line 289
    new-array v3, v0, [Ljava/lang/Object;

    .line 291
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 296
    invoke-virtual {v1}, Lqm0;->e()V

    .line 299
    :cond_7
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 301
    if-eqz v1, :cond_8

    .line 303
    invoke-virtual {v1}, Ljm0;->b()Z

    .line 306
    move-result v1

    .line 307
    if-nez v1, :cond_8

    .line 309
    const-string v1, "checkHandlerThread restart messages !widgetPoiReverserUpdateHandler.hasPoiReverserMessage()"

    .line 311
    new-array v0, v0, [Ljava/lang/Object;

    .line 313
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 318
    invoke-virtual {v0}, Ljm0;->e()V

    .line 321
    :cond_8
    :goto_3
    return-void
.end method

.method public static n()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "checkHomeCompany"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    const/4 v1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-nez v1, :cond_3

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v3, "checkHomeCompany handlerThread.isAlive() = "

    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 49
    move-result-object v3

    .line 50
    if-eqz v3, :cond_1

    .line 52
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 59
    move-result v3

    .line 60
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v3

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const-string v3, "false(null)"

    .line 67
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v3, " handlerThread.isInterrupted() = "

    .line 72
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    .line 81
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 88
    move-result v3

    .line 89
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 92
    move-result-object v3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    const-string v3, "true(null)"

    .line 96
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v1

    .line 103
    new-array v0, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    new-instance v0, Ldm0;

    .line 117
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->I()Landroid/os/HandlerThread;

    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v1}, Ldm0;-><init>(Landroid/os/Looper;)V

    .line 128
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 130
    invoke-virtual {v0}, Ldm0;->d()V

    .line 133
    goto :goto_3

    .line 134
    :cond_3
    const-string v1, "checkHomeCompany restart messages"

    .line 136
    new-array v3, v0, [Ljava/lang/Object;

    .line 138
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 143
    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {v1}, Ldm0;->b()Z

    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_4

    .line 151
    const-string v1, "checkHomeCompany restart messages !widgetHomeCompanyCheckHandler.hasHomeCompanyMessage()"

    .line 153
    new-array v0, v0, [Ljava/lang/Object;

    .line 155
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 160
    invoke-virtual {v0}, Ldm0;->d()V

    .line 163
    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onReceive dealUpdateWidgetScreenShot"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, "extra_auto_bitmap_type"

    .line 13
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 16
    move-result v1

    .line 17
    const-string v3, "extra_auto_bitmap"

    .line 19
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p3

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    const-string v4, "action_auto_bitmap bitmapType="

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, " bitmapString="

    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 48
    new-array v1, v0, [Ljava/lang/Object;

    .line 50
    invoke-static {v2, p3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance p3, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v1, "WidgetEnabler.is4x3WidgetEnabled="

    .line 60
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    sget-boolean v1, Lzl0;->a:Z

    .line 65
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, " isInCruise="

    .line 70
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {}, Lnb;->j()Lnb;

    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lnb;->p()Z

    .line 80
    move-result v1

    .line 81
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p3

    .line 88
    new-array v1, v0, [Ljava/lang/Object;

    .line 90
    invoke-static {v2, p3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    sget-boolean p3, Lzl0;->a:Z

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 98
    sget-boolean p3, Lzl0;->a:Z

    .line 100
    if-eqz p3, :cond_0

    .line 102
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->X(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 105
    :cond_0
    const-string p1, "AutoWidgetProvider onReceive action_auto_bitmap end"

    .line 107
    new-array p2, v0, [Ljava/lang/Object;

    .line 109
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public final B(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 16
    const-string v0, "WEATHER_INFO_KEY"

    .line 18
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 21
    move-result-object p3

    .line 22
    check-cast p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 24
    const/4 v0, 0x1

    .line 25
    new-array v1, v0, [Ljava/lang/Object;

    .line 27
    const/4 v2, 0x0

    .line 28
    aput-object p3, v1, v2

    .line 30
    const-string v3, "AutoWidgetProvider"

    .line 32
    const-string v4, "dealWeatherInfoUI info={?}"

    .line 34
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/16 v1, 0x8

    .line 39
    if-eqz p3, :cond_1

    .line 41
    invoke-static {}, Lnb;->j()Lnb;

    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Lnb;->l()Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    aput-object v4, v0, v2

    .line 53
    const-string v5, "widgetWeatherInformation!=null roadname={?}"

    .line 55
    invoke-static {v3, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v0

    .line 62
    const-string v3, "\u00b0"

    .line 64
    if-nez v0, :cond_0

    .line 66
    sget v0, Ly80;->l:I

    .line 68
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    iget-object p3, p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 78
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p3

    .line 88
    sget v0, Ly80;->n:I

    .line 90
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 93
    sget p3, Ly80;->T0:I

    .line 95
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 98
    sget p3, Ly80;->o:I

    .line 100
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 103
    sget p3, Ly80;->p:I

    .line 105
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 108
    sget p3, Ly80;->m:I

    .line 110
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 113
    goto :goto_0

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    iget-object p3, p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 121
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p3

    .line 131
    sget v0, Ly80;->q:I

    .line 133
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 136
    sget p3, Ly80;->T0:I

    .line 138
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 141
    sget p3, Ly80;->o:I

    .line 143
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 146
    sget p3, Ly80;->p:I

    .line 148
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 151
    goto :goto_0

    .line 152
    :cond_1
    const-string p3, "widgetWeatherInformation == null"

    .line 154
    new-array v0, v2, [Ljava/lang/Object;

    .line 156
    invoke-static {v3, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-static {}, Lnb;->j()Lnb;

    .line 162
    move-result-object p3

    .line 163
    invoke-virtual {p3}, Lnb;->l()Ljava/lang/String;

    .line 166
    move-result-object p3

    .line 167
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 170
    move-result v0

    .line 171
    if-nez v0, :cond_2

    .line 173
    sget v0, Ly80;->T0:I

    .line 175
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 178
    sget v0, Ly80;->o:I

    .line 180
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    sget v0, Ly80;->p:I

    .line 185
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    sget v0, Ly80;->m:I

    .line 190
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 193
    sget v0, Ly80;->l:I

    .line 195
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    sget p3, Ly80;->T0:I

    .line 201
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 204
    :goto_0
    sget-boolean p3, Lzl0;->a:Z

    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 209
    return-void
.end method

.method public final C(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 18
    :cond_0
    return-void
.end method

.method public final E(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->T(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->U(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->V(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 10
    sget p1, Ly80;->D2:I

    .line 12
    const/16 v0, 0x8

    .line 14
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 17
    sget p1, Ly80;->Q:I

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 23
    sget p1, Ly80;->t0:I

    .line 25
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 28
    return-void
.end method

.method public final F(Landroid/widget/RemoteViews;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eqz p2, :cond_0

    .line 6
    sget p2, Ly80;->V0:I

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    sget p2, Ly80;->W0:I

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    sget p2, Ly80;->X0:I

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget p2, Ly80;->V0:I

    .line 24
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    sget p2, Ly80;->W0:I

    .line 29
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 32
    sget p2, Ly80;->X0:I

    .line 34
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 37
    :goto_0
    return-void
.end method

.method public final G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eqz p3, :cond_0

    .line 6
    sget p3, Ly80;->X:I

    .line 8
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p3, Ly80;->X:I

    .line 14
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 17
    :goto_0
    sget p3, Llc0;->a:I

    .line 19
    if-lez p3, :cond_1

    .line 21
    sget p3, Ly80;->m0:I

    .line 23
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    sget v2, Llc0;->a:I

    .line 28
    invoke-static {v2}, Lob;->f(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    sget p3, Ly80;->m0:I

    .line 38
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    :goto_1
    sget p3, Llc0;->b:I

    .line 43
    if-lez p3, :cond_2

    .line 45
    sget p3, Ly80;->o0:I

    .line 47
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 50
    sget v2, Llc0;->b:I

    .line 52
    invoke-static {v2}, Lob;->f(I)Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    goto :goto_2

    .line 60
    :cond_2
    sget p3, Ly80;->o0:I

    .line 62
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 65
    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->S(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 68
    const/4 p3, 0x0

    .line 69
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->c(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 72
    sget p1, Ly80;->D2:I

    .line 74
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    sget p1, Ly80;->Q:I

    .line 79
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    sget p1, Ly80;->t0:I

    .line 84
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    return-void
.end method

.method public final H(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V
    .locals 2

    .line 1
    sget-boolean v0, Lzl0;->a:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    sget-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->e:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->e:Z

    .line 12
    sget v0, Ly80;->e1:I

    .line 14
    sget v1, Lt80;->N4:I

    .line 16
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 19
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->Q(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->W(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->R(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 28
    sget p1, Ly80;->D2:I

    .line 30
    const/4 p3, 0x0

    .line 31
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 34
    sget p1, Ly80;->Q:I

    .line 36
    const/16 p3, 0x8

    .line 38
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    sget p1, Ly80;->t0:I

    .line 43
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 46
    :cond_1
    return-void
.end method

.method public final J(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProvider;->L(Landroid/widget/RemoteViews;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProvider;->M(Landroid/widget/RemoteViews;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProvider;->K(Landroid/widget/RemoteViews;)V

    .line 10
    return-void
.end method

.method public final K(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 3
    const/16 v1, 0xcd

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lyl0;

    .line 15
    sget v1, Ly80;->b1:I

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget v0, v0, Lyl0;->d:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 29
    const/16 v1, 0xcb

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lyl0;

    .line 41
    sget v1, Ly80;->R:I

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget v0, v0, Lyl0;->d:I

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const/4 v0, 0x0

    .line 49
    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 54
    const/16 v1, 0xcc

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lyl0;

    .line 66
    sget v1, Ly80;->c1:I

    .line 68
    if-eqz v0, :cond_2

    .line 70
    iget v0, v0, Lyl0;->d:I

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    const/4 v0, 0x0

    .line 74
    :goto_2
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 79
    const/16 v1, 0xce

    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v0

    .line 89
    check-cast v0, Lyl0;

    .line 91
    sget v1, Ly80;->a:I

    .line 93
    if-eqz v0, :cond_3

    .line 95
    iget v0, v0, Lyl0;->d:I

    .line 97
    goto :goto_3

    .line 98
    :cond_3
    const/4 v0, 0x0

    .line 99
    :goto_3
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 104
    const/16 v1, 0xca

    .line 106
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lyl0;

    .line 116
    sget v1, Ly80;->Z0:I

    .line 118
    if-eqz v0, :cond_4

    .line 120
    iget v2, v0, Lyl0;->d:I

    .line 122
    :cond_4
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    return-void
.end method

.method public final L(Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "initJingmoAdapter \u521d\u59cb\u5316\u9759\u9ed8\u6001"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lyl0;

    .line 24
    sget v4, Ly80;->h1:I

    .line 26
    if-eqz v1, :cond_0

    .line 28
    iget v1, v1, Lyl0;->d:I

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-virtual {p1, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 37
    const/4 v4, 0x2

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lyl0;

    .line 48
    sget v4, Ly80;->n0:I

    .line 50
    if-eqz v1, :cond_1

    .line 52
    iget v5, v1, Lyl0;->d:I

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v5, 0x0

    .line 56
    :goto_1
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 59
    sget-object v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 61
    const/4 v5, 0x3

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Lyl0;

    .line 72
    sget v5, Ly80;->l0:I

    .line 74
    if-eqz v4, :cond_2

    .line 76
    iget v6, v4, Lyl0;->d:I

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 v6, 0x0

    .line 80
    :goto_2
    invoke-virtual {p1, v5, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    const/16 v5, 0x8

    .line 85
    if-eqz v1, :cond_3

    .line 87
    iget v1, v1, Lyl0;->d:I

    .line 89
    if-ne v1, v5, :cond_3

    .line 91
    if-eqz v4, :cond_3

    .line 93
    iget v1, v4, Lyl0;->d:I

    .line 95
    if-ne v1, v5, :cond_3

    .line 97
    sget v1, Ly80;->f1:I

    .line 99
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    :cond_3
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 104
    const/4 v4, 0x4

    .line 105
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lyl0;

    .line 115
    sget v4, Ly80;->U:I

    .line 117
    if-eqz v1, :cond_4

    .line 119
    iget v6, v1, Lyl0;->d:I

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    const/4 v6, 0x0

    .line 123
    :goto_3
    invoke-virtual {p1, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 126
    sget-object v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 128
    const/4 v6, 0x5

    .line 129
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v4

    .line 137
    check-cast v4, Lyl0;

    .line 139
    sget v6, Ly80;->T:I

    .line 141
    if-eqz v4, :cond_5

    .line 143
    iget v7, v4, Lyl0;->d:I

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    const/4 v7, 0x0

    .line 147
    :goto_4
    invoke-virtual {p1, v6, v7}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    sget-object v6, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 152
    const/4 v7, 0x6

    .line 153
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v7

    .line 157
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v6

    .line 161
    check-cast v6, Lyl0;

    .line 163
    if-eqz v1, :cond_7

    .line 165
    iget v1, v1, Lyl0;->d:I

    .line 167
    if-ne v1, v5, :cond_7

    .line 169
    if-eqz v4, :cond_7

    .line 171
    iget v1, v4, Lyl0;->d:I

    .line 173
    if-ne v1, v5, :cond_7

    .line 175
    if-eqz v6, :cond_8

    .line 177
    iget v1, v6, Lyl0;->d:I

    .line 179
    if-eq v1, v5, :cond_6

    .line 181
    if-nez v1, :cond_8

    .line 183
    sget-boolean v1, Lfm0;->a:Z

    .line 185
    if-nez v1, :cond_8

    .line 187
    :cond_6
    sget v1, Ly80;->d1:I

    .line 189
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    goto :goto_5

    .line 193
    :cond_7
    sget v1, Ly80;->d1:I

    .line 195
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    :cond_8
    :goto_5
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 200
    const/4 v4, 0x7

    .line 201
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lyl0;

    .line 211
    if-eqz v1, :cond_9

    .line 213
    iget v1, v1, Lyl0;->d:I

    .line 215
    if-ne v1, v5, :cond_9

    .line 217
    sget v1, Ly80;->o:I

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 222
    sget v1, Ly80;->p:I

    .line 224
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    goto :goto_6

    .line 228
    :cond_9
    sget v1, Ly80;->o:I

    .line 230
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    sget v1, Ly80;->p:I

    .line 235
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 238
    :goto_6
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 240
    const/16 v4, 0x9

    .line 242
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v4

    .line 246
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Lyl0;

    .line 252
    sget v1, Ly80;->i1:I

    .line 254
    sget-boolean v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 256
    if-eqz v4, :cond_a

    .line 258
    const/4 v5, 0x0

    .line 259
    :cond_a
    invoke-virtual {p1, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 262
    new-array p1, v3, [Ljava/lang/Object;

    .line 264
    sget-boolean v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 266
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 269
    move-result-object v1

    .line 270
    aput-object v1, p1, v0

    .line 272
    const-string v0, "initJingmoAdapter hasShotMap:{?}"

    .line 274
    invoke-static {v2, v0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public final M(Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 3
    const/16 v1, 0x66

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lyl0;

    .line 15
    sget v1, Ly80;->r0:I

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget v0, v0, Lyl0;->d:I

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 29
    const/16 v1, 0x68

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lyl0;

    .line 41
    sget v0, Ly80;->y2:I

    .line 43
    sget-boolean v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 45
    if-eqz v1, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 v1, 0x8

    .line 51
    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 54
    const/4 v0, 0x1

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    .line 57
    sget-boolean v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 59
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 62
    move-result-object v1

    .line 63
    aput-object v1, v0, v2

    .line 65
    const-string v1, "AutoWidgetProvider"

    .line 67
    const-string v3, "initXunhangAdapter hasShotMap:{?}"

    .line 69
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 74
    const/16 v1, 0x69

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lyl0;

    .line 86
    sget v1, Ly80;->z2:I

    .line 88
    if-eqz v0, :cond_2

    .line 90
    iget v2, v0, Lyl0;->d:I

    .line 92
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    return-void
.end method

.method public final N(II)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    aput-object p1, v0, v1

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p2

    .line 20
    aput-object p2, v0, p1

    .line 22
    const/4 p1, 0x2

    .line 23
    aput-object v2, v0, p1

    .line 25
    const/4 p1, 0x3

    .line 26
    aput-object v2, v0, p1

    .line 28
    const/4 p1, 0x4

    .line 29
    aput-object v2, v0, p1

    .line 31
    const-string p1, "[100000262][5][%d][%d][%d][%d][%d]"

    .line 33
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const p2, 0x5f5e206

    .line 40
    const/16 v0, 0xa

    .line 42
    const-string v1, "AUTO_BASE"

    .line 44
    invoke-static {v1, p2, p1, v0}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 47
    return-void
.end method

.method public final O()V
    .locals 4

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    aput-object v2, v0, v1

    .line 11
    const/4 v1, 0x1

    .line 12
    aput-object v2, v0, v1

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object v2, v0, v1

    .line 17
    const/4 v1, 0x3

    .line 18
    aput-object v2, v0, v1

    .line 20
    const-string v1, "[100000261][4][%d][%d][%d][%d]"

    .line 22
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const v1, 0x5f5e205

    .line 29
    const/16 v2, 0xa

    .line 31
    const-string v3, "AUTO_BASE"

    .line 33
    invoke-static {v3, v1, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 36
    return-void
.end method

.method public final P(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget v1, Ly80;->E2:I

    .line 4
    invoke-static {p1, v0}, Llb;->l(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 11
    sget v1, Ly80;->F2:I

    .line 13
    invoke-static {p1, v0}, Llb;->m(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20
    sget v1, Ly80;->g:I

    .line 22
    invoke-static {p1, v0}, Llb;->l(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 29
    sget v1, Ly80;->h:I

    .line 31
    invoke-static {p1, v0}, Llb;->m(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 38
    sget v1, Ly80;->U:I

    .line 40
    invoke-static {p1, v0}, Llb;->h(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    sget v1, Ly80;->T:I

    .line 49
    invoke-static {p1, v0}, Llb;->g(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 56
    sget v1, Ly80;->Y:I

    .line 58
    invoke-static {p1, v0}, Llb;->i(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 65
    sget v1, Ly80;->g1:I

    .line 67
    invoke-static {p1, v0}, Llb;->c(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    sget v1, Ly80;->l0:I

    .line 76
    invoke-static {p1, v0}, Llb;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 83
    sget v1, Ly80;->n0:I

    .line 85
    invoke-static {p1, v0}, Llb;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 88
    move-result-object v2

    .line 89
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 92
    sget v1, Ly80;->i1:I

    .line 94
    invoke-static {p1, v0}, Llb;->f(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 101
    sget v1, Ly80;->y2:I

    .line 103
    invoke-static {p1, v0}, Llb;->f(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 110
    sget v1, Ly80;->f0:I

    .line 112
    invoke-static {p1, v0}, Llb;->d(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 119
    sget v1, Ly80;->e1:I

    .line 121
    invoke-static {p1, v0}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 124
    move-result-object v2

    .line 125
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 128
    sget v1, Ly80;->U0:I

    .line 130
    invoke-static {p1, v0}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    sget v1, Ly80;->t0:I

    .line 139
    invoke-static {p1, v0}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 146
    sget v1, Ly80;->W:I

    .line 148
    invoke-static {p1, v0}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 151
    move-result-object v2

    .line 152
    invoke-virtual {p2, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 155
    sget v1, Ly80;->V:I

    .line 157
    invoke-static {p1, v0}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_0

    .line 165
    :catch_0
    move-exception p1

    .line 166
    const-string p2, "occur a exception when AutoWidgetAction.getXXXAction"

    .line 168
    new-array v0, v0, [Ljava/lang/Object;

    .line 170
    const-string v1, "AutoWidgetProvider"

    .line 172
    invoke-static {v1, p2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 175
    :goto_0
    return-void
.end method

.method public final Q(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetProvider"

    .line 6
    const-string v2, "updateCruiseCameraInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lnb;->j()Lnb;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lnb;->p()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_5

    .line 21
    const-string v0, "updateCruiseCameraInfo isCruise"

    .line 23
    new-array v2, p1, [Ljava/lang/Object;

    .line 25
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    if-nez p3, :cond_0

    .line 30
    const-string p3, "updateCruiseCameraInfo isCruise cameraInfo == null getCameraInfo()"

    .line 32
    new-array v0, p1, [Ljava/lang/Object;

    .line 34
    invoke-static {v1, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    sget-object p3, Lco;->m:Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 39
    :cond_0
    const/16 v0, 0x8

    .line 41
    if-eqz p3, :cond_4

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v3, "updateCruiseCameraInfo isCruise cameraInfo!=null cameraInfo="

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p3}, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;->toString()Ljava/lang/String;

    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    new-array v3, p1, [Ljava/lang/Object;

    .line 66
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 71
    const/16 v2, 0x65

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lyl0;

    .line 83
    if-eqz v1, :cond_2

    .line 85
    iget v1, v1, Lyl0;->d:I

    .line 87
    if-nez v1, :cond_1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    sget v1, Ly80;->B2:I

    .line 92
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    sget v1, Ly80;->B2:I

    .line 98
    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    :goto_1
    iget v1, p3, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;->c:I

    .line 103
    const/4 v2, 0x4

    .line 104
    if-ne v1, v2, :cond_3

    .line 106
    sget v1, Ly80;->C2:I

    .line 108
    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    sget p1, Ly80;->A2:I

    .line 113
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget p3, p3, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;->e:I

    .line 123
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 126
    const-string p3, ""

    .line 128
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    sget v1, Ly80;->C2:I

    .line 141
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    sget v0, Ly80;->A2:I

    .line 146
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    sget-object p1, Lam0;->a:Ljava/util/Map;

    .line 151
    iget p3, p3, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;->c:I

    .line 153
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object p3

    .line 157
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object p1

    .line 161
    check-cast p1, Ljava/lang/Integer;

    .line 163
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 166
    move-result p1

    .line 167
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 170
    goto :goto_2

    .line 171
    :cond_4
    const-string p3, "dealCameraInfo isCruise cameraInfo==null"

    .line 173
    new-array p1, p1, [Ljava/lang/Object;

    .line 175
    invoke-static {v1, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    sget p1, Ly80;->B2:I

    .line 180
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    :cond_5
    :goto_2
    return-void
.end method

.method public final R(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    sget-object p1, Lco;->l:Landroid/graphics/Bitmap;

    .line 3
    const-string v0, "AutoWidgetProvider"

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 14
    const-string p1, "updateCruiseRoadLine(). suc"

    .line 16
    new-array v2, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    sget p1, Ly80;->q0:I

    .line 23
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 25
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 28
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 31
    invoke-static {}, Lco;->d()V

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string p1, "updateCruiseRoadLine(). invalid bitmap"

    .line 37
    new-array v1, v1, [Ljava/lang/Object;

    .line 39
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    sget p1, Ly80;->q0:I

    .line 44
    const/16 v0, 0x8

    .line 46
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 49
    :goto_0
    return-void
.end method

.method public final S(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 8

    .line 1
    sget-boolean v0, Lfm0;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    sget v4, Lfm0;->b:I

    .line 7
    sget-object v5, Lfm0;->c:Ljava/lang/String;

    .line 9
    sget-object v6, Lfm0;->d:Ljava/lang/String;

    .line 11
    sget-object v7, Lfm0;->e:Landroid/graphics/Bitmap;

    .line 13
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/autowidget/AutoWidgetProvider;->k(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 19
    :cond_0
    sget-boolean p1, Lfm0;->a:Z

    .line 21
    invoke-virtual {p0, p2, p1}, Lcom/autonavi/autowidget/AutoWidgetProvider;->j(Landroid/widget/RemoteViews;Z)V

    .line 24
    return-void
.end method

.method public final T(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    sget-object v3, Lco;->o:Ljava/util/List;

    .line 9
    const-string v4, "AutoWidgetProvider"

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_15

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 17
    move-result v6

    .line 18
    if-nez v6, :cond_0

    .line 20
    goto/16 :goto_b

    .line 22
    :cond_0
    const-string v6, "updateGuideInfoToUI(). naviInfo  not null"

    .line 24
    new-array v7, v5, [Ljava/lang/Object;

    .line 26
    invoke-static {v4, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;

    .line 35
    iget-object v6, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 37
    iget v7, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 39
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 45
    iget-object v6, v6, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->segmentRemainDistAuto:Ljava/lang/String;

    .line 47
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v7

    .line 51
    const-string v8, ""

    .line 53
    const/16 v9, 0x8

    .line 55
    if-nez v7, :cond_3

    .line 57
    sget v7, Ld90;->c:I

    .line 59
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 62
    move-result-object v10

    .line 63
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 66
    move-result v10

    .line 67
    if-eqz v10, :cond_1

    .line 69
    sget v10, Ly80;->b:I

    .line 71
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    move-result-object v11

    .line 75
    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    sget v6, Ly80;->d:I

    .line 84
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 87
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 90
    move-result-object v7

    .line 91
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 94
    sget v6, Ly80;->c:I

    .line 96
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget v6, Ly80;->e:I

    .line 101
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    iget-object v7, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 106
    iget v10, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 108
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 114
    iget-object v7, v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->nextRouteName:Ljava/lang/String;

    .line 116
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    sget v7, Ld90;->h:I

    .line 122
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 125
    move-result-object v10

    .line 126
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 129
    move-result v10

    .line 130
    if-eqz v10, :cond_2

    .line 132
    sget v10, Ly80;->b:I

    .line 134
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v11

    .line 138
    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 141
    move-result-object v6

    .line 142
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 145
    sget v6, Ly80;->d:I

    .line 147
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 153
    move-result-object v7

    .line 154
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 157
    sget v6, Ly80;->c:I

    .line 159
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 162
    sget v6, Ly80;->e:I

    .line 164
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 167
    iget-object v7, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 169
    iget v10, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 171
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 174
    move-result-object v7

    .line 175
    check-cast v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 177
    iget-object v7, v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->nextRouteName:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 182
    goto :goto_0

    .line 183
    :cond_2
    sget v7, Ly80;->b:I

    .line 185
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    sget v6, Ly80;->d:I

    .line 190
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 193
    sget v6, Ly80;->c:I

    .line 195
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    sget v6, Ly80;->e:I

    .line 200
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 203
    iget-object v7, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 205
    iget v10, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 207
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 210
    move-result-object v7

    .line 211
    check-cast v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 213
    iget-object v7, v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->nextRouteName:Ljava/lang/String;

    .line 215
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    :cond_3
    :goto_0
    sget-object v6, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 220
    const/16 v7, 0xcb

    .line 222
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 225
    move-result-object v7

    .line 226
    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    move-result-object v6

    .line 230
    check-cast v6, Lyl0;

    .line 232
    sget v7, Ly80;->R:I

    .line 234
    if-eqz v6, :cond_4

    .line 236
    iget v6, v6, Lyl0;->d:I

    .line 238
    goto :goto_1

    .line 239
    :cond_4
    const/4 v6, 0x0

    .line 240
    :goto_1
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 243
    iget-object v6, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->curRouteName:Ljava/lang/String;

    .line 245
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 248
    move-result v10

    .line 249
    if-nez v10, :cond_5

    .line 251
    sget v10, Ld90;->j:I

    .line 253
    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 256
    move-result-object v10

    .line 257
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 260
    move-result v10

    .line 261
    if-eqz v10, :cond_6

    .line 263
    :cond_5
    sget v6, Ld90;->i:I

    .line 265
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 268
    move-result-object v6

    .line 269
    :cond_6
    invoke-static {}, Lnb;->j()Lnb;

    .line 272
    move-result-object v10

    .line 273
    invoke-virtual {v10}, Lnb;->q()Z

    .line 276
    move-result v10

    .line 277
    if-nez v10, :cond_8

    .line 279
    invoke-static {}, Lib;->m()Z

    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_7

    .line 285
    sget v6, Ld90;->e:I

    .line 287
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    move-result-object v6

    .line 291
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 294
    goto :goto_2

    .line 295
    :cond_7
    sget v6, Ld90;->l:I

    .line 297
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 300
    move-result-object v6

    .line 301
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 304
    goto :goto_2

    .line 305
    :cond_8
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 308
    :goto_2
    sget-object v6, Lco;->p:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 310
    invoke-static {v6}, Lno;->t(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lno;

    .line 313
    move-result-object v6

    .line 314
    const/4 v7, 0x1

    .line 315
    if-eqz v6, :cond_d

    .line 317
    invoke-virtual {v6}, Lno;->k()[B

    .line 320
    move-result-object v10

    .line 321
    const/4 v11, 0x2

    .line 322
    const/4 v12, 0x3

    .line 323
    if-nez v10, :cond_9

    .line 325
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 328
    move-result-object v10

    .line 329
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 332
    move-result v10

    .line 333
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 336
    move-result-object v13

    .line 337
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 340
    move-result v13

    .line 341
    invoke-static {v10, v13, v5, v7}, Lob;->h(IIZZ)Landroid/graphics/Bitmap;

    .line 344
    move-result-object v10

    .line 345
    new-array v12, v12, [Ljava/lang/Object;

    .line 347
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 349
    aput-object v13, v12, v5

    .line 351
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 354
    move-result-object v13

    .line 355
    aput-object v13, v12, v7

    .line 357
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 360
    move-result-object v6

    .line 361
    aput-object v6, v12, v11

    .line 363
    const-string v6, "online:{?} \u8f6c\u5411\u4fe1\u606f\uff1a icon:{?} roundNum:{?}"

    .line 365
    invoke-static {v4, v6, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    goto :goto_4

    .line 369
    :cond_9
    invoke-virtual {v6}, Lno;->k()[B

    .line 372
    move-result-object v10

    .line 373
    invoke-static {v10}, Lob;->b([B)[I

    .line 376
    move-result-object v10

    .line 377
    invoke-virtual {v6}, Lno;->m()I

    .line 380
    move-result v13

    .line 381
    invoke-virtual {v6}, Lno;->l()I

    .line 384
    move-result v14

    .line 385
    const/4 v9, 0x5

    .line 386
    const-string v15, "online:{?} \u8f6c\u5411\u4fe1\u606f\uff1a icon:{?} roundNum:{?} bitmapWidth:{?} bitmapHeight:{?}"

    .line 388
    if-lez v13, :cond_c

    .line 390
    if-gtz v14, :cond_a

    .line 392
    goto :goto_5

    .line 393
    :cond_a
    if-eqz v10, :cond_b

    .line 395
    array-length v12, v10

    .line 396
    if-lez v12, :cond_b

    .line 398
    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 400
    invoke-static {v10, v13, v14, v12}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 403
    move-result-object v10

    .line 404
    goto :goto_3

    .line 405
    :cond_b
    const/4 v10, 0x0

    .line 406
    :goto_3
    new-array v9, v9, [Ljava/lang/Object;

    .line 408
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 410
    aput-object v12, v9, v5

    .line 412
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 415
    move-result-object v12

    .line 416
    aput-object v12, v9, v7

    .line 418
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 421
    move-result-object v12

    .line 422
    aput-object v12, v9, v11

    .line 424
    invoke-virtual {v6}, Lno;->m()I

    .line 427
    move-result v11

    .line 428
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    move-result-object v11

    .line 432
    const/4 v12, 0x3

    .line 433
    aput-object v11, v9, v12

    .line 435
    invoke-virtual {v6}, Lno;->l()I

    .line 438
    move-result v6

    .line 439
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 442
    move-result-object v6

    .line 443
    const/4 v11, 0x4

    .line 444
    aput-object v6, v9, v11

    .line 446
    invoke-static {v4, v15, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    :goto_4
    if-eqz v10, :cond_d

    .line 451
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 454
    move-result v4

    .line 455
    if-nez v4, :cond_d

    .line 457
    sget v4, Ly80;->f:I

    .line 459
    invoke-virtual {v2, v4, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 462
    goto :goto_6

    .line 463
    :cond_c
    :goto_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 465
    const-string v2, "width\u3001height must be > 0"

    .line 467
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 470
    new-array v2, v9, [Ljava/lang/Object;

    .line 472
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 474
    aput-object v3, v2, v5

    .line 476
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 479
    move-result-object v3

    .line 480
    aput-object v3, v2, v7

    .line 482
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 485
    move-result-object v3

    .line 486
    aput-object v3, v2, v11

    .line 488
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object v3

    .line 492
    const/4 v5, 0x3

    .line 493
    aput-object v3, v2, v5

    .line 495
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    move-result-object v3

    .line 499
    const/4 v5, 0x4

    .line 500
    aput-object v3, v2, v5

    .line 502
    invoke-static {v4, v15, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 505
    return-void

    .line 506
    :cond_d
    :goto_6
    iget-object v4, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainDistAuto:Ljava/lang/String;

    .line 508
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 511
    move-result v6

    .line 512
    if-nez v6, :cond_f

    .line 514
    sget v6, Ld90;->c:I

    .line 516
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 519
    move-result-object v9

    .line 520
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 523
    move-result v9

    .line 524
    if-eqz v9, :cond_e

    .line 526
    sget v9, Ly80;->j1:I

    .line 528
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 531
    move-result-object v10

    .line 532
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 539
    sget v4, Ly80;->k1:I

    .line 541
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 544
    move-result-object v1

    .line 545
    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 548
    goto :goto_7

    .line 549
    :cond_e
    sget v6, Ld90;->h:I

    .line 551
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 554
    move-result-object v9

    .line 555
    invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 558
    move-result v9

    .line 559
    if-eqz v9, :cond_f

    .line 561
    sget v9, Ly80;->j1:I

    .line 563
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 566
    move-result-object v10

    .line 567
    invoke-virtual {v4, v10, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 570
    move-result-object v4

    .line 571
    invoke-virtual {v2, v9, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 574
    sget v4, Ly80;->k1:I

    .line 576
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 579
    move-result-object v1

    .line 580
    invoke-virtual {v2, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 583
    :cond_f
    :goto_7
    iget-wide v3, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainTime:D

    .line 585
    double-to-int v1, v3

    .line 586
    invoke-static {v1}, Lob;->a(I)Lob$d;

    .line 589
    move-result-object v1

    .line 590
    if-eqz v1, :cond_14

    .line 592
    iget v3, v1, Lob$d;->a:I

    .line 594
    if-lez v3, :cond_10

    .line 596
    sget v3, Ly80;->l1:I

    .line 598
    new-instance v4, Ljava/lang/StringBuilder;

    .line 600
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 603
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 606
    iget v6, v1, Lob$d;->a:I

    .line 608
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    move-result-object v4

    .line 615
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 618
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 621
    sget v3, Ly80;->m1:I

    .line 623
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 626
    const/4 v3, 0x1

    .line 627
    goto :goto_8

    .line 628
    :cond_10
    sget v3, Ly80;->l1:I

    .line 630
    const/16 v4, 0x8

    .line 632
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 635
    sget v3, Ly80;->m1:I

    .line 637
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 640
    const/4 v3, 0x0

    .line 641
    :goto_8
    iget v4, v1, Lob$d;->b:I

    .line 643
    if-lez v4, :cond_11

    .line 645
    sget v4, Ly80;->n1:I

    .line 647
    new-instance v6, Ljava/lang/StringBuilder;

    .line 649
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 652
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    iget v9, v1, Lob$d;->b:I

    .line 657
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 663
    move-result-object v6

    .line 664
    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 667
    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 670
    sget v4, Ly80;->o1:I

    .line 672
    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 675
    const/4 v4, 0x1

    .line 676
    goto :goto_9

    .line 677
    :cond_11
    sget v4, Ly80;->n1:I

    .line 679
    const/16 v6, 0x8

    .line 681
    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 684
    sget v4, Ly80;->o1:I

    .line 686
    invoke-virtual {v2, v4, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 689
    const/4 v4, 0x0

    .line 690
    :goto_9
    iget v6, v1, Lob$d;->c:I

    .line 692
    if-lez v6, :cond_12

    .line 694
    sget v3, Ly80;->p1:I

    .line 696
    new-instance v4, Ljava/lang/StringBuilder;

    .line 698
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 701
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    iget v1, v1, Lob$d;->c:I

    .line 706
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 712
    move-result-object v1

    .line 713
    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 716
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 719
    sget v1, Ly80;->q1:I

    .line 721
    invoke-virtual {v2, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 724
    goto :goto_a

    .line 725
    :cond_12
    if-nez v3, :cond_13

    .line 727
    if-nez v4, :cond_13

    .line 729
    sget v1, Ly80;->p1:I

    .line 731
    const-string v3, "<1"

    .line 733
    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 736
    invoke-virtual {v2, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 739
    sget v1, Ly80;->q1:I

    .line 741
    invoke-virtual {v2, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 744
    goto :goto_a

    .line 745
    :cond_13
    sget v1, Ly80;->p1:I

    .line 747
    const/16 v3, 0x8

    .line 749
    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 752
    sget v1, Ly80;->q1:I

    .line 754
    invoke-virtual {v2, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 757
    :cond_14
    :goto_a
    invoke-virtual {v0, v2, v7}, Lcom/autonavi/autowidget/AutoWidgetProvider;->F(Landroid/widget/RemoteViews;Z)V

    .line 760
    return-void

    .line 761
    :cond_15
    :goto_b
    const-string v1, "updateGuideInfoToUI(). naviInfo null"

    .line 763
    new-array v3, v5, [Ljava/lang/Object;

    .line 765
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    invoke-virtual {v0, v2, v5}, Lcom/autonavi/autowidget/AutoWidgetProvider;->F(Landroid/widget/RemoteViews;Z)V

    .line 771
    return-void
.end method

.method public final U(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v0

    .line 5
    sget-wide v2, Lco;->d:J

    .line 7
    sub-long/2addr v0, v2

    .line 8
    const-wide/16 v2, 0x1b58

    .line 10
    const/4 p1, 0x0

    .line 11
    cmp-long v4, v0, v2

    .line 13
    if-lez v4, :cond_0

    .line 15
    invoke-static {}, Lco;->c()V

    .line 18
    const/4 v0, 0x1

    .line 19
    new-array v0, v0, [Ljava/lang/Object;

    .line 21
    new-instance v1, Ljava/lang/RuntimeException;

    .line 23
    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    .line 26
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    aput-object v1, v0, p1

    .line 32
    const-string v1, "AutoWidgetProvider"

    .line 34
    const-string v2, "updateGuideTraffic trace :{?}"

    .line 36
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    :cond_0
    sget-object v0, Lco;->f:Landroid/graphics/Bitmap;

    .line 41
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 49
    sget v0, Ly80;->a1:I

    .line 51
    sget-object v1, Lco;->f:Landroid/graphics/Bitmap;

    .line 53
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 56
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 59
    invoke-static {}, Lco;->b()V

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    sget p1, Ly80;->a1:I

    .line 65
    const/16 v0, 0x8

    .line 67
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 70
    :goto_0
    return-void
.end method

.method public final V(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 1

    .line 1
    sget-object p1, Lco;->l:Landroid/graphics/Bitmap;

    .line 3
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 11
    sget p1, Ly80;->Y0:I

    .line 13
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 22
    invoke-static {}, Lco;->d()V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget p1, Ly80;->Y0:I

    .line 28
    const/16 v0, 0x8

    .line 30
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 33
    :goto_0
    return-void
.end method

.method public final W(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnb;->h()Lcr;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lcr;->a()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 15
    const/16 v2, 0x67

    .line 17
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lyl0;

    .line 27
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    const/16 v4, 0x8

    .line 33
    const-string v5, "AutoWidgetProvider"

    .line 35
    const/4 v6, 0x0

    .line 36
    if-nez v3, :cond_4

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v3, "dealRoadNameInfo isCruise !TextUtils.isEmpty(currentRoadName) currentRoadName="

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v2

    .line 55
    new-array v3, v6, [Ljava/lang/Object;

    .line 57
    invoke-static {v5, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    if-eqz v1, :cond_1

    .line 62
    iget v1, v1, Lyl0;->d:I

    .line 64
    if-nez v1, :cond_0

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    sget v1, Ly80;->P:I

    .line 69
    invoke-virtual {p2, v1, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    :goto_0
    sget v1, Ly80;->P:I

    .line 75
    invoke-virtual {p2, v1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 78
    :goto_1
    invoke-static {}, Lnb;->j()Lnb;

    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lnb;->q()Z

    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 88
    invoke-static {}, Lib;->m()Z

    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_2

    .line 94
    sget v0, Ly80;->P:I

    .line 96
    sget v1, Ld90;->e:I

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 105
    goto :goto_2

    .line 106
    :cond_2
    sget v0, Ly80;->P:I

    .line 108
    sget v1, Ld90;->l:I

    .line 110
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 117
    goto :goto_2

    .line 118
    :cond_3
    sget p1, Ly80;->P:I

    .line 120
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    const-string v0, "dealRoadNameInfo isCruise TextUtils.isEmpty(currentRoadName)"

    .line 126
    new-array v3, v6, [Ljava/lang/Object;

    .line 128
    invoke-static {v5, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    sget v0, Ly80;->P:I

    .line 133
    invoke-virtual {p2, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 136
    invoke-static {}, Lnb;->j()Lnb;

    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v3}, Lnb;->q()Z

    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_7

    .line 146
    if-eqz v1, :cond_5

    .line 148
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 150
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    move-result-object v1

    .line 154
    check-cast v1, Lyl0;

    .line 156
    iget v1, v1, Lyl0;->d:I

    .line 158
    if-nez v1, :cond_7

    .line 160
    :cond_5
    invoke-virtual {p2, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 163
    invoke-static {}, Lib;->m()Z

    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_6

    .line 169
    sget v1, Ld90;->e:I

    .line 171
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    sget v1, Ld90;->l:I

    .line 181
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 188
    :cond_7
    :goto_2
    return-void
.end method

.method public final X(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    invoke-static {}, Lwc;->d()Landroid/graphics/Bitmap;

    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 15
    sput-object p1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 21
    const-string v1, "updateWidgetScreenShotBackgroundImage hasShotMap:{?}"

    .line 23
    const/16 v2, 0x8

    .line 25
    const-string v3, "AutoWidgetProvider"

    .line 27
    const/4 v4, 0x1

    .line 28
    const/4 v5, 0x0

    .line 29
    if-eqz p1, :cond_a

    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 34
    move-result p1

    .line 35
    if-nez p1, :cond_a

    .line 37
    sput-boolean v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 39
    sget p1, Ly80;->i1:I

    .line 41
    sget-boolean v6, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 43
    if-eqz v6, :cond_1

    .line 45
    const/4 v6, 0x0

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/16 v6, 0x8

    .line 49
    :goto_1
    invoke-virtual {p2, p1, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    sget p1, Ly80;->y2:I

    .line 54
    sget-boolean v6, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 56
    if-eqz v6, :cond_2

    .line 58
    const/4 v2, 0x0

    .line 59
    :cond_2
    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 62
    new-array p1, v4, [Ljava/lang/Object;

    .line 64
    sget-boolean v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 66
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v2

    .line 70
    aput-object v2, p1, v5

    .line 72
    invoke-static {v3, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    invoke-static {}, Lnb;->j()Lnb;

    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lnb;->r()Z

    .line 82
    move-result p1

    .line 83
    const-string v1, "updateWidgetScreenShotBackgroundImage tmpBitmap.getConfig() == Config.ARGB_8888 is true?"

    .line 85
    const-string v2, ",tmpBitmap.getConfig() "

    .line 87
    if-nez p1, :cond_6

    .line 89
    invoke-static {}, Lnb;->j()Lnb;

    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lnb;->p()Z

    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_6

    .line 99
    invoke-virtual {p0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->b()Z

    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_4

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    const-string v1, "updateWidgetScreenShotBackgroundImage HalfScreenShot tmpBitmap.getConfig() == Config.ARGB_8888 is true?"

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 117
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 120
    move-result-object v1

    .line 121
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 123
    if-ne v1, v6, :cond_3

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    const/4 v4, 0x0

    .line 127
    :goto_2
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 135
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 145
    move-result-object p1

    .line 146
    new-array v1, v5, [Ljava/lang/Object;

    .line 148
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    sget p1, Ly80;->d0:I

    .line 153
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 155
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 158
    sget p1, Ly80;->e1:I

    .line 160
    sget v1, Lt80;->O4:I

    .line 162
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 165
    invoke-virtual {p0, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->C(Landroid/graphics/Bitmap;)V

    .line 168
    goto/16 :goto_6

    .line 170
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 183
    move-result-object v1

    .line 184
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 186
    if-ne v1, v6, :cond_5

    .line 188
    goto :goto_3

    .line 189
    :cond_5
    const/4 v4, 0x0

    .line 190
    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 198
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    new-array v1, v5, [Ljava/lang/Object;

    .line 211
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    sget p1, Ly80;->e1:I

    .line 216
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 218
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 221
    invoke-virtual {p0, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->C(Landroid/graphics/Bitmap;)V

    .line 224
    goto/16 :goto_6

    .line 226
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 236
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 239
    move-result-object v1

    .line 240
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 242
    if-ne v1, v6, :cond_7

    .line 244
    goto :goto_4

    .line 245
    :cond_7
    const/4 v4, 0x0

    .line 246
    :goto_4
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 254
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 257
    move-result-object v1

    .line 258
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    move-result-object p1

    .line 265
    new-array v1, v5, [Ljava/lang/Object;

    .line 267
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lnb;->j()Lnb;

    .line 273
    move-result-object p1

    .line 274
    invoke-virtual {p1}, Lnb;->r()Z

    .line 277
    move-result p1

    .line 278
    if-eqz p1, :cond_9

    .line 280
    invoke-virtual {p0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->a()D

    .line 283
    move-result-wide v1

    .line 284
    const-wide/16 v3, 0x0

    .line 286
    cmpl-double p1, v1, v3

    .line 288
    if-lez p1, :cond_8

    .line 290
    sget p1, Ly80;->S:I

    .line 292
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 294
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 297
    invoke-virtual {p0, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->C(Landroid/graphics/Bitmap;)V

    .line 300
    goto :goto_6

    .line 301
    :cond_8
    sget p1, Ly80;->e1:I

    .line 303
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 305
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 308
    invoke-virtual {p0, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->C(Landroid/graphics/Bitmap;)V

    .line 311
    goto :goto_6

    .line 312
    :cond_9
    sget p1, Ly80;->e1:I

    .line 314
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 316
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->C(Landroid/graphics/Bitmap;)V

    .line 322
    goto :goto_6

    .line 323
    :cond_a
    sput-boolean v5, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 325
    sget p1, Ly80;->i1:I

    .line 327
    sget-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 329
    if-eqz v0, :cond_b

    .line 331
    const/4 v0, 0x0

    .line 332
    goto :goto_5

    .line 333
    :cond_b
    const/16 v0, 0x8

    .line 335
    :goto_5
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 338
    sget p1, Ly80;->y2:I

    .line 340
    sget-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 342
    if-eqz v0, :cond_c

    .line 344
    const/4 v2, 0x0

    .line 345
    :cond_c
    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 348
    new-array p1, v4, [Ljava/lang/Object;

    .line 350
    sget-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 352
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 355
    move-result-object v0

    .line 356
    aput-object v0, p1, v5

    .line 358
    invoke-static {v3, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    const-string p1, "tmpBitmap == null || tmpBitmap.isRecycled() 1"

    .line 363
    new-array v0, v5, [Ljava/lang/Object;

    .line 365
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    sget p1, Ly80;->e1:I

    .line 370
    sget v0, Lt80;->N4:I

    .line 372
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 375
    sget p1, Ly80;->d0:I

    .line 377
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 380
    sget p1, Ly80;->S:I

    .line 382
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 385
    :goto_6
    return-void
.end method

.method public final Y(Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 4
    sget v1, Ly80;->i1:I

    .line 6
    sget-boolean v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 8
    const/16 v3, 0x8

    .line 10
    if-eqz v2, :cond_0

    .line 12
    const/4 v2, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v2, 0x8

    .line 16
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 19
    sget v1, Ly80;->y2:I

    .line 21
    sget-boolean v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    const/4 v3, 0x0

    .line 26
    :cond_1
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 29
    const/4 v1, 0x1

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    sget-boolean v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->d:Z

    .line 34
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v1, v0

    .line 40
    const-string v2, "AutoWidgetProvider"

    .line 42
    const-string v3, "updateWidgetScreenShotBackgroundImageDefault hasShotMap:{?}"

    .line 44
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-string v1, "updateWidgetScreenShotBackgroundImageDefault"

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    sget v0, Ly80;->e1:I

    .line 56
    sget v1, Lt80;->N4:I

    .line 58
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 61
    sget v0, Ly80;->d0:I

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 66
    sget v0, Ly80;->S:I

    .line 68
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 71
    return-void
.end method

.method public a()D
    .locals 2

    .line 1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final c(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lnb;->l()Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result p3

    .line 13
    const-string v0, "\u00b0"

    .line 15
    const/16 v1, 0x8

    .line 17
    const/4 v2, 0x0

    .line 18
    if-nez p3, :cond_1

    .line 20
    sget p3, Ly80;->T0:I

    .line 22
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 25
    sget p3, Ly80;->o:I

    .line 27
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    sget p3, Ly80;->p:I

    .line 32
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    sget p3, Ly80;->l:I

    .line 37
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Lnb;->j()Lnb;

    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lnb;->k()Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_0

    .line 50
    sget p3, Ly80;->m:I

    .line 52
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-object p1, p1, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p1

    .line 72
    sget p3, Ly80;->n:I

    .line 74
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sget p1, Ly80;->m:I

    .line 80
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lnb;->j()Lnb;

    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1}, Lnb;->k()Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 91
    move-result-object p1

    .line 92
    if-eqz p1, :cond_2

    .line 94
    sget p3, Ly80;->T0:I

    .line 96
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget p3, Ly80;->o:I

    .line 101
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget p3, Ly80;->p:I

    .line 106
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    new-instance p3, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object p1, p1, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 126
    sget p3, Ly80;->q:I

    .line 128
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    sget p1, Ly80;->T0:I

    .line 134
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    :goto_0
    return-void
.end method

.method public final d(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnb;->u()Z

    .line 8
    move-result v0

    .line 9
    sget-boolean v1, Lzl0;->a:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-static {}, Lnb;->j()Lnb;

    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lnb;->r()Z

    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 23
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->h(Landroid/widget/RemoteViews;Z)V

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-boolean v1, Lzl0;->a:Z

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-static {}, Lnb;->j()Lnb;

    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Lnb;->p()Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->e(Landroid/widget/RemoteViews;Z)V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->i(Landroid/widget/RemoteViews;Z)V

    .line 48
    :goto_0
    return-void
.end method

.method public final e(Landroid/widget/RemoteViews;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->g(Landroid/widget/RemoteViews;Z)V

    .line 4
    return-void
.end method

.method public final f(Landroid/widget/RemoteViews;Z)V
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v0, "AutoWidgetProvider changeDayNightModeForMute isMuted="

    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Lnb;->j()Lnb;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lnb;->t()Z

    .line 18
    move-result v0

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p2

    .line 26
    const/4 v0, 0x0

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    const-string v1, "AutoWidgetProvider"

    .line 31
    invoke-static {v1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    invoke-static {}, Lnb;->j()Lnb;

    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p2}, Lnb;->t()Z

    .line 41
    move-result p2

    .line 42
    if-eqz p2, :cond_0

    .line 44
    sget p2, Ly80;->a:I

    .line 46
    sget v0, Lt80;->b:I

    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    sget p2, Ly80;->a:I

    .line 54
    sget v0, Lt80;->a:I

    .line 56
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 59
    :goto_0
    return-void
.end method

.method public final g(Landroid/widget/RemoteViews;Z)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->getZoomMode()I

    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x1

    .line 6
    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    aput-object v2, v0, v1

    .line 15
    const-string v1, "AutoWidgetProvider"

    .line 17
    const-string v2, "AndroidWidgetMap.getZoomMode={?}"

    .line 19
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    if-nez p2, :cond_0

    .line 24
    sget v0, Lt80;->e:I

    .line 26
    sget v1, Ly80;->F2:I

    .line 28
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    sget v0, Lt80;->f:I

    .line 34
    sget v1, Ly80;->F2:I

    .line 36
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 39
    :goto_0
    const/4 v0, 0x2

    .line 40
    if-ne p2, v0, :cond_1

    .line 42
    sget p2, Lt80;->c:I

    .line 44
    sget v0, Ly80;->E2:I

    .line 46
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    sget p2, Lt80;->d:I

    .line 52
    sget v0, Ly80;->E2:I

    .line 54
    invoke-virtual {p1, v0, p2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 57
    :goto_1
    return-void
.end method

.method public final h(Landroid/widget/RemoteViews;Z)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->f(Landroid/widget/RemoteViews;Z)V

    .line 4
    return-void
.end method

.method public final i(Landroid/widget/RemoteViews;Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public final j(Landroid/widget/RemoteViews;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eqz p2, :cond_0

    .line 6
    sget p2, Ly80;->d1:I

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    sget p2, Ly80;->Y:I

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    sget p2, Ly80;->c0:I

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 24
    const/4 v3, 0x4

    .line 25
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Lyl0;

    .line 35
    sget-object v3, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 37
    const/4 v4, 0x5

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lyl0;

    .line 48
    sget-object v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 50
    const/4 v5, 0x6

    .line 51
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v4

    .line 59
    check-cast v4, Lyl0;

    .line 61
    if-eqz v2, :cond_2

    .line 63
    iget v2, v2, Lyl0;->d:I

    .line 65
    if-ne v2, v1, :cond_2

    .line 67
    if-eqz v3, :cond_2

    .line 69
    iget v2, v3, Lyl0;->d:I

    .line 71
    if-ne v2, v1, :cond_2

    .line 73
    if-eqz v4, :cond_3

    .line 75
    iget v2, v4, Lyl0;->d:I

    .line 77
    if-eq v2, v1, :cond_1

    .line 79
    if-nez v2, :cond_3

    .line 81
    if-nez p2, :cond_3

    .line 83
    :cond_1
    sget p2, Ly80;->d1:I

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget p2, Ly80;->d1:I

    .line 91
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 94
    :cond_3
    :goto_0
    sget p2, Ly80;->c0:I

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget p2, Ly80;->Y:I

    .line 101
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    :goto_1
    return-void
.end method

.method public final k(Landroid/content/Context;Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget v0, Ly80;->Y:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7
    sget v0, Ly80;->c0:I

    .line 9
    const/16 v1, 0x8

    .line 11
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    move-result-object p1

    .line 18
    if-eqz p3, :cond_1

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eq p3, v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget p3, Ly80;->b0:I

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    sget p4, Ld90;->t:I

    .line 36
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 39
    move-result-object p4

    .line 40
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {p2, p3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    sget p3, Ly80;->b0:I

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    sget p4, Ld90;->n:I

    .line 63
    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 66
    move-result-object p4

    .line 67
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object p4

    .line 74
    invoke-virtual {p2, p3, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    :goto_0
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    move-result p3

    .line 81
    if-eqz p3, :cond_2

    .line 83
    sget p1, Ly80;->Z:I

    .line 85
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    sget p3, Ly80;->Z:I

    .line 91
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 94
    new-instance p4, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    sget v0, Ld90;->k:I

    .line 101
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 118
    :goto_1
    if-eqz p6, :cond_3

    .line 120
    invoke-virtual {p6}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_3

    .line 126
    sget p1, Ly80;->a0:I

    .line 128
    invoke-virtual {p2, p1, p6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 131
    :cond_3
    return-void
.end method

.method public final l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 4

    .line 1
    sget-boolean v0, Lzl0;->a:Z

    .line 3
    const-string v1, "AutoWidgetProvider"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lnb;->j()Lnb;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lnb;->r()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const-string p3, "changePageByStatus isInNavi"

    .line 20
    new-array v0, v2, [Ljava/lang/Object;

    .line 22
    invoke-static {v1, p3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->E(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 28
    sput-boolean v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->e:Z

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lnb;->p()Z

    .line 38
    move-result v0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eqz v0, :cond_1

    .line 42
    sget-boolean v0, Lzl0;->a:Z

    .line 44
    if-eqz v0, :cond_1

    .line 46
    new-array p3, v3, [Ljava/lang/Object;

    .line 48
    sget-boolean v0, Lcom/autonavi/autowidget/AutoWidgetProvider;->e:Z

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 53
    move-result-object v0

    .line 54
    aput-object v0, p3, v2

    .line 56
    const-string v0, "changePageByStatus isCruise firstShowCruise:{?}"

    .line 58
    invoke-static {v1, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    const/4 p3, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->H(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 71
    move-result-object v3

    .line 72
    aput-object v3, v0, v2

    .line 74
    const-string v3, "changePageByStatus not all isNeedRightOnSilenceMode:{?}"

    .line 76
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 82
    sput-boolean v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->e:Z

    .line 84
    :goto_0
    return-void
.end method

.method public final o(Landroid/widget/RemoteViews;Z)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AutoWidgetProvider onReceive dealAudioSwitch isMuted="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v1, v1, [Ljava/lang/Object;

    .line 21
    const-string v2, "AutoWidgetProvider"

    .line 23
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    if-eqz p2, :cond_0

    .line 28
    sget p2, Ly80;->a:I

    .line 30
    sget v0, Lt80;->b:I

    .line 32
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget p2, Ly80;->a:I

    .line 38
    sget v0, Lt80;->a:I

    .line 40
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 43
    :goto_0
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onDeleted super"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 14
    const-string p1, "AutoWidgetProvider onDeleted"

    .line 16
    new-array p2, v0, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onDisabled super"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sput-boolean v0, Lhm0;->f:Z

    .line 13
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 16
    const-string p1, "AutoWidgetProvider onDisabled"

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 20
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 26
    move-result-object p1

    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1}, Lhm0;->v(Lpq;)V

    .line 31
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 33
    invoke-virtual {p1}, Lgc0;->a()V

    .line 36
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 38
    invoke-virtual {p1}, Ldm0;->a()V

    .line 41
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 43
    invoke-virtual {p1}, Lqm0;->a()V

    .line 46
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 48
    invoke-virtual {p1}, Ljm0;->a()V

    .line 51
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->handleWidgetEnableNotify(Z)V

    .line 54
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onEnabled super"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    sput-boolean v1, Lhm0;->f:Z

    .line 14
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 17
    const-string v3, "AutoWidgetProvider onEnabled"

    .line 19
    new-array v4, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2, p0}, Lhm0;->v(Lpq;)V

    .line 31
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->f:Lgc0;

    .line 33
    invoke-virtual {v2}, Lgc0;->j()V

    .line 36
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->g:Ldm0;

    .line 38
    invoke-virtual {v2}, Ldm0;->d()V

    .line 41
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->h:Lqm0;

    .line 43
    invoke-virtual {v2}, Lqm0;->e()V

    .line 46
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProvider;->i:Ljm0;

    .line 48
    invoke-virtual {v2}, Ljm0;->e()V

    .line 51
    invoke-static {v0, p1}, Lim0;->h(ILandroid/content/Context;)V

    .line 54
    invoke-static {v1}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->handleWidgetEnableNotify(Z)V

    .line 57
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_19

    .line 4
    if-nez p2, :cond_0

    .line 6
    goto/16 :goto_7

    .line 8
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 11
    const-string v1, "AutoWidgetProvider"

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    const-string v3, "AutoWidgetProvider onReceive intent.getAction()="

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v2

    .line 34
    new-array v3, v0, [Ljava/lang/Object;

    .line 36
    invoke-static {v1, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {}, Lob;->e()Z

    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 45
    return-void

    .line 46
    :cond_1
    const-class v1, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 48
    invoke-static {p1, v1}, Lob;->j(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 51
    move-result v1

    .line 52
    sput-boolean v1, Lhm0;->f:Z

    .line 54
    if-nez v1, :cond_2

    .line 56
    const-string p1, "AutoWidgetProvider"

    .line 58
    const-string p2, "AutoWidgetProvider onReceive reutrn !isWidgetAdded"

    .line 60
    new-array v0, v0, [Ljava/lang/Object;

    .line 62
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    return-void

    .line 66
    :cond_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 69
    move-result-object v1

    .line 70
    if-nez v1, :cond_3

    .line 72
    const-string p1, "AutoWidgetProvider"

    .line 74
    const-string p2, "mWidgetManager is null  return\uff01"

    .line 76
    new-instance v1, Ljava/lang/NullPointerException;

    .line 78
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    .line 81
    new-array v0, v0, [Ljava/lang/Object;

    .line 83
    invoke-static {p1, p2, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 86
    return-void

    .line 87
    :cond_3
    new-instance v2, Landroid/widget/RemoteViews;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    sget v4, Lb90;->b:I

    .line 95
    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 98
    const-class v3, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 100
    monitor-enter v3

    .line 101
    :try_start_0
    sget-object v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 103
    const/4 v5, 0x4

    .line 104
    if-eqz v4, :cond_4

    .line 106
    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    .line 109
    move-result v4

    .line 110
    if-gtz v4, :cond_5

    .line 112
    :cond_4
    invoke-static {p1, v5}, Lmb;->j(Landroid/content/Context;I)Ljava/util/HashMap;

    .line 115
    move-result-object v4

    .line 116
    sput-object v4, Lcom/autonavi/autowidget/AutoWidgetProvider;->b:Ljava/util/HashMap;

    .line 118
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-virtual {p0, v2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->J(Landroid/widget/RemoteViews;)V

    .line 122
    invoke-virtual {p0, p1, v2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->P(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 125
    invoke-static {}, Lnb;->j()Lnb;

    .line 128
    move-result-object v3

    .line 129
    invoke-virtual {v3}, Lnb;->o()Z

    .line 132
    move-result v3

    .line 133
    const/16 v4, 0x8

    .line 135
    if-nez v3, :cond_8

    .line 137
    const-string v3, "com.autonavi.amapauto.AUTO_WIDGET_CONTROLL_SWITCH"

    .line 139
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 142
    move-result-object v5

    .line 143
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v3

    .line 147
    if-nez v3, :cond_6

    .line 149
    const-string v3, "AUTO_STATUS_FOR_INTERNAL_WIDGET"

    .line 151
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 155
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_7

    .line 161
    :cond_6
    const/4 p2, 0x0

    .line 162
    sput-object p2, Lpm0;->b:Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 164
    sput v0, Llc0;->a:I

    .line 166
    sput v0, Llc0;->b:I

    .line 168
    const-string p2, ""

    .line 170
    sput-object p2, Lnb;->j:Ljava/lang/String;

    .line 172
    invoke-virtual {p0, p1, v2, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->Y(Landroid/widget/RemoteViews;)V

    .line 178
    sget p2, Ly80;->Y:I

    .line 180
    invoke-virtual {v2, p2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 183
    sget p2, Ly80;->c0:I

    .line 185
    invoke-virtual {v2, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 188
    :cond_7
    :try_start_1
    new-instance p2, Landroid/content/ComponentName;

    .line 190
    const-class v3, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 192
    invoke-direct {p2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    invoke-virtual {v1, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 198
    goto :goto_0

    .line 199
    :catch_0
    move-exception p1

    .line 200
    const-string p2, "AutoWidgetProvider"

    .line 202
    const-string v1, "mWidgetManager.updateAppWidget ocuur a Exception!!!"

    .line 204
    new-array v0, v0, [Ljava/lang/Object;

    .line 206
    invoke-static {p2, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 209
    :goto_0
    return-void

    .line 210
    :cond_8
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v3, p0}, Lhm0;->v(Lpq;)V

    .line 217
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->m()V

    .line 220
    invoke-virtual {p0, v2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->d(Landroid/widget/RemoteViews;)V

    .line 223
    invoke-static {}, Lob;->c()Z

    .line 226
    move-result v3

    .line 227
    if-nez v3, :cond_9

    .line 229
    :try_start_2
    new-instance p2, Landroid/content/ComponentName;

    .line 231
    const-class v3, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 233
    invoke-direct {p2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 236
    invoke-virtual {v1, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 239
    goto :goto_1

    .line 240
    :catch_1
    move-exception p1

    .line 241
    const-string p2, "AutoWidgetProvider"

    .line 243
    const-string v1, "mWidgetManager.updateAppWidget ocuur a Exception!!!"

    .line 245
    new-array v0, v0, [Ljava/lang/Object;

    .line 247
    invoke-static {p2, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 250
    :goto_1
    return-void

    .line 251
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 254
    move-result-object v3

    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 258
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 261
    move-result v6

    .line 262
    const/16 v7, 0x9

    .line 264
    const/4 v8, 0x1

    .line 265
    const/4 v9, -0x1

    .line 266
    sparse-switch v6, :sswitch_data_0

    .line 269
    :goto_2
    const/4 v5, -0x1

    .line 270
    goto/16 :goto_3

    .line 272
    :sswitch_0
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_OIL_DISTANCE"

    .line 274
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    move-result v3

    .line 278
    if-nez v3, :cond_a

    .line 280
    goto :goto_2

    .line 281
    :cond_a
    const/16 v5, 0xc

    .line 283
    goto/16 :goto_3

    .line 285
    :sswitch_1
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_GPS_INFO"

    .line 287
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 290
    move-result v3

    .line 291
    if-nez v3, :cond_b

    .line 293
    goto :goto_2

    .line 294
    :cond_b
    const/16 v5, 0xb

    .line 296
    goto/16 :goto_3

    .line 298
    :sswitch_2
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_SILENCE_ROADNAME_INFO"

    .line 300
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 303
    move-result v3

    .line 304
    if-nez v3, :cond_c

    .line 306
    goto :goto_2

    .line 307
    :cond_c
    const/16 v5, 0xa

    .line 309
    goto/16 :goto_3

    .line 311
    :sswitch_3
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_ROAD_NAME_INFO"

    .line 313
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    move-result v3

    .line 317
    if-nez v3, :cond_d

    .line 319
    goto :goto_2

    .line 320
    :cond_d
    const/16 v5, 0x9

    .line 322
    goto/16 :goto_3

    .line 324
    :sswitch_4
    const-string v5, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_WEATHER_INFO"

    .line 326
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    move-result v3

    .line 330
    if-nez v3, :cond_e

    .line 332
    goto :goto_2

    .line 333
    :cond_e
    const/16 v5, 0x8

    .line 335
    goto :goto_3

    .line 336
    :sswitch_5
    const-string v4, "action_internal_widget_auto_bitmap"

    .line 338
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 341
    move-result v3

    .line 342
    if-nez v3, :cond_f

    .line 344
    goto :goto_2

    .line 345
    :cond_f
    const/4 v5, 0x7

    .line 346
    goto :goto_3

    .line 347
    :sswitch_6
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_AUDIO_UI_SWITCH"

    .line 349
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    move-result v3

    .line 353
    if-nez v3, :cond_10

    .line 355
    goto :goto_2

    .line 356
    :cond_10
    const/4 v5, 0x6

    .line 357
    goto :goto_3

    .line 358
    :sswitch_7
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_PARK_DISTANCE"

    .line 360
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    move-result v3

    .line 364
    if-nez v3, :cond_11

    .line 366
    goto :goto_2

    .line 367
    :cond_11
    const/4 v5, 0x5

    .line 368
    goto :goto_3

    .line 369
    :sswitch_8
    const-string v4, "AUTO_GUIDE_INFO_FOR_INTERNAL_WIDGET"

    .line 371
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 374
    move-result v3

    .line 375
    if-nez v3, :cond_16

    .line 377
    goto :goto_2

    .line 378
    :sswitch_9
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_CAMERA_INFO"

    .line 380
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 383
    move-result v3

    .line 384
    if-nez v3, :cond_12

    .line 386
    goto :goto_2

    .line 387
    :cond_12
    const/4 v5, 0x3

    .line 388
    goto :goto_3

    .line 389
    :sswitch_a
    const-string v4, "AUTO_STATUS_FOR_INTERNAL_WIDGET"

    .line 391
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 394
    move-result v3

    .line 395
    if-nez v3, :cond_13

    .line 397
    goto/16 :goto_2

    .line 399
    :cond_13
    const/4 v5, 0x2

    .line 400
    goto :goto_3

    .line 401
    :sswitch_b
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_HOME_COMPANY_INFO"

    .line 403
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 406
    move-result v3

    .line 407
    if-nez v3, :cond_14

    .line 409
    goto/16 :goto_2

    .line 411
    :cond_14
    const/4 v5, 0x1

    .line 412
    goto :goto_3

    .line 413
    :sswitch_c
    const-string v4, "com.autonavi.amapauto.AUTO_WIDGET_CONTROLL_SWITCH"

    .line 415
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 418
    move-result v3

    .line 419
    if-nez v3, :cond_15

    .line 421
    goto/16 :goto_2

    .line 423
    :cond_15
    const/4 v5, 0x0

    .line 424
    :cond_16
    :goto_3
    packed-switch v5, :pswitch_data_0

    .line 427
    invoke-virtual {p0, p1, v2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->r(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 430
    goto :goto_4

    .line 431
    :pswitch_0
    sget p2, Llc0;->a:I

    .line 433
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->y(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 436
    goto :goto_4

    .line 437
    :pswitch_1
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->t(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 440
    goto :goto_4

    .line 441
    :pswitch_2
    invoke-virtual {p0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->O()V

    .line 444
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->x(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 447
    goto :goto_4

    .line 448
    :pswitch_3
    invoke-virtual {p0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->O()V

    .line 451
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->v(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 454
    goto :goto_4

    .line 455
    :pswitch_4
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->B(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 458
    goto :goto_4

    .line 459
    :pswitch_5
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 462
    goto :goto_4

    .line 463
    :pswitch_6
    invoke-static {}, Lnb;->j()Lnb;

    .line 466
    move-result-object p2

    .line 467
    invoke-virtual {p2}, Lnb;->t()Z

    .line 470
    move-result p2

    .line 471
    invoke-virtual {p0, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->o(Landroid/widget/RemoteViews;Z)V

    .line 474
    goto :goto_4

    .line 475
    :pswitch_7
    sget p2, Llc0;->b:I

    .line 477
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->z(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 480
    goto :goto_4

    .line 481
    :pswitch_8
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->u(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 484
    goto :goto_4

    .line 485
    :pswitch_9
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 488
    goto :goto_4

    .line 489
    :pswitch_a
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->p(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 492
    goto :goto_4

    .line 493
    :pswitch_b
    invoke-virtual {p0, p1, v2, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 496
    :goto_4
    const/4 v8, 0x0

    .line 497
    goto :goto_5

    .line 498
    :pswitch_c
    invoke-virtual {p0, v0, v7}, Lcom/autonavi/autowidget/AutoWidgetProvider;->N(II)V

    .line 501
    invoke-virtual {p0, p1, v2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->w(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 504
    :goto_5
    if-nez v8, :cond_17

    .line 506
    sget-object p2, Lcom/autonavi/autowidget/AutoWidgetProvider;->a:Landroid/graphics/Bitmap;

    .line 508
    if-eqz p2, :cond_17

    .line 510
    if-eqz p2, :cond_18

    .line 512
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 515
    move-result p2

    .line 516
    if-nez p2, :cond_18

    .line 518
    :cond_17
    :try_start_3
    new-instance p2, Landroid/content/ComponentName;

    .line 520
    const-class v3, Lcom/autonavi/autowidget/AutoWidgetProvider;

    .line 522
    invoke-direct {p2, p1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 525
    invoke-virtual {v1, p2, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 528
    const-string p1, "AutoWidgetProvider"

    .line 530
    const-string p2, "mWidgetManager.updateAppWidget !!!"

    .line 532
    new-array v1, v0, [Ljava/lang/Object;

    .line 534
    invoke-static {p1, p2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 537
    goto :goto_6

    .line 538
    :catch_2
    move-exception p1

    .line 539
    const-string p2, "AutoWidgetProvider"

    .line 541
    const-string v1, "mWidgetManager.updateAppWidget ocuur a Exception!!!"

    .line 543
    new-array v0, v0, [Ljava/lang/Object;

    .line 545
    invoke-static {p2, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 548
    :cond_18
    :goto_6
    return-void

    .line 549
    :catchall_0
    move-exception p1

    .line 550
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 551
    throw p1

    .line 552
    :cond_19
    :goto_7
    const-string p1, "AutoWidgetProvider"

    .line 554
    const-string p2, "[onReceive] context== null || intent == null."

    .line 556
    new-array v0, v0, [Ljava/lang/Object;

    .line 558
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    return-void

    .line 562
    nop

    .line 563
    :sswitch_data_0
    .sparse-switch
        -0x5962f83f -> :sswitch_c
        -0x544f67a3 -> :sswitch_b
        -0x42aae4cd -> :sswitch_a
        -0x3e56f30b -> :sswitch_9
        -0x2dbca0e -> :sswitch_8
        -0xd80f29 -> :sswitch_7
        0x1d05eaf3 -> :sswitch_6
        0x2ac7027d -> :sswitch_5
        0x4d4f846c -> :sswitch_4
        0x55f8b8f6 -> :sswitch_3
        0x6b8c46b1 -> :sswitch_2
        0x762746f6 -> :sswitch_1
        0x76983215 -> :sswitch_0
    .end sparse-switch

    .line 617
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRestored(Landroid/content/Context;[I[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onRestored super"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 14
    const-string p1, "AutoWidgetProvider onRestored"

    .line 16
    new-array p2, v0, [Ljava/lang/Object;

    .line 18
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onUpdate super"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/4 v1, 0x1

    .line 12
    sput-boolean v1, Lhm0;->f:Z

    .line 14
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 17
    const-string p1, "AutoWidgetProvider onUpdate"

    .line 19
    new-array p2, v0, [Ljava/lang/Object;

    .line 21
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    return-void
.end method

.method public final p(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onReceive AUTO_STATUS_FOR_INTERNAL_WIDGET"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "WidgetEnabler.is4x3WidgetEnabled="

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v3, Lzl0;->a:Z

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    new-array v3, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz p3, :cond_0

    .line 37
    :try_start_0
    const-string v1, "extra_auto_state"

    .line 39
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 42
    move-result-object p3

    .line 43
    if-eqz p3, :cond_0

    .line 45
    check-cast p3, Ljava/lang/Integer;

    .line 47
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 50
    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception p1

    .line 53
    const-string p2, "dealAutoStatusChange occur a error"

    .line 55
    new-array p3, v0, [Ljava/lang/Object;

    .line 57
    invoke-static {v2, p2, p1, p3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    return-void

    .line 61
    :cond_0
    const/4 p3, 0x0

    .line 62
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    const-string v3, "status="

    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    new-array v3, v0, [Ljava/lang/Object;

    .line 81
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    sget-boolean v1, Lzl0;->a:Z

    .line 86
    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p0, p1, p2, v1}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    const/4 v1, 0x3

    .line 93
    const/4 v3, 0x1

    .line 94
    if-ne p3, v1, :cond_2

    .line 96
    invoke-virtual {p0, p1, p2, v3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 99
    const-string v1, "updateWidgetScreenShotBackgroundImageDefault FOREGROUND ----"

    .line 101
    new-array v4, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-static {}, Lwc;->b()V

    .line 109
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProvider;->D()V

    .line 112
    sget-object v1, Lwc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 114
    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 117
    invoke-virtual {p0, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->Y(Landroid/widget/RemoteViews;)V

    .line 120
    goto :goto_3

    .line 121
    :cond_2
    const/4 v1, 0x4

    .line 122
    if-ne p3, v1, :cond_3

    .line 124
    sget-object v1, Lwc;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 126
    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 129
    const-string v1, "updateWidgetScreenShotBackgroundImageDefault BACKGROUND ----"

    .line 131
    new-array v4, v0, [Ljava/lang/Object;

    .line 133
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    :cond_3
    const/16 v1, 0x9

    .line 138
    if-eq p3, v1, :cond_5

    .line 140
    const/16 v1, 0xc

    .line 142
    if-ne p3, v1, :cond_4

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    sget-boolean v1, Lzl0;->a:Z

    .line 147
    invoke-virtual {p0, p1, p2, v1}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 150
    goto :goto_3

    .line 151
    :cond_5
    :goto_1
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->isInNavi()Z

    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_6

    .line 157
    return-void

    .line 158
    :cond_6
    invoke-virtual {p0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->b()Z

    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 164
    invoke-static {v3}, Lvl0;->d(Z)V

    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-static {v0}, Lvl0;->d(Z)V

    .line 171
    :goto_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 174
    :goto_3
    const/4 v1, 0x2

    .line 175
    if-ne p3, v1, :cond_8

    .line 177
    sput-boolean v0, Lzl0;->a:Z

    .line 179
    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 182
    invoke-virtual {p0, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->Y(Landroid/widget/RemoteViews;)V

    .line 185
    :cond_8
    return-void
.end method

.method public final q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "dealCameraInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lnb;->j()Lnb;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lnb;->p()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    sget-boolean v1, Lzl0;->a:Z

    .line 23
    if-eqz v1, :cond_0

    .line 25
    const-string v1, "dealCameraInfo isCruise"

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const-string v0, "CAMERA_INFO_KEY"

    .line 34
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 37
    move-result-object p3

    .line 38
    check-cast p3, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;

    .line 40
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->H(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 47
    move-result-object p3

    .line 48
    invoke-virtual {p3}, Lnb;->r()Z

    .line 51
    move-result p3

    .line 52
    if-eqz p3, :cond_1

    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget-boolean p3, Lzl0;->a:Z

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 60
    :goto_0
    return-void
.end method

.method public final r(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 1

    .line 1
    sget-boolean v0, Lzl0;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->X(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 8
    :cond_0
    return-void
.end method

.method public final s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->S(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 4
    sget-boolean p3, Lzl0;->a:Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 9
    return-void
.end method

.method public final t(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetProvider"

    .line 6
    const-string v2, "dealGpsInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-boolean v0, Lzl0;->a:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Lnb;->j()Lnb;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lnb;->r()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-static {}, Lnb;->j()Lnb;

    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lnb;->s()Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 35
    const-string v0, "dealGpsInfo isInNavi"

    .line 37
    new-array p3, p3, [Ljava/lang/Object;

    .line 39
    invoke-static {v1, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->E(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lnb;->p()Z

    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 56
    sget-boolean v0, Lzl0;->a:Z

    .line 58
    if-eqz v0, :cond_1

    .line 60
    const-string v0, "dealGpsInfo isCruise"

    .line 62
    new-array p3, p3, [Ljava/lang/Object;

    .line 64
    invoke-static {v1, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 p3, 0x0

    .line 68
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->H(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    sget-boolean p3, Lzl0;->a:Z

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 77
    :goto_0
    return-void
.end method

.method public final u(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetProvider"

    .line 6
    const-string v2, "AutoWidgetProvider onReceive action_auto_guide_info"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "WidgetEnabler.is4x3WidgetEnabled="

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v2, Lzl0;->a:Z

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    new-array p3, p3, [Ljava/lang/Object;

    .line 32
    invoke-static {v1, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget-boolean p3, Lzl0;->a:Z

    .line 37
    if-eqz p3, :cond_0

    .line 39
    invoke-static {}, Lnb;->j()Lnb;

    .line 42
    move-result-object p3

    .line 43
    invoke-virtual {p3}, Lnb;->r()Z

    .line 46
    move-result p3

    .line 47
    if-eqz p3, :cond_0

    .line 49
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->E(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-boolean p3, Lzl0;->a:Z

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 58
    :goto_0
    return-void
.end method

.method public final v(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetProvider"

    .line 6
    const-string v2, "dealRoadNameInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lnb;->j()Lnb;

    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lnb;->p()Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    sget-boolean v0, Lzl0;->a:Z

    .line 23
    if-eqz v0, :cond_0

    .line 25
    const-string v0, "dealRoadNameInfo isCruise"

    .line 27
    new-array p3, p3, [Ljava/lang/Object;

    .line 29
    invoke-static {v1, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 p3, 0x0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->H(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 40
    move-result-object p3

    .line 41
    invoke-virtual {p3}, Lnb;->r()Z

    .line 44
    move-result p3

    .line 45
    if-eqz p3, :cond_1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    sget-boolean p3, Lzl0;->a:Z

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 53
    :goto_0
    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AutoWidgetProvider"

    .line 6
    const-string v3, "AutoWidgetProvider onReceive dealSilenceModeCloseButton"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "WidgetEnabler.is4x3WidgetEnabled="

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v3, Lzl0;->a:Z

    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 30
    new-array v3, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    invoke-static {}, Lnb;->j()Lnb;

    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lnb;->p()Z

    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 45
    invoke-static {p1}, Lim0;->j(Landroid/content/Context;)V

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-static {p1}, Lim0;->b(Landroid/content/Context;)V

    .line 52
    :goto_0
    sput-boolean v0, Lzl0;->a:Z

    .line 54
    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/autowidget/AutoWidgetProvider;->G(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 57
    invoke-virtual {p0, p2}, Lcom/autonavi/autowidget/AutoWidgetProvider;->Y(Landroid/widget/RemoteViews;)V

    .line 60
    invoke-static {}, Lvl0;->e()V

    .line 63
    return-void
.end method

.method public final x(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lnb;->l()Ljava/lang/String;

    .line 8
    move-result-object p3

    .line 9
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    const-string v1, "\u00b0"

    .line 15
    const/16 v2, 0x8

    .line 17
    const/4 v3, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 20
    sget v0, Ly80;->T0:I

    .line 22
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 25
    sget v0, Ly80;->o:I

    .line 27
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    sget v0, Ly80;->p:I

    .line 32
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    sget v0, Ly80;->l:I

    .line 37
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    invoke-static {}, Lnb;->j()Lnb;

    .line 43
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Lnb;->k()Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 47
    move-result-object p3

    .line 48
    if-eqz p3, :cond_0

    .line 50
    sget v0, Ly80;->m:I

    .line 52
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    iget-object p3, p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object p3

    .line 72
    sget v0, Ly80;->n:I

    .line 74
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sget p3, Ly80;->m:I

    .line 80
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-static {}, Lnb;->j()Lnb;

    .line 87
    move-result-object p3

    .line 88
    invoke-virtual {p3}, Lnb;->k()Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 91
    move-result-object p3

    .line 92
    if-eqz p3, :cond_2

    .line 94
    sget v0, Ly80;->T0:I

    .line 96
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget v0, Ly80;->o:I

    .line 101
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget v0, Ly80;->p:I

    .line 106
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    iget-object p3, p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p3

    .line 126
    sget v0, Ly80;->q:I

    .line 128
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    sget p3, Ly80;->T0:I

    .line 134
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    :goto_0
    sget-boolean p3, Lzl0;->a:Z

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 142
    return-void
.end method

.method public final y(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 1
    sget-boolean p3, Lzl0;->a:Z

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 6
    return-void
.end method

.method public final z(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 1
    sget-boolean p3, Lzl0;->a:Z

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProvider;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 6
    return-void
.end method

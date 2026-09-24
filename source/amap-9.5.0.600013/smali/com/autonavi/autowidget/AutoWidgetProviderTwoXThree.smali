.class public Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;
.super Landroid/appwidget/AppWidgetProvider;
.source "SourceFile"

# interfaces
.implements Lpq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;
    }
.end annotation


# static fields
.field public static a:Ljava/util/HashMap;

.field public static b:Landroid/graphics/Bitmap;

.field public static c:Landroid/graphics/Bitmap;

.field public static d:Lgc0;

.field public static e:Ldm0;

.field public static f:Lqm0;

.field public static g:Ljm0;

.field public static h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgc0;

    .line 3
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Lgc0;-><init>(Landroid/os/Looper;)V

    .line 14
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 16
    new-instance v0, Ldm0;

    .line 18
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, v1}, Ldm0;-><init>(Landroid/os/Looper;)V

    .line 29
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 31
    new-instance v0, Lqm0;

    .line 33
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Lqm0;-><init>(Landroid/os/Looper;)V

    .line 44
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 46
    new-instance v0, Ljm0;

    .line 48
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 55
    move-result-object v1

    .line 56
    invoke-direct {v0, v1}, Ljm0;-><init>(Landroid/os/Looper;)V

    .line 59
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 61
    const/4 v0, 0x0

    .line 62
    sput v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->h:I

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

.method public static C()Landroid/os/HandlerThread;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;->a()Landroid/os/HandlerThread;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static h()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Auto2X3WidgetProvider"

    .line 6
    const-string v3, "checkHandlerThread"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-nez v1, :cond_3

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v3, "checkHandlerThread handlerThread.isAlive() = "

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 58
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v3

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v3, "false(null)"

    .line 73
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, " handlerThread.isInterrupted() = "

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;->a()Landroid/os/HandlerThread;

    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_2

    .line 87
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree$a;->a()Landroid/os/HandlerThread;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v3

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const-string v3, "true(null)"

    .line 102
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    new-instance v0, Lgc0;

    .line 123
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Lgc0;-><init>(Landroid/os/Looper;)V

    .line 134
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 136
    new-instance v0, Ldm0;

    .line 138
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 145
    move-result-object v1

    .line 146
    invoke-direct {v0, v1}, Ldm0;-><init>(Landroid/os/Looper;)V

    .line 149
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 151
    new-instance v0, Lqm0;

    .line 153
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 160
    move-result-object v1

    .line 161
    invoke-direct {v0, v1}, Lqm0;-><init>(Landroid/os/Looper;)V

    .line 164
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 166
    new-instance v0, Ljm0;

    .line 168
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 175
    move-result-object v1

    .line 176
    invoke-direct {v0, v1}, Ljm0;-><init>(Landroid/os/Looper;)V

    .line 179
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 181
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 183
    invoke-virtual {v0}, Lgc0;->j()V

    .line 186
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 188
    invoke-virtual {v0}, Ldm0;->d()V

    .line 191
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 193
    invoke-virtual {v0}, Lqm0;->e()V

    .line 196
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 198
    invoke-virtual {v0}, Ljm0;->e()V

    .line 201
    goto/16 :goto_3

    .line 203
    :cond_3
    const-string v1, "checkHandlerThread restart messages"

    .line 205
    new-array v3, v0, [Ljava/lang/Object;

    .line 207
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 212
    if-eqz v1, :cond_5

    .line 214
    const-string v1, "checkHandlerThread restart messages searchHandler!=null"

    .line 216
    new-array v3, v0, [Ljava/lang/Object;

    .line 218
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 223
    invoke-virtual {v1}, Lgc0;->d()Z

    .line 226
    move-result v1

    .line 227
    if-nez v1, :cond_4

    .line 229
    const-string v1, "checkHandlerThread restart messages searchHandler!=null !searchHandler.hasOilMessage()"

    .line 231
    new-array v3, v0, [Ljava/lang/Object;

    .line 233
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 238
    invoke-virtual {v1}, Lgc0;->k()V

    .line 241
    :cond_4
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 243
    invoke-virtual {v1}, Lgc0;->e()Z

    .line 246
    move-result v1

    .line 247
    if-nez v1, :cond_5

    .line 249
    const-string v1, "checkHandlerThread restart messages searchHandler!=null !searchHandler.hasParkMessage()"

    .line 251
    new-array v3, v0, [Ljava/lang/Object;

    .line 253
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 258
    invoke-virtual {v1}, Lgc0;->i()V

    .line 261
    :cond_5
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 263
    if-eqz v1, :cond_6

    .line 265
    invoke-virtual {v1}, Ldm0;->b()Z

    .line 268
    move-result v1

    .line 269
    if-nez v1, :cond_6

    .line 271
    const-string v1, "checkHandlerThread restart messages !widgetHomeCompanyCheckHandler.hasHomeCompanyMessage()"

    .line 273
    new-array v3, v0, [Ljava/lang/Object;

    .line 275
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 280
    invoke-virtual {v1}, Ldm0;->d()V

    .line 283
    :cond_6
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 285
    if-eqz v1, :cond_7

    .line 287
    invoke-virtual {v1}, Lqm0;->b()Z

    .line 290
    move-result v1

    .line 291
    if-nez v1, :cond_7

    .line 293
    const-string v1, "checkHandlerThread restart messages !widgetWeatherUpdateHandler.hasWeatherMessage()"

    .line 295
    new-array v3, v0, [Ljava/lang/Object;

    .line 297
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 302
    invoke-virtual {v1}, Lqm0;->e()V

    .line 305
    :cond_7
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 307
    if-eqz v1, :cond_8

    .line 309
    invoke-virtual {v1}, Ljm0;->b()Z

    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_8

    .line 315
    const-string v1, "checkHandlerThread restart messages !widgetPoiReverserUpdateHandler.hasPoiReverserMessage()"

    .line 317
    new-array v0, v0, [Ljava/lang/Object;

    .line 319
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 322
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 324
    invoke-virtual {v0}, Ljm0;->e()V

    .line 327
    :cond_8
    :goto_3
    return-void
.end method

.method public static i()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Auto2X3WidgetProvider"

    .line 6
    const-string v3, "checkHomeCompany"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 37
    const/4 v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 v1, 0x0

    .line 40
    :goto_0
    if-nez v1, :cond_3

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    const-string v3, "checkHomeCompany handlerThread.isAlive() = "

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 55
    move-result-object v3

    .line 56
    if-eqz v3, :cond_1

    .line 58
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Ljava/lang/Thread;->isAlive()Z

    .line 65
    move-result v3

    .line 66
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 69
    move-result-object v3

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const-string v3, "false(null)"

    .line 73
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    const-string v3, " handlerThread.isInterrupted() = "

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 84
    move-result-object v3

    .line 85
    if-eqz v3, :cond_2

    .line 87
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v3}, Ljava/lang/Thread;->isInterrupted()Z

    .line 94
    move-result v3

    .line 95
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v3

    .line 99
    goto :goto_2

    .line 100
    :cond_2
    const-string v3, "true(null)"

    .line 102
    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object v1

    .line 109
    new-array v0, v0, [Ljava/lang/Object;

    .line 111
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    new-instance v0, Ldm0;

    .line 123
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->C()Landroid/os/HandlerThread;

    .line 126
    move-result-object v1

    .line 127
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 130
    move-result-object v1

    .line 131
    invoke-direct {v0, v1}, Ldm0;-><init>(Landroid/os/Looper;)V

    .line 134
    sput-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 136
    invoke-virtual {v0}, Ldm0;->d()V

    .line 139
    goto :goto_3

    .line 140
    :cond_3
    const-string v1, "checkHomeCompany restart messages"

    .line 142
    new-array v3, v0, [Ljava/lang/Object;

    .line 144
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 149
    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v1}, Ldm0;->b()Z

    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_4

    .line 157
    const-string v1, "checkHomeCompany restart messages !widgetHomeCompanyCheckHandler.hasHomeCompanyMessage()"

    .line 159
    new-array v0, v0, [Ljava/lang/Object;

    .line 161
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 166
    invoke-virtual {v0}, Ldm0;->d()V

    .line 169
    :cond_4
    :goto_3
    return-void
.end method

.method public static x()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 3

    .line 1
    sget p3, Llc0;->a:I

    .line 3
    const/4 v0, 0x0

    .line 4
    const/16 v1, 0x8

    .line 6
    if-lez p3, :cond_0

    .line 8
    sget p3, Ly80;->X1:I

    .line 10
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 13
    sget v2, Llc0;->a:I

    .line 15
    invoke-static {v2}, Lob;->f(I)Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget p3, Ly80;->X1:I

    .line 25
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 28
    :goto_0
    sget p3, Llc0;->b:I

    .line 30
    if-lez p3, :cond_1

    .line 32
    sget p3, Ly80;->Z1:I

    .line 34
    invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 37
    sget v2, Llc0;->b:I

    .line 39
    invoke-static {v2}, Lob;->f(I)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    sget p3, Ly80;->Z1:I

    .line 49
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->N(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 55
    const/4 p3, 0x0

    .line 56
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->c(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 59
    sget p1, Ly80;->v2:I

    .line 61
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 64
    sget p1, Ly80;->C1:I

    .line 66
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 69
    sget p1, Ly80;->d2:I

    .line 71
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 74
    return-void
.end method

.method public final B(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V
    .locals 1

    .line 1
    sget-boolean v0, Lzl0;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->L(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 8
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->R(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->K(Landroid/widget/RemoteViews;)V

    .line 14
    invoke-virtual {p0, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->M(Landroid/widget/RemoteViews;)V

    .line 17
    sget p1, Ly80;->v2:I

    .line 19
    const/4 p3, 0x0

    .line 20
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 23
    sget p1, Ly80;->C1:I

    .line 25
    const/16 p3, 0x8

    .line 27
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    sget p1, Ly80;->d2:I

    .line 32
    invoke-virtual {p2, p1, p3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    :cond_0
    return-void
.end method

.method public final D(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->F(Landroid/widget/RemoteViews;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->G(Landroid/widget/RemoteViews;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->E(Landroid/widget/RemoteViews;)V

    .line 10
    return-void
.end method

.method public final E(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    sget v1, Ly80;->H1:I

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
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 29
    const/16 v1, 0xcc

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
    sget v1, Ly80;->I1:I

    .line 43
    if-eqz v0, :cond_1

    .line 45
    iget v2, v0, Lyl0;->d:I

    .line 47
    :cond_1
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 50
    sget v0, Ly80;->S1:I

    .line 52
    const/16 v1, 0x8

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 57
    return-void
.end method

.method public final F(Landroid/widget/RemoteViews;)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Auto2X3WidgetProvider"

    .line 6
    const-string v3, "initJingmoAdapter \u521d\u59cb\u5316\u9759\u9ed8\u6001"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lyl0;

    .line 24
    sget v2, Ly80;->c2:I

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
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 37
    const/4 v2, 0x2

    .line 38
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Lyl0;

    .line 48
    sget v2, Ly80;->Y1:I

    .line 50
    if-eqz v1, :cond_1

    .line 52
    iget v3, v1, Lyl0;->d:I

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v3, 0x0

    .line 56
    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 59
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 61
    const/4 v3, 0x3

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Lyl0;

    .line 72
    sget v3, Ly80;->W1:I

    .line 74
    if-eqz v2, :cond_2

    .line 76
    iget v4, v2, Lyl0;->d:I

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    const/4 v4, 0x0

    .line 80
    :goto_2
    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 83
    const/16 v3, 0x8

    .line 85
    if-eqz v1, :cond_3

    .line 87
    iget v1, v1, Lyl0;->d:I

    .line 89
    if-ne v1, v3, :cond_3

    .line 91
    if-eqz v2, :cond_3

    .line 93
    iget v1, v2, Lyl0;->d:I

    .line 95
    if-ne v1, v3, :cond_3

    .line 97
    sget v1, Ly80;->a2:I

    .line 99
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 102
    :cond_3
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 104
    const/4 v2, 0x4

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    move-result-object v1

    .line 113
    check-cast v1, Lyl0;

    .line 115
    sget v2, Ly80;->K1:I

    .line 117
    if-eqz v1, :cond_4

    .line 119
    iget v4, v1, Lyl0;->d:I

    .line 121
    goto :goto_3

    .line 122
    :cond_4
    const/4 v4, 0x0

    .line 123
    :goto_3
    invoke-virtual {p1, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 126
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 128
    const/4 v4, 0x5

    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    move-result-object v2

    .line 137
    check-cast v2, Lyl0;

    .line 139
    sget v4, Ly80;->J1:I

    .line 141
    if-eqz v2, :cond_5

    .line 143
    iget v5, v2, Lyl0;->d:I

    .line 145
    goto :goto_4

    .line 146
    :cond_5
    const/4 v5, 0x0

    .line 147
    :goto_4
    invoke-virtual {p1, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 150
    sget-object v4, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 152
    const/4 v5, 0x6

    .line 153
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    move-result-object v5

    .line 157
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    move-result-object v4

    .line 161
    check-cast v4, Lyl0;

    .line 163
    if-eqz v1, :cond_7

    .line 165
    iget v1, v1, Lyl0;->d:I

    .line 167
    if-ne v1, v3, :cond_7

    .line 169
    if-eqz v2, :cond_7

    .line 171
    iget v1, v2, Lyl0;->d:I

    .line 173
    if-ne v1, v3, :cond_7

    .line 175
    if-eqz v4, :cond_8

    .line 177
    iget v1, v4, Lyl0;->d:I

    .line 179
    if-eq v1, v3, :cond_6

    .line 181
    if-nez v1, :cond_8

    .line 183
    sget-boolean v1, Lfm0;->a:Z

    .line 185
    if-nez v1, :cond_8

    .line 187
    :cond_6
    sget v1, Ly80;->L1:I

    .line 189
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    goto :goto_5

    .line 193
    :cond_7
    sget v1, Ly80;->L1:I

    .line 195
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 198
    :cond_8
    :goto_5
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 200
    const/4 v2, 0x7

    .line 201
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    move-result-object v1

    .line 209
    check-cast v1, Lyl0;

    .line 211
    if-eqz v1, :cond_9

    .line 213
    iget v1, v1, Lyl0;->d:I

    .line 215
    if-ne v1, v3, :cond_9

    .line 217
    sget v1, Ly80;->v1:I

    .line 219
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 222
    sget v0, Ly80;->w1:I

    .line 224
    invoke-virtual {p1, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 227
    goto :goto_6

    .line 228
    :cond_9
    sget v1, Ly80;->v1:I

    .line 230
    invoke-virtual {p1, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 233
    sget v1, Ly80;->w1:I

    .line 235
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 238
    :goto_6
    return-void
.end method

.method public final G(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    sget v1, Ly80;->x2:I

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget v0, v0, Lyl0;->d:I

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 26
    return-void
.end method

.method public final H(II)V
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

.method public final I()V
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v4

    .line 14
    aput-object v2, v0, v3

    .line 16
    aput-object v4, v0, v1

    .line 18
    const/4 v1, 0x2

    .line 19
    aput-object v4, v0, v1

    .line 21
    const/4 v1, 0x3

    .line 22
    aput-object v4, v0, v1

    .line 24
    const-string v1, "[100000261][4][%d][%d][%d][%d]"

    .line 26
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const v1, 0x5f5e205

    .line 33
    const/16 v2, 0xa

    .line 35
    const-string v3, "AUTO_BASE"

    .line 37
    invoke-static {v3, v1, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 40
    return-void
.end method

.method public final J(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Ly80;->K1:I

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p1, v1}, Llb;->h(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 11
    sget v0, Ly80;->J1:I

    .line 13
    invoke-static {p1, v1}, Llb;->g(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 20
    sget v0, Ly80;->M1:I

    .line 22
    invoke-static {p1, v1}, Llb;->i(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 29
    sget v0, Ly80;->b2:I

    .line 31
    invoke-static {p1, v1}, Llb;->c(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 38
    sget v0, Ly80;->W1:I

    .line 40
    invoke-static {p1, v1}, Llb;->a(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 47
    sget v0, Ly80;->Y1:I

    .line 49
    invoke-static {p1, v1}, Llb;->b(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 56
    sget v0, Ly80;->S1:I

    .line 58
    invoke-static {p1, v1}, Llb;->d(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 65
    sget v0, Ly80;->R1:I

    .line 67
    invoke-static {p1, v1}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 74
    sget v0, Ly80;->y1:I

    .line 76
    invoke-static {p1, v1}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 83
    sget v0, Ly80;->d2:I

    .line 85
    invoke-static {p1, v1}, Llb;->e(Landroid/content/Context;I)Landroid/app/PendingIntent;

    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 93
    :catch_0
    move-exception p1

    .line 94
    const/4 p2, 0x0

    .line 95
    new-array p2, p2, [Ljava/lang/Object;

    .line 97
    const-string v0, "Auto2X3WidgetProvider"

    .line 99
    const-string v1, "occur a exception when AutoWidgetAction.getXXXAction"

    .line 101
    invoke-static {v0, v1, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void
.end method

.method public final K(Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->b:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    sget v0, Ly80;->u2:I

    .line 13
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->b:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget v0, Ly80;->u2:I

    .line 21
    sget v1, Lt80;->J2:I

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 26
    :goto_0
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->c:Landroid/graphics/Bitmap;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_1

    .line 36
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->c:Landroid/graphics/Bitmap;

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 41
    const/4 p1, 0x0

    .line 42
    sput-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->c:Landroid/graphics/Bitmap;

    .line 44
    :cond_1
    return-void
.end method

.method public final L(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    new-array v0, p1, [Ljava/lang/Object;

    .line 4
    const-string v1, "Auto2X3WidgetProvider"

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
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    sget v1, Ly80;->s2:I

    .line 92
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    :goto_0
    sget v1, Ly80;->s2:I

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
    sget v1, Ly80;->t2:I

    .line 108
    invoke-virtual {p2, v1, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 111
    sget p1, Ly80;->r2:I

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
    sget v1, Ly80;->t2:I

    .line 141
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 144
    sget v0, Ly80;->r2:I

    .line 146
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 149
    iget p1, p3, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;->c:I

    .line 151
    invoke-static {p1}, Lam0;->a(I)Z

    .line 154
    move-result p1

    .line 155
    if-eqz p1, :cond_5

    .line 157
    sget-object p1, Lam0;->a:Ljava/util/Map;

    .line 159
    iget p3, p3, Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;->c:I

    .line 161
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object p3

    .line 165
    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Ljava/lang/Integer;

    .line 171
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 174
    move-result p1

    .line 175
    if-lez p1, :cond_5

    .line 177
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 180
    goto :goto_2

    .line 181
    :cond_4
    const-string p3, "dealCameraInfo isCruise cameraInfo==null"

    .line 183
    new-array p1, p1, [Ljava/lang/Object;

    .line 185
    invoke-static {v1, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    sget p1, Ly80;->s2:I

    .line 190
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 193
    :cond_5
    :goto_2
    return-void
.end method

.method public final M(Landroid/widget/RemoteViews;)V
    .locals 3

    .line 1
    sget-object v0, Lco;->l:Landroid/graphics/Bitmap;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 11
    sget v1, Ly80;->x2:I

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 20
    invoke-static {}, Lco;->d()V

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget v0, Ly80;->x2:I

    .line 26
    const/16 v1, 0x8

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 31
    :goto_0
    return-void
.end method

.method public final N(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6

    .line 1
    sget-boolean p1, Lfm0;->a:Z

    .line 3
    if-eqz p1, :cond_0

    .line 5
    sget v2, Lfm0;->b:I

    .line 7
    sget-object v3, Lfm0;->c:Ljava/lang/String;

    .line 9
    sget-object v4, Lfm0;->d:Ljava/lang/String;

    .line 11
    sget-object v5, Lfm0;->e:Landroid/graphics/Bitmap;

    .line 13
    move-object v0, p0

    .line 14
    move-object v1, p2

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f(Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 18
    :cond_0
    sget-boolean p1, Lfm0;->a:Z

    .line 20
    invoke-virtual {p0, p2, p1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e(Landroid/widget/RemoteViews;Z)V

    .line 23
    return-void
.end method

.method public final O(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 7

    .line 1
    sget-object p1, Lco;->o:Ljava/util/List;

    .line 3
    const/4 v0, 0x4

    .line 4
    const-string v1, "Auto2X3WidgetProvider"

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz p1, :cond_9

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 15
    goto/16 :goto_5

    .line 17
    :cond_0
    sget-object p1, Lco;->n:Ljava/util/List;

    .line 19
    if-eqz p1, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    move-result p1

    .line 25
    if-lez p1, :cond_1

    .line 27
    sget-object p1, Lco;->n:Ljava/util/List;

    .line 29
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/autonavi/amapauto/widget/jni/NaviCamera;

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p1, 0x0

    .line 37
    :goto_0
    if-eqz p1, :cond_3

    .line 39
    iget v3, p1, Lcom/autonavi/amapauto/widget/jni/NaviCamera;->type:I

    .line 41
    iget-object p1, p1, Lcom/autonavi/amapauto/widget/jni/NaviCamera;->speed:[I

    .line 43
    if-eqz p1, :cond_2

    .line 45
    array-length v4, p1

    .line 46
    if-lez v4, :cond_2

    .line 48
    aget p1, p1, v2

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const/4 p1, 0x0

    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const/4 v3, -0x1

    .line 54
    const/4 p1, -0x1

    .line 55
    :goto_1
    const/4 v4, 0x2

    .line 56
    new-array v4, v4, [Ljava/lang/Object;

    .line 58
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v5

    .line 62
    aput-object v5, v4, v2

    .line 64
    const/4 v5, 0x1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    move-result-object v6

    .line 69
    aput-object v6, v4, v5

    .line 71
    const-string v5, "updateGuideInfoCameraUI(). naviCameraType:{?},naviCameraSpeed:{?}"

    .line 73
    invoke-static {v1, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const/16 v1, 0x8

    .line 78
    if-nez v3, :cond_6

    .line 80
    if-lez p1, :cond_5

    .line 82
    const/16 v0, 0xff

    .line 84
    if-ne p1, v0, :cond_4

    .line 86
    goto :goto_2

    .line 87
    :cond_4
    sget v0, Ly80;->B1:I

    .line 89
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 92
    sget v3, Ly80;->z1:I

    .line 94
    invoke-virtual {p2, v3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 97
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    goto :goto_3

    .line 105
    :cond_5
    :goto_2
    sget p1, Ly80;->z1:I

    .line 107
    sget v0, Lt80;->A4:I

    .line 109
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 112
    sget v0, Ly80;->B1:I

    .line 114
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 117
    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    :goto_3
    sget p1, Ly80;->A1:I

    .line 122
    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 125
    goto :goto_4

    .line 126
    :cond_6
    invoke-static {v3}, Lam0;->a(I)Z

    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_8

    .line 132
    sget p1, Ly80;->B1:I

    .line 134
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    sget p1, Ly80;->z1:I

    .line 139
    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 142
    sget-object v0, Lam0;->b:Ljava/util/Map;

    .line 144
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    move-result-object v1

    .line 148
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    move-result-object v0

    .line 152
    check-cast v0, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 157
    move-result v0

    .line 158
    if-lez v0, :cond_7

    .line 160
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 163
    :cond_7
    sget p1, Ly80;->A1:I

    .line 165
    invoke-virtual {p2, p1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 168
    goto :goto_4

    .line 169
    :cond_8
    sget p1, Ly80;->A1:I

    .line 171
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    :goto_4
    return-void

    .line 175
    :cond_9
    :goto_5
    const-string p1, "updateGuideInfoCameraUI(). naviInfo null"

    .line 177
    new-array v2, v2, [Ljava/lang/Object;

    .line 179
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    sget p1, Ly80;->A1:I

    .line 184
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 187
    return-void
.end method

.method public final P(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    sget-object v3, Lco;->o:Ljava/util/List;

    .line 9
    const-string v4, "Auto2X3WidgetProvider"

    .line 11
    const/4 v5, 0x0

    .line 12
    if-eqz v3, :cond_16

    .line 14
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 20
    goto/16 :goto_10

    .line 22
    :cond_0
    sget-object v3, Lco;->o:Ljava/util/List;

    .line 24
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;

    .line 30
    iget-object v6, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 32
    iget v7, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 34
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v6

    .line 38
    check-cast v6, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 40
    iget-object v6, v6, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->segmentRemainDistAuto:Ljava/lang/String;

    .line 42
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 45
    move-result v7

    .line 46
    const-string v8, ""

    .line 48
    const/16 v9, 0x8

    .line 50
    if-nez v7, :cond_3

    .line 52
    sget v7, Ld90;->c:I

    .line 54
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v10

    .line 58
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 61
    move-result v10

    .line 62
    if-eqz v10, :cond_1

    .line 64
    sget v10, Ly80;->T1:I

    .line 66
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v11

    .line 70
    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    sget v6, Ly80;->U1:I

    .line 79
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    move-result-object v7

    .line 86
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    sget v7, Ld90;->h:I

    .line 92
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 95
    move-result-object v10

    .line 96
    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 99
    move-result v10

    .line 100
    if-eqz v10, :cond_2

    .line 102
    sget v10, Ly80;->T1:I

    .line 104
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 107
    move-result-object v11

    .line 108
    invoke-virtual {v6, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 111
    move-result-object v6

    .line 112
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 115
    sget v6, Ly80;->U1:I

    .line 117
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 120
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 127
    goto :goto_0

    .line 128
    :cond_2
    sget v7, Ly80;->T1:I

    .line 130
    invoke-virtual {v2, v7, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 133
    sget v6, Ly80;->U1:I

    .line 135
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 138
    :cond_3
    :goto_0
    sget v6, Ly80;->V1:I

    .line 140
    iget-object v7, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoData:Ljava/util/List;

    .line 142
    iget v10, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->NaviInfoFlag:I

    .line 144
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    move-result-object v7

    .line 148
    check-cast v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;

    .line 150
    iget-object v7, v7, Lcom/autonavi/amapauto/widget/jni/NaviInfoPanel;->nextRouteName:Ljava/lang/String;

    .line 152
    invoke-virtual {v2, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 155
    sget-object v6, Lco;->p:Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;

    .line 157
    invoke-static {v6}, Lno;->t(Lcom/autonavi/amapauto/jni/protocol/data/GuideInfoProtocolData;)Lno;

    .line 160
    move-result-object v6

    .line 161
    const/4 v7, 0x1

    .line 162
    if-eqz v6, :cond_9

    .line 164
    invoke-virtual {v6}, Lno;->k()[B

    .line 167
    move-result-object v10

    .line 168
    const/4 v11, 0x2

    .line 169
    const/4 v12, 0x3

    .line 170
    if-nez v10, :cond_4

    .line 172
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 179
    move-result v10

    .line 180
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 183
    move-result-object v13

    .line 184
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    .line 187
    move-result v13

    .line 188
    invoke-static {v10, v13, v5, v7}, Lob;->h(IIZZ)Landroid/graphics/Bitmap;

    .line 191
    move-result-object v10

    .line 192
    new-array v12, v12, [Ljava/lang/Object;

    .line 194
    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 196
    aput-object v13, v12, v5

    .line 198
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 201
    move-result-object v13

    .line 202
    aput-object v13, v12, v7

    .line 204
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 207
    move-result-object v6

    .line 208
    aput-object v6, v12, v11

    .line 210
    const-string v6, "online:{?} \u8f6c\u5411\u4fe1\u606f\uff1a icon:{?} roundNum:{?}"

    .line 212
    invoke-static {v4, v6, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    goto/16 :goto_3

    .line 217
    :cond_4
    invoke-virtual {v6}, Lno;->k()[B

    .line 220
    move-result-object v10

    .line 221
    invoke-static {v10}, Lob;->b([B)[I

    .line 224
    move-result-object v10

    .line 225
    invoke-virtual {v6}, Lno;->m()I

    .line 228
    move-result v13

    .line 229
    invoke-virtual {v6}, Lno;->l()I

    .line 232
    move-result v14

    .line 233
    new-instance v15, Ljava/lang/StringBuilder;

    .line 235
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    const-string v9, ", onlineIcon="

    .line 240
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v6}, Lno;->k()[B

    .line 246
    move-result-object v9

    .line 247
    if-nez v9, :cond_5

    .line 249
    const-string v9, "null"

    .line 251
    goto :goto_1

    .line 252
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    invoke-virtual {v6}, Lno;->k()[B

    .line 260
    move-result-object v16

    .line 261
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->hashCode()I

    .line 264
    move-result v12

    .line 265
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    const-string v12, ","

    .line 270
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {v6}, Lno;->k()[B

    .line 276
    move-result-object v12

    .line 277
    array-length v12, v12

    .line 278
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    move-result-object v9

    .line 285
    :goto_1
    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v9

    .line 292
    new-array v12, v5, [Ljava/lang/Object;

    .line 294
    invoke-static {v4, v9, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    const/4 v12, 0x5

    .line 298
    const-string v15, "online:{?} \u8f6c\u5411\u4fe1\u606f\uff1a icon:{?} roundNum:{?} bitmapWidth:{?} bitmapHeight:{?}"

    .line 300
    if-lez v13, :cond_8

    .line 302
    if-gtz v14, :cond_6

    .line 304
    goto :goto_4

    .line 305
    :cond_6
    if-eqz v10, :cond_7

    .line 307
    array-length v9, v10

    .line 308
    if-lez v9, :cond_7

    .line 310
    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 312
    invoke-static {v10, v13, v14, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 315
    move-result-object v9

    .line 316
    goto :goto_2

    .line 317
    :cond_7
    const/4 v9, 0x0

    .line 318
    :goto_2
    move-object v10, v9

    .line 319
    new-array v9, v12, [Ljava/lang/Object;

    .line 321
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 323
    aput-object v12, v9, v5

    .line 325
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 328
    move-result-object v12

    .line 329
    aput-object v12, v9, v7

    .line 331
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 334
    move-result-object v12

    .line 335
    aput-object v12, v9, v11

    .line 337
    invoke-virtual {v6}, Lno;->m()I

    .line 340
    move-result v11

    .line 341
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 344
    move-result-object v11

    .line 345
    const/4 v12, 0x3

    .line 346
    aput-object v11, v9, v12

    .line 348
    invoke-virtual {v6}, Lno;->l()I

    .line 351
    move-result v6

    .line 352
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 355
    move-result-object v6

    .line 356
    const/4 v11, 0x4

    .line 357
    aput-object v6, v9, v11

    .line 359
    invoke-static {v4, v15, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :goto_3
    if-eqz v10, :cond_9

    .line 364
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 367
    move-result v4

    .line 368
    if-nez v4, :cond_9

    .line 370
    sget v4, Ly80;->o2:I

    .line 372
    invoke-virtual {v2, v4, v10}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 375
    goto :goto_5

    .line 376
    :cond_8
    :goto_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 378
    const-string v2, "width\u3001height must be > 0"

    .line 380
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 383
    new-array v2, v12, [Ljava/lang/Object;

    .line 385
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 387
    aput-object v3, v2, v5

    .line 389
    invoke-virtual {v6}, Lno;->p()Ljava/lang/Integer;

    .line 392
    move-result-object v3

    .line 393
    aput-object v3, v2, v7

    .line 395
    invoke-virtual {v6}, Lno;->n()Ljava/lang/Integer;

    .line 398
    move-result-object v3

    .line 399
    aput-object v3, v2, v11

    .line 401
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    move-result-object v3

    .line 405
    const/4 v5, 0x3

    .line 406
    aput-object v3, v2, v5

    .line 408
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 411
    move-result-object v3

    .line 412
    const/4 v5, 0x4

    .line 413
    aput-object v3, v2, v5

    .line 415
    invoke-static {v4, v15, v1, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 418
    return-void

    .line 419
    :cond_9
    :goto_5
    iget-wide v9, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainTime:D

    .line 421
    double-to-int v4, v9

    .line 422
    invoke-static {v4}, Lob;->a(I)Lob$d;

    .line 425
    move-result-object v4

    .line 426
    iget v6, v4, Lob$d;->b:I

    .line 428
    if-lez v6, :cond_a

    .line 430
    const/4 v6, 0x1

    .line 431
    goto :goto_6

    .line 432
    :cond_a
    const/4 v6, 0x0

    .line 433
    :goto_6
    iget-object v3, v3, Lcom/autonavi/amapauto/widget/jni/NaviInfo;->routeRemainDistAuto:Ljava/lang/String;

    .line 435
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 438
    move-result v9

    .line 439
    if-nez v9, :cond_11

    .line 441
    if-eqz v6, :cond_b

    .line 443
    sget v9, Ly80;->f2:I

    .line 445
    const/16 v10, 0x8

    .line 447
    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 450
    sget v9, Ly80;->S0:I

    .line 452
    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 455
    sget v9, Ly80;->n2:I

    .line 457
    invoke-virtual {v2, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 460
    goto :goto_7

    .line 461
    :cond_b
    const/16 v10, 0x8

    .line 463
    sget v9, Ly80;->f2:I

    .line 465
    invoke-virtual {v2, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 468
    sget v9, Ly80;->S0:I

    .line 470
    invoke-virtual {v2, v9, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 473
    sget v9, Ly80;->n2:I

    .line 475
    invoke-virtual {v2, v9, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 478
    :goto_7
    sget v9, Ld90;->c:I

    .line 480
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 483
    move-result-object v10

    .line 484
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 487
    move-result v10

    .line 488
    if-eqz v10, :cond_e

    .line 490
    if-eqz v6, :cond_c

    .line 492
    sget v10, Ly80;->p2:I

    .line 494
    goto :goto_8

    .line 495
    :cond_c
    sget v10, Ly80;->e2:I

    .line 497
    :goto_8
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 500
    move-result-object v11

    .line 501
    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 504
    move-result-object v3

    .line 505
    invoke-virtual {v2, v10, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 508
    if-eqz v6, :cond_d

    .line 510
    sget v3, Ly80;->q2:I

    .line 512
    goto :goto_9

    .line 513
    :cond_d
    sget v3, Ly80;->g2:I

    .line 515
    :goto_9
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 518
    move-result-object v6

    .line 519
    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 522
    goto :goto_c

    .line 523
    :cond_e
    sget v9, Ld90;->h:I

    .line 525
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 528
    move-result-object v10

    .line 529
    invoke-virtual {v3, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 532
    move-result v10

    .line 533
    if-eqz v10, :cond_11

    .line 535
    if-eqz v6, :cond_f

    .line 537
    sget v10, Ly80;->p2:I

    .line 539
    goto :goto_a

    .line 540
    :cond_f
    sget v10, Ly80;->e2:I

    .line 542
    :goto_a
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 545
    move-result-object v11

    .line 546
    invoke-virtual {v3, v11, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 549
    move-result-object v3

    .line 550
    invoke-virtual {v2, v10, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 553
    if-eqz v6, :cond_10

    .line 555
    sget v3, Ly80;->q2:I

    .line 557
    goto :goto_b

    .line 558
    :cond_10
    sget v3, Ly80;->g2:I

    .line 560
    :goto_b
    invoke-virtual {v1, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 563
    move-result-object v6

    .line 564
    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 567
    :cond_11
    :goto_c
    iget v3, v4, Lob$d;->a:I

    .line 569
    if-lez v3, :cond_12

    .line 571
    sget v3, Ly80;->h2:I

    .line 573
    new-instance v6, Ljava/lang/StringBuilder;

    .line 575
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget v9, v4, Lob$d;->a:I

    .line 583
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    move-result-object v6

    .line 590
    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 593
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 596
    sget v3, Ly80;->i2:I

    .line 598
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 601
    const/4 v3, 0x1

    .line 602
    goto :goto_d

    .line 603
    :cond_12
    sget v3, Ly80;->h2:I

    .line 605
    const/16 v6, 0x8

    .line 607
    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 610
    sget v3, Ly80;->i2:I

    .line 612
    invoke-virtual {v2, v3, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 615
    const/4 v3, 0x0

    .line 616
    :goto_d
    iget v6, v4, Lob$d;->b:I

    .line 618
    if-lez v6, :cond_13

    .line 620
    sget v6, Ly80;->j2:I

    .line 622
    new-instance v9, Ljava/lang/StringBuilder;

    .line 624
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    iget v10, v4, Lob$d;->b:I

    .line 632
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 638
    move-result-object v9

    .line 639
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 642
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 645
    sget v6, Ly80;->k2:I

    .line 647
    invoke-virtual {v2, v6, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 650
    const/4 v6, 0x1

    .line 651
    goto :goto_e

    .line 652
    :cond_13
    sget v6, Ly80;->j2:I

    .line 654
    const/16 v9, 0x8

    .line 656
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 659
    sget v6, Ly80;->k2:I

    .line 661
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 664
    const/4 v6, 0x0

    .line 665
    :goto_e
    iget v9, v4, Lob$d;->c:I

    .line 667
    if-lez v9, :cond_14

    .line 669
    sget v3, Ly80;->l2:I

    .line 671
    new-instance v6, Ljava/lang/StringBuilder;

    .line 673
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 676
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    iget v4, v4, Lob$d;->c:I

    .line 681
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    move-result-object v4

    .line 688
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 691
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 694
    sget v3, Ly80;->m2:I

    .line 696
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 699
    goto :goto_f

    .line 700
    :cond_14
    if-nez v3, :cond_15

    .line 702
    if-nez v6, :cond_15

    .line 704
    sget v3, Ly80;->l2:I

    .line 706
    const-string v4, "<1"

    .line 708
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 711
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 714
    sget v3, Ly80;->m2:I

    .line 716
    invoke-virtual {v2, v3, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 719
    goto :goto_f

    .line 720
    :cond_15
    sget v3, Ly80;->l2:I

    .line 722
    const/16 v4, 0x8

    .line 724
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 727
    sget v3, Ly80;->m2:I

    .line 729
    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 732
    :goto_f
    invoke-virtual/range {p0 .. p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->O(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 735
    invoke-virtual {v0, v2, v7}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->z(Landroid/widget/RemoteViews;Z)V

    .line 738
    return-void

    .line 739
    :cond_16
    :goto_10
    const-string v1, "updateGuideInfoToUI(). naviInfo null"

    .line 741
    new-array v3, v5, [Ljava/lang/Object;

    .line 743
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 746
    invoke-virtual {v0, v2, v5}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->z(Landroid/widget/RemoteViews;Z)V

    .line 749
    return-void
.end method

.method public final Q(Landroid/widget/RemoteViews;)V
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
    cmp-long v4, v0, v2

    .line 12
    if-lez v4, :cond_0

    .line 14
    invoke-static {}, Lco;->c()V

    .line 17
    :cond_0
    sget-object v0, Lco;->f:Landroid/graphics/Bitmap;

    .line 19
    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_1

    .line 27
    sget v1, Ly80;->G1:I

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 33
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 36
    sget v0, Ly80;->F1:I

    .line 38
    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 41
    invoke-static {}, Lco;->b()V

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    sget v0, Ly80;->F1:I

    .line 47
    const/16 v1, 0x8

    .line 49
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 52
    sget v0, Ly80;->G1:I

    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 57
    :goto_0
    return-void
.end method

.method public final R(Landroid/content/Context;Landroid/widget/RemoteViews;)V
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
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    move-result v2

    .line 31
    const/4 v3, 0x4

    .line 32
    const-string v4, "Auto2X3WidgetProvider"

    .line 34
    const/4 v5, 0x0

    .line 35
    if-nez v2, :cond_4

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    const-string v6, "dealRoadNameInfo isCruise !TextUtils.isEmpty(currentRoadName) currentRoadName="

    .line 44
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    new-array v6, v5, [Ljava/lang/Object;

    .line 56
    invoke-static {v4, v2, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    if-eqz v1, :cond_1

    .line 61
    iget v1, v1, Lyl0;->d:I

    .line 63
    if-nez v1, :cond_0

    .line 65
    goto :goto_0

    .line 66
    :cond_0
    sget v1, Ly80;->w2:I

    .line 68
    invoke-virtual {p2, v1, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    sget v1, Ly80;->w2:I

    .line 74
    invoke-virtual {p2, v1, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 77
    :goto_1
    invoke-static {}, Lnb;->j()Lnb;

    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lnb;->q()Z

    .line 84
    move-result v1

    .line 85
    if-nez v1, :cond_3

    .line 87
    invoke-static {}, Lib;->m()Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 93
    sget v0, Ly80;->w2:I

    .line 95
    sget v1, Ld90;->e:I

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 104
    goto :goto_2

    .line 105
    :cond_2
    sget v0, Ly80;->w2:I

    .line 107
    sget v1, Ld90;->l:I

    .line 109
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 116
    goto :goto_2

    .line 117
    :cond_3
    sget p1, Ly80;->w2:I

    .line 119
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 122
    goto :goto_2

    .line 123
    :cond_4
    const-string v0, "dealRoadNameInfo isCruise TextUtils.isEmpty(currentRoadName)"

    .line 125
    new-array v2, v5, [Ljava/lang/Object;

    .line 127
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    sget v0, Ly80;->w2:I

    .line 132
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 135
    invoke-static {}, Lnb;->j()Lnb;

    .line 138
    move-result-object v2

    .line 139
    invoke-virtual {v2}, Lnb;->q()Z

    .line 142
    move-result v2

    .line 143
    if-nez v2, :cond_7

    .line 145
    if-eqz v1, :cond_5

    .line 147
    iget v1, v1, Lyl0;->d:I

    .line 149
    if-nez v1, :cond_7

    .line 151
    :cond_5
    invoke-virtual {p2, v0, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 154
    invoke-static {}, Lib;->m()Z

    .line 157
    move-result v1

    .line 158
    if-eqz v1, :cond_6

    .line 160
    sget v1, Ld90;->e:I

    .line 162
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 169
    goto :goto_2

    .line 170
    :cond_6
    sget v1, Ld90;->l:I

    .line 172
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 175
    move-result-object p1

    .line 176
    invoke-virtual {p2, v0, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 179
    :cond_7
    :goto_2
    return-void
.end method

.method public final S(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    return-void
.end method

.method public a()D
    .locals 2

    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

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
    sget p3, Ly80;->r1:I

    .line 22
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 25
    sget p3, Ly80;->v1:I

    .line 27
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    sget p3, Ly80;->w1:I

    .line 32
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    sget p3, Ly80;->s1:I

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
    sget p3, Ly80;->t1:I

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
    sget p3, Ly80;->u1:I

    .line 74
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sget p1, Ly80;->t1:I

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
    sget p3, Ly80;->r1:I

    .line 96
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget p3, Ly80;->v1:I

    .line 101
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget p3, Ly80;->w1:I

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
    sget p3, Ly80;->x1:I

    .line 128
    invoke-virtual {p2, p3, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    sget p1, Ly80;->r1:I

    .line 134
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    :goto_0
    return-void
.end method

.method public final d(Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnb;->t()Z

    .line 8
    move-result v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v2, "Auto2X3WidgetProvider onReceive isMuted="

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    new-array v2, v2, [Ljava/lang/Object;

    .line 29
    const-string v3, "Auto2X3WidgetProvider"

    .line 31
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz v0, :cond_0

    .line 36
    sget v0, Ly80;->a:I

    .line 38
    sget v1, Lt80;->b:I

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    sget v0, Ly80;->a:I

    .line 46
    sget v1, Lt80;->a:I

    .line 48
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 51
    :goto_0
    return-void
.end method

.method public final e(Landroid/widget/RemoteViews;Z)V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eqz p2, :cond_0

    .line 6
    sget p2, Ly80;->L1:I

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    sget p2, Ly80;->M1:I

    .line 13
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    sget p2, Ly80;->Q1:I

    .line 18
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    sget-object v2, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    sget-object v3, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    sget-object v4, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

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
    sget p2, Ly80;->L1:I

    .line 85
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget p2, Ly80;->L1:I

    .line 91
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 94
    :cond_3
    :goto_0
    sget p2, Ly80;->Q1:I

    .line 96
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget p2, Ly80;->M1:I

    .line 101
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    :goto_1
    return-void
.end method

.method public final f(Landroid/widget/RemoteViews;ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    sget v0, Ly80;->M1:I

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 7
    sget v0, Ly80;->Q1:I

    .line 9
    const/16 v1, 0x8

    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    if-eqz p2, :cond_1

    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p2, v0, :cond_0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget p2, Ly80;->P1:I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string p3, "\u5230\u516c\u53f8"

    .line 32
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget p2, Ly80;->P1:I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string p3, "\u5230\u5bb6"

    .line 55
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 65
    :goto_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    move-result p2

    .line 69
    if-eqz p2, :cond_2

    .line 71
    sget p2, Ly80;->N1:I

    .line 73
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 76
    goto :goto_1

    .line 77
    :cond_2
    sget p2, Ly80;->N1:I

    .line 79
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 82
    new-instance p3, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    const-string v0, "\u9014\u5f84:"

    .line 89
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p1, p2, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 102
    :goto_1
    if-eqz p5, :cond_3

    .line 104
    invoke-virtual {p5}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_3

    .line 110
    sget p2, Ly80;->O1:I

    .line 112
    invoke-virtual {p1, p2, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 115
    :cond_3
    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lzl0;->b:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lnb;->j()Lnb;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lnb;->r()Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->y(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lnb;->p()Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 29
    sget-boolean v0, Lzl0;->b:Z

    .line 31
    if-eqz v0, :cond_1

    .line 33
    const/4 p3, 0x0

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->B(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 41
    :goto_0
    return-void
.end method

.method public final j(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Auto2X3WidgetProvider"

    .line 6
    const-string v3, "Auto2X3WidgetProvider onReceive AUTO_STATUS_FOR_INTERNAL_WIDGET"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "WidgetEnabler.is2x3WidgetEnabled="

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v3, Lzl0;->b:Z

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
    sget-boolean v1, Lzl0;->b:Z

    .line 86
    if-nez v1, :cond_1

    .line 88
    invoke-virtual {p0, p1, p2, v1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 91
    goto :goto_3

    .line 92
    :cond_1
    const/4 v2, 0x3

    .line 93
    const/4 v3, 0x1

    .line 94
    if-ne p3, v2, :cond_2

    .line 96
    invoke-virtual {p0, p1, p2, v3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 99
    goto :goto_3

    .line 100
    :cond_2
    const/16 v2, 0x9

    .line 102
    if-eq p3, v2, :cond_4

    .line 104
    const/16 v2, 0xc

    .line 106
    if-ne p3, v2, :cond_3

    .line 108
    goto :goto_1

    .line 109
    :cond_3
    invoke-virtual {p0, p1, p2, v1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 112
    goto :goto_3

    .line 113
    :cond_4
    :goto_1
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetNavi;->isInNavi()Z

    .line 116
    move-result v1

    .line 117
    if-eqz v1, :cond_5

    .line 119
    return-void

    .line 120
    :cond_5
    invoke-virtual {p0}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->b()Z

    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_6

    .line 126
    invoke-static {v3}, Lvl0;->d(Z)V

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    invoke-static {v0}, Lvl0;->d(Z)V

    .line 133
    :goto_2
    invoke-virtual {p0, p1, p2, v3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 136
    :goto_3
    const/4 v1, 0x2

    .line 137
    if-ne p3, v1, :cond_7

    .line 139
    sput-boolean v0, Lzl0;->b:Z

    .line 141
    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 144
    :cond_7
    return-void
.end method

.method public final k(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Auto2X3WidgetProvider"

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
    sget-boolean v1, Lzl0;->b:Z

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->B(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

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
    sget-boolean p3, Lzl0;->b:Z

    .line 57
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 60
    :goto_0
    return-void
.end method

.method public final l(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Lnb;->p()Z

    .line 8
    move-result p3

    .line 9
    if-eqz p3, :cond_0

    .line 11
    sget-boolean p3, Lzl0;->b:Z

    .line 13
    if-eqz p3, :cond_0

    .line 15
    const/4 p3, 0x0

    .line 16
    new-array p3, p3, [Ljava/lang/Object;

    .line 18
    const-string v0, "Auto2X3WidgetProvider"

    .line 20
    const-string v1, "dealRoadNameInfo isCruise"

    .line 22
    invoke-static {v0, v1, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const/4 p3, 0x0

    .line 26
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->B(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 33
    move-result-object p3

    .line 34
    invoke-virtual {p3}, Lnb;->r()Z

    .line 37
    move-result p3

    .line 38
    if-eqz p3, :cond_1

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-boolean p3, Lzl0;->b:Z

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 46
    :goto_0
    return-void
.end method

.method public final m(Landroid/widget/RemoteViews;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->S(Landroid/widget/RemoteViews;)V

    .line 4
    return-void
.end method

.method public final n(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->N(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 4
    sget-boolean p3, Lzl0;->b:Z

    .line 6
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 9
    return-void
.end method

.method public final o(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "Auto2X3WidgetProvider"

    .line 6
    const-string v2, "dealGpsInfo"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-boolean v0, Lzl0;->b:Z

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
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->y(Landroid/content/Context;Landroid/widget/RemoteViews;)V

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
    sget-boolean v0, Lzl0;->b:Z

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->B(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    sget-boolean p3, Lzl0;->b:Z

    .line 74
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 77
    :goto_0
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 4
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lhm0;->g:Z

    .line 4
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 7
    const-string p1, "Auto2X3WidgetProvider onDisabled"

    .line 9
    new-array v1, v0, [Ljava/lang/Object;

    .line 11
    const-string v2, "Auto2X3WidgetProvider"

    .line 13
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p1, v1}, Lhm0;->v(Lpq;)V

    .line 24
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 26
    invoke-virtual {p1}, Lgc0;->a()V

    .line 29
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 31
    invoke-virtual {p1}, Ldm0;->a()V

    .line 34
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 36
    invoke-virtual {p1}, Lqm0;->a()V

    .line 39
    sget-object p1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 41
    invoke-virtual {p1}, Ljm0;->a()V

    .line 44
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->handleWidgetEnableNotify(Z)V

    .line 47
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lhm0;->g:Z

    .line 4
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v1, v1, [Ljava/lang/Object;

    .line 10
    const-string v2, "Auto2X3WidgetProvider"

    .line 12
    const-string v3, "Auto2X3WidgetProvider onEnabled"

    .line 14
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-static {}, Lhm0;->g()Lhm0;

    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p0}, Lhm0;->v(Lpq;)V

    .line 24
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d:Lgc0;

    .line 26
    invoke-virtual {v1}, Lgc0;->j()V

    .line 29
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->e:Ldm0;

    .line 31
    invoke-virtual {v1}, Ldm0;->d()V

    .line 34
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->f:Lqm0;

    .line 36
    invoke-virtual {v1}, Lqm0;->e()V

    .line 39
    sget-object v1, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g:Ljm0;

    .line 41
    invoke-virtual {v1}, Ljm0;->e()V

    .line 44
    invoke-static {v0, p1}, Lim0;->h(ILandroid/content/Context;)V

    .line 47
    invoke-static {v0}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->handleWidgetEnableNotify(Z)V

    .line 50
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move-object/from16 v2, p2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v4, "Auto2X3WidgetProvider onReceive super isWidgetAdded = "

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    sget-boolean v4, Lhm0;->g:Z

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    new-array v5, v4, [Ljava/lang/Object;

    .line 29
    const-string v6, "Auto2X3WidgetProvider"

    .line 31
    invoke-static {v6, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    if-eqz v0, :cond_17

    .line 36
    if-nez v2, :cond_0

    .line 38
    goto/16 :goto_6

    .line 40
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 43
    invoke-static {}, Lob;->e()Z

    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 49
    return-void

    .line 50
    :cond_1
    const-class v3, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;

    .line 52
    invoke-static {v0, v3}, Lob;->j(Landroid/content/Context;Ljava/lang/Class;)Z

    .line 55
    move-result v5

    .line 56
    sput-boolean v5, Lhm0;->g:Z

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v7, "Auto2X3WidgetProvider onReceive before reutrn isWidgetAdded = "

    .line 65
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-boolean v7, Lhm0;->g:Z

    .line 70
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v5

    .line 77
    new-array v7, v4, [Ljava/lang/Object;

    .line 79
    invoke-static {v6, v5, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    sget-boolean v5, Lhm0;->g:Z

    .line 84
    if-nez v5, :cond_2

    .line 86
    const-string v0, "Auto2X3WidgetProvider onReceive reutrn !isWidgetAdded"

    .line 88
    new-array v2, v4, [Ljava/lang/Object;

    .line 90
    invoke-static {v6, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return-void

    .line 94
    :cond_2
    const-string v5, "Auto2X3WidgetProvider onReceive after reutrn"

    .line 96
    new-array v7, v4, [Ljava/lang/Object;

    .line 98
    invoke-static {v6, v5, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 104
    move-result-object v5

    .line 105
    if-nez v5, :cond_3

    .line 107
    new-instance v0, Ljava/lang/NullPointerException;

    .line 109
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 112
    new-array v2, v4, [Ljava/lang/Object;

    .line 114
    const-string v3, "mWidgetManager is null  return\uff01"

    .line 116
    invoke-static {v6, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 119
    return-void

    .line 120
    :cond_3
    new-instance v7, Landroid/widget/RemoteViews;

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 125
    move-result-object v8

    .line 126
    sget v9, Lb90;->c:I

    .line 128
    invoke-direct {v7, v8, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 131
    sget-object v8, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 133
    const/4 v9, 0x4

    .line 134
    if-eqz v8, :cond_4

    .line 136
    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    .line 139
    move-result v8

    .line 140
    if-gtz v8, :cond_5

    .line 142
    :cond_4
    invoke-static {v0, v9}, Lmb;->j(Landroid/content/Context;I)Ljava/util/HashMap;

    .line 145
    move-result-object v8

    .line 146
    sput-object v8, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->a:Ljava/util/HashMap;

    .line 148
    :cond_5
    invoke-virtual {v1, v7}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->D(Landroid/widget/RemoteViews;)V

    .line 151
    invoke-virtual {v1, v0, v7}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->J(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 154
    invoke-static {}, Lnb;->j()Lnb;

    .line 157
    move-result-object v8

    .line 158
    invoke-virtual {v8}, Lnb;->o()Z

    .line 161
    move-result v8

    .line 162
    const/16 v10, 0x8

    .line 164
    const-string v11, "AUTO_STATUS_FOR_INTERNAL_WIDGET"

    .line 166
    const-string v12, "mWidgetManager.updateAppWidget ocuur a Exception!!!"

    .line 168
    if-nez v8, :cond_7

    .line 170
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_6

    .line 180
    const-string v2, "Auto2X3WidgetProvider onReceive ACTION_BROADCAST_SATUS_FOR_INTERNAL_WIDGET  !isAutoServiceInited"

    .line 182
    new-array v8, v4, [Ljava/lang/Object;

    .line 184
    invoke-static {v6, v2, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    const/4 v2, 0x0

    .line 188
    sput-object v2, Lpm0;->b:Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;

    .line 190
    sput v4, Llc0;->a:I

    .line 192
    sput v4, Llc0;->b:I

    .line 194
    const-string v2, ""

    .line 196
    sput-object v2, Lnb;->j:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v0, v7, v4}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 201
    sget v2, Ly80;->M1:I

    .line 203
    invoke-virtual {v7, v2, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 206
    sget v2, Ly80;->Q1:I

    .line 208
    invoke-virtual {v7, v2, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 211
    :cond_6
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    .line 213
    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    invoke-virtual {v5, v2, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    goto :goto_0

    .line 220
    :catch_0
    move-exception v0

    .line 221
    new-array v2, v4, [Ljava/lang/Object;

    .line 223
    invoke-static {v6, v12, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 226
    :goto_0
    return-void

    .line 227
    :cond_7
    invoke-static {}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->h()V

    .line 230
    invoke-static {}, Lob;->c()Z

    .line 233
    move-result v8

    .line 234
    if-nez v8, :cond_8

    .line 236
    :try_start_1
    new-instance v2, Landroid/content/ComponentName;

    .line 238
    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 241
    invoke-virtual {v5, v2, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 244
    goto :goto_1

    .line 245
    :catch_1
    move-exception v0

    .line 246
    new-array v2, v4, [Ljava/lang/Object;

    .line 248
    invoke-static {v6, v12, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 251
    :goto_1
    return-void

    .line 252
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 254
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    const-string v13, "Auto2X3WidgetProvider onReceive intent.getAction()="

    .line 259
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 265
    move-result-object v13

    .line 266
    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    move-result-object v8

    .line 273
    new-array v13, v4, [Ljava/lang/Object;

    .line 275
    invoke-static {v6, v8, v13}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 285
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 288
    move-result v13

    .line 289
    const/16 v14, 0x9

    .line 291
    const/4 v15, 0x1

    .line 292
    const/16 v16, -0x1

    .line 294
    sparse-switch v13, :sswitch_data_0

    .line 297
    :goto_2
    const/4 v9, -0x1

    .line 298
    goto/16 :goto_3

    .line 300
    :sswitch_0
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_OIL_DISTANCE"

    .line 302
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 305
    move-result v8

    .line 306
    if-nez v8, :cond_9

    .line 308
    goto :goto_2

    .line 309
    :cond_9
    const/16 v9, 0xd

    .line 311
    goto/16 :goto_3

    .line 313
    :sswitch_1
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_GPS_INFO"

    .line 315
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v8

    .line 319
    if-nez v8, :cond_a

    .line 321
    goto :goto_2

    .line 322
    :cond_a
    const/16 v9, 0xc

    .line 324
    goto/16 :goto_3

    .line 326
    :sswitch_2
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_SILENCE_ROADNAME_INFO"

    .line 328
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    move-result v8

    .line 332
    if-nez v8, :cond_b

    .line 334
    goto :goto_2

    .line 335
    :cond_b
    const/16 v9, 0xb

    .line 337
    goto/16 :goto_3

    .line 339
    :sswitch_3
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_ROAD_NAME_INFO"

    .line 341
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 344
    move-result v8

    .line 345
    if-nez v8, :cond_c

    .line 347
    goto :goto_2

    .line 348
    :cond_c
    const/16 v9, 0xa

    .line 350
    goto/16 :goto_3

    .line 352
    :sswitch_4
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_WEATHER_INFO"

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    move-result v8

    .line 358
    if-nez v8, :cond_d

    .line 360
    goto :goto_2

    .line 361
    :cond_d
    const/16 v9, 0x9

    .line 363
    goto/16 :goto_3

    .line 365
    :sswitch_5
    const-string v9, "action_internal_widget_auto_bitmap"

    .line 367
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    move-result v8

    .line 371
    if-nez v8, :cond_e

    .line 373
    goto :goto_2

    .line 374
    :cond_e
    const/16 v9, 0x8

    .line 376
    goto :goto_3

    .line 377
    :sswitch_6
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_CAR_DIRECTION"

    .line 379
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 382
    move-result v8

    .line 383
    if-nez v8, :cond_f

    .line 385
    goto :goto_2

    .line 386
    :cond_f
    const/4 v9, 0x7

    .line 387
    goto :goto_3

    .line 388
    :sswitch_7
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_AUDIO_UI_SWITCH"

    .line 390
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 393
    move-result v8

    .line 394
    if-nez v8, :cond_10

    .line 396
    goto :goto_2

    .line 397
    :cond_10
    const/4 v9, 0x6

    .line 398
    goto :goto_3

    .line 399
    :sswitch_8
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_PARK_DISTANCE"

    .line 401
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 404
    move-result v8

    .line 405
    if-nez v8, :cond_11

    .line 407
    goto :goto_2

    .line 408
    :cond_11
    const/4 v9, 0x5

    .line 409
    goto :goto_3

    .line 410
    :sswitch_9
    const-string v10, "AUTO_GUIDE_INFO_FOR_INTERNAL_WIDGET"

    .line 412
    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    move-result v8

    .line 416
    if-nez v8, :cond_16

    .line 418
    goto :goto_2

    .line 419
    :sswitch_a
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_CAMERA_INFO"

    .line 421
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 424
    move-result v8

    .line 425
    if-nez v8, :cond_12

    .line 427
    goto/16 :goto_2

    .line 429
    :cond_12
    const/4 v9, 0x3

    .line 430
    goto :goto_3

    .line 431
    :sswitch_b
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 434
    move-result v8

    .line 435
    if-nez v8, :cond_13

    .line 437
    goto/16 :goto_2

    .line 439
    :cond_13
    const/4 v9, 0x2

    .line 440
    goto :goto_3

    .line 441
    :sswitch_c
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_HOME_COMPANY_INFO"

    .line 443
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 446
    move-result v8

    .line 447
    if-nez v8, :cond_14

    .line 449
    goto/16 :goto_2

    .line 451
    :cond_14
    const/4 v9, 0x1

    .line 452
    goto :goto_3

    .line 453
    :sswitch_d
    const-string v9, "com.autonavi.amapauto.AUTO_WIDGET_CONTROLL_SWITCH"

    .line 455
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    move-result v8

    .line 459
    if-nez v8, :cond_15

    .line 461
    goto/16 :goto_2

    .line 463
    :cond_15
    const/4 v9, 0x0

    .line 464
    :cond_16
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 467
    invoke-virtual {v1, v7}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->m(Landroid/widget/RemoteViews;)V

    .line 470
    goto :goto_4

    .line 471
    :pswitch_0
    sget v2, Llc0;->a:I

    .line 473
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->t(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 476
    goto :goto_4

    .line 477
    :pswitch_1
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->o(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 480
    goto :goto_4

    .line 481
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->I()V

    .line 484
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 487
    goto :goto_4

    .line 488
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->I()V

    .line 491
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 494
    goto :goto_4

    .line 495
    :pswitch_4
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->w(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 498
    goto :goto_4

    .line 499
    :pswitch_5
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->v(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 502
    goto :goto_4

    .line 503
    :pswitch_6
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->l(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 506
    goto :goto_4

    .line 507
    :pswitch_7
    invoke-virtual {v1, v7}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->d(Landroid/widget/RemoteViews;)V

    .line 510
    goto :goto_4

    .line 511
    :pswitch_8
    sget v2, Llc0;->b:I

    .line 513
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->u(Landroid/content/Context;Landroid/widget/RemoteViews;I)V

    .line 516
    goto :goto_4

    .line 517
    :pswitch_9
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->p(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 520
    goto :goto_4

    .line 521
    :pswitch_a
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->k(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 524
    goto :goto_4

    .line 525
    :pswitch_b
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->j(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 528
    goto :goto_4

    .line 529
    :pswitch_c
    invoke-virtual {v1, v0, v7, v2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->n(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V

    .line 532
    goto :goto_4

    .line 533
    :pswitch_d
    invoke-virtual {v1, v15, v14}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->H(II)V

    .line 536
    invoke-virtual {v1, v0, v7}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->r(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 539
    :goto_4
    :try_start_2
    new-instance v2, Landroid/content/ComponentName;

    .line 541
    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 544
    invoke-virtual {v5, v2, v7}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 547
    const-string v0, "mWidgetManager.updateAppWidget !!!"

    .line 549
    new-array v2, v4, [Ljava/lang/Object;

    .line 551
    invoke-static {v6, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 554
    goto :goto_5

    .line 555
    :catch_2
    move-exception v0

    .line 556
    new-array v2, v4, [Ljava/lang/Object;

    .line 558
    invoke-static {v6, v12, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 561
    :goto_5
    return-void

    .line 562
    :cond_17
    :goto_6
    const-string v0, "[onReceive] context== null || intent == null."

    .line 564
    new-array v2, v4, [Ljava/lang/Object;

    .line 566
    invoke-static {v6, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 569
    return-void

    .line 570
    nop

    .line 571
    :sswitch_data_0
    .sparse-switch
        -0x5962f83f -> :sswitch_d
        -0x544f67a3 -> :sswitch_c
        -0x42aae4cd -> :sswitch_b
        -0x3e56f30b -> :sswitch_a
        -0x2dbca0e -> :sswitch_9
        -0xd80f29 -> :sswitch_8
        0x1d05eaf3 -> :sswitch_7
        0x1fb8dcc1 -> :sswitch_6
        0x2ac7027d -> :sswitch_5
        0x4d4f846c -> :sswitch_4
        0x55f8b8f6 -> :sswitch_3
        0x6b8c46b1 -> :sswitch_2
        0x762746f6 -> :sswitch_1
        0x76983215 -> :sswitch_0
    .end sparse-switch

    .line 629
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
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
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onRestored(Landroid/content/Context;[I[I)V

    .line 4
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lhm0;->g:Z

    .line 4
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 7
    const/4 p1, 0x0

    .line 8
    new-array p1, p1, [Ljava/lang/Object;

    .line 10
    const-string p2, "Auto2X3WidgetProvider"

    .line 12
    const-string p3, "Auto2X3WidgetProvider onUpdate"

    .line 14
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    return-void
.end method

.method public final p(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "Auto2X3WidgetProvider"

    .line 6
    const-string v2, "Auto2X3WidgetProvider onReceive action_auto_guide_info"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v2, "WidgetEnabler.is2x3WidgetEnabled="

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v2, Lzl0;->b:Z

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
    sget-boolean p3, Lzl0;->b:Z

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
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->y(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    sget-boolean p3, Lzl0;->b:Z

    .line 55
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 58
    :goto_0
    return-void
.end method

.method public final q(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "Auto2X3WidgetProvider"

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
    sget-boolean v0, Lzl0;->b:Z

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->B(Landroid/content/Context;Landroid/widget/RemoteViews;Lcom/autonavi/amapauto/widget/framework/mode/CameraInfo;)V

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
    sget-boolean p3, Lzl0;->b:Z

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 53
    :goto_0
    return-void
.end method

.method public final r(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "Auto2X3WidgetProvider"

    .line 6
    const-string v3, "Auto2X3WidgetProvider onReceive dealSilenceModeCloseButton"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    const-string v3, "WidgetEnabler.is2x3WidgetEnabled="

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    sget-boolean v3, Lzl0;->b:Z

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
    sput-boolean v0, Lzl0;->b:Z

    .line 37
    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->A(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 40
    invoke-static {}, Lvl0;->e()V

    .line 43
    return-void
.end method

.method public final s(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
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
    sget v0, Ly80;->r1:I

    .line 22
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 25
    sget v0, Ly80;->v1:I

    .line 27
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 30
    sget v0, Ly80;->w1:I

    .line 32
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 35
    sget v0, Ly80;->s1:I

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
    sget v0, Ly80;->t1:I

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
    sget v0, Ly80;->u1:I

    .line 74
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    sget p3, Ly80;->t1:I

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
    sget v0, Ly80;->r1:I

    .line 96
    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 99
    sget v0, Ly80;->v1:I

    .line 101
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 104
    sget v0, Ly80;->w1:I

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
    sget v0, Ly80;->x1:I

    .line 128
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    sget p3, Ly80;->r1:I

    .line 134
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 137
    :goto_0
    sget-boolean p3, Lzl0;->b:Z

    .line 139
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 142
    return-void
.end method

.method public final t(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 1
    sget-boolean p3, Lzl0;->b:Z

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 6
    return-void
.end method

.method public final u(Landroid/content/Context;Landroid/widget/RemoteViews;I)V
    .locals 0

    .line 1
    sget-boolean p3, Lzl0;->b:Z

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 6
    return-void
.end method

.method public final v(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p3, 0x0

    .line 2
    new-array v0, p3, [Ljava/lang/Object;

    .line 4
    const-string v1, "Auto2X3WidgetProvider"

    .line 6
    const-string v2, "Auto2X3WidgetProvider onReceive dealUpdateWidgetScreenShot"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-boolean v0, Lzl0;->b:Z

    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 16
    const-string p1, "Auto2X3WidgetProvider onReceive action_auto_bitmap end"

    .line 18
    new-array p2, p3, [Ljava/lang/Object;

    .line 20
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void
.end method

.method public final w(Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/content/Intent;)V
    .locals 5

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
    const-string v0, "Auto2X3WidgetProvider"

    .line 26
    const/16 v1, 0x8

    .line 28
    const/4 v2, 0x0

    .line 29
    if-eqz p3, :cond_1

    .line 31
    const-string v3, "widgetWeatherInformation!=null"

    .line 33
    new-array v4, v2, [Ljava/lang/Object;

    .line 35
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {}, Lnb;->j()Lnb;

    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lnb;->l()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v3

    .line 50
    const-string v4, "\u00b0"

    .line 52
    if-nez v3, :cond_0

    .line 54
    sget v3, Ly80;->s1:I

    .line 56
    invoke-virtual {p2, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    iget-object p3, p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 66
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p3

    .line 76
    sget v0, Ly80;->u1:I

    .line 78
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 81
    sget p3, Ly80;->r1:I

    .line 83
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 86
    sget p3, Ly80;->v1:I

    .line 88
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 91
    sget p3, Ly80;->w1:I

    .line 93
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 96
    sget p3, Ly80;->t1:I

    .line 98
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 101
    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    iget-object p3, p3, Lcom/autonavi/amapauto/widget/weather/WidgetWeatherInformation;->a:Ljava/lang/String;

    .line 109
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object p3

    .line 119
    sget v0, Ly80;->x1:I

    .line 121
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 124
    sget p3, Ly80;->r1:I

    .line 126
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 129
    sget p3, Ly80;->v1:I

    .line 131
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 134
    sget p3, Ly80;->w1:I

    .line 136
    invoke-virtual {p2, p3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    const-string p3, "widgetWeatherInformation == null"

    .line 142
    new-array v3, v2, [Ljava/lang/Object;

    .line 144
    invoke-static {v0, p3, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-static {}, Lnb;->j()Lnb;

    .line 150
    move-result-object p3

    .line 151
    invoke-virtual {p3}, Lnb;->l()Ljava/lang/String;

    .line 154
    move-result-object p3

    .line 155
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_2

    .line 161
    sget v0, Ly80;->r1:I

    .line 163
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 166
    sget v0, Ly80;->v1:I

    .line 168
    invoke-virtual {p2, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 171
    sget v0, Ly80;->w1:I

    .line 173
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 176
    sget v0, Ly80;->t1:I

    .line 178
    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 181
    sget v0, Ly80;->s1:I

    .line 183
    invoke-virtual {p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 186
    goto :goto_0

    .line 187
    :cond_2
    sget p3, Ly80;->r1:I

    .line 189
    invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 192
    :goto_0
    sget-boolean p3, Lzl0;->b:Z

    .line 194
    invoke-virtual {p0, p1, p2, p3}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->g(Landroid/content/Context;Landroid/widget/RemoteViews;Z)V

    .line 197
    return-void
.end method

.method public final y(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->P(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 4
    invoke-virtual {p0, p2}, Lcom/autonavi/autowidget/AutoWidgetProviderTwoXThree;->Q(Landroid/widget/RemoteViews;)V

    .line 7
    sget p1, Ly80;->v2:I

    .line 9
    const/16 v0, 0x8

    .line 11
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 14
    sget p1, Ly80;->C1:I

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, p1, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 20
    sget p1, Ly80;->d2:I

    .line 22
    invoke-virtual {p2, p1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 25
    return-void
.end method

.method public final z(Landroid/widget/RemoteViews;Z)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 4
    if-eqz p2, :cond_0

    .line 6
    sget p2, Ly80;->D1:I

    .line 8
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 11
    sget p2, Ly80;->E1:I

    .line 13
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget p2, Ly80;->D1:I

    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 22
    sget p2, Ly80;->E1:I

    .line 24
    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 27
    :goto_0
    return-void
.end method

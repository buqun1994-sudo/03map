.class public Lm40;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/app/Notification$Builder;

.field public final c:Lr30;

.field public d:Landroid/widget/RemoteViews;

.field public e:Landroid/widget/RemoteViews;

.field public final f:Ljava/util/List;

.field public final g:Landroid/os/Bundle;

.field public h:I

.field public i:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Lr30;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lm40;->f:Ljava/util/List;

    .line 11
    new-instance v0, Landroid/os/Bundle;

    .line 13
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 16
    iput-object v0, p0, Lm40;->g:Landroid/os/Bundle;

    .line 18
    iput-object p1, p0, Lm40;->c:Lr30;

    .line 20
    iget-object v0, p1, Lr30;->a:Landroid/content/Context;

    .line 22
    iput-object v0, p0, Lm40;->a:Landroid/content/Context;

    .line 24
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    const/16 v1, 0x1a

    .line 28
    if-lt v0, v1, :cond_0

    .line 30
    invoke-static {}, Lc40;->a()V

    .line 33
    iget-object v0, p1, Lr30;->a:Landroid/content/Context;

    .line 35
    iget-object v2, p1, Lr30;->J:Ljava/lang/String;

    .line 37
    invoke-static {v0, v2}, Lb40;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    new-instance v0, Landroid/app/Notification$Builder;

    .line 46
    iget-object v2, p1, Lr30;->a:Landroid/content/Context;

    .line 48
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 51
    iput-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 53
    :goto_0
    iget-object v0, p1, Lr30;->P:Landroid/app/Notification;

    .line 55
    iget-object v2, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 57
    iget-wide v3, v0, Landroid/app/Notification;->when:J

    .line 59
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 62
    move-result-object v2

    .line 63
    iget v3, v0, Landroid/app/Notification;->icon:I

    .line 65
    iget v4, v0, Landroid/app/Notification;->iconLevel:I

    .line 67
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    .line 70
    move-result-object v2

    .line 71
    iget-object v3, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 73
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 76
    move-result-object v2

    .line 77
    iget-object v3, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 79
    iget-object v4, p1, Lr30;->i:Landroid/widget/RemoteViews;

    .line 81
    invoke-virtual {v2, v3, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 84
    move-result-object v2

    .line 85
    iget-object v3, v0, Landroid/app/Notification;->vibrate:[J

    .line 87
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 90
    move-result-object v2

    .line 91
    iget v3, v0, Landroid/app/Notification;->ledARGB:I

    .line 93
    iget v4, v0, Landroid/app/Notification;->ledOnMS:I

    .line 95
    iget v5, v0, Landroid/app/Notification;->ledOffMS:I

    .line 97
    invoke-virtual {v2, v3, v4, v5}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 100
    move-result-object v2

    .line 101
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 103
    const/4 v4, 0x2

    .line 104
    and-int/2addr v3, v4

    .line 105
    const/4 v5, 0x1

    .line 106
    const/4 v6, 0x0

    .line 107
    if-eqz v3, :cond_1

    .line 109
    const/4 v3, 0x1

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    const/4 v3, 0x0

    .line 112
    :goto_1
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 115
    move-result-object v2

    .line 116
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 118
    and-int/lit8 v3, v3, 0x8

    .line 120
    if-eqz v3, :cond_2

    .line 122
    const/4 v3, 0x1

    .line 123
    goto :goto_2

    .line 124
    :cond_2
    const/4 v3, 0x0

    .line 125
    :goto_2
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    .line 128
    move-result-object v2

    .line 129
    iget v3, v0, Landroid/app/Notification;->flags:I

    .line 131
    and-int/lit8 v3, v3, 0x10

    .line 133
    if-eqz v3, :cond_3

    .line 135
    const/4 v3, 0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_3
    const/4 v3, 0x0

    .line 138
    :goto_3
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 141
    move-result-object v2

    .line 142
    iget v3, v0, Landroid/app/Notification;->defaults:I

    .line 144
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 147
    move-result-object v2

    .line 148
    iget-object v3, p1, Lr30;->e:Ljava/lang/CharSequence;

    .line 150
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 153
    move-result-object v2

    .line 154
    iget-object v3, p1, Lr30;->f:Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 159
    move-result-object v2

    .line 160
    iget-object v3, p1, Lr30;->k:Ljava/lang/CharSequence;

    .line 162
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 165
    move-result-object v2

    .line 166
    iget-object v3, p1, Lr30;->g:Landroid/app/PendingIntent;

    .line 168
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 171
    move-result-object v2

    .line 172
    iget-object v3, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 174
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 177
    move-result-object v2

    .line 178
    iget-object v3, p1, Lr30;->h:Landroid/app/PendingIntent;

    .line 180
    iget v7, v0, Landroid/app/Notification;->flags:I

    .line 182
    and-int/lit16 v7, v7, 0x80

    .line 184
    if-eqz v7, :cond_4

    .line 186
    const/4 v7, 0x1

    .line 187
    goto :goto_4

    .line 188
    :cond_4
    const/4 v7, 0x0

    .line 189
    :goto_4
    invoke-virtual {v2, v3, v7}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    .line 192
    move-result-object v2

    .line 193
    iget-object v3, p1, Lr30;->j:Landroid/graphics/Bitmap;

    .line 195
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 198
    move-result-object v2

    .line 199
    iget v3, p1, Lr30;->l:I

    .line 201
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    .line 204
    move-result-object v2

    .line 205
    iget v3, p1, Lr30;->s:I

    .line 207
    iget v7, p1, Lr30;->t:I

    .line 209
    iget-boolean v8, p1, Lr30;->u:Z

    .line 211
    invoke-virtual {v2, v3, v7, v8}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 214
    iget-object v2, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 216
    iget-object v3, p1, Lr30;->p:Ljava/lang/CharSequence;

    .line 218
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 221
    move-result-object v2

    .line 222
    iget-boolean v3, p1, Lr30;->o:Z

    .line 224
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setUsesChronometer(Z)Landroid/app/Notification$Builder;

    .line 227
    move-result-object v2

    .line 228
    iget v3, p1, Lr30;->m:I

    .line 230
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 233
    iget-object v2, p1, Lr30;->b:Ljava/util/ArrayList;

    .line 235
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 238
    move-result-object v2

    .line 239
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    move-result v3

    .line 243
    if-eqz v3, :cond_5

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    move-result-object v3

    .line 249
    check-cast v3, Lp30;

    .line 251
    invoke-virtual {p0, v3}, Lm40;->a(Lp30;)V

    .line 254
    goto :goto_5

    .line 255
    :cond_5
    iget-object v2, p1, Lr30;->C:Landroid/os/Bundle;

    .line 257
    if-eqz v2, :cond_6

    .line 259
    iget-object v3, p0, Lm40;->g:Landroid/os/Bundle;

    .line 261
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 264
    :cond_6
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 266
    iget-object v3, p1, Lr30;->G:Landroid/widget/RemoteViews;

    .line 268
    iput-object v3, p0, Lm40;->d:Landroid/widget/RemoteViews;

    .line 270
    iget-object v3, p1, Lr30;->H:Landroid/widget/RemoteViews;

    .line 272
    iput-object v3, p0, Lm40;->e:Landroid/widget/RemoteViews;

    .line 274
    iget-object v3, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 276
    iget-boolean v7, p1, Lr30;->n:Z

    .line 278
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 281
    iget-object v3, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 283
    iget-boolean v7, p1, Lr30;->y:Z

    .line 285
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    .line 288
    move-result-object v3

    .line 289
    iget-object v7, p1, Lr30;->v:Ljava/lang/String;

    .line 291
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 294
    move-result-object v3

    .line 295
    iget-boolean v7, p1, Lr30;->w:Z

    .line 297
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    .line 300
    move-result-object v3

    .line 301
    iget-object v7, p1, Lr30;->x:Ljava/lang/String;

    .line 303
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 306
    iget v3, p1, Lr30;->N:I

    .line 308
    iput v3, p0, Lm40;->h:I

    .line 310
    iget-object v3, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 312
    iget-object v7, p1, Lr30;->B:Ljava/lang/String;

    .line 314
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 317
    move-result-object v3

    .line 318
    iget v7, p1, Lr30;->D:I

    .line 320
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 323
    move-result-object v3

    .line 324
    iget v7, p1, Lr30;->E:I

    .line 326
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 329
    move-result-object v3

    .line 330
    iget-object v7, p1, Lr30;->F:Landroid/app/Notification;

    .line 332
    invoke-virtual {v3, v7}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 335
    move-result-object v3

    .line 336
    iget-object v7, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 338
    iget-object v8, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 340
    invoke-virtual {v3, v7, v8}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;

    .line 343
    const/16 v3, 0x1c

    .line 345
    if-ge v2, v3, :cond_7

    .line 347
    iget-object v2, p1, Lr30;->c:Ljava/util/ArrayList;

    .line 349
    invoke-static {v2}, Lm40;->e(Ljava/util/List;)Ljava/util/List;

    .line 352
    move-result-object v2

    .line 353
    iget-object v7, p1, Lr30;->S:Ljava/util/ArrayList;

    .line 355
    invoke-static {v2, v7}, Lm40;->d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    .line 358
    move-result-object v2

    .line 359
    goto :goto_6

    .line 360
    :cond_7
    iget-object v2, p1, Lr30;->S:Ljava/util/ArrayList;

    .line 362
    :goto_6
    if-eqz v2, :cond_8

    .line 364
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 367
    move-result v7

    .line 368
    if-nez v7, :cond_8

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 373
    move-result-object v2

    .line 374
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 377
    move-result v7

    .line 378
    if-eqz v7, :cond_8

    .line 380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 383
    move-result-object v7

    .line 384
    check-cast v7, Ljava/lang/String;

    .line 386
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 388
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 391
    goto :goto_7

    .line 392
    :cond_8
    iget-object v2, p1, Lr30;->I:Landroid/widget/RemoteViews;

    .line 394
    iput-object v2, p0, Lm40;->i:Landroid/widget/RemoteViews;

    .line 396
    iget-object v2, p1, Lr30;->d:Ljava/util/ArrayList;

    .line 398
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 401
    move-result v2

    .line 402
    if-lez v2, :cond_b

    .line 404
    invoke-virtual {p1}, Lr30;->c()Landroid/os/Bundle;

    .line 407
    move-result-object v2

    .line 408
    const-string v7, "android.car.EXTENSIONS"

    .line 410
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 413
    move-result-object v2

    .line 414
    if-nez v2, :cond_9

    .line 416
    new-instance v2, Landroid/os/Bundle;

    .line 418
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 421
    :cond_9
    new-instance v8, Landroid/os/Bundle;

    .line 423
    invoke-direct {v8, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 426
    new-instance v9, Landroid/os/Bundle;

    .line 428
    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 431
    const/4 v10, 0x0

    .line 432
    :goto_8
    iget-object v11, p1, Lr30;->d:Ljava/util/ArrayList;

    .line 434
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 437
    move-result v11

    .line 438
    if-ge v10, v11, :cond_a

    .line 440
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 443
    move-result-object v11

    .line 444
    iget-object v12, p1, Lr30;->d:Ljava/util/ArrayList;

    .line 446
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 449
    move-result-object v12

    .line 450
    check-cast v12, Lp30;

    .line 452
    invoke-static {v12}, Ln40;->a(Lp30;)Landroid/os/Bundle;

    .line 455
    move-result-object v12

    .line 456
    invoke-virtual {v9, v11, v12}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 459
    add-int/lit8 v10, v10, 0x1

    .line 461
    goto :goto_8

    .line 462
    :cond_a
    const-string v10, "invisible_actions"

    .line 464
    invoke-virtual {v2, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 467
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 470
    invoke-virtual {p1}, Lr30;->c()Landroid/os/Bundle;

    .line 473
    move-result-object v9

    .line 474
    invoke-virtual {v9, v7, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 477
    iget-object v2, p0, Lm40;->g:Landroid/os/Bundle;

    .line 479
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 482
    :cond_b
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 484
    const/16 v7, 0x17

    .line 486
    if-lt v2, v7, :cond_c

    .line 488
    iget-object v7, p1, Lr30;->R:Landroid/graphics/drawable/Icon;

    .line 490
    if-eqz v7, :cond_c

    .line 492
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 494
    invoke-static {v8, v7}, Ls30;->a(Landroid/app/Notification$Builder;Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 497
    :cond_c
    const/16 v7, 0x18

    .line 499
    if-lt v2, v7, :cond_f

    .line 501
    iget-object v7, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 503
    iget-object v8, p1, Lr30;->C:Landroid/os/Bundle;

    .line 505
    invoke-virtual {v7, v8}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 508
    move-result-object v7

    .line 509
    iget-object v8, p1, Lr30;->r:[Ljava/lang/CharSequence;

    .line 511
    invoke-static {v7, v8}, Lh40;->a(Landroid/app/Notification$Builder;[Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 514
    iget-object v7, p1, Lr30;->G:Landroid/widget/RemoteViews;

    .line 516
    if-eqz v7, :cond_d

    .line 518
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 520
    invoke-static {v8, v7}, Li40;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 523
    :cond_d
    iget-object v7, p1, Lr30;->H:Landroid/widget/RemoteViews;

    .line 525
    if-eqz v7, :cond_e

    .line 527
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 529
    invoke-static {v8, v7}, Lj40;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 532
    :cond_e
    iget-object v7, p1, Lr30;->I:Landroid/widget/RemoteViews;

    .line 534
    if-eqz v7, :cond_f

    .line 536
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 538
    invoke-static {v8, v7}, Lk40;->a(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 541
    :cond_f
    const/4 v7, 0x0

    .line 542
    if-lt v2, v1, :cond_11

    .line 544
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 546
    iget v9, p1, Lr30;->K:I

    .line 548
    invoke-static {v8, v9}, Ll40;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 551
    move-result-object v8

    .line 552
    iget-object v9, p1, Lr30;->q:Ljava/lang/CharSequence;

    .line 554
    invoke-static {v8, v9}, Lt30;->a(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 557
    move-result-object v8

    .line 558
    iget-object v9, p1, Lr30;->L:Ljava/lang/String;

    .line 560
    invoke-static {v8, v9}, Lu30;->a(Landroid/app/Notification$Builder;Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 563
    move-result-object v8

    .line 564
    iget-wide v9, p1, Lr30;->M:J

    .line 566
    invoke-static {v8, v9, v10}, Lv30;->a(Landroid/app/Notification$Builder;J)Landroid/app/Notification$Builder;

    .line 569
    move-result-object v8

    .line 570
    iget v9, p1, Lr30;->N:I

    .line 572
    invoke-static {v8, v9}, Lg40;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 575
    iget-boolean v8, p1, Lr30;->A:Z

    .line 577
    if-eqz v8, :cond_10

    .line 579
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 581
    iget-boolean v9, p1, Lr30;->z:Z

    .line 583
    invoke-static {v8, v9}, Ld40;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 586
    :cond_10
    iget-object v8, p1, Lr30;->J:Ljava/lang/String;

    .line 588
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 591
    move-result v8

    .line 592
    if-nez v8, :cond_11

    .line 594
    iget-object v8, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 596
    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 599
    move-result-object v8

    .line 600
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 603
    move-result-object v8

    .line 604
    invoke-virtual {v8, v6, v6, v6}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    .line 607
    move-result-object v6

    .line 608
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 611
    :cond_11
    if-lt v2, v3, :cond_13

    .line 613
    iget-object v3, p1, Lr30;->c:Ljava/util/ArrayList;

    .line 615
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 618
    move-result-object v3

    .line 619
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 622
    move-result v6

    .line 623
    if-nez v6, :cond_12

    .line 625
    goto :goto_9

    .line 626
    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 629
    move-result-object p1

    .line 630
    invoke-static {p1}, Ld00;->a(Ljava/lang/Object;)V

    .line 633
    throw v7

    .line 634
    :cond_13
    :goto_9
    const/16 v3, 0x1d

    .line 636
    if-lt v2, v3, :cond_14

    .line 638
    iget-object v3, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 640
    iget-boolean v6, p1, Lr30;->O:Z

    .line 642
    invoke-static {v3, v6}, Le40;->a(Landroid/app/Notification$Builder;Z)Landroid/app/Notification$Builder;

    .line 645
    iget-object v3, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 647
    invoke-static {v7}, Lq30;->a(Lq30;)Landroid/app/Notification$BubbleMetadata;

    .line 650
    move-result-object v6

    .line 651
    invoke-static {v3, v6}, Lf40;->a(Landroid/app/Notification$Builder;Landroid/app/Notification$BubbleMetadata;)Landroid/app/Notification$Builder;

    .line 654
    :cond_14
    iget-boolean p1, p1, Lr30;->Q:Z

    .line 656
    if-eqz p1, :cond_17

    .line 658
    iget-object p1, p0, Lm40;->c:Lr30;

    .line 660
    iget-boolean p1, p1, Lr30;->w:Z

    .line 662
    if-eqz p1, :cond_15

    .line 664
    iput v4, p0, Lm40;->h:I

    .line 666
    goto :goto_a

    .line 667
    :cond_15
    iput v5, p0, Lm40;->h:I

    .line 669
    :goto_a
    iget-object p1, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 671
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    .line 674
    iget-object p1, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 676
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 679
    iget p1, v0, Landroid/app/Notification;->defaults:I

    .line 681
    and-int/lit8 p1, p1, -0x2

    .line 683
    and-int/lit8 p1, p1, -0x3

    .line 685
    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 687
    iget-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 689
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 692
    if-lt v2, v1, :cond_17

    .line 694
    iget-object p1, p0, Lm40;->c:Lr30;

    .line 696
    iget-object p1, p1, Lr30;->v:Ljava/lang/String;

    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 701
    move-result p1

    .line 702
    if-eqz p1, :cond_16

    .line 704
    iget-object p1, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 706
    const-string v0, "silent"

    .line 708
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 711
    :cond_16
    iget-object p1, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 713
    iget v0, p0, Lm40;->h:I

    .line 715
    invoke-static {p1, v0}, Lg40;->a(Landroid/app/Notification$Builder;I)Landroid/app/Notification$Builder;

    .line 718
    :cond_17
    return-void
.end method

.method public static d(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-object p1

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 6
    return-object p0

    .line 7
    :cond_1
    new-instance v0, Lc6;

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    move-result v1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-direct {v0, v1}, Lc6;-><init>(I)V

    .line 21
    invoke-virtual {v0, p0}, Lc6;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-virtual {v0, p1}, Lc6;->addAll(Ljava/util/Collection;)Z

    .line 27
    new-instance p0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    return-object p0
.end method

.method public static e(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 10
    move-result v2

    .line 11
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_1

    .line 24
    return-object v1

    .line 25
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 29
    invoke-static {p0}, Ld00;->a(Ljava/lang/Object;)V

    .line 32
    throw v0
.end method


# virtual methods
.method public final a(Lp30;)V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    invoke-virtual {p1}, Lp30;->d()Landroidx/core/graphics/drawable/IconCompat;

    .line 6
    move-result-object v1

    .line 7
    const/16 v2, 0x17

    .line 9
    const/4 v3, 0x0

    .line 10
    if-lt v0, v2, :cond_1

    .line 12
    invoke-static {}, La40;->a()V

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->n()Landroid/graphics/drawable/Icon;

    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    invoke-virtual {p1}, Lp30;->h()Ljava/lang/CharSequence;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p1}, Lp30;->a()Landroid/app/PendingIntent;

    .line 30
    move-result-object v2

    .line 31
    invoke-static {v0, v1, v2}, Lz30;->a(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Action$Builder;

    .line 34
    move-result-object v0

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 38
    if-eqz v1, :cond_2

    .line 40
    invoke-virtual {v1}, Landroidx/core/graphics/drawable/IconCompat;->c()I

    .line 43
    move-result v1

    .line 44
    goto :goto_1

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_1
    invoke-virtual {p1}, Lp30;->h()Ljava/lang/CharSequence;

    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {p1}, Lp30;->a()Landroid/app/PendingIntent;

    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v0, v1, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 57
    :goto_2
    invoke-virtual {p1}, Lp30;->e()[Laa0;

    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p1}, Lp30;->e()[Laa0;

    .line 66
    move-result-object v1

    .line 67
    invoke-static {v1}, Laa0;->b([Laa0;)[Landroid/app/RemoteInput;

    .line 70
    move-result-object v1

    .line 71
    array-length v2, v1

    .line 72
    :goto_3
    if-ge v3, v2, :cond_3

    .line 74
    aget-object v4, v1, v3

    .line 76
    invoke-virtual {v0, v4}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {p1}, Lp30;->c()Landroid/os/Bundle;

    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_4

    .line 88
    new-instance v1, Landroid/os/Bundle;

    .line 90
    invoke-virtual {p1}, Lp30;->c()Landroid/os/Bundle;

    .line 93
    move-result-object v2

    .line 94
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 97
    goto :goto_4

    .line 98
    :cond_4
    new-instance v1, Landroid/os/Bundle;

    .line 100
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 103
    :goto_4
    const-string v2, "android.support.allowGeneratedReplies"

    .line 105
    invoke-virtual {p1}, Lp30;->b()Z

    .line 108
    move-result v3

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 114
    const/16 v3, 0x18

    .line 116
    if-lt v2, v3, :cond_5

    .line 118
    invoke-virtual {p1}, Lp30;->b()Z

    .line 121
    move-result v3

    .line 122
    invoke-static {v0, v3}, Lw30;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 125
    :cond_5
    const-string v3, "android.support.action.semanticAction"

    .line 127
    invoke-virtual {p1}, Lp30;->f()I

    .line 130
    move-result v4

    .line 131
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const/16 v3, 0x1c

    .line 136
    if-lt v2, v3, :cond_6

    .line 138
    invoke-virtual {p1}, Lp30;->f()I

    .line 141
    move-result v3

    .line 142
    invoke-static {v0, v3}, Lx30;->a(Landroid/app/Notification$Action$Builder;I)Landroid/app/Notification$Action$Builder;

    .line 145
    :cond_6
    const/16 v3, 0x1d

    .line 147
    if-lt v2, v3, :cond_7

    .line 149
    invoke-virtual {p1}, Lp30;->i()Z

    .line 152
    move-result v2

    .line 153
    invoke-static {v0, v2}, Ly30;->a(Landroid/app/Notification$Action$Builder;Z)Landroid/app/Notification$Action$Builder;

    .line 156
    :cond_7
    const-string v2, "android.support.action.showsUserInterface"

    .line 158
    invoke-virtual {p1}, Lp30;->g()Z

    .line 161
    move-result p1

    .line 162
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 165
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 168
    iget-object p1, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 170
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 177
    return-void
.end method

.method public b()Landroid/app/Notification;
    .locals 2

    .line 1
    iget-object v0, p0, Lm40;->c:Lr30;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Lm40;->c()Landroid/app/Notification;

    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lm40;->c:Lr30;

    .line 12
    iget-object v1, v1, Lr30;->G:Landroid/widget/RemoteViews;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 18
    :cond_0
    return-object v0
.end method

.method public c()Landroid/app/Notification;
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x1a

    .line 5
    if-lt v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 9
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/16 v1, 0x18

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x2

    .line 18
    if-lt v0, v1, :cond_3

    .line 20
    iget-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 22
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 25
    move-result-object v0

    .line 26
    iget v1, p0, Lm40;->h:I

    .line 28
    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 36
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 38
    and-int/lit16 v1, v1, 0x200

    .line 40
    if-eqz v1, :cond_1

    .line 42
    iget v1, p0, Lm40;->h:I

    .line 44
    if-ne v1, v3, :cond_1

    .line 46
    invoke-virtual {p0, v0}, Lm40;->f(Landroid/app/Notification;)V

    .line 49
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_2

    .line 55
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 57
    and-int/lit16 v1, v1, 0x200

    .line 59
    if-nez v1, :cond_2

    .line 61
    iget v1, p0, Lm40;->h:I

    .line 63
    if-ne v1, v2, :cond_2

    .line 65
    invoke-virtual {p0, v0}, Lm40;->f(Landroid/app/Notification;)V

    .line 68
    :cond_2
    return-object v0

    .line 69
    :cond_3
    iget-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 71
    iget-object v1, p0, Lm40;->g:Landroid/os/Bundle;

    .line 73
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 76
    iget-object v0, p0, Lm40;->b:Landroid/app/Notification$Builder;

    .line 78
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lm40;->d:Landroid/widget/RemoteViews;

    .line 84
    if-eqz v1, :cond_4

    .line 86
    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 88
    :cond_4
    iget-object v1, p0, Lm40;->e:Landroid/widget/RemoteViews;

    .line 90
    if-eqz v1, :cond_5

    .line 92
    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 94
    :cond_5
    iget-object v1, p0, Lm40;->i:Landroid/widget/RemoteViews;

    .line 96
    if-eqz v1, :cond_6

    .line 98
    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 100
    :cond_6
    iget v1, p0, Lm40;->h:I

    .line 102
    if-eqz v1, :cond_8

    .line 104
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_7

    .line 110
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 112
    and-int/lit16 v1, v1, 0x200

    .line 114
    if-eqz v1, :cond_7

    .line 116
    iget v1, p0, Lm40;->h:I

    .line 118
    if-ne v1, v3, :cond_7

    .line 120
    invoke-virtual {p0, v0}, Lm40;->f(Landroid/app/Notification;)V

    .line 123
    :cond_7
    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_8

    .line 129
    iget v1, v0, Landroid/app/Notification;->flags:I

    .line 131
    and-int/lit16 v1, v1, 0x200

    .line 133
    if-nez v1, :cond_8

    .line 135
    iget v1, p0, Lm40;->h:I

    .line 137
    if-ne v1, v2, :cond_8

    .line 139
    invoke-virtual {p0, v0}, Lm40;->f(Landroid/app/Notification;)V

    .line 142
    :cond_8
    return-object v0
.end method

.method public final f(Landroid/app/Notification;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 4
    iput-object v0, p1, Landroid/app/Notification;->vibrate:[J

    .line 6
    iget v0, p1, Landroid/app/Notification;->defaults:I

    .line 8
    and-int/lit8 v0, v0, -0x2

    .line 10
    and-int/lit8 v0, v0, -0x3

    .line 12
    iput v0, p1, Landroid/app/Notification;->defaults:I

    .line 14
    return-void
.end method

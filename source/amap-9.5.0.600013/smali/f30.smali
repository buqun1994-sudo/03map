.class public abstract Lf30;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:J

.field public static m:J

.field public static n:J

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Landroid/content/Context;

.field public static final t:[Ljava/lang/String;

.field public static u:Lzj;

.field public static final v:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    const-string v0, "content://com.autonavi.amapauto.provider.search/param"

    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lf30;->a:Landroid/net/Uri;

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    sput-wide v0, Lf30;->l:J

    .line 13
    sput-wide v0, Lf30;->m:J

    .line 15
    sput-wide v0, Lf30;->n:J

    .line 17
    const-string v0, "isn"

    .line 19
    const-string v1, "isn1"

    .line 21
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 24
    move-result-object v2

    .line 25
    sput-object v2, Lf30;->t:[Ljava/lang/String;

    .line 27
    invoke-static {}, Lrv;->H()Lrv;

    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 34
    move-result-object v2

    .line 35
    sput-object v2, Lf30;->s:Landroid/content/Context;

    .line 37
    const/4 v2, 0x0

    .line 38
    new-array v3, v2, [Ljava/lang/Object;

    .line 40
    const-string v4, "NetworkParam"

    .line 42
    const-string v5, "getIsn start"

    .line 44
    invoke-static {v4, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lf30;->s()Ljava/lang/String;

    .line 50
    move-result-object v3

    .line 51
    sput-object v3, Lf30;->i:Ljava/lang/String;

    .line 53
    const/4 v5, 0x1

    .line 54
    new-array v5, v5, [Ljava/lang/Object;

    .line 56
    aput-object v3, v5, v2

    .line 58
    const-string v2, "getIsn end isn={?}"

    .line 60
    invoke-static {v4, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :try_start_0
    sget-object v2, Lf30;->s:Landroid/content/Context;

    .line 65
    invoke-static {v2}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    .line 68
    move-result-object v2

    .line 69
    sput-object v2, Lf30;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    :goto_0
    invoke-static {}, Lf30;->g()Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 80
    sput-object v2, Lf30;->o:Ljava/lang/String;

    .line 82
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    sput-object v0, Lf30;->v:[Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static A()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->F:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static B()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lf30;->p()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lf30;->c:Ljava/lang/String;

    .line 7
    invoke-static {}, Lf30;->f()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lf30;->d:Ljava/lang/String;

    .line 13
    invoke-static {}, Lf30;->m()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lf30;->e:Ljava/lang/String;

    .line 19
    invoke-static {}, Lf30;->l()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lf30;->f:Ljava/lang/String;

    .line 25
    const-string v0, "a"

    .line 27
    sput-object v0, Lf30;->b:Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v2, "&div="

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    sget-object v2, Lf30;->c:Ljava/lang/String;

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "&autodiv="

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    sget-object v2, Lf30;->d:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, "&dip="

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget-object v2, Lf30;->e:Ljava/lang/String;

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "&dic="

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    sget-object v2, Lf30;->f:Ljava/lang/String;

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string v2, "&diu="

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-static {}, Lf30;->n()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v2, "&diu2="

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {}, Lf30;->t()Ljava/lang/String;

    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v2, "&diu3="

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v2, Lf30;->i:Ljava/lang/String;

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    sget-object v1, Lf30;->s:Landroid/content/Context;

    .line 146
    invoke-static {v1}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 149
    move-result-object v1

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    const-string v3, "&cifa="

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v1}, Lsi;->toString()Ljava/lang/String;

    .line 163
    move-result-object v1

    .line 164
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    sget-object v1, Lf30;->h:Ljava/lang/String;

    .line 176
    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    const-string v2, "&sa="

    .line 185
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object v2, Lf30;->h:Ljava/lang/String;

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 200
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 202
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    const-string v2, "&session="

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {}, Lf30;->x()J

    .line 213
    move-result-wide v2

    .line 214
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    move-result-object v1

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    const-string v2, "&appstartid="

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-static {}, Lf30;->e()J

    .line 237
    move-result-wide v2

    .line 238
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-string v2, "&stepid="

    .line 255
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-static {}, Lf30;->a()J

    .line 261
    move-result-wide v2

    .line 262
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    move-result-object v1

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    .line 274
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const-string v2, "&channel="

    .line 279
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Lf30;->h()Ljava/lang/String;

    .line 285
    move-result-object v2

    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 296
    invoke-static {}, Lf30;->A()Ljava/lang/String;

    .line 299
    move-result-object v1

    .line 300
    if-eqz v1, :cond_1

    .line 302
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 305
    move-result v2

    .line 306
    if-lez v2, :cond_1

    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    .line 310
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 313
    const-string v3, "&uid="

    .line 315
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    move-result-object v1

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    :cond_1
    invoke-static {}, Lf30;->y()Ljava/lang/String;

    .line 331
    move-result-object v1

    .line 332
    if-eqz v1, :cond_2

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 337
    move-result v2

    .line 338
    if-lez v2, :cond_2

    .line 340
    new-instance v2, Ljava/lang/StringBuilder;

    .line 342
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    const-string v3, "&spm="

    .line 347
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 356
    move-result-object v1

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    :cond_2
    sget-object v1, Lf30;->k:Ljava/lang/String;

    .line 362
    const-string v2, "UTF-8"

    .line 364
    if-eqz v1, :cond_3

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    .line 368
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 371
    const-string v3, "&tid="

    .line 373
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-static {}, Lf30;->z()Ljava/lang/String;

    .line 379
    move-result-object v3

    .line 380
    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 383
    move-result-object v3

    .line 384
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    move-result-object v1

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 394
    :cond_3
    sget-object v1, Lf30;->b:Ljava/lang/String;

    .line 396
    if-eqz v1, :cond_4

    .line 398
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 401
    move-result v1

    .line 402
    if-lez v1, :cond_4

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    .line 406
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 409
    const-string v3, "&dib="

    .line 411
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    sget-object v3, Lf30;->b:Ljava/lang/String;

    .line 416
    invoke-static {v3, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 419
    move-result-object v3

    .line 420
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    :cond_4
    sget-object v1, Lf30;->s:Landroid/content/Context;

    .line 432
    const-string v3, ""

    .line 434
    if-eqz v1, :cond_5

    .line 436
    new-instance v1, Ljava/lang/StringBuilder;

    .line 438
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    const-string v4, "&client_network_class="

    .line 443
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    invoke-static {}, Lrv;->H()Lrv;

    .line 449
    move-result-object v4

    .line 450
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 453
    move-result-object v4

    .line 454
    invoke-static {v4}, Lf30;->v(Landroid/content/Context;)I

    .line 457
    move-result v4

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    move-result-object v1

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 471
    :cond_5
    invoke-static {}, Lf30;->k()Ljava/lang/String;

    .line 474
    move-result-object v1

    .line 475
    if-eqz v1, :cond_6

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    .line 479
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    const-string v4, "&dibv="

    .line 484
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    invoke-static {}, Lf30;->k()Ljava/lang/String;

    .line 490
    move-result-object v4

    .line 491
    invoke-static {v4, v2}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 494
    move-result-object v2

    .line 495
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 501
    move-result-object v1

    .line 502
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 505
    goto :goto_0

    .line 506
    :cond_6
    const-string v1, "&dibv=00"

    .line 508
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 513
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 516
    const-string v2, "&BID_F="

    .line 518
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    sget-object v2, Lf30;->o:Ljava/lang/String;

    .line 523
    if-nez v2, :cond_7

    .line 525
    goto :goto_1

    .line 526
    :cond_7
    move-object v3, v2

    .line 527
    :goto_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 533
    move-result-object v1

    .line 534
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 537
    new-instance v1, Ljava/lang/StringBuilder;

    .line 539
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    const-string v2, "&aetraffic="

    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    invoke-static {}, Lf30;->c()Ljava/lang/String;

    .line 550
    move-result-object v2

    .line 551
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 557
    move-result-object v1

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 561
    sget-object v1, Lf30;->p:Ljava/lang/String;

    .line 563
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 566
    move-result v1

    .line 567
    if-nez v1, :cond_8

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    .line 571
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    const-string v2, "&adiu="

    .line 576
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    sget-object v2, Lf30;->p:Ljava/lang/String;

    .line 581
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 587
    move-result-object v1

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 591
    :cond_8
    sget-object v1, Lf30;->q:Ljava/lang/String;

    .line 593
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 596
    move-result v1

    .line 597
    if-nez v1, :cond_9

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    .line 601
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 604
    const-string v2, "&adiu_extra="

    .line 606
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    sget-object v2, Lf30;->q:Ljava/lang/String;

    .line 611
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 617
    move-result-object v1

    .line 618
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 624
    move-result-object v0

    .line 625
    return-object v0
.end method

.method public static C()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2746

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lrv;->O()Z

    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const-string v2, "NetworkParam"

    .line 24
    if-nez v0, :cond_0

    .line 26
    const-string v0, "getWifiMac, attention not agreed!!! return default mac address 02:00:00:00:00:00"

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    const-string v0, "02:00:00:00:00:00"

    .line 35
    return-object v0

    .line 36
    :cond_0
    const-string v0, "getWifiMac, attention agreed"

    .line 38
    new-array v1, v1, [Ljava/lang/Object;

    .line 40
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 45
    const/16 v1, 0x17

    .line 47
    if-lt v0, v1, :cond_3

    .line 49
    invoke-static {}, Lse;->c()Lse;

    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lse;->a()Leq;

    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Lyq;->getMacFromHardware()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 67
    return-object v0

    .line 68
    :cond_2
    invoke-static {}, Lf30;->E()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_4

    .line 78
    invoke-static {}, Lf30;->D()Ljava/lang/String;

    .line 81
    move-result-object v0

    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const-string v0, ""

    .line 85
    :cond_4
    :goto_0
    return-object v0
.end method

.method public static D()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lse;->a()Leq;

    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Lyq;->getMacFromHardware()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    if-nez v1, :cond_0

    .line 19
    return-object v0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const/4 v1, 0x0

    .line 22
    new-array v1, v1, [Ljava/lang/Object;

    .line 24
    const-string v2, "NetworkParam"

    .line 26
    const-string v3, "getWifiMacAddress :"

    .line 28
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    :cond_0
    const-string v0, ""

    .line 33
    return-object v0
.end method

.method public static E()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, "NetworkParam"

    .line 3
    const-string v1, ""

    .line 5
    const/4 v2, 0x0

    .line 6
    :try_start_0
    const-string v3, "/sys/class/net/wlan0/address"

    .line 8
    invoke-static {v3}, Lf30;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 17
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v3

    .line 20
    const-string v4, "getWifiMacFormFile exception:"

    .line 22
    new-array v5, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v0, v4, v3, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 27
    :cond_0
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    if-eqz v3, :cond_1

    .line 33
    :try_start_1
    const-string v3, "/sys/class/net/eth0/address"

    .line 35
    invoke-static {v3}, Lf30;->G(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    const/16 v4, 0x11

    .line 47
    invoke-virtual {v3, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 50
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception v3

    .line 53
    const-string v4, "ocuur a error!"

    .line 55
    new-array v5, v2, [Ljava/lang/Object;

    .line 57
    invoke-static {v0, v4, v3, v5}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 61
    new-array v3, v3, [Ljava/lang/Object;

    .line 63
    aput-object v1, v3, v2

    .line 65
    const-string v2, "getWifiMacFormFile:{?}"

    .line 67
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    return-object v1
.end method

.method public static F()V
    .locals 1

    .line 1
    sget-object v0, Lf30;->u:Lzj;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lzj;

    .line 7
    invoke-direct {v0}, Lzj;-><init>()V

    .line 10
    sput-object v0, Lf30;->u:Lzj;

    .line 12
    :cond_0
    invoke-static {}, Lf30;->t()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lf30;->j:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static G(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/autonavi/amapauto/utils/FileUtils;->replaceIllegalChar(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 18
    new-instance v1, Ljava/io/FileReader;

    .line 20
    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 23
    :try_start_1
    invoke-static {v1}, Lf30;->H(Ljava/io/Reader;)Ljava/lang/String;

    .line 26
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {v1}, Ljava/io/Reader;->close()V

    .line 30
    return-object p0

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    move-object v0, v1

    .line 33
    goto :goto_0

    .line 34
    :catchall_1
    move-exception p0

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 40
    :cond_1
    throw p0
.end method

.method public static H(Ljava/io/Reader;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/16 v1, 0x1000

    .line 8
    new-array v1, v1, [C

    .line 10
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    .line 13
    move-result v2

    .line 14
    :goto_0
    if-ltz v2, :cond_0

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v0, v1, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    .line 23
    move-result v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static I()V
    .locals 1

    .line 1
    sget-object v0, Lf30;->u:Lzj;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lzj;

    .line 7
    invoke-direct {v0}, Lzj;-><init>()V

    .line 10
    sput-object v0, Lf30;->u:Lzj;

    .line 12
    :cond_0
    sget-object v0, Lf30;->u:Lzj;

    .line 14
    invoke-virtual {v0}, Lzj;->n()V

    .line 17
    return-void
.end method

.method public static J(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lf30;->s:Landroid/content/Context;

    .line 3
    const-string v1, "SharedPreferences"

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 13
    move-result-object v0

    .line 14
    const-string v1, "extra_isn"

    .line 16
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 19
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 22
    return-void
.end method

.method public static a()J
    .locals 4

    .line 1
    sget-wide v0, Lf30;->n:J

    .line 3
    const-wide/16 v2, 0x1

    .line 5
    add-long/2addr v0, v2

    .line 6
    sput-wide v0, Lf30;->n:J

    .line 8
    return-wide v0
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lf30;->p:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Lg30;->v:Lg30;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lf30;->p:Ljava/lang/String;

    .line 17
    :cond_0
    sget-object v0, Lf30;->p:Ljava/lang/String;

    .line 19
    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->u:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "NetworkParam"

    .line 3
    sget-object v1, Lf30;->r:Ljava/lang/String;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    return-object v1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lrv;->z()Landroid/content/Context;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 20
    move-result-object v2

    .line 21
    invoke-static {}, Lrv;->H()Lrv;

    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Lrv;->z()Landroid/content/Context;

    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 36
    move-result-object v2

    .line 37
    iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    const-string v3, "getAppVersionCode :"

    .line 43
    new-array v4, v1, [Ljava/lang/Object;

    .line 45
    invoke-static {v0, v3, v2, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    const/4 v2, 0x0

    .line 49
    :goto_0
    const/4 v3, 0x1

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 52
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v4

    .line 56
    aput-object v4, v3, v1

    .line 58
    const-string v1, "getAppVersionCode = {?}"

    .line 60
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lf30;->r:Ljava/lang/String;

    .line 69
    return-object v0
.end method

.method public static e()J
    .locals 5

    .line 1
    sget-wide v0, Lf30;->m:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-nez v4, :cond_0

    .line 9
    sget-object v0, Lg30;->n:Lg30;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lf30;->m:J

    .line 25
    :cond_0
    sget-wide v0, Lf30;->m:J

    .line 27
    return-wide v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->q:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    const-string v1, "system/etc/amapconfig.ini"

    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 15
    return-object v2

    .line 16
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    .line 18
    new-instance v3, Ljava/io/FileReader;

    .line 20
    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 23
    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 32
    const-string v3, "bid="

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_1

    .line 40
    const/4 v3, 0x4

    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 44
    move-result-object v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 45
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    :goto_0
    return-object v0

    .line 54
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 57
    goto :goto_3

    .line 58
    :catch_1
    move-exception v0

    .line 59
    goto :goto_1

    .line 60
    :catch_2
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :catchall_0
    move-exception v0

    .line 63
    goto :goto_4

    .line 64
    :catch_3
    move-exception v0

    .line 65
    move-object v1, v2

    .line 66
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 69
    if-eqz v1, :cond_2

    .line 71
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 74
    goto :goto_3

    .line 75
    :catch_4
    move-exception v0

    .line 76
    move-object v1, v2

    .line 77
    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 80
    if-eqz v1, :cond_2

    .line 82
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 85
    goto :goto_3

    .line 86
    :catch_5
    move-exception v0

    .line 87
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    :cond_2
    :goto_3
    return-object v2

    .line 91
    :catchall_1
    move-exception v0

    .line 92
    move-object v2, v1

    .line 93
    :goto_4
    if-eqz v2, :cond_3

    .line 95
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 98
    goto :goto_5

    .line 99
    :catch_6
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 103
    :cond_3
    :goto_5
    throw v0
.end method

.method public static h()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->s:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lf30;->s:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lsi;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static j()Ljava/lang/String;
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
    invoke-static {v1}, Lf30;->v(Landroid/content/Context;)I

    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ""

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lf30;->g:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lrv;->H()Lrv;

    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lrv;->w()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const-string v1, "\\."

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    array-length v1, v0

    .line 24
    const/4 v2, 0x4

    .line 25
    if-lt v1, v2, :cond_0

    .line 27
    const/4 v1, 0x3

    .line 28
    aget-object v0, v0, v1

    .line 30
    const-string v1, " "

    .line 32
    const-string v2, ""

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lf30;->g:Ljava/lang/String;

    .line 40
    :cond_0
    sget-object v0, Lf30;->g:Ljava/lang/String;

    .line 42
    if-nez v0, :cond_1

    .line 44
    const-string v0, "00"

    .line 46
    sput-object v0, Lf30;->g:Ljava/lang/String;

    .line 48
    :cond_1
    sget-object v0, Lf30;->g:Ljava/lang/String;

    .line 50
    return-object v0
.end method

.method public static l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->r:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static m()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->o:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static n()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lf30;->u:Lzj;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lzj;

    .line 7
    invoke-direct {v0}, Lzj;-><init>()V

    .line 10
    sput-object v0, Lf30;->u:Lzj;

    .line 12
    :cond_0
    sget-object v0, Lf30;->u:Lzj;

    .line 14
    invoke-virtual {v0}, Lzj;->i()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public static o()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lf30;->u:Lzj;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lzj;

    .line 7
    invoke-direct {v0}, Lzj;-><init>()V

    .line 10
    sput-object v0, Lf30;->u:Lzj;

    .line 12
    :cond_0
    sget-object v0, Lf30;->u:Lzj;

    .line 14
    invoke-virtual {v0}, Lzj;->j()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public static p()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->p:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static q()Ljava/lang/String;
    .locals 6

    .line 1
    const-string v0, ""

    .line 3
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 10
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 11
    :try_start_1
    const-string v2, "-"

    .line 13
    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 16
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    goto :goto_1

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v1

    .line 21
    move-object v5, v1

    .line 22
    move-object v1, v0

    .line 23
    move-object v0, v5

    .line 24
    :goto_0
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 27
    const-string v3, "NetworkParam"

    .line 29
    const-string v4, "getGuid :"

    .line 31
    invoke-static {v3, v4, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 34
    move-object v0, v1

    .line 35
    :goto_1
    return-object v0
.end method

.method public static r()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {}, Lse;->c()Lse;

    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x2746

    .line 7
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 10
    move-result v0

    .line 11
    const-string v1, ""

    .line 13
    const/4 v2, 0x0

    .line 14
    const-string v3, "NetworkParam"

    .line 16
    if-eqz v0, :cond_1

    .line 18
    invoke-static {}, Lrv;->H()Lrv;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lrv;->O()Z

    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 28
    const-string v0, "getDeviceId, attention not agreed!!!"

    .line 30
    new-array v2, v2, [Ljava/lang/Object;

    .line 32
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    return-object v1

    .line 36
    :cond_0
    const-string v0, "getDeviceId, attention agreed"

    .line 38
    new-array v4, v2, [Ljava/lang/Object;

    .line 40
    invoke-static {v3, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    :try_start_0
    invoke-static {}, Lzj;->h()Ljava/lang/String;

    .line 46
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string v4, "getIMEI :"

    .line 51
    new-array v2, v2, [Ljava/lang/Object;

    .line 53
    invoke-static {v3, v4, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    :goto_0
    return-object v1
.end method

.method public static s()Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NetworkParam"

    .line 6
    const-string v3, "getIsn"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    sget-object v1, Lf30;->i:Ljava/lang/String;

    .line 13
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 19
    sget-object v0, Lf30;->i:Ljava/lang/String;

    .line 21
    return-object v0

    .line 22
    :cond_0
    sget-object v1, Lf30;->s:Landroid/content/Context;

    .line 24
    const-string v3, "SharedPreferences"

    .line 26
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 29
    move-result-object v1

    .line 30
    const-string v3, "extra_isn"

    .line 32
    const-string v4, ""

    .line 34
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    sput-object v1, Lf30;->i:Ljava/lang/String;

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v1

    .line 44
    const-string v3, "-"

    .line 46
    if-nez v1, :cond_1

    .line 48
    sget-object v1, Lf30;->i:Ljava/lang/String;

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 56
    sget-object v0, Lf30;->i:Ljava/lang/String;

    .line 58
    return-object v0

    .line 59
    :cond_1
    sput-object v4, Lf30;->i:Ljava/lang/String;

    .line 61
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 67
    const/4 v1, 0x1

    .line 68
    new-array v1, v1, [Ljava/lang/Object;

    .line 70
    sget-object v3, Lf30;->i:Ljava/lang/String;

    .line 72
    aput-object v3, v1, v0

    .line 74
    const-string v0, "getIsn isn != null:{?}"

    .line 76
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    sget-object v0, Lf30;->i:Ljava/lang/String;

    .line 81
    invoke-static {v0}, Lf30;->J(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lf30;->i:Ljava/lang/String;

    .line 86
    return-object v0

    .line 87
    :cond_2
    invoke-static {}, Lf30;->q()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lnz;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 113
    sput-object v0, Lf30;->i:Ljava/lang/String;

    .line 115
    invoke-static {v0}, Lf30;->J(Ljava/lang/String;)V

    .line 118
    sget-object v0, Lf30;->i:Ljava/lang/String;

    .line 120
    return-object v0
.end method

.method public static t()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lf30;->j:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    sget-object v0, Lf30;->j:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    sget-object v0, Lf30;->s:Landroid/content/Context;

    .line 14
    const-string v1, "SharedPreferences"

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 20
    move-result-object v0

    .line 21
    const-string v3, ""

    .line 23
    const-string v4, "user_mac"

    .line 25
    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 35
    invoke-static {}, Lqf;->a()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_1

    .line 45
    sget-object v3, Lf30;->s:Landroid/content/Context;

    .line 47
    invoke-virtual {v3, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v1, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 61
    :cond_1
    sput-object v0, Lf30;->j:Ljava/lang/String;

    .line 63
    return-object v0
.end method

.method public static u()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lf30;->s:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lsi;->C()I

    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static v(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-static {p0}, Lpa;->h(Landroid/content/Context;)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static w()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->G:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static x()J
    .locals 5

    .line 1
    sget-wide v0, Lf30;->l:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-nez v4, :cond_0

    .line 9
    sget-object v0, Lg30;->m:Lg30;

    .line 11
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 22
    move-result-wide v0

    .line 23
    sput-wide v0, Lf30;->l:J

    .line 25
    :cond_0
    sget-wide v0, Lf30;->l:J

    .line 27
    return-wide v0
.end method

.method public static y()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lg30;->t:Lg30;

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/NetworkParamNative;->getCppNetworkParam(Lg30;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static z()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lf30;->k:Ljava/lang/String;

    .line 3
    if-nez v0, :cond_0

    .line 5
    :try_start_0
    sget-object v0, Lf30;->s:Landroid/content/Context;

    .line 7
    invoke-static {v0}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lf30;->k:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    const/4 v1, 0x0

    .line 16
    new-array v1, v1, [Ljava/lang/Object;

    .line 18
    const-string v2, "NetworkParam"

    .line 20
    const-string v3, "getTaobaoID :"

    .line 22
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    :cond_0
    :goto_0
    sget-object v0, Lf30;->k:Ljava/lang/String;

    .line 27
    return-object v0
.end method

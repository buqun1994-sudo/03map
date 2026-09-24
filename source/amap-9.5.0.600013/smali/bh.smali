.class public Lbh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbh$d;,
        Lbh$f;,
        Lbh$e;
    }
.end annotation


# static fields
.field public static final o:Ljava/text/SimpleDateFormat;

.field public static final p:[Ljava/lang/String;

.field public static q:Lbh;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/io/File;

.field public k:Ljava/util/Date;

.field public l:Z

.field public m:Z

.field public n:Lcy;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy-MM-dd HH:mm:ss.S"

    .line 5
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    sput-object v0, Lbh;->o:Ljava/text/SimpleDateFormat;

    .line 12
    const-string v0, "com.anywhere."

    .line 14
    const-string v1, ".XposedMod."

    .line 16
    const-string v2, ".xposed."

    .line 18
    const-string v3, "com.txy.anywhere"

    .line 20
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lbh;->p:[Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lbh;->a:I

    .line 7
    iput v0, p0, Lbh;->b:I

    .line 9
    iput v0, p0, Lbh;->c:I

    .line 11
    iput v0, p0, Lbh;->d:I

    .line 13
    iput v0, p0, Lbh;->e:I

    .line 15
    iput v0, p0, Lbh;->f:I

    .line 17
    iput v0, p0, Lbh;->g:I

    .line 19
    iput v0, p0, Lbh;->h:I

    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, p0, Lbh;->k:Ljava/util/Date;

    .line 24
    iput-boolean v0, p0, Lbh;->l:Z

    .line 26
    iput-boolean v0, p0, Lbh;->m:Z

    .line 28
    return-void
.end method

.method public static C()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1}, Lbr;->f()Ljava/io/File;

    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v2, "crash"

    .line 21
    invoke-static {v2, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 31
    return-object v0

    .line 32
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object v2

    .line 40
    :catch_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static V()Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, ".uploadcrash"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static h()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Lbr;->m()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "Version:"

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    const-string v3, "ANDA"

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string v2, "/"

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 47
    move-result-object v2

    .line 48
    invoke-interface {v2}, Lbr;->r()I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    const/16 v2, 0xa

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_0

    .line 66
    const-string v3, "DEBUG MODE LOG !!!\n"

    .line 68
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    const-string v3, "dic:"

    .line 73
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {}, Lcom/autonavi/common/tool/b;->r()Ljava/lang/String;

    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    const-string v3, "diu:"

    .line 88
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-static {}, Lcom/autonavi/common/tool/b;->s()Ljava/lang/String;

    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    const-string v3, "diu2:"

    .line 103
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {}, Lcom/autonavi/common/tool/b;->t()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 116
    const-string v3, "diu3:"

    .line 118
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-static {}, Lcom/autonavi/common/tool/b;->u()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    const-string v3, "adiu:"

    .line 133
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-static {}, Lcom/autonavi/common/tool/b;->j()Ljava/lang/String;

    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    const-string v3, "session:"

    .line 148
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-static {}, Lcom/autonavi/common/tool/b;->F()Ljava/lang/String;

    .line 154
    move-result-object v3

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    const-string v3, "GLogSpyInitializationID:"

    .line 163
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-static {}, Lcom/autonavi/common/tool/b;->z()Ljava/lang/String;

    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 176
    const-string v3, "tid:"

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {}, Lcom/autonavi/common/tool/b;->I()Ljava/lang/String;

    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    const-string v3, "DeviceName:"

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 198
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 204
    const-string v3, "Product:"

    .line 206
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    sget-object v3, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 217
    const-string v3, "Manufacture:"

    .line 219
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-static {}, Lcom/autonavi/common/tool/b;->A()Ljava/lang/String;

    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    const-string v3, "Model:"

    .line 234
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-static {}, Lcom/autonavi/common/tool/b;->C()Ljava/lang/String;

    .line 240
    move-result-object v3

    .line 241
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const-string v3, "FeatureCode:"

    .line 249
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {}, Lcom/autonavi/common/tool/b;->w()Ljava/lang/String;

    .line 255
    move-result-object v3

    .line 256
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    const-string v3, "Cpu:"

    .line 264
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-static {}, Lcom/autonavi/common/tool/b;->p()Ljava/lang/String;

    .line 270
    move-result-object v3

    .line 271
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    const-string v3, "Memorysize:"

    .line 279
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-static {}, Lcom/autonavi/common/tool/b;->B()Ljava/lang/String;

    .line 285
    move-result-object v3

    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 292
    const-string v3, "Resolution"

    .line 294
    invoke-static {v3}, Lbz;->d(Ljava/lang/String;)V

    .line 297
    const-string v3, "Resolution:"

    .line 299
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-static {}, Lcom/autonavi/common/tool/b;->E()Ljava/lang/String;

    .line 305
    move-result-object v3

    .line 306
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    const-string v3, "Android-Version:"

    .line 314
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 319
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 325
    const-string v3, "Android-SDK_INT:"

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 332
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    const-string v3, "DumpcrashVersion:"

    .line 340
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    const-string v3, "ndk27.4.0.0.9"

    .line 345
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 351
    const-string v3, "encrypt:nb"

    .line 353
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    const-string v3, "DeviceID:"

    .line 361
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 367
    move-result-object v3

    .line 368
    invoke-static {v3}, Lxf0;->s(Landroid/content/Context;)Ljava/lang/String;

    .line 371
    move-result-object v3

    .line 372
    invoke-static {v3}, Lk10;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 375
    move-result-object v3

    .line 376
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 382
    const-string v3, "DeviceRoot:"

    .line 384
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {}, Lxf0;->D()Z

    .line 390
    move-result v3

    .line 391
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    const-string v3, "BuildPlatform:"

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-static {}, Lcom/autonavi/common/tool/b;->m()Ljava/lang/String;

    .line 405
    move-result-object v3

    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 412
    invoke-static {}, Lxf0;->w()Ljava/lang/String;

    .line 415
    move-result-object v3

    .line 416
    if-eqz v3, :cond_1

    .line 418
    const-string v4, "MiUI:"

    .line 420
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 429
    :cond_1
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 432
    move-result-object v3

    .line 433
    invoke-static {v3}, Lxf0;->u(Landroid/app/Application;)Ljava/util/Date;

    .line 436
    move-result-object v3

    .line 437
    const-string v4, "InstalledTime:"

    .line 439
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    const-string v4, "unknown"

    .line 444
    if-eqz v3, :cond_2

    .line 446
    :try_start_1
    sget-object v5, Lbh;->o:Ljava/text/SimpleDateFormat;

    .line 448
    invoke-virtual {v5, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 451
    move-result-object v3

    .line 452
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    goto :goto_0

    .line 459
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 465
    :goto_0
    const-string v3, "PID:"

    .line 467
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 473
    move-result v3

    .line 474
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 483
    move-result-object v3

    .line 484
    invoke-interface {v3}, Lbr;->c0()Ljava/lang/String;

    .line 487
    move-result-object v3

    .line 488
    if-eqz v3, :cond_3

    .line 490
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 493
    move-result v5

    .line 494
    if-eqz v5, :cond_4

    .line 496
    :cond_3
    move-object v3, v4

    .line 497
    :cond_4
    const-string v5, "ExternalStoragePath:"

    .line 499
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 508
    const-string v5, "ExternalStorageSize:"

    .line 510
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 516
    move-result v5

    .line 517
    const-wide/16 v6, 0x0

    .line 519
    if-eqz v5, :cond_5

    .line 521
    move-wide v8, v6

    .line 522
    goto :goto_1

    .line 523
    :cond_5
    new-instance v5, Ljava/io/File;

    .line 525
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 528
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    .line 531
    move-result-wide v8

    .line 532
    :goto_1
    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 538
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 541
    move-result-object v3

    .line 542
    invoke-interface {v3}, Lbr;->x()Ljava/lang/String;

    .line 545
    move-result-object v3

    .line 546
    if-eqz v3, :cond_6

    .line 548
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 551
    move-result v5

    .line 552
    if-eqz v5, :cond_7

    .line 554
    :cond_6
    move-object v3, v4

    .line 555
    :cond_7
    const-string v5, "InternalStoragePath:"

    .line 557
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 566
    const-string v5, "InternalStorageSize:"

    .line 568
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 574
    move-result v5

    .line 575
    if-eqz v5, :cond_8

    .line 577
    goto :goto_2

    .line 578
    :cond_8
    new-instance v5, Ljava/io/File;

    .line 580
    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v5}, Ljava/io/File;->getUsableSpace()J

    .line 586
    move-result-wide v6

    .line 587
    :goto_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 590
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 593
    const-string v3, "ABI:"

    .line 595
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v3, "ro.product.cpu.abi"

    .line 600
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 603
    move-result-object v3

    .line 604
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 607
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 610
    const-string v3, "VMHeap:"

    .line 612
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    const-string v3, "dalvik.vm.heapsize"

    .line 617
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 620
    move-result-object v3

    .line 621
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    const-string v3, "VMHeapGrowthLimit:"

    .line 629
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    const-string v3, "dalvik.vm.heapgrowthlimit"

    .line 634
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 637
    move-result-object v3

    .line 638
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    const-string v3, "Debugable:"

    .line 646
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    const-string v3, "ro.debuggable"

    .line 651
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 654
    move-result-object v3

    .line 655
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 661
    const-string v3, "FingerPrint:"

    .line 663
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 668
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 674
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 677
    move-result-object v2

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    .line 680
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 683
    const-string v4, "Exception:("

    .line 685
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 691
    const-string v1, ")"

    .line 693
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 699
    move-result-object v1

    .line 700
    const-string v3, "DumpCrash"

    .line 702
    const-string v4, "Tag"

    .line 704
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v3, "Tag:"

    .line 709
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    sget-object v3, Lcom/autonavi/common/tool/b;->a:Ljava/lang/String;

    .line 714
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 717
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 718
    const-string v4, ":"

    .line 720
    if-eqz v3, :cond_9

    .line 722
    :try_start_2
    const-string v3, ""

    .line 724
    goto :goto_3

    .line 725
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    .line 727
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    sget-object v5, Lcom/autonavi/common/tool/b;->a:Ljava/lang/String;

    .line 732
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 741
    move-result-object v3

    .line 742
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 748
    move-result-object v2

    .line 749
    invoke-static {v2}, Lk10;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 752
    move-result-object v2

    .line 753
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 762
    move-result-object v1

    .line 763
    invoke-static {v1}, Lk10;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v1, "\n\n"

    .line 772
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 775
    goto :goto_4

    .line 776
    :catchall_0
    move-exception v1

    .line 777
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 780
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 783
    move-result-object v0

    .line 784
    return-object v0
.end method

.method public static n(Lbh$f;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lbh$f;->d:Ljava/lang/String;

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x1

    .line 12
    return p0
.end method

.method public static s()Lbh;
    .locals 2

    .line 1
    sget-object v0, Lbh;->q:Lbh;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-class v0, Lbh;

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    new-instance v1, Lbh;

    .line 10
    invoke-direct {v1}, Lbh;-><init>()V

    .line 13
    sput-object v1, Lbh;->q:Lbh;

    .line 15
    monitor-exit v0

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1

    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lbh;->q:Lbh;

    .line 22
    return-object v0
.end method

.method public static v()Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 15
    invoke-static {}, Lbh;->w()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 19
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v1
.end method

.method public static w()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 3
    const-string v1, "yyyy_MM_dd_HH_mm_ss"

    .line 5
    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 10
    new-instance v1, Ljava/util/Date;

    .line 12
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "autonavi_error_log_"

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 32
    const-string v2, "debug_"

    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    :cond_0
    const-string v2, "jiami_"

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v0, ".txt"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method


# virtual methods
.method public A(Landroid/app/Application;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    if-nez p1, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 11
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    const-string v2, ".tamper_crash"

    .line 17
    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 26
    return-object v0

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 30
    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 33
    :try_start_1
    new-instance p1, Ljava/io/BufferedReader;

    .line 35
    new-instance v3, Ljava/io/InputStreamReader;

    .line 37
    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 40
    invoke-direct {p1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 43
    :cond_2
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 51
    if-eqz v3, :cond_3

    .line 53
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    .line 56
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 59
    goto :goto_4

    .line 60
    :cond_3
    :try_start_4
    invoke-static {v1}, Lyf0;->a(Ljava/lang/String;)Lyf0;

    .line 63
    move-result-object v1

    .line 64
    if-eqz v1, :cond_2

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    move-object v1, p1

    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-object v1, p1

    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    goto :goto_2

    .line 77
    :catchall_2
    move-exception v0

    .line 78
    move-object v2, v1

    .line 79
    :goto_2
    if-eqz v1, :cond_4

    .line 81
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 84
    :cond_4
    if-eqz v2, :cond_5

    .line 86
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 89
    :catch_1
    :cond_5
    throw v0

    .line 90
    :catch_2
    move-object v2, v1

    .line 91
    :catch_3
    :goto_3
    if-eqz v1, :cond_6

    .line 93
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 96
    :cond_6
    if-eqz v2, :cond_7

    .line 98
    goto :goto_1

    .line 99
    :catch_4
    :cond_7
    :goto_4
    return-object v0
.end method

.method public final B()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lbh;->i:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Lbh;->z(Ljava/lang/String;)[I

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public D(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    const-string v1, "SO_CORRUPT_FLAG_SP"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    move-result-object p1

    .line 17
    const-string v1, "SO_CORRUPT_FLAG"

    .line 19
    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public E()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lbr;->J()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Lbr;->m()Ljava/lang/String;

    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/io/File;

    .line 19
    const-string v3, "crash_limit"

    .line 21
    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-object v2, p0, Lbh;->j:Ljava/io/File;

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lbh;->j:Ljava/io/File;

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 44
    const-string v3, "yyyyMMdd"

    .line 46
    sget-object v4, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    .line 48
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 51
    new-instance v3, Ljava/util/Date;

    .line 53
    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 56
    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Lbh;->i:Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lbr;->i0()I

    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lbh;->a:I

    .line 82
    const/4 v1, 0x0

    .line 83
    if-gez v0, :cond_1

    .line 85
    iput v1, p0, Lbh;->a:I

    .line 87
    :cond_1
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0}, Lbr;->t()I

    .line 94
    move-result v0

    .line 95
    iput v0, p0, Lbh;->b:I

    .line 97
    if-gez v0, :cond_2

    .line 99
    iput v1, p0, Lbh;->b:I

    .line 101
    :cond_2
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 104
    move-result-object v0

    .line 105
    invoke-interface {v0}, Lbr;->l()I

    .line 108
    move-result v0

    .line 109
    iput v0, p0, Lbh;->c:I

    .line 111
    if-gez v0, :cond_3

    .line 113
    iput v1, p0, Lbh;->c:I

    .line 115
    :cond_3
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Lbr;->f0()I

    .line 122
    move-result v0

    .line 123
    iput v0, p0, Lbh;->d:I

    .line 125
    if-gez v0, :cond_4

    .line 127
    iput v1, p0, Lbh;->d:I

    .line 129
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    const-string v1, "init maxTamperCount = "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget v1, p0, Lbh;->a:I

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 144
    const-string v1, ",maxForegroundCount = "

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget v1, p0, Lbh;->b:I

    .line 151
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ",maxBackgroundCount = "

    .line 156
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget v1, p0, Lbh;->c:I

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    move-result-object v0

    .line 168
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lbh;->q()V

    .line 174
    new-instance v0, Ljava/util/Date;

    .line 176
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 179
    iput-object v0, p0, Lbh;->k:Ljava/util/Date;

    .line 181
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 188
    move-result-object v0

    .line 189
    invoke-static {v0}, Lxf0;->C(Landroid/content/Context;)Z

    .line 192
    move-result v0

    .line 193
    iput-boolean v0, p0, Lbh;->l:Z

    .line 195
    return-void
.end method

.method public final F()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lbh;->B()[I

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    aget v1, v0, v1

    .line 8
    iput v1, p0, Lbh;->e:I

    .line 10
    const/4 v1, 0x1

    .line 11
    aget v1, v0, v1

    .line 13
    iput v1, p0, Lbh;->f:I

    .line 15
    const/4 v1, 0x2

    .line 16
    aget v1, v0, v1

    .line 18
    iput v1, p0, Lbh;->g:I

    .line 20
    const/4 v1, 0x3

    .line 21
    aget v0, v0, v1

    .line 23
    iput v0, p0, Lbh;->h:I

    .line 25
    return-void
.end method

.method public declared-synchronized G()Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lbh;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    monitor-exit p0

    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :catchall_0
    move-exception v0

    .line 13
    monitor-exit p0

    .line 14
    throw v0
.end method

.method public final H(ZLjava/lang/Throwable;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    if-nez p2, :cond_1

    .line 7
    return v0

    .line 8
    :cond_1
    instance-of p1, p2, Ljava/lang/NoSuchMethodError;

    .line 10
    if-nez p1, :cond_2

    .line 12
    instance-of p1, p2, Ljava/lang/VerifyError;

    .line 14
    if-eqz p1, :cond_3

    .line 16
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 20
    const-string p2, "UsbFillActivity"

    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 28
    const/4 p1, 0x1

    .line 29
    return p1

    .line 30
    :cond_3
    return v0
.end method

.method public I(Lbh$d;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "isReachedLimitToday maxTamperCount = "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lbh;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ",maxForegroundCount = "

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lbh;->b:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ",maxBackgroundCount = "

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lbh;->c:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    const-string v1, "DumpCrash"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const-string v2, "isReachedLimitToday currentTamperCount = "

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    iget v2, p0, Lbh;->e:I

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, ",currentForegroundCount = "

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget v2, p0, Lbh;->f:I

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    const-string v2, ",currentBackgroundCount = "

    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Lbh;->g:I

    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, ",currentAnrCount = "

    .line 82
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget v2, p0, Lbh;->h:I

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object v0

    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 100
    move-result v0

    .line 101
    const/4 v1, 0x0

    .line 102
    if-eqz v0, :cond_0

    .line 104
    return v1

    .line 105
    :cond_0
    sget-object v0, Lbh$c;->a:[I

    .line 107
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 110
    move-result p1

    .line 111
    aget p1, v0, p1

    .line 113
    const/4 v0, 0x1

    .line 114
    if-eq p1, v0, :cond_7

    .line 116
    const/4 v2, 0x2

    .line 117
    if-eq p1, v2, :cond_5

    .line 119
    const/4 v2, 0x3

    .line 120
    if-eq p1, v2, :cond_3

    .line 122
    const/4 v2, 0x4

    .line 123
    if-eq p1, v2, :cond_1

    .line 125
    return v1

    .line 126
    :cond_1
    iget p1, p0, Lbh;->h:I

    .line 128
    iget v2, p0, Lbh;->d:I

    .line 130
    if-lt p1, v2, :cond_2

    .line 132
    const/4 v1, 0x1

    .line 133
    :cond_2
    return v1

    .line 134
    :cond_3
    iget p1, p0, Lbh;->g:I

    .line 136
    iget v2, p0, Lbh;->c:I

    .line 138
    if-lt p1, v2, :cond_4

    .line 140
    const/4 v1, 0x1

    .line 141
    :cond_4
    return v1

    .line 142
    :cond_5
    iget p1, p0, Lbh;->f:I

    .line 144
    iget v2, p0, Lbh;->b:I

    .line 146
    if-lt p1, v2, :cond_6

    .line 148
    const/4 v1, 0x1

    .line 149
    :cond_6
    return v1

    .line 150
    :cond_7
    iget p1, p0, Lbh;->e:I

    .line 152
    iget v2, p0, Lbh;->a:I

    .line 154
    if-lt p1, v2, :cond_8

    .line 156
    const/4 v1, 0x1

    .line 157
    :cond_8
    return v1
.end method

.method public final J(Z)V
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "SO_CORRUPT_FLAG_SP"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "SO_CORRUPT_FLAG"

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :catch_0
    :cond_1
    return-void
.end method

.method public K(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->P()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 11
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 14
    move-result-object p1

    .line 15
    if-nez p1, :cond_1

    .line 17
    return v1

    .line 18
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    :try_start_0
    const-string v0, "LAST_CRASH_TIMES"

    .line 23
    const-string v2, ""

    .line 25
    invoke-static {p1, v0, v2}, Leh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_2

    .line 35
    const-string v0, ":"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 43
    array-length v0, p1

    .line 44
    const/4 v2, 0x2

    .line 45
    if-ne v0, v2, :cond_2

    .line 47
    aget-object v0, p1, v1

    .line 49
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    const/4 v0, 0x1

    .line 53
    aget-object p1, p1, v0

    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 58
    move-result p1

    .line 59
    invoke-static {}, Lcom/autonavi/common/tool/b;->g()I

    .line 62
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    if-lt p1, v2, :cond_2

    .line 65
    return v0

    .line 66
    :catch_0
    :cond_2
    return v1
.end method

.method public L(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;Z)V
    .locals 13

    .line 1
    const/4 v9, 0x0

    .line 2
    const/4 v10, 0x0

    .line 3
    const/4 v11, 0x0

    .line 4
    const/4 v12, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    move/from16 v3, p3

    .line 10
    move-object/from16 v4, p4

    .line 12
    move-object/from16 v5, p5

    .line 14
    move/from16 v6, p6

    .line 16
    move-object/from16 v7, p7

    .line 18
    move/from16 v8, p8

    .line 20
    invoke-virtual/range {v0 .. v12}, Lbh;->M(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public M(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    move/from16 v10, p8

    const-string v2, "\n"

    const-string v11, "triggerAnrTraces write log end!"

    const-string v3, "\'"

    const-string v12, "DumpCrash"

    const-string v0, "begin record Crash "

    .line 1
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 2
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lbh;->X()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    if-eqz v10, :cond_0

    .line 3
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Lbh;->p(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x4

    .line 4
    invoke-static {v4, v1}, Lbz;->b(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v14, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move/from16 v15, p9

    :goto_0
    move-object v1, v11

    goto/16 :goto_13

    :cond_0
    const/4 v14, 0x0

    :goto_1
    :try_start_2
    const-string v4, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    if-nez p9, :cond_1

    .line 5
    :try_start_3
    invoke-static/range {p2 .. p2}, Llj0;->a(Ljava/lang/Throwable;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v15, v0

    goto :goto_2

    :cond_1
    move/from16 v15, p9

    :goto_2
    const/4 v7, 0x1

    if-eqz v15, :cond_6

    .line 6
    :try_start_4
    invoke-static/range {p10 .. p10}, Lcom/autonavi/common/tool/b;->j0(Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v3

    invoke-interface {v3}, Lbr;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tamper_anr"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {v0}, Lls;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    .line 10
    :cond_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "backtrace"

    .line 11
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    :goto_3
    const/4 v4, 0x0

    goto :goto_4

    :cond_3
    const-string v0, "#00 pc"

    .line 12
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    :goto_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r\n[STACK_START]\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\r\n[STACK_END]\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lxf0;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v7, v1

    move-object v6, v4

    const/4 v5, 0x0

    goto/16 :goto_9

    .line 16
    :cond_6
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v0

    invoke-interface {v0}, Lbr;->O()I

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    const/4 v5, 0x2

    if-ne v5, v0, :cond_8

    :try_start_5
    new-array v0, v7, [Z

    aput-boolean v13, v0, v13

    const-string v5, "begin SoCollector.getSoInfo"

    .line 17
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    if-eqz v10, :cond_7

    .line 18
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v5

    invoke-static {v9, v1, v5, v10, v0}, Lcom/autonavi/common/tool/e;->k(Ljava/lang/Throwable;Ljava/lang/String;Landroid/app/Application;Z[Z)Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    .line 19
    :cond_7
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/autonavi/common/tool/e;->j(Landroid/app/Application;[Z)Ljava/lang/String;

    move-result-object v5

    :goto_5
    const/16 v6, 0x100

    .line 20
    invoke-static {v6, v5}, Lbz;->b(ILjava/lang/String;)V

    .line 21
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "finish SoCollector.getSoInfo"

    .line 22
    invoke-static {v5}, Lbz;->d(Ljava/lang/String;)V

    aget-boolean v5, v0, v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 23
    :try_start_6
    invoke-virtual {v8, v5}, Lbh;->J(Z)V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "finish SoCollector.getSoInfo soCorrupt = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catchall_2
    move-exception v0

    const/4 v5, 0x0

    .line 25
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    :cond_8
    const/4 v5, 0x0

    :goto_7
    if-nez v10, :cond_9

    .line 26
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 27
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Build fingerprint: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Revision: "

    .line 32
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    move-object v7, v0

    goto :goto_8

    :cond_9
    move-object v7, v1

    :goto_8
    move-object v6, v4

    :goto_9
    :try_start_8
    const-string v0, "before appendCrashInfo"

    .line 38
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-object/from16 v1, p0

    move-object v2, v7

    move/from16 v3, p3

    move-object/from16 v4, p5

    move v13, v5

    move v5, v15

    move-object/from16 v16, v11

    move-object v11, v6

    move-object/from16 v6, p7

    .line 39
    :try_start_9
    invoke-virtual/range {v1 .. v6}, Lbh;->d(Ljava/lang/String;ZLjava/lang/Thread;ZLbh$f;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "after appendCrashInfo"

    .line 40
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_b

    :catchall_3
    move-exception v0

    goto :goto_a

    :catchall_4
    move-exception v0

    move v13, v5

    move-object/from16 v16, v11

    move-object v11, v6

    .line 41
    :goto_a
    :try_start_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_b
    move-object v2, v7

    const-string v0, "begin buildExceptionHeaderInfo"

    .line 42
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    move-object/from16 v1, p0

    move/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v15

    move-object/from16 v6, p7

    move/from16 v7, p6

    .line 43
    :try_start_b
    invoke-virtual/range {v1 .. v7}, Lbh;->i(Ljava/lang/String;ZLbh$e;ZLbh$f;Z)Ljava/lang/String;

    move-result-object v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object v1, v0

    .line 44
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v6, 0x0

    :goto_c
    const-string v0, "finish buildExceptionHeaderInfo"

    .line 45
    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v10, :cond_a

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ldh;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_a
    if-nez v10, :cond_b

    .line 47
    invoke-virtual {v8, v6}, Lbh;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_b
    if-eqz v15, :cond_c

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :cond_c
    if-nez v15, :cond_d

    .line 49
    :try_start_d
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v8, v0}, Lbh;->Y(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_d

    :catch_0
    nop

    :cond_d
    :goto_d
    const-string v0, "\r\n"

    if-nez v15, :cond_f

    .line 50
    :try_start_e
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v1

    invoke-interface {v1}, Lbr;->k0()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_e
    if-eqz p3, :cond_11

    .line 54
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v1

    invoke-interface {v1}, Lbr;->b()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_e

    .line 58
    :cond_f
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_e

    .line 61
    :cond_10
    invoke-static/range {p12 .. p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 62
    new-instance v1, Ljava/io/File;

    move-object/from16 v2, p12

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 64
    invoke-static {v1}, Lls;->d(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    goto :goto_e

    :catch_1
    nop

    :cond_11
    :goto_e
    if-eqz v15, :cond_12

    .line 67
    :try_start_f
    sget-object v0, Lbh$d;->d:Lbh$d;

    goto :goto_10

    :cond_12
    if-nez v14, :cond_15

    if-eqz v13, :cond_13

    goto :goto_f

    .line 68
    :cond_13
    iget-boolean v0, v8, Lbh;->l:Z

    if-eqz v0, :cond_14

    sget-object v0, Lbh$d;->b:Lbh$d;

    goto :goto_10

    .line 69
    :cond_14
    sget-object v0, Lbh$d;->c:Lbh$d;

    goto :goto_10

    .line 70
    :cond_15
    :goto_f
    sget-object v0, Lbh$d;->a:Lbh$d;

    .line 71
    :goto_10
    invoke-virtual {v8, v0}, Lbh;->I(Lbh$d;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v7, 0x1

    goto :goto_11

    :cond_16
    const/4 v7, 0x0

    .line 72
    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "needRecord = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",Tamper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",soCorrupt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",anr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v1

    invoke-interface {v1}, Lbr;->j0()Z

    move-result v1

    invoke-static {v6, v1}, Lcom/autonavi/common/tool/util/AESUtils;->e(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    if-eqz v7, :cond_1c

    .line 74
    invoke-static {}, Lbh;->v()Ljava/io/File;

    move-result-object v2

    .line 75
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v3

    invoke-interface {v3}, Lbr;->S()Z

    move-result v3

    if-eqz v3, :cond_1a

    if-eqz v15, :cond_18

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "anr_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 78
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_17

    .line 80
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    :cond_17
    const/4 v2, 0x0

    .line 81
    invoke-static {v1, v4, v2}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    goto :goto_12

    .line 82
    :cond_18
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_19

    .line 83
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    :cond_19
    const/4 v3, 0x0

    .line 84
    invoke-static {v1, v2, v3}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 85
    :cond_1a
    :goto_12
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    move-result v2

    if-nez v2, :cond_1b

    if-nez v14, :cond_1b

    invoke-virtual {v8, v10, v9}, Lbh;->H(ZLjava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1b

    invoke-virtual/range {p0 .. p0}, Lbh;->o()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 86
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    move-result-object v2

    invoke-interface {v2}, Lbr;->f()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 87
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    const-string v3, "crash"

    const/4 v4, 0x0

    .line 88
    invoke-static {v3, v4, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    .line 89
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    .line 90
    invoke-static {v1, v2, v3}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 91
    :cond_1b
    invoke-virtual {v8, v0}, Lbh;->a(Lbh$d;)V

    :cond_1c
    const-string v0, "finish writeErrorLog"

    .line 92
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    if-eqz v15, :cond_1d

    const/4 v1, 0x0

    .line 93
    iput-boolean v1, v8, Lbh;->m:Z

    move-object/from16 v1, v16

    goto :goto_14

    :catchall_6
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_13

    :catchall_7
    move-exception v0

    goto/16 :goto_0

    :catchall_8
    move-exception v0

    move-object v1, v11

    move/from16 v15, p9

    .line 94
    :goto_13
    :try_start_10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    if-eqz v15, :cond_1d

    const/4 v2, 0x0

    .line 95
    iput-boolean v2, v8, Lbh;->m:Z

    .line 96
    :goto_14
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return-void

    :catchall_9
    move-exception v0

    const/4 v2, 0x0

    move-object v3, v0

    if-eqz v15, :cond_1e

    .line 97
    iput-boolean v2, v8, Lbh;->m:Z

    .line 98
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_1e
    throw v3
.end method

.method public N(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZZ)V
    .locals 13

    .line 1
    const/4 v7, 0x0

    .line 2
    const/4 v9, 0x0

    .line 3
    const/4 v10, 0x0

    .line 4
    const/4 v11, 0x0

    .line 5
    const/4 v12, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move/from16 v3, p3

    .line 11
    move-object/from16 v4, p4

    .line 13
    move-object/from16 v5, p5

    .line 15
    move/from16 v6, p6

    .line 17
    move/from16 v8, p7

    .line 19
    invoke-virtual/range {v0 .. v12}, Lbh;->M(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public O()V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 7
    const-string v2, ".collection"

    .line 9
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 18
    new-instance v1, Ljava/io/File;

    .line 20
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const-string v3, ".collection0"

    .line 26
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 32
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 35
    :cond_0
    return-void
.end method

.method public P(Landroid/app/Application;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/io/File;

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    const-string v1, ".tamper_crash"

    .line 9
    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 18
    new-instance v0, Ljava/io/File;

    .line 20
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, ".tamper_crash0"

    .line 26
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 35
    :cond_0
    return-void
.end method

.method public Q(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->P()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 10
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 16
    return-void

    .line 17
    :cond_1
    const-string v0, "LAST_CRASH_TIMES"

    .line 19
    const-string v1, ""

    .line 21
    invoke-static {p1, v0, v1}, Leh;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public R(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 3
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "SO_CORRUPT_FLAG_SP"

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    move-result-object p1

    .line 21
    const-string v0, "SO_CORRUPT_FLAG"

    .line 23
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 26
    move-result-object p1

    .line 27
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 30
    return-void
.end method

.method public final S(Ljava/util/List;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 12
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    const-string v2, ".collection"

    .line 18
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v1, 0x0

    .line 22
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    .line 24
    invoke-direct {v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lo30;

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v0}, Lo30;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v0, "\r\n"

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    .line 74
    invoke-virtual {v2}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    move-object v1, v2

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-object v1, v2

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    :goto_1
    if-eqz v1, :cond_2

    .line 86
    :try_start_3
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 89
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    :catch_1
    :cond_2
    throw p1

    .line 93
    :catch_2
    :goto_2
    if-eqz v1, :cond_3

    .line 95
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 98
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 101
    :catch_3
    :cond_3
    :goto_3
    return-void

    .line 102
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lbh;->O()V

    .line 105
    return-void
.end method

.method public final T(Ljava/util/List;Landroid/app/Application;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    goto :goto_4

    .line 10
    :cond_0
    new-instance p2, Ljava/io/File;

    .line 12
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    const-string v1, ".tamper_crash"

    .line 18
    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const/4 v0, 0x0

    .line 22
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    .line 24
    invoke-direct {v1, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    move-result-object p1

    .line 31
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_1

    .line 37
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lyf0;

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {p2}, Lyf0;->toString()Ljava/lang/String;

    .line 51
    move-result-object p2

    .line 52
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string p2, "\r\n"

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 74
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 77
    goto :goto_3

    .line 78
    :catchall_0
    move-exception p1

    .line 79
    move-object v0, v1

    .line 80
    goto :goto_1

    .line 81
    :catch_0
    move-object v0, v1

    .line 82
    goto :goto_2

    .line 83
    :catchall_1
    move-exception p1

    .line 84
    :goto_1
    if-eqz v0, :cond_2

    .line 86
    :try_start_3
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 89
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 92
    :catch_1
    :cond_2
    throw p1

    .line 93
    :catch_2
    :goto_2
    if-eqz v0, :cond_3

    .line 95
    :try_start_4
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 98
    invoke-virtual {v0}, Ljava/io/Writer;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 101
    :catch_3
    :cond_3
    :goto_3
    return-void

    .line 102
    :cond_4
    :goto_4
    invoke-virtual {p0, p2}, Lbh;->P(Landroid/app/Application;)V

    .line 105
    return-void
.end method

.method public declared-synchronized U()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lbh;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    .line 6
    return-void

    .line 7
    :catchall_0
    move-exception v0

    .line 8
    monitor-exit p0

    .line 9
    throw v0
.end method

.method public declared-synchronized W()V
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Lcy;

    .line 4
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Lbr;->S()Z

    .line 11
    move-result v1

    .line 12
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Lbr;->c()I

    .line 19
    move-result v2

    .line 20
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v3}, Lbr;->J()Ljava/lang/String;

    .line 27
    move-result-object v3

    .line 28
    invoke-direct {v0, v1, v2, v3}, Lcy;-><init>(ZILjava/lang/String;)V

    .line 31
    iput-object v0, p0, Lbh;->n:Lcy;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    monitor-exit p0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    monitor-exit p0

    .line 40
    throw v0
.end method

.method public declared-synchronized X()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lbh;->n:Lcy;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    iget-object v0, p0, Lbh;->n:Lcy;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lbh;->n:Lcy;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lbh;->n:Lcy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_1
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public Y(Landroid/content/Context;)V
    .locals 13

    .line 1
    const-string v0, ":"

    .line 3
    const-string v1, "LAST_CRASH_TIMES"

    .line 5
    invoke-static {}, Lcom/autonavi/common/tool/b;->P()Z

    .line 8
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 14
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 17
    move-result-object p1

    .line 18
    if-nez p1, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    move-result-wide v2

    .line 25
    const/4 v4, 0x1

    .line 26
    :try_start_0
    const-string v5, ""

    .line 28
    invoke-static {p1, v1, v5}, Leh;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v5

    .line 32
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v6

    .line 36
    if-nez v6, :cond_4

    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    move-result-object v5

    .line 42
    if-eqz v5, :cond_4

    .line 44
    array-length v6, v5

    .line 45
    const/4 v7, 0x2

    .line 46
    if-ne v6, v7, :cond_4

    .line 48
    const/4 v6, 0x0

    .line 49
    aget-object v6, v5, v6

    .line 51
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    move-result-wide v6

    .line 55
    aget-object v5, v5, v4

    .line 57
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 60
    move-result v5

    .line 61
    cmp-long v8, v2, v6

    .line 63
    if-lez v8, :cond_3

    .line 65
    sub-long v8, v2, v6

    .line 67
    invoke-static {}, Lcom/autonavi/common/tool/b;->h()I

    .line 70
    move-result v10

    .line 71
    mul-int/lit16 v10, v10, 0x3e8

    .line 73
    int-to-long v10, v10

    .line 74
    cmp-long v12, v8, v10

    .line 76
    if-gez v12, :cond_3

    .line 78
    if-gtz v5, :cond_2

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    add-int/2addr v5, v4

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    move-wide v6, v2

    .line 84
    :goto_0
    const/4 v5, 0x1

    .line 85
    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    .line 87
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v5

    .line 103
    invoke-static {p1, v1, v5}, Leh;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    return-void

    .line 107
    :catch_0
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v0

    .line 125
    invoke-static {p1, v1, v0}, Leh;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public a(Lbh$d;)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lbh;->I(Lbh$d;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 10
    iget-object v1, p0, Lbh;->j:Ljava/io/File;

    .line 12
    iget-object v2, p0, Lbh;->i:Ljava/lang/String;

    .line 14
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_1

    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 32
    const-string v2, ".record"

    .line 34
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 43
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 49
    return-void

    .line 50
    :cond_2
    sget-object v0, Lbh$c;->a:[I

    .line 52
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 55
    move-result p1

    .line 56
    aget p1, v0, p1

    .line 58
    const/4 v0, 0x1

    .line 59
    if-eq p1, v0, :cond_6

    .line 61
    const/4 v2, 0x2

    .line 62
    if-eq p1, v2, :cond_5

    .line 64
    const/4 v2, 0x3

    .line 65
    if-eq p1, v2, :cond_4

    .line 67
    const/4 v2, 0x4

    .line 68
    if-eq p1, v2, :cond_3

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget p1, p0, Lbh;->h:I

    .line 73
    add-int/2addr p1, v0

    .line 74
    iput p1, p0, Lbh;->h:I

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    iget p1, p0, Lbh;->g:I

    .line 79
    add-int/2addr p1, v0

    .line 80
    iput p1, p0, Lbh;->g:I

    .line 82
    goto :goto_0

    .line 83
    :cond_5
    iget p1, p0, Lbh;->f:I

    .line 85
    add-int/2addr p1, v0

    .line 86
    iput p1, p0, Lbh;->f:I

    .line 88
    goto :goto_0

    .line 89
    :cond_6
    iget p1, p0, Lbh;->e:I

    .line 91
    add-int/2addr p1, v0

    .line 92
    iput p1, p0, Lbh;->e:I

    .line 94
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget v0, p0, Lbh;->e:I

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    const-string v0, ":"

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    iget v2, p0, Lbh;->f:I

    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget v2, p0, Lbh;->g:I

    .line 119
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget v0, p0, Lbh;->h:I

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    move-result-object p1

    .line 134
    const/4 v0, 0x0

    .line 135
    invoke-static {p1, v1, v0}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 138
    return-void
.end method

.method public b(Lo30;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lbh;->x()Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    move-result v1

    .line 9
    const/16 v2, 0xa

    .line 11
    if-ge v1, v2, :cond_0

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    :goto_0
    invoke-virtual {p0, v0}, Lbh;->S(Ljava/util/List;)V

    .line 27
    return-void
.end method

.method public c(IIILandroid/app/Application;)V
    .locals 5

    .line 1
    if-nez p4, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 7
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    const-string v0, "unknown"

    .line 22
    :goto_0
    new-instance v2, Lyf0;

    .line 24
    invoke-direct {v2}, Lyf0;-><init>()V

    .line 27
    iput-object v0, v2, Lyf0;->a:Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lbh;->k:Ljava/util/Date;

    .line 31
    if-nez v0, :cond_1

    .line 33
    new-instance v0, Ljava/util/Date;

    .line 35
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 38
    iput-object v0, p0, Lbh;->k:Ljava/util/Date;

    .line 40
    :cond_1
    iget-object v0, p0, Lbh;->k:Ljava/util/Date;

    .line 42
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 45
    move-result-wide v3

    .line 46
    iput-wide v3, v2, Lyf0;->c:J

    .line 48
    invoke-static {p4}, Lxf0;->u(Landroid/app/Application;)Ljava/util/Date;

    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    .line 57
    move-result-wide v3

    .line 58
    iput-wide v3, v2, Lyf0;->b:J

    .line 60
    :cond_2
    iput p1, v2, Lyf0;->d:I

    .line 62
    iput p2, v2, Lyf0;->e:I

    .line 64
    iput p3, v2, Lyf0;->f:I

    .line 66
    invoke-virtual {p0, p4}, Lbh;->A(Landroid/app/Application;)Ljava/util/List;

    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 73
    move-result p2

    .line 74
    const/16 p3, 0xa

    .line 76
    if-ge p2, p3, :cond_3

    .line 78
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 85
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :goto_1
    invoke-virtual {p0, p1, p4}, Lbh;->T(Ljava/util/List;Landroid/app/Application;)V

    .line 91
    return-void
.end method

.method public d(Ljava/lang/String;ZLjava/lang/Thread;ZLbh$f;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "\n"

    .line 3
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 5
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const/4 v2, 0x2

    .line 12
    if-eqz p2, :cond_0

    .line 14
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 17
    move-result-object p3

    .line 18
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 21
    move-result-object p5

    .line 22
    invoke-interface {p5}, Lbr;->y()Ljava/lang/String;

    .line 25
    move-result-object p5

    .line 26
    invoke-static {p3, p5}, Lcom/autonavi/common/tool/a;->b(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    goto/16 :goto_1

    .line 35
    :cond_0
    if-nez p4, :cond_4

    .line 37
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 40
    move-result-object v3

    .line 41
    invoke-interface {v3}, Lbr;->O()I

    .line 44
    move-result v3

    .line 45
    if-ne v2, v3, :cond_4

    .line 47
    const-string v3, "CommonCollector.lastAppendInfo"

    .line 49
    invoke-static {v3}, Lbz;->d(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 55
    move-result-object v3

    .line 56
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v4}, Lbr;->y()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 64
    invoke-static {v3, v4, p3, p5}, Lcom/autonavi/common/tool/a;->d(Landroid/app/Application;Ljava/lang/String;Ljava/lang/Thread;Lbh$f;)Ljava/lang/String;

    .line 67
    move-result-object p3

    .line 68
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    if-eqz p5, :cond_1

    .line 73
    iget-boolean p3, p5, Lbh$f;->f:Z

    .line 75
    if-nez p3, :cond_2

    .line 77
    :cond_1
    invoke-static {}, Lql;->e()Lql;

    .line 80
    move-result-object p3

    .line 81
    invoke-virtual {p3}, Lql;->d()Ljava/lang/String;

    .line 84
    move-result-object p3

    .line 85
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    move-result p5

    .line 89
    if-nez p5, :cond_2

    .line 91
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    :cond_2
    const-string p3, "before allThreadName"

    .line 102
    invoke-static {p3}, Lbz;->d(Ljava/lang/String;)V

    .line 105
    invoke-static {}, Lxf0;->o()Ljava/lang/String;

    .line 108
    move-result-object p3

    .line 109
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    move-result p5

    .line 113
    if-nez p5, :cond_3

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_3
    const-string p3, "after allThreadName"

    .line 126
    invoke-static {p3}, Lbz;->d(Ljava/lang/String;)V

    .line 129
    invoke-static {}, Ldh;->b()Ljava/util/List;

    .line 132
    move-result-object p3

    .line 133
    if-eqz p3, :cond_4

    .line 135
    invoke-static {}, Ldh;->b()Ljava/util/List;

    .line 138
    move-result-object p3

    .line 139
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 142
    move-result p3

    .line 143
    if-lez p3, :cond_4

    .line 145
    const-string p3, "custom:"

    .line 147
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {}, Ldh;->b()Ljava/util/List;

    .line 156
    move-result-object p3

    .line 157
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 160
    move-result-object p3

    .line 161
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    move-result p5

    .line 165
    if-eqz p5, :cond_4

    .line 167
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    move-result-object p5

    .line 171
    check-cast p5, Ljava/lang/String;

    .line 173
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    goto :goto_0

    .line 180
    :cond_4
    const-string p3, "CrashExtraInfo begin"

    .line 182
    invoke-static {p3}, Lbz;->d(Ljava/lang/String;)V

    .line 185
    const-string p3, "CrashExtraInfo:\n"

    .line 187
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 193
    move-result-object p3

    .line 194
    invoke-interface {p3}, Lbr;->U()Ljava/util/Map;

    .line 197
    move-result-object p3

    .line 198
    invoke-static {p3}, Llj0;->l(Ljava/util/Map;)Ljava/lang/String;

    .line 201
    move-result-object p3

    .line 202
    const-string p5, "CrashExtraInfo end"

    .line 204
    invoke-static {p5}, Lbz;->d(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :goto_1
    if-nez p4, :cond_5

    .line 212
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 215
    move-result-object p3

    .line 216
    invoke-interface {p3}, Lbr;->O()I

    .line 219
    move-result p3

    .line 220
    if-ne v2, p3, :cond_6

    .line 222
    :cond_5
    const-string p3, "IsHeapError: "

    .line 224
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    const/16 p2, 0xa

    .line 232
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 235
    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    goto :goto_2

    .line 240
    :catchall_0
    move-exception p2

    .line 241
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    :goto_2
    return-object p1
.end method

.method public e([Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    :try_start_0
    const-string v1, "uploadtime="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    move-result-wide v1

    .line 15
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 18
    const-string v1, " pid:"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, " NetworkType:"

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 38
    move-result-object v1

    .line 39
    invoke-interface {v1}, Lbr;->E()I

    .line 42
    move-result v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    :catchall_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, p1, v0}, Lbh;->f([Ljava/io/File;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public f([Ljava/io/File;Ljava/lang/String;)V
    .locals 11

    .line 1
    const-string v0, "\n"

    .line 3
    :try_start_0
    array-length v1, p1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_3

    .line 8
    aget-object v4, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 10
    const/4 v5, 0x0

    .line 11
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    new-instance v7, Ljava/io/FileInputStream;

    .line 18
    invoke-direct {v7, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 21
    new-instance v8, Ljava/io/InputStreamReader;

    .line 23
    const-string v9, "utf-8"

    .line 25
    invoke-direct {v8, v7, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 28
    const/16 v9, 0x400

    .line 30
    new-array v9, v9, [C

    .line 32
    :goto_1
    invoke-virtual {v8, v9}, Ljava/io/Reader;->read([C)I

    .line 35
    move-result v10

    .line 36
    if-lez v10, :cond_0

    .line 38
    invoke-virtual {v6, v9, v2, v10}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    invoke-virtual {v8}, Ljava/io/Reader;->close()V

    .line 45
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V

    .line 48
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v6

    .line 52
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 55
    move-result-object v7

    .line 56
    invoke-interface {v7}, Lbr;->j0()Z

    .line 59
    move-result v7

    .line 60
    invoke-static {v6, v7}, Lcom/autonavi/common/tool/util/AESUtils;->d(Ljava/lang/String;Z)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    new-instance v7, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v8, "appendUploadFlag string:"

    .line 71
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v7

    .line 81
    invoke-static {v7}, Lbz;->d(Ljava/lang/String;)V

    .line 84
    new-instance v7, Ljava/lang/StringBuilder;

    .line 86
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v6

    .line 105
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 108
    move-result-object v7

    .line 109
    invoke-interface {v7}, Lbr;->j0()Z

    .line 112
    move-result v7

    .line 113
    invoke-static {v6, v7}, Lcom/autonavi/common/tool/util/AESUtils;->e(Ljava/lang/String;Z)Ljava/lang/String;

    .line 116
    move-result-object v6

    .line 117
    new-instance v7, Ljava/io/FileWriter;

    .line 119
    invoke-direct {v7, v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    :try_start_2
    invoke-virtual {v7, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 125
    invoke-virtual {v7}, Ljava/io/Writer;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 128
    :try_start_3
    invoke-virtual {v7}, Ljava/io/Writer;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 131
    goto :goto_3

    .line 132
    :catchall_0
    move-exception v4

    .line 133
    move-object v5, v7

    .line 134
    goto :goto_2

    .line 135
    :catchall_1
    move-exception v4

    .line 136
    :goto_2
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 139
    if-eqz v5, :cond_1

    .line 141
    :try_start_5
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    .line 144
    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 146
    goto/16 :goto_0

    .line 148
    :catchall_2
    move-exception p1

    .line 149
    if-eqz v5, :cond_2

    .line 151
    invoke-virtual {v5}, Ljava/io/Writer;->close()V

    .line 154
    :cond_2
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 155
    :catchall_3
    move-exception p1

    .line 156
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    :cond_3
    return-void
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "===[START] KeyValue"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 6
    move-result v0

    .line 7
    const-string v1, "===[END] KeyValue & Log==="

    .line 9
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 12
    move-result v1

    .line 13
    if-lez v0, :cond_2

    .line 15
    if-gtz v1, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    add-int/lit8 v1, v1, 0x1a

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 30
    return-object p1

    .line 31
    :cond_1
    const-string v1, ""

    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string p1, "\n"

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    :cond_2
    :goto_0
    return-object p1
.end method

.method public final i(Ljava/lang/String;ZLbh$e;ZLbh$f;Z)Ljava/lang/String;
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p3

    .line 5
    move-object/from16 v2, p5

    .line 7
    const-string v3, "buildExceptionHeaderInfo finally"

    .line 9
    const-string v4, "DumpCrash"

    .line 11
    new-instance v5, Lo30;

    .line 13
    invoke-direct {v5}, Lo30;-><init>()V

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    .line 18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 24
    move-result-object v7

    .line 25
    invoke-interface {v7}, Lbr;->m()Ljava/lang/String;

    .line 28
    move-result-object v7

    .line 29
    if-eqz p2, :cond_0

    .line 31
    iget-object v8, v0, Lbh$e;->d:Ljava/lang/String;

    .line 33
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v8

    .line 37
    if-nez v8, :cond_0

    .line 39
    iget-object v7, v0, Lbh$e;->d:Ljava/lang/String;

    .line 41
    :cond_0
    if-eqz v2, :cond_1

    .line 43
    iget-object v8, v2, Lbh$f;->c:Ljava/lang/String;

    .line 45
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_1

    .line 51
    iget-object v7, v2, Lbh$f;->c:Ljava/lang/String;

    .line 53
    :cond_1
    const-string v8, "Version:"

    .line 55
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    new-instance v8, Ljava/lang/StringBuilder;

    .line 60
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    const-string v9, "ANDA"

    .line 65
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v8, "AND"

    .line 80
    iput-object v8, v5, Lo30;->f:Ljava/lang/String;

    .line 82
    invoke-static {}, Lcom/autonavi/common/tool/b;->v()Ljava/lang/String;

    .line 85
    move-result-object v8

    .line 86
    iput-object v8, v5, Lo30;->g:Ljava/lang/String;

    .line 88
    invoke-static {}, Lcom/autonavi/common/tool/b;->q()Ljava/lang/String;

    .line 91
    move-result-object v8

    .line 92
    iput-object v8, v5, Lo30;->h:Ljava/lang/String;

    .line 94
    const-string v8, "/"

    .line 96
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 102
    move-result-object v8

    .line 103
    invoke-interface {v8}, Lbr;->r()I

    .line 106
    move-result v8

    .line 107
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    const/16 v8, 0xa

    .line 112
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    invoke-static {}, Lcom/autonavi/common/tool/b;->L()Z

    .line 118
    move-result v9

    .line 119
    if-eqz v9, :cond_2

    .line 121
    const-string v9, "DEBUG MODE LOG !!!\n"

    .line 123
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_2
    invoke-static {}, Lcom/autonavi/common/tool/b;->r()Ljava/lang/String;

    .line 129
    move-result-object v9

    .line 130
    iput-object v9, v5, Lo30;->j:Ljava/lang/String;

    .line 132
    const-string v9, "dic:"

    .line 134
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-static {}, Lcom/autonavi/common/tool/b;->r()Ljava/lang/String;

    .line 140
    move-result-object v9

    .line 141
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    invoke-static {}, Lcom/autonavi/common/tool/b;->s()Ljava/lang/String;

    .line 150
    move-result-object v9

    .line 151
    iput-object v9, v5, Lo30;->a:Ljava/lang/String;

    .line 153
    const-string v9, "diu:"

    .line 155
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {}, Lcom/autonavi/common/tool/b;->s()Ljava/lang/String;

    .line 161
    move-result-object v9

    .line 162
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    invoke-static {}, Lcom/autonavi/common/tool/b;->t()Ljava/lang/String;

    .line 171
    move-result-object v9

    .line 172
    iput-object v9, v5, Lo30;->b:Ljava/lang/String;

    .line 174
    const-string v9, "diu2:"

    .line 176
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-static {}, Lcom/autonavi/common/tool/b;->t()Ljava/lang/String;

    .line 182
    move-result-object v9

    .line 183
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 189
    invoke-static {}, Lcom/autonavi/common/tool/b;->u()Ljava/lang/String;

    .line 192
    move-result-object v9

    .line 193
    iput-object v9, v5, Lo30;->c:Ljava/lang/String;

    .line 195
    const-string v9, "diu3:"

    .line 197
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-static {}, Lcom/autonavi/common/tool/b;->u()Ljava/lang/String;

    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 210
    invoke-static {}, Lcom/autonavi/common/tool/b;->j()Ljava/lang/String;

    .line 213
    move-result-object v9

    .line 214
    iput-object v9, v5, Lo30;->d:Ljava/lang/String;

    .line 216
    const-string v9, "adiu:"

    .line 218
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-static {}, Lcom/autonavi/common/tool/b;->j()Ljava/lang/String;

    .line 224
    move-result-object v9

    .line 225
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 231
    invoke-static {}, Lcom/autonavi/common/tool/b;->F()Ljava/lang/String;

    .line 234
    move-result-object v9

    .line 235
    iput-object v9, v5, Lo30;->i:Ljava/lang/String;

    .line 237
    const-string v9, "session:"

    .line 239
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {}, Lcom/autonavi/common/tool/b;->F()Ljava/lang/String;

    .line 245
    move-result-object v9

    .line 246
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 252
    const-string v9, "GLogSpyInitializationID:"

    .line 254
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-static {}, Lcom/autonavi/common/tool/b;->z()Ljava/lang/String;

    .line 260
    move-result-object v9

    .line 261
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    const-string v9, "tid:"

    .line 269
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-static {}, Lcom/autonavi/common/tool/b;->I()Ljava/lang/String;

    .line 275
    move-result-object v9

    .line 276
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 282
    const-string v9, "DeviceName:"

    .line 284
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    sget-object v9, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 289
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    const-string v9, "Product:"

    .line 297
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    sget-object v9, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 302
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    const-string v9, "Manufacture:"

    .line 310
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-static {}, Lcom/autonavi/common/tool/b;->A()Ljava/lang/String;

    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 323
    invoke-static {}, Lcom/autonavi/common/tool/b;->C()Ljava/lang/String;

    .line 326
    move-result-object v9

    .line 327
    iput-object v9, v5, Lo30;->e:Ljava/lang/String;

    .line 329
    const-string v9, "Model:"

    .line 331
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {}, Lcom/autonavi/common/tool/b;->C()Ljava/lang/String;

    .line 337
    move-result-object v9

    .line 338
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 344
    const-string v9, "FeatureCode:"

    .line 346
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {}, Lcom/autonavi/common/tool/b;->w()Ljava/lang/String;

    .line 352
    move-result-object v9

    .line 353
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 359
    const-string v9, "Cpu:"

    .line 361
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-static {}, Lcom/autonavi/common/tool/b;->p()Ljava/lang/String;

    .line 367
    move-result-object v9

    .line 368
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 374
    const-string v9, "Memorysize:"

    .line 376
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-static {}, Lcom/autonavi/common/tool/b;->B()Ljava/lang/String;

    .line 382
    move-result-object v9

    .line 383
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    const-string v9, "Resolution"

    .line 391
    invoke-static {v9}, Lbz;->d(Ljava/lang/String;)V

    .line 394
    const-string v9, "Resolution:"

    .line 396
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {}, Lcom/autonavi/common/tool/b;->E()Ljava/lang/String;

    .line 402
    move-result-object v9

    .line 403
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 409
    const-string v9, "Android-Version:"

    .line 411
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 416
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 422
    iput-object v9, v5, Lo30;->k:Ljava/lang/String;

    .line 424
    const-string v9, "Android-SDK_INT:"

    .line 426
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 429
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 431
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 437
    const-string v9, "DumpcrashVersion:"

    .line 439
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v9, "ndk27.4.0.0.9"

    .line 444
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 450
    const-string v9, "encrypt:nb"

    .line 452
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 458
    const-string v9, "DeviceID:"

    .line 460
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 466
    move-result-object v9

    .line 467
    invoke-static {v9}, Lxf0;->s(Landroid/content/Context;)Ljava/lang/String;

    .line 470
    move-result-object v9

    .line 471
    invoke-static {v9}, Lk10;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 474
    move-result-object v9

    .line 475
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    const-string v9, "DeviceRoot:"

    .line 483
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-static {}, Lxf0;->D()Z

    .line 489
    move-result v9

    .line 490
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 493
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 496
    const-string v9, "false"

    .line 498
    if-eqz p2, :cond_3

    .line 500
    move-object v10, v9

    .line 501
    goto :goto_0

    .line 502
    :cond_3
    :try_start_1
    iget-boolean v10, v1, Lbh;->l:Z

    .line 504
    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 507
    move-result-object v10

    .line 508
    :goto_0
    iput-object v10, v5, Lo30;->l:Ljava/lang/String;

    .line 510
    const-string v10, "Foreground:"

    .line 512
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    if-eqz p2, :cond_4

    .line 517
    goto :goto_1

    .line 518
    :cond_4
    iget-boolean v9, v1, Lbh;->l:Z

    .line 520
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 523
    move-result-object v9

    .line 524
    :goto_1
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    const-string v9, "BuildPlatform:"

    .line 532
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-static {}, Lcom/autonavi/common/tool/b;->m()Ljava/lang/String;

    .line 538
    move-result-object v9

    .line 539
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 545
    invoke-static {}, Lxf0;->w()Ljava/lang/String;

    .line 548
    move-result-object v9

    .line 549
    if-eqz v9, :cond_5

    .line 551
    const-string v10, "MiUI:"

    .line 553
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 562
    :cond_5
    if-eqz p4, :cond_6

    .line 564
    const-string v9, "ANR:"

    .line 566
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    const/4 v9, 0x1

    .line 570
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 573
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 576
    const-string v9, "AnrTraceCost:"

    .line 578
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    invoke-static {}, Lcom/autonavi/common/tool/b;->k()J

    .line 584
    move-result-wide v9

    .line 585
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 591
    :cond_6
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 594
    move-result-object v9

    .line 595
    invoke-static {v9}, Lxf0;->u(Landroid/app/Application;)Ljava/util/Date;

    .line 598
    move-result-object v9

    .line 599
    const-string v10, "InstalledTime:"

    .line 601
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 604
    const-string v10, "unknown"

    .line 606
    if-eqz v9, :cond_7

    .line 608
    :try_start_2
    sget-object v11, Lbh;->o:Ljava/text/SimpleDateFormat;

    .line 610
    invoke-virtual {v11, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 613
    move-result-object v9

    .line 614
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 620
    goto :goto_2

    .line 621
    :cond_7
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    :goto_2
    new-instance v9, Ljava/util/Date;

    .line 629
    invoke-direct {v9}, Ljava/util/Date;-><init>()V

    .line 632
    if-eqz p2, :cond_8

    .line 634
    iget-object v9, v0, Lbh$e;->b:Ljava/lang/String;

    .line 636
    goto :goto_3

    .line 637
    :cond_8
    if-eqz v2, :cond_9

    .line 639
    iget-object v9, v2, Lbh$f;->b:Ljava/lang/String;

    .line 641
    goto :goto_3

    .line 642
    :cond_9
    sget-object v11, Lbh;->o:Ljava/text/SimpleDateFormat;

    .line 644
    invoke-virtual {v11, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 647
    move-result-object v9

    .line 648
    :goto_3
    invoke-virtual {v5, v9}, Lo30;->c(Ljava/lang/String;)V

    .line 651
    const-string v11, "ExceptionTime:"

    .line 653
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 662
    const-string v9, ""

    .line 664
    if-eqz p2, :cond_a

    .line 666
    :try_start_3
    iget-object v11, v0, Lbh$e;->c:Ljava/lang/String;

    .line 668
    goto :goto_4

    .line 669
    :cond_a
    if-eqz v2, :cond_b

    .line 671
    iget-object v11, v2, Lbh$f;->a:Ljava/lang/String;

    .line 673
    goto :goto_4

    .line 674
    :cond_b
    iget-object v11, v1, Lbh;->k:Ljava/util/Date;

    .line 676
    if-eqz v11, :cond_c

    .line 678
    sget-object v12, Lbh;->o:Ljava/text/SimpleDateFormat;

    .line 680
    invoke-virtual {v12, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 683
    move-result-object v11

    .line 684
    goto :goto_4

    .line 685
    :cond_c
    move-object v11, v9

    .line 686
    :goto_4
    invoke-virtual {v5, v11}, Lo30;->e(Ljava/lang/String;)V

    .line 689
    invoke-virtual {v5}, Lo30;->b()V

    .line 692
    const-string v12, "AmapProcessStartTime:"

    .line 694
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    iget-object v12, v1, Lbh;->k:Ljava/util/Date;

    .line 705
    if-eqz v12, :cond_d

    .line 707
    const-string v12, "ApplicationInitTime:"

    .line 709
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 718
    :cond_d
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 721
    move-result-object v11

    .line 722
    if-eqz v11, :cond_e

    .line 724
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 727
    move-result v12

    .line 728
    if-eqz v12, :cond_e

    .line 730
    invoke-virtual {v11}, Ljava/io/File;->getUsableSpace()J

    .line 733
    move-result-wide v11

    .line 734
    const-string v13, "DataFreeSize:"

    .line 736
    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 745
    :cond_e
    const-string v11, "PID:"

    .line 747
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 750
    if-eqz p2, :cond_f

    .line 752
    iget-object v0, v0, Lbh$e;->a:Ljava/lang/String;

    .line 754
    goto :goto_5

    .line 755
    :cond_f
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 758
    move-result v0

    .line 759
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 762
    move-result-object v0

    .line 763
    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 766
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 769
    :try_start_4
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 772
    move-result-object v0

    .line 773
    invoke-interface {v0}, Lbr;->O()I

    .line 776
    move-result v0

    .line 777
    const/4 v11, 0x2

    .line 778
    if-ne v11, v0, :cond_11

    .line 780
    const-string v0, "ProcessMemeryInfo begin"

    .line 782
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const-string v0, "ProcessMemeryInfo:"

    .line 787
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    if-eqz p2, :cond_10

    .line 792
    move-object v0, v9

    .line 793
    goto :goto_6

    .line 794
    :cond_10
    invoke-static {}, Lxf0;->a()Ljava/lang/String;

    .line 797
    move-result-object v0

    .line 798
    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 804
    const-string v0, "ProcessMemeryInfo end"

    .line 806
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_11
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 812
    move-result-object v0

    .line 813
    invoke-interface {v0}, Lbr;->c0()Ljava/lang/String;

    .line 816
    move-result-object v0

    .line 817
    if-eqz v0, :cond_12

    .line 819
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 822
    move-result v12

    .line 823
    if-eqz v12, :cond_13

    .line 825
    :cond_12
    move-object v0, v10

    .line 826
    :cond_13
    const-string v12, "ExternalStoragePath:"

    .line 828
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 831
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 837
    const-string v12, "ExternalStorageSize:"

    .line 839
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 845
    move-result v12

    .line 846
    if-eqz v12, :cond_14

    .line 848
    const-wide/16 v13, 0x0

    .line 850
    goto :goto_7

    .line 851
    :cond_14
    new-instance v12, Ljava/io/File;

    .line 853
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 856
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    .line 859
    move-result-wide v15

    .line 860
    move-wide v13, v15

    .line 861
    :goto_7
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 870
    move-result-object v0

    .line 871
    invoke-interface {v0}, Lbr;->x()Ljava/lang/String;

    .line 874
    move-result-object v0

    .line 875
    if-eqz v0, :cond_15

    .line 877
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 880
    move-result v12

    .line 881
    if-eqz v12, :cond_16

    .line 883
    :cond_15
    move-object v0, v10

    .line 884
    :cond_16
    const-string v12, "InternalStoragePath:"

    .line 886
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 889
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 895
    const-string v12, "InternalStorageSize:"

    .line 897
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 900
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 903
    move-result v12

    .line 904
    if-eqz v12, :cond_17

    .line 906
    const-wide/16 v13, 0x0

    .line 908
    goto :goto_8

    .line 909
    :cond_17
    new-instance v12, Ljava/io/File;

    .line 911
    invoke-direct {v12, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 914
    invoke-virtual {v12}, Ljava/io/File;->getUsableSpace()J

    .line 917
    move-result-wide v13

    .line 918
    :goto_8
    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 921
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 924
    const-string v0, "ABI:"

    .line 926
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    const-string v0, "ro.product.cpu.abi"

    .line 931
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 934
    move-result-object v0

    .line 935
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 938
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 941
    const-string v0, "VMHeap"

    .line 943
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 946
    const-string v0, "VMHeap:"

    .line 948
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    const-string v0, "dalvik.vm.heapsize"

    .line 953
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 956
    move-result-object v0

    .line 957
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 960
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 963
    const-string v0, "VMHeapGrowthLimit:"

    .line 965
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string v0, "dalvik.vm.heapgrowthlimit"

    .line 970
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 973
    move-result-object v0

    .line 974
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 980
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 983
    move-result-object v0

    .line 984
    invoke-interface {v0}, Lbr;->O()I

    .line 987
    move-result v0

    .line 988
    if-ne v11, v0, :cond_19

    .line 990
    const-string v0, "NetworkType"

    .line 992
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    const-string v0, "NetworkType:"

    .line 997
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 1003
    move-result-object v0

    .line 1004
    invoke-interface {v0}, Lbr;->E()I

    .line 1007
    move-result v0

    .line 1008
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1014
    const-string v0, "Operator"

    .line 1016
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    const-string v0, "Operator:"

    .line 1021
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 1027
    move-result-object v0

    .line 1028
    invoke-interface {v0}, Lbr;->X()Ljava/lang/String;

    .line 1031
    move-result-object v0

    .line 1032
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1035
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1038
    if-nez p4, :cond_19

    .line 1040
    if-nez p2, :cond_19

    .line 1042
    if-nez p6, :cond_18

    .line 1044
    if-nez v2, :cond_19

    .line 1046
    :cond_18
    :try_start_5
    const-string v0, "CurrentCity"

    .line 1048
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v0, "CurrentCity:"

    .line 1053
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1056
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 1059
    move-result-object v0

    .line 1060
    invoke-interface {v0}, Lbr;->Y()I

    .line 1063
    move-result v0

    .line 1064
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1067
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1070
    goto :goto_9

    .line 1071
    :catchall_0
    move-exception v0

    .line 1072
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1075
    :cond_19
    :goto_9
    const-string v0, "Debugable:"

    .line 1077
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    const-string v0, "ro.debuggable"

    .line 1082
    invoke-static {v0, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1085
    move-result-object v0

    .line 1086
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1092
    const-string v0, "FingerPrint"

    .line 1094
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 1097
    const-string v0, "FingerPrint:"

    .line 1099
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 1104
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1110
    goto :goto_a

    .line 1111
    :catchall_1
    move-exception v0

    .line 1112
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1115
    :goto_a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1118
    move-result-object v0

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1124
    const-string v10, "Exception:("

    .line 1126
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1132
    const-string v7, ")"

    .line 1134
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1137
    move-object/from16 v7, p1

    .line 1139
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1145
    move-result-object v2

    .line 1146
    const-string v7, "Tag"

    .line 1148
    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    const-string v7, "Tag:"

    .line 1153
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    sget-object v7, Lcom/autonavi/common/tool/b;->a:Ljava/lang/String;

    .line 1158
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1161
    move-result v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1162
    const-string v10, ":"

    .line 1164
    if-eqz v7, :cond_1a

    .line 1166
    goto :goto_b

    .line 1167
    :cond_1a
    :try_start_8
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1169
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1172
    sget-object v9, Lcom/autonavi/common/tool/b;->a:Ljava/lang/String;

    .line 1174
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1177
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1183
    move-result-object v9

    .line 1184
    :goto_b
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1190
    move-result-object v0

    .line 1191
    invoke-static {v0}, Lk10;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 1194
    move-result-object v0

    .line 1195
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1198
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 1204
    move-result-object v0

    .line 1205
    invoke-static {v0}, Lk10;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 1208
    move-result-object v0

    .line 1209
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1212
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1215
    const-string v0, "exceptionInfo"

    .line 1217
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1223
    const-string v0, "\n\n"

    .line 1225
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1228
    goto :goto_c

    .line 1229
    :catchall_2
    move-exception v0

    .line 1230
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1233
    :goto_c
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    if-nez p4, :cond_1b

    .line 1238
    invoke-virtual {v1, v5}, Lbh;->b(Lo30;)V

    .line 1241
    :cond_1b
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1244
    move-result-object v0

    .line 1245
    return-object v0

    .line 1246
    :catchall_3
    move-exception v0

    .line 1247
    move-object v2, v0

    .line 1248
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    throw v2
.end method

.method public j()Lbh$f;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbh;->u()Ljava/io/File;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 11
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_0

    .line 20
    new-instance v2, Ljava/io/File;

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    const-string v0, "_build"

    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 39
    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 45
    invoke-virtual {p0, v2}, Lbh;->k(Ljava/io/File;)Lbh$f;

    .line 48
    move-result-object v0

    .line 49
    return-object v0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    return-object v0
.end method

.method public k(Ljava/io/File;)Lbh$f;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "canRead:"

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    .line 25
    move-result v2

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, " canWrite:"

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    .line 37
    move-result v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, " canExecute:"

    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p1}, Ljava/io/File;->canExecute()Z

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-static {v1}, Lbz;->a(Ljava/lang/String;)V

    .line 60
    new-instance v1, Lbh$f;

    .line 62
    invoke-direct {v1, p0}, Lbh$f;-><init>(Lbh;)V

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    new-instance v3, Ljava/util/ArrayList;

    .line 72
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 75
    new-instance v4, Lbh$b;

    .line 77
    invoke-direct {v4, p0, v1, v2, v3}, Lbh$b;-><init>(Lbh;Lbh$f;Ljava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 80
    invoke-static {p1, v4}, Lls;->c(Ljava/io/File;Lls$a;)V

    .line 83
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object v3

    .line 87
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v4

    .line 91
    if-eqz v4, :cond_1

    .line 93
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Ljava/lang/String;

    .line 99
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    const-string v6, "backtraceString:"

    .line 106
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    invoke-static {v4}, Lbz;->a(Ljava/lang/String;)V

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object v2

    .line 124
    iput-object v2, v1, Lbh$f;->d:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 129
    invoke-static {v1}, Lbh;->n(Lbh$f;)Z

    .line 132
    move-result p1

    .line 133
    if-eqz p1, :cond_2

    .line 135
    return-object v1

    .line 136
    :cond_2
    :goto_1
    return-object v0
.end method

.method public l()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lbh;->j()Lbh$f;

    .line 4
    move-result-object v7

    .line 5
    if-eqz v7, :cond_0

    .line 7
    iget-object v1, v7, Lbh$f;->d:Ljava/lang/String;

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v8, 0x0

    .line 15
    move-object v0, p0

    .line 16
    invoke-virtual/range {v0 .. v8}, Lbh;->L(Ljava/lang/String;Ljava/lang/Throwable;ZLbh$e;Ljava/lang/Thread;ZLbh$f;Z)V

    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public m()Z
    .locals 3

    .line 1
    const-string v0, "begin buildNativeHeapErrorException"

    .line 3
    invoke-static {v0}, Lbz;->d(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lbh;->t()Ljava/io/File;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/Thread;

    .line 21
    new-instance v2, Lbh$a;

    .line 23
    invoke-direct {v2, p0, v0}, Lbh$a;-><init>(Lbh;Ljava/io/File;)V

    .line 26
    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 29
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 32
    const/4 v0, 0x1

    .line 33
    return v0

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 35
    return v0
.end method

.method public final o()Z
    .locals 11

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->o()Lbr;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lbr;->l0()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "C04010001001"

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "DumpCrash"

    .line 18
    if-nez v0, :cond_0

    .line 20
    const-string v0, "checkPackage result:true"

    .line 22
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return v1

    .line 26
    :cond_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 36
    const-string v3, "com.autonavi.amapauto"

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result v0

    .line 42
    const-string v3, "checkPackage result:false"

    .line 44
    const/4 v4, 0x0

    .line 45
    if-nez v0, :cond_1

    .line 47
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return v4

    .line 51
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 58
    move-result-object v0

    .line 59
    const-string v5, "package.properties"

    .line 61
    invoke-virtual {v0, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 64
    move-result-object v0

    .line 65
    invoke-static {v0}, Lls;->e(Ljava/io/InputStream;)Ljava/lang/String;

    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    move-result v5

    .line 73
    if-eqz v5, :cond_2

    .line 75
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v4

    .line 79
    :cond_2
    invoke-static {v0, v4}, Lcom/autonavi/common/tool/util/AESUtils;->d(Ljava/lang/String;Z)Ljava/lang/String;

    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 86
    move-result v5

    .line 87
    if-eqz v5, :cond_3

    .line 89
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return v4

    .line 93
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v5, "checkPackage packageText:"

    .line 100
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 110
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-static {}, Lcom/autonavi/common/tool/b;->l()Landroid/app/Application;

    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 121
    new-instance v5, Ljava/util/zip/ZipFile;

    .line 123
    invoke-direct {v5, v3}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 126
    const/4 v3, 0x2

    .line 127
    new-array v6, v3, [Ljava/lang/String;

    .line 129
    const-string v7, "classes.dex"

    .line 131
    aput-object v7, v6, v4

    .line 133
    const-string v7, "resources.arsc"

    .line 135
    aput-object v7, v6, v1

    .line 137
    const/4 v7, 0x0

    .line 138
    :goto_0
    if-ge v7, v3, :cond_5

    .line 140
    aget-object v8, v6, v7

    .line 142
    invoke-virtual {v5, v8}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 145
    move-result-object v8

    .line 146
    if-eqz v8, :cond_4

    .line 148
    invoke-virtual {v5, v8}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 151
    move-result-object v9

    .line 152
    invoke-static {v9}, Lk10;->e(Ljava/io/InputStream;)Ljava/lang/String;

    .line 155
    move-result-object v10

    .line 156
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 159
    new-instance v9, Ljava/lang/StringBuilder;

    .line 161
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 167
    move-result-object v8

    .line 168
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    const-string v8, ":"

    .line 173
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    move-result-object v8

    .line 183
    new-instance v9, Ljava/lang/StringBuilder;

    .line 185
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 188
    const-string v10, "checkText:"

    .line 190
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    move-result-object v9

    .line 200
    invoke-static {v2, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 206
    move-result v8

    .line 207
    if-nez v8, :cond_4

    .line 209
    const/4 v1, 0x0

    .line 210
    goto :goto_1

    .line 211
    :cond_4
    add-int/lit8 v7, v7, 0x1

    .line 213
    goto :goto_0

    .line 214
    :cond_5
    :goto_1
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    .line 219
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string v3, "checkPackage result:"

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    move-result-object v0

    .line 234
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    return v1

    .line 238
    :catch_0
    move-exception v0

    .line 239
    const-string v1, "found exception"

    .line 241
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 244
    return v4
.end method

.method public final p(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Lbh;->p:[Ljava/lang/String;

    .line 11
    array-length v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    :goto_0
    if-ge v3, v2, :cond_2

    .line 15
    aget-object v4, v0, v3

    .line 17
    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    if-eqz v4, :cond_1

    .line 23
    const/4 p1, 0x1

    .line 24
    return p1

    .line 25
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    :cond_2
    return v1
.end method

.method public final q()V
    .locals 6

    .line 1
    iget-object v0, p0, Lbh;->j:Ljava/io/File;

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    array-length v1, v0

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_2

    .line 14
    aget-object v3, v0, v2

    .line 16
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 19
    move-result-object v4

    .line 20
    iget-object v5, p0, Lbh;->i:Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-static {v3}, Lls;->b(Ljava/io/File;)Z

    .line 32
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p0}, Lbh;->F()V

    .line 38
    return-void
.end method

.method public r()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lbh;->k:Ljava/util/Date;

    .line 3
    return-object v0
.end method

.method public t()Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 15
    const-string v2, "autonavi_heap_error_log.txt"

    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v1
.end method

.method public u()Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v1, Ljava/io/File;

    .line 15
    const-string v2, "autonavi_native_error_log.txt"

    .line 17
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v1
.end method

.method public x()Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/io/File;

    .line 8
    invoke-static {}, Lcom/autonavi/common/tool/b;->y()Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 12
    const-string v3, ".collection"

    .line 14
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_0

    .line 23
    return-object v0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 27
    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 30
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    .line 32
    new-instance v4, Ljava/io/InputStreamReader;

    .line 34
    invoke-direct {v4, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 37
    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 40
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 48
    if-eqz v4, :cond_2

    .line 50
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 53
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 56
    goto :goto_4

    .line 57
    :cond_2
    :try_start_4
    invoke-static {v2}, Lo30;->f(Ljava/lang/String;)Lo30;

    .line 60
    move-result-object v2

    .line 61
    if-eqz v2, :cond_1

    .line 63
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    move-object v2, v1

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-object v2, v1

    .line 71
    goto :goto_3

    .line 72
    :catchall_1
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :catchall_2
    move-exception v0

    .line 75
    move-object v3, v2

    .line 76
    :goto_2
    if-eqz v2, :cond_3

    .line 78
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 81
    :cond_3
    if-eqz v3, :cond_4

    .line 83
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 86
    :catch_1
    :cond_4
    throw v0

    .line 87
    :catch_2
    move-object v3, v2

    .line 88
    :catch_3
    :goto_3
    if-eqz v2, :cond_5

    .line 90
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 93
    :cond_5
    if-eqz v3, :cond_6

    .line 95
    goto :goto_1

    .line 96
    :catch_4
    :cond_6
    :goto_4
    return-object v0
.end method

.method public y(Lbh$d;)Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ":"

    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lbh;->I(Lbh$d;)Z

    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 13
    iget-object v2, p0, Lbh;->j:Ljava/io/File;

    .line 15
    iget-object v3, p0, Lbh;->i:Ljava/lang/String;

    .line 17
    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 23
    move-result v2

    .line 24
    if-nez v2, :cond_1

    .line 26
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 32
    return-object v1

    .line 33
    :cond_1
    new-instance v2, Ljava/io/File;

    .line 35
    const-string v3, ".record"

    .line 37
    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_3

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_2

    .line 52
    return-object v1

    .line 53
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    iget v3, p0, Lbh;->e:I

    .line 60
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v3, p0, Lbh;->f:I

    .line 68
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget v3, p0, Lbh;->g:I

    .line 76
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget v0, p0, Lbh;->h:I

    .line 84
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    const/4 v0, 0x0

    .line 92
    invoke-static {p1, v2, v0}, Lls;->f(Ljava/lang/String;Ljava/io/File;Z)V

    .line 95
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    return-object p1

    .line 100
    :catch_0
    return-object v1
.end method

.method public final z(Ljava/lang/String;)[I
    .locals 5

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [I

    .line 4
    new-instance v2, Ljava/io/File;

    .line 6
    iget-object v3, p0, Lbh;->j:Ljava/io/File;

    .line 8
    invoke-direct {v2, v3, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    new-instance p1, Ljava/io/File;

    .line 13
    const-string v3, ".record"

    .line 15
    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 24
    return-object v1

    .line 25
    :cond_0
    invoke-static {p1}, Lls;->d(Ljava/io/File;)Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    return-object v1

    .line 36
    :cond_1
    const-string v2, ":"

    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    const/4 v2, 0x0

    .line 43
    const/4 v3, 0x0

    .line 44
    :goto_0
    if-ge v3, v0, :cond_3

    .line 46
    :try_start_0
    array-length v4, p1

    .line 47
    if-le v4, v3, :cond_2

    .line 49
    aget-object v4, p1, v3

    .line 51
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 58
    move-result v4

    .line 59
    aput v4, v1, v3

    .line 61
    if-gez v4, :cond_2

    .line 63
    aput v2, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 67
    goto :goto_0

    .line 68
    :catchall_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    :cond_3
    return-object v1
.end method

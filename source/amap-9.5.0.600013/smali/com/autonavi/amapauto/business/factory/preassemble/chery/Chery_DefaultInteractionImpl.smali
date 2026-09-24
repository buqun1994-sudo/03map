.class public Lcom/autonavi/amapauto/business/factory/preassemble/chery/Chery_DefaultInteractionImpl;
.super Lmc;
.source "SourceFile"


# static fields
.field private static final KEY_VEHICLE_TYPE:Ljava/lang/String; = "key_vehicle_type"

.field private static final TAG:Ljava/lang/String; = "Chery_DefaultInteractionImpl ChannelAdaptor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmc;-><init>()V

    .line 4
    return-void
.end method

.method private getInteractionDelagate()Leq;
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 9
    const-string v4, "Chery_DefaultInteractionImpl ChannelAdaptor"

    .line 11
    const-string v5, "carType android.os.Build.DEVICE = {?}"

    .line 13
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    invoke-static {}, Lrv;->H()Lrv;

    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 31
    move-result-object v5

    .line 32
    const-string v6, "key_vehicle_type"

    .line 34
    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object v5

    .line 38
    new-array v6, v0, [Ljava/lang/Object;

    .line 40
    aput-object v5, v6, v3

    .line 42
    const-string v7, "carType vehicleType = {?}"

    .line 44
    invoke-static {v4, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const-string v6, "ro.build.citos.product"

    .line 49
    invoke-static {v6}, Lqh;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    move-result-object v6

    .line 53
    const/4 v7, 0x2

    .line 54
    new-array v7, v7, [Ljava/lang/Object;

    .line 56
    aput-object v6, v7, v3

    .line 58
    sget-object v8, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 60
    aput-object v8, v7, v0

    .line 62
    const-string v8, "carType vehicleTypeT1A = {?}   PRODUCT = {?}"

    .line 64
    invoke-static {v4, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    move-result-object v7

    .line 71
    const-string v8, "car_model"

    .line 73
    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    aput-object v7, v0, v3

    .line 81
    const-string v8, "carType vehicleTypeT19EVFLHigh = {?}"

    .line 83
    invoke-static {v4, v8, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    new-instance v0, Ljava/io/File;

    .line 88
    const-string v8, "/sdcard/amapauto9/qiruisubdic1.txt"

    .line 90
    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    new-instance v8, Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    const-string v9, "carType device "

    .line 100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v9, " exists "

    .line 108
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 114
    move-result v9

    .line 115
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v8

    .line 122
    new-array v9, v3, [Ljava/lang/Object;

    .line 124
    invoke-static {v4, v8, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryT19EVFLHigh_InteractionImpl;

    .line 135
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryT19EVFLHigh_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 138
    return-object v0

    .line 139
    :cond_0
    const-string v0, "T1A_AVM"

    .line 141
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_e

    .line 147
    const-string v0, "M1DFL2"

    .line 149
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 152
    move-result v0

    .line 153
    if-nez v0, :cond_e

    .line 155
    const-string v0, "T1A_2021"

    .line 157
    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_1

    .line 163
    goto/16 :goto_1

    .line 165
    :cond_1
    const-string v0, "FX11"

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    move-result v0

    .line 171
    if-eqz v0, :cond_2

    .line 173
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;

    .line 175
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 178
    return-object v0

    .line 179
    :cond_2
    const-string v0, "FX11E"

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 184
    move-result v0

    .line 185
    if-eqz v0, :cond_3

    .line 187
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11E_InteractionImpl;

    .line 189
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11E_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 192
    return-object v0

    .line 193
    :cond_3
    const-string v0, "m01"

    .line 195
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_4

    .line 201
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11M01_InteractionImpl;

    .line 203
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11M01_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 206
    return-object v0

    .line 207
    :cond_4
    const-string v0, "m01ev"

    .line 209
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_5

    .line 215
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11M01EV_InteractionImpl;

    .line 217
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11M01EV_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 220
    return-object v0

    .line 221
    :cond_5
    const-string v0, "T1E"

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 226
    move-result v0

    .line 227
    if-eqz v0, :cond_6

    .line 229
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryT1E_InteractionImpl;

    .line 231
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryT1E_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 234
    return-object v0

    .line 235
    :cond_6
    const-string v0, "k23x3-ba440"

    .line 237
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_7

    .line 243
    const-string v0, "carType s61"

    .line 245
    new-array v2, v3, [Ljava/lang/Object;

    .line 247
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryHJS61_InteractionImpl;

    .line 252
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryHJS61_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 255
    return-object v0

    .line 256
    :cond_7
    const-string v0, "T19EVFL"

    .line 258
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 261
    move-result v0

    .line 262
    if-eqz v0, :cond_8

    .line 264
    const-string v0, "carType T19 EVFL"

    .line 266
    new-array v2, v3, [Ljava/lang/Object;

    .line 268
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryHJT19EVFL_InteractionImpl;

    .line 273
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryHJT19EVFL_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 276
    return-object v0

    .line 277
    :cond_8
    const-string v0, "X70-M"

    .line 279
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 282
    move-result v0

    .line 283
    if-nez v0, :cond_d

    .line 285
    const-string v0, "X70-L"

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_9

    .line 293
    goto :goto_0

    .line 294
    :cond_9
    const-string v0, "HJ-3QR27"

    .line 296
    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 299
    move-result v0

    .line 300
    if-eqz v0, :cond_a

    .line 302
    const-string v0, "carType T19EVFL-H"

    .line 304
    new-array v2, v3, [Ljava/lang/Object;

    .line 306
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryT19EVFLHigh_InteractionImpl;

    .line 311
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryT19EVFLHigh_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 314
    return-object v0

    .line 315
    :cond_a
    const-string v0, "GS11"

    .line 317
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_b

    .line 323
    const-string v0, "carType GS11"

    .line 325
    new-array v2, v3, [Ljava/lang/Object;

    .line 327
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryGS11_InteractionImpl;

    .line 332
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryGS11_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 335
    return-object v0

    .line 336
    :cond_b
    const-string v0, "S51"

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 341
    move-result v0

    .line 342
    if-eqz v0, :cond_c

    .line 344
    const-string v0, "carType S51"

    .line 346
    new-array v2, v3, [Ljava/lang/Object;

    .line 348
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryS51EV_InteractionImpl;

    .line 353
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryS51EV_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 356
    return-object v0

    .line 357
    :cond_c
    const-string v0, "carType getInteractionDelagate default"

    .line 359
    new-array v2, v3, [Ljava/lang/Object;

    .line 361
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 364
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;

    .line 366
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryFX11_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 369
    return-object v0

    .line 370
    :cond_d
    :goto_0
    const-string v0, "carType Jietu x70"

    .line 372
    new-array v2, v3, [Ljava/lang/Object;

    .line 374
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryJTX70_InteractionImpl;

    .line 379
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CherryJTX70_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 382
    return-object v0

    .line 383
    :cond_e
    :goto_1
    const-string v0, "carType T1A_AVM"

    .line 385
    new-array v2, v3, [Ljava/lang/Object;

    .line 387
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 390
    new-instance v0, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryT1AAVM_InteractionImpl;

    .line 392
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/CheryT1AAVM_InteractionImpl;-><init>(Landroid/content/Context;)V

    .line 395
    return-object v0
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amapauto/business/factory/preassemble/chery/Chery_DefaultInteractionImpl;->getInteractionDelagate()Leq;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

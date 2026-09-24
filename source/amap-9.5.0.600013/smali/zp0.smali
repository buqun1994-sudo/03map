.class public final enum Lzp0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum A:Lzp0;

.field public static final enum B:Lzp0;

.field public static final enum C:Lzp0;

.field public static final enum D:Lzp0;

.field public static final enum E:Lzp0;

.field public static final synthetic F:[Lzp0;

.field public static final enum d:Lzp0;

.field public static final enum e:Lzp0;

.field public static final enum f:Lzp0;

.field public static final enum g:Lzp0;

.field public static final enum h:Lzp0;

.field public static final enum i:Lzp0;

.field public static final enum j:Lzp0;

.field public static final enum k:Lzp0;

.field public static final enum l:Lzp0;

.field public static final enum m:Lzp0;

.field public static final enum n:Lzp0;

.field public static final enum o:Lzp0;

.field public static final enum p:Lzp0;

.field public static final enum q:Lzp0;

.field public static final enum r:Lzp0;

.field public static final enum s:Lzp0;

.field public static final enum t:Lzp0;

.field public static final enum u:Lzp0;

.field public static final enum v:Lzp0;

.field public static final enum w:Lzp0;

.field public static final enum x:Lzp0;

.field public static final enum y:Lzp0;

.field public static final enum z:Lzp0;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lzp0;

    .line 3
    const-string v1, "\u6210\u529f"

    .line 5
    const-string v2, "SUCCESS"

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v3, v1}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 11
    sput-object v0, Lzp0;->d:Lzp0;

    .line 13
    new-instance v1, Lzp0;

    .line 15
    const-string v2, "\u672a\u77e5\u9519\u8bef"

    .line 17
    const-string v4, "UNKNOWN_ERROR"

    .line 19
    const/4 v5, 0x1

    .line 20
    invoke-direct {v1, v4, v5, v5, v2}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 23
    sput-object v1, Lzp0;->e:Lzp0;

    .line 25
    new-instance v2, Lzp0;

    .line 27
    const/16 v4, 0x65

    .line 29
    const-string v6, "ApsMessage4Http\u7a7a"

    .line 31
    const-string v7, "REQ_DEC_MSG_IS_NULL"

    .line 33
    const/4 v8, 0x2

    .line 34
    invoke-direct {v2, v7, v8, v4, v6}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 37
    sput-object v2, Lzp0;->f:Lzp0;

    .line 39
    new-instance v4, Lzp0;

    .line 41
    const/16 v6, 0x66

    .line 43
    const-string v7, "req\u89e3\u7801\u8fc7\u7a0b\u4e2d\u53d1\u751f\u5f02\u5e38\uff08\u5b57\u6bb5\u672a\u88ab\u5168\u90e8\u89e3\u6790\uff0c\u4f46\u5df2\u89e3\u6790\u51fa\u6765\u7684\u4ecd\u53ef\u88ab\u4f7f\u7528\uff09"

    .line 45
    const-string v9, "REQ_DEC_INTERRUPT_BY_EXCEPTION"

    .line 47
    const/4 v10, 0x3

    .line 48
    invoke-direct {v4, v9, v10, v6, v7}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 51
    sput-object v4, Lzp0;->g:Lzp0;

    .line 53
    new-instance v6, Lzp0;

    .line 55
    const/16 v7, 0x67

    .line 57
    const-string v9, "req\u89e3\u7801\u957f\u5ea6\u4e0e\u9884\u671f\u4e0d\u4e00\u81f4\uff0c\u4f46\u5df2\u89e3\u6790\u51fa\u6765\u7684\u4ecd\u53ef\u88ab\u4f7f\u7528"

    .line 59
    const-string v11, "REQ_DEC_BIN_SIZE_ERROR"

    .line 61
    const/4 v12, 0x4

    .line 62
    invoke-direct {v6, v11, v12, v7, v9}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 65
    sput-object v6, Lzp0;->h:Lzp0;

    .line 67
    new-instance v7, Lzp0;

    .line 69
    const/16 v9, 0x68

    .line 71
    const-string v11, "req\u89e3\u7801\u524d\u89e3\u5bc6\u9519\u8bef"

    .line 73
    const-string v13, "REQ_DEC_XXTEA_DECRYPT_ERROR"

    .line 75
    const/4 v14, 0x5

    .line 76
    invoke-direct {v7, v13, v14, v9, v11}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 79
    sput-object v7, Lzp0;->i:Lzp0;

    .line 81
    new-instance v9, Lzp0;

    .line 83
    const/16 v11, 0x69

    .line 85
    const-string v13, "req\u89e3\u7801\u524d\u89e3\u538b\u9519\u8bef"

    .line 87
    const-string v15, "REQ_DEC_UNGZIP_ERROR"

    .line 89
    const/4 v14, 0x6

    .line 90
    invoke-direct {v9, v15, v14, v11, v13}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 93
    sput-object v9, Lzp0;->j:Lzp0;

    .line 95
    new-instance v11, Lzp0;

    .line 97
    const/16 v13, 0x6a

    .line 99
    const-string v15, "req\u89e3\u7801\u524dCRC\u9519\u8bef"

    .line 101
    const-string v14, "REQ_DEC_CRC_ERROR"

    .line 103
    const/4 v12, 0x7

    .line 104
    invoke-direct {v11, v14, v12, v13, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 107
    sput-object v11, Lzp0;->k:Lzp0;

    .line 109
    new-instance v13, Lzp0;

    .line 111
    const/16 v14, 0x6b

    .line 113
    const-string v15, "reqXml\u5185\u5bb9\u9519\u8bef"

    .line 115
    const-string v12, "REQ_DEC_INVALID_XML_CONTENT"

    .line 117
    const/16 v10, 0x8

    .line 119
    invoke-direct {v13, v12, v10, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 122
    sput-object v13, Lzp0;->l:Lzp0;

    .line 124
    new-instance v12, Lzp0;

    .line 126
    const/16 v14, 0x6c

    .line 128
    const-string v15, "reqXml\u89e3\u5bc6\u9519\u8bef"

    .line 130
    const-string v10, "REQ_DEC_XML_DECRYPT_ERROR"

    .line 132
    const/16 v8, 0x9

    .line 134
    invoke-direct {v12, v10, v8, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 137
    sput-object v12, Lzp0;->m:Lzp0;

    .line 139
    new-instance v10, Lzp0;

    .line 141
    const/16 v14, 0x6d

    .line 143
    const-string v15, "req\u89e3\u6790Context\u5931\u8d25\uff0c\u4f46\u5176\u4ed6\u5b57\u6bb5\u89e3\u6790\u6210\u529f"

    .line 145
    const-string v8, "REQ_DEC_PARSE_CONTEXT_ERROR"

    .line 147
    const/16 v5, 0xa

    .line 149
    invoke-direct {v10, v8, v5, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 152
    sput-object v10, Lzp0;->n:Lzp0;

    .line 154
    new-instance v8, Lzp0;

    .line 156
    const/16 v14, 0x6e

    .line 158
    const-string v15, "req\u89e3\u7801\u65f6\u6307\u5b9a\u4e86\u65e0\u6548\u7684\u7248\u672c\u53f7"

    .line 160
    const-string v5, "REQ_DEC_INVALID_VERSION"

    .line 162
    const/16 v3, 0xb

    .line 164
    invoke-direct {v8, v5, v3, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 167
    sput-object v8, Lzp0;->o:Lzp0;

    .line 169
    new-instance v5, Lzp0;

    .line 171
    const/16 v14, 0xc9

    .line 173
    const-string v15, "req\u7f16\u7801\u957f\u5ea6\u4e0e\u9884\u671f\u4e0d\u4e00\u81f4"

    .line 175
    const-string v3, "REQ_ENC_SIZE_ERROR"

    .line 177
    move-object/from16 v16, v8

    .line 179
    const/16 v8, 0xc

    .line 181
    invoke-direct {v5, v3, v8, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 184
    sput-object v5, Lzp0;->p:Lzp0;

    .line 186
    new-instance v3, Lzp0;

    .line 188
    const/16 v14, 0xca

    .line 190
    const-string v15, "req\u7f16\u7801\u9519\u8bef"

    .line 192
    const-string v8, "REQ_ENC_ERROR"

    .line 194
    move-object/from16 v17, v5

    .line 196
    const/16 v5, 0xd

    .line 198
    invoke-direct {v3, v8, v5, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 201
    sput-object v3, Lzp0;->q:Lzp0;

    .line 203
    new-instance v8, Lzp0;

    .line 205
    const/16 v14, 0xcb

    .line 207
    const-string v15, "req\u7f16\u7801\u540e\u52a0\u5bc6\u9519\u8bef"

    .line 209
    const-string v5, "REQ_ENC_ENCRYPT_ERROR"

    .line 211
    move-object/from16 v18, v3

    .line 213
    const/16 v3, 0xe

    .line 215
    invoke-direct {v8, v5, v3, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 218
    sput-object v8, Lzp0;->r:Lzp0;

    .line 220
    new-instance v5, Lzp0;

    .line 222
    const/16 v14, 0xcc

    .line 224
    const-string v15, "req\u7f16\u7801\u540e\u538b\u7f29\u9519\u8bef"

    .line 226
    const-string v3, "REQ_ENC_GZIP_ERROR"

    .line 228
    move-object/from16 v19, v8

    .line 230
    const/16 v8, 0xf

    .line 232
    invoke-direct {v5, v3, v8, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 235
    sput-object v5, Lzp0;->s:Lzp0;

    .line 237
    new-instance v3, Lzp0;

    .line 239
    const/16 v14, 0xcd

    .line 241
    const-string v15, "req\u7f16\u7801\u65f6\u6307\u5b9a\u4e86\u65e0\u6548\u7684\u7248\u672c\u53f7"

    .line 243
    const-string v8, "REQ_ENC_INVALID_VERSION"

    .line 245
    move-object/from16 v20, v5

    .line 247
    const/16 v5, 0x10

    .line 249
    invoke-direct {v3, v8, v5, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 252
    sput-object v3, Lzp0;->t:Lzp0;

    .line 254
    new-instance v8, Lzp0;

    .line 256
    const-string v14, "RES_ENC_OBJECT_EMPTY"

    .line 258
    const/16 v15, 0x11

    .line 260
    const/16 v5, 0x12d

    .line 262
    move-object/from16 v21, v3

    .line 264
    const-string v3, "res\u5bf9\u8c61\u6216\u53c2\u6570\u4e3a\u7a7a"

    .line 266
    invoke-direct {v8, v14, v15, v5, v3}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 269
    sput-object v8, Lzp0;->u:Lzp0;

    .line 271
    new-instance v5, Lzp0;

    .line 273
    const-string v14, "RES_ENC_FORMAT_TYPE_ERROR"

    .line 275
    const/16 v15, 0x12

    .line 277
    move-object/from16 v22, v8

    .line 279
    const/16 v8, 0x12e

    .line 281
    move-object/from16 v23, v10

    .line 283
    const-string v10, "res\u54cd\u5e94\u7ed3\u679c\u7684\u683c\u5f0f\u7c7b\u578b\u9519\u8bef"

    .line 285
    invoke-direct {v5, v14, v15, v8, v10}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 288
    sput-object v5, Lzp0;->v:Lzp0;

    .line 290
    new-instance v8, Lzp0;

    .line 292
    const/16 v14, 0x12f

    .line 294
    const-string v15, "res\u7f16\u7801\u5931\u8d25"

    .line 296
    move-object/from16 v24, v5

    .line 298
    const-string v5, "RES_ENC_ERROR"

    .line 300
    move-object/from16 v25, v12

    .line 302
    const/16 v12, 0x13

    .line 304
    invoke-direct {v8, v5, v12, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 307
    sput-object v8, Lzp0;->w:Lzp0;

    .line 309
    new-instance v5, Lzp0;

    .line 311
    const/16 v14, 0x130

    .line 313
    const-string v15, "res\u52a0\u5bc6\u5931\u8d25"

    .line 315
    const-string v12, "RES_ENC_ENCRYPT_ERROR"

    .line 317
    move-object/from16 v26, v8

    .line 319
    const/16 v8, 0x14

    .line 321
    invoke-direct {v5, v12, v8, v14, v15}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 324
    sput-object v5, Lzp0;->x:Lzp0;

    .line 326
    new-instance v8, Lzp0;

    .line 328
    const/16 v12, 0x131

    .line 330
    const-string v14, "res\u7f16\u7801\u5931\u8d25\uff0c\u8fd4\u56de\u9ed8\u8ba4\u7684\u5931\u8d25msg"

    .line 332
    const-string v15, "RES_ENC_FAILED_AND_RETURN_DEFAULT_MSG"

    .line 334
    move-object/from16 v27, v5

    .line 336
    const/16 v5, 0x15

    .line 338
    invoke-direct {v8, v15, v5, v12, v14}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 341
    sput-object v8, Lzp0;->y:Lzp0;

    .line 343
    new-instance v5, Lzp0;

    .line 345
    const/16 v12, 0x16

    .line 347
    const/16 v14, 0x191

    .line 349
    const-string v15, "RES_DEC_OBJECT_EMPTY"

    .line 351
    invoke-direct {v5, v15, v12, v14, v3}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 354
    sput-object v5, Lzp0;->z:Lzp0;

    .line 356
    new-instance v3, Lzp0;

    .line 358
    const/16 v12, 0x17

    .line 360
    const/16 v14, 0x192

    .line 362
    const-string v15, "RES_DEC_FORMAT_TYPE_ERROR"

    .line 364
    invoke-direct {v3, v15, v12, v14, v10}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 367
    sput-object v3, Lzp0;->A:Lzp0;

    .line 369
    new-instance v10, Lzp0;

    .line 371
    const/16 v12, 0x193

    .line 373
    const-string v14, "res\u89e3\u7801\u5931\u8d25"

    .line 375
    const-string v15, "RES_DEC_ERROR"

    .line 377
    move-object/from16 v28, v3

    .line 379
    const/16 v3, 0x18

    .line 381
    invoke-direct {v10, v15, v3, v12, v14}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 384
    sput-object v10, Lzp0;->B:Lzp0;

    .line 386
    new-instance v3, Lzp0;

    .line 388
    const/16 v12, 0x194

    .line 390
    const-string v14, "res\u9006\u5730\u7406\u89e3\u6790\u5931\u8d25"

    .line 392
    const-string v15, "RES_DEC_RGEO_PARSE_ERROR"

    .line 394
    move-object/from16 v29, v10

    .line 396
    const/16 v10, 0x19

    .line 398
    invoke-direct {v3, v15, v10, v12, v14}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 401
    sput-object v3, Lzp0;->C:Lzp0;

    .line 403
    new-instance v10, Lzp0;

    .line 405
    const/16 v12, 0x195

    .line 407
    const-string v14, "res\u5ba4\u5185\u5b9a\u4f4d\u89e3\u6790\u5931\u8d25"

    .line 409
    const-string v15, "RES_DEC_INDOOR_PARSE_ERROR"

    .line 411
    move-object/from16 v30, v3

    .line 413
    const/16 v3, 0x1a

    .line 415
    invoke-direct {v10, v15, v3, v12, v14}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 418
    sput-object v10, Lzp0;->D:Lzp0;

    .line 420
    new-instance v3, Lzp0;

    .line 422
    const/16 v12, 0x196

    .line 424
    const-string v14, "res\u4e0a\u4e0b\u6587\u4fe1\u606f\u89e3\u6790\u5931\u8d25"

    .line 426
    const-string v15, "RES_DEC_CONTEXT_PARSE_ERROR"

    .line 428
    move-object/from16 v31, v10

    .line 430
    const/16 v10, 0x1b

    .line 432
    invoke-direct {v3, v15, v10, v12, v14}, Lzp0;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 435
    sput-object v3, Lzp0;->E:Lzp0;

    .line 437
    const/16 v10, 0x1c

    .line 439
    new-array v10, v10, [Lzp0;

    .line 441
    const/4 v12, 0x0

    .line 442
    aput-object v0, v10, v12

    .line 444
    const/4 v0, 0x1

    .line 445
    aput-object v1, v10, v0

    .line 447
    const/4 v0, 0x2

    .line 448
    aput-object v2, v10, v0

    .line 450
    const/4 v0, 0x3

    .line 451
    aput-object v4, v10, v0

    .line 453
    const/4 v0, 0x4

    .line 454
    aput-object v6, v10, v0

    .line 456
    const/4 v0, 0x5

    .line 457
    aput-object v7, v10, v0

    .line 459
    const/4 v0, 0x6

    .line 460
    aput-object v9, v10, v0

    .line 462
    const/4 v0, 0x7

    .line 463
    aput-object v11, v10, v0

    .line 465
    const/16 v0, 0x8

    .line 467
    aput-object v13, v10, v0

    .line 469
    const/16 v0, 0x9

    .line 471
    aput-object v25, v10, v0

    .line 473
    const/16 v0, 0xa

    .line 475
    aput-object v23, v10, v0

    .line 477
    const/16 v0, 0xb

    .line 479
    aput-object v16, v10, v0

    .line 481
    const/16 v0, 0xc

    .line 483
    aput-object v17, v10, v0

    .line 485
    const/16 v0, 0xd

    .line 487
    aput-object v18, v10, v0

    .line 489
    const/16 v0, 0xe

    .line 491
    aput-object v19, v10, v0

    .line 493
    const/16 v0, 0xf

    .line 495
    aput-object v20, v10, v0

    .line 497
    const/16 v0, 0x10

    .line 499
    aput-object v21, v10, v0

    .line 501
    const/16 v0, 0x11

    .line 503
    aput-object v22, v10, v0

    .line 505
    const/16 v0, 0x12

    .line 507
    aput-object v24, v10, v0

    .line 509
    const/16 v0, 0x13

    .line 511
    aput-object v26, v10, v0

    .line 513
    const/16 v0, 0x14

    .line 515
    aput-object v27, v10, v0

    .line 517
    const/16 v0, 0x15

    .line 519
    aput-object v8, v10, v0

    .line 521
    const/16 v0, 0x16

    .line 523
    aput-object v5, v10, v0

    .line 525
    const/16 v0, 0x17

    .line 527
    aput-object v28, v10, v0

    .line 529
    const/16 v0, 0x18

    .line 531
    aput-object v29, v10, v0

    .line 533
    const/16 v0, 0x19

    .line 535
    aput-object v30, v10, v0

    .line 537
    const/16 v0, 0x1a

    .line 539
    aput-object v31, v10, v0

    .line 541
    const/16 v0, 0x1b

    .line 543
    aput-object v3, v10, v0

    .line 545
    sput-object v10, Lzp0;->F:[Lzp0;

    .line 547
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lzp0;->c:Ljava/lang/Throwable;

    .line 7
    iput p3, p0, Lzp0;->a:I

    .line 9
    iput-object p4, p0, Lzp0;->b:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzp0;
    .locals 1

    .line 1
    const-class v0, Lzp0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lzp0;

    .line 9
    return-object p0
.end method

.method public static values()[Lzp0;
    .locals 1

    .line 1
    sget-object v0, Lzp0;->F:[Lzp0;

    .line 3
    invoke-virtual {v0}, [Lzp0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lzp0;

    .line 9
    return-object v0
.end method

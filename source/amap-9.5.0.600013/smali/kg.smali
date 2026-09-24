.class public Lkg;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkg$a;,
        Lkg$c;,
        Lkg$d;,
        Lkg$e;,
        Lkg$b;
    }
.end annotation


# static fields
.field public static final d:[I

.field public static e:Landroid/util/SparseIntArray;


# instance fields
.field public a:Ljava/util/HashMap;

.field public b:Z

.field public c:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x4

    .line 3
    const/16 v2, 0x8

    .line 5
    filled-new-array {v0, v1, v2}, [I

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lkg;->d:[I

    .line 11
    new-instance v0, Landroid/util/SparseIntArray;

    .line 13
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 16
    sput-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 18
    sget v3, Lh90;->u0:I

    .line 20
    const/16 v4, 0x19

    .line 22
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 25
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 27
    sget v3, Lh90;->v0:I

    .line 29
    const/16 v4, 0x1a

    .line 31
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 34
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 36
    sget v3, Lh90;->x0:I

    .line 38
    const/16 v4, 0x1d

    .line 40
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 43
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 45
    sget v3, Lh90;->y0:I

    .line 47
    const/16 v4, 0x1e

    .line 49
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 52
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 54
    sget v3, Lh90;->E0:I

    .line 56
    const/16 v4, 0x24

    .line 58
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 61
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 63
    sget v3, Lh90;->D0:I

    .line 65
    const/16 v4, 0x23

    .line 67
    invoke-virtual {v0, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 70
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 72
    sget v3, Lh90;->c0:I

    .line 74
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 77
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 79
    sget v1, Lh90;->b0:I

    .line 81
    const/4 v3, 0x3

    .line 82
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 85
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 87
    sget v1, Lh90;->Z:I

    .line 89
    const/4 v3, 0x1

    .line 90
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 93
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 95
    sget v1, Lh90;->M0:I

    .line 97
    const/4 v3, 0x6

    .line 98
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 101
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 103
    sget v1, Lh90;->N0:I

    .line 105
    const/4 v3, 0x7

    .line 106
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 109
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 111
    sget v1, Lh90;->j0:I

    .line 113
    const/16 v3, 0x11

    .line 115
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 118
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 120
    sget v1, Lh90;->k0:I

    .line 122
    const/16 v3, 0x12

    .line 124
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 127
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 129
    sget v1, Lh90;->l0:I

    .line 131
    const/16 v3, 0x13

    .line 133
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 136
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 138
    sget v1, Lh90;->s:I

    .line 140
    const/16 v3, 0x1b

    .line 142
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 145
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 147
    sget v1, Lh90;->z0:I

    .line 149
    const/16 v3, 0x20

    .line 151
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 154
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 156
    sget v1, Lh90;->A0:I

    .line 158
    const/16 v3, 0x21

    .line 160
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 163
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 165
    sget v1, Lh90;->i0:I

    .line 167
    const/16 v3, 0xa

    .line 169
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 172
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 174
    sget v1, Lh90;->h0:I

    .line 176
    const/16 v3, 0x9

    .line 178
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 181
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 183
    sget v1, Lh90;->Q0:I

    .line 185
    const/16 v3, 0xd

    .line 187
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 190
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 192
    sget v1, Lh90;->T0:I

    .line 194
    const/16 v3, 0x10

    .line 196
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 199
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 201
    sget v1, Lh90;->R0:I

    .line 203
    const/16 v3, 0xe

    .line 205
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 208
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 210
    sget v1, Lh90;->O0:I

    .line 212
    const/16 v3, 0xb

    .line 214
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 217
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 219
    sget v1, Lh90;->S0:I

    .line 221
    const/16 v3, 0xf

    .line 223
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 226
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 228
    sget v1, Lh90;->P0:I

    .line 230
    const/16 v3, 0xc

    .line 232
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 235
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 237
    sget v1, Lh90;->H0:I

    .line 239
    const/16 v3, 0x28

    .line 241
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 244
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 246
    sget v1, Lh90;->s0:I

    .line 248
    const/16 v3, 0x27

    .line 250
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 253
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 255
    sget v1, Lh90;->r0:I

    .line 257
    const/16 v3, 0x29

    .line 259
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 262
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 264
    sget v1, Lh90;->G0:I

    .line 266
    const/16 v3, 0x2a

    .line 268
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 273
    sget v1, Lh90;->q0:I

    .line 275
    const/16 v3, 0x14

    .line 277
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 282
    sget v1, Lh90;->F0:I

    .line 284
    const/16 v3, 0x25

    .line 286
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 291
    sget v1, Lh90;->g0:I

    .line 293
    const/4 v3, 0x5

    .line 294
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 299
    sget v1, Lh90;->t0:I

    .line 301
    const/16 v3, 0x52

    .line 303
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 308
    sget v1, Lh90;->C0:I

    .line 310
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 315
    sget v1, Lh90;->w0:I

    .line 317
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 322
    sget v1, Lh90;->a0:I

    .line 324
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 329
    sget v1, Lh90;->Y:I

    .line 331
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 336
    sget v1, Lh90;->x:I

    .line 338
    const/16 v3, 0x18

    .line 340
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 345
    sget v1, Lh90;->z:I

    .line 347
    const/16 v3, 0x1c

    .line 349
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 354
    sget v1, Lh90;->L:I

    .line 356
    const/16 v3, 0x1f

    .line 358
    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 363
    sget v1, Lh90;->M:I

    .line 365
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 370
    sget v1, Lh90;->y:I

    .line 372
    const/16 v2, 0x22

    .line 374
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 379
    sget v1, Lh90;->A:I

    .line 381
    const/4 v2, 0x2

    .line 382
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 385
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 387
    sget v1, Lh90;->v:I

    .line 389
    const/16 v2, 0x17

    .line 391
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 394
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 396
    sget v1, Lh90;->w:I

    .line 398
    const/16 v2, 0x15

    .line 400
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 403
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 405
    sget v1, Lh90;->u:I

    .line 407
    const/16 v2, 0x16

    .line 409
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 412
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 414
    sget v1, Lh90;->B:I

    .line 416
    const/16 v2, 0x2b

    .line 418
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 421
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 423
    sget v1, Lh90;->O:I

    .line 425
    const/16 v2, 0x2c

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 430
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 432
    sget v1, Lh90;->J:I

    .line 434
    const/16 v2, 0x2d

    .line 436
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 439
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 441
    sget v1, Lh90;->K:I

    .line 443
    const/16 v2, 0x2e

    .line 445
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 450
    sget v1, Lh90;->I:I

    .line 452
    const/16 v2, 0x3c

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 457
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 459
    sget v1, Lh90;->G:I

    .line 461
    const/16 v2, 0x2f

    .line 463
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 466
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 468
    sget v1, Lh90;->H:I

    .line 470
    const/16 v2, 0x30

    .line 472
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 475
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 477
    sget v1, Lh90;->C:I

    .line 479
    const/16 v2, 0x31

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 484
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 486
    sget v1, Lh90;->D:I

    .line 488
    const/16 v2, 0x32

    .line 490
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 493
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 495
    sget v1, Lh90;->E:I

    .line 497
    const/16 v2, 0x33

    .line 499
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 504
    sget v1, Lh90;->F:I

    .line 506
    const/16 v2, 0x34

    .line 508
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 511
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 513
    sget v1, Lh90;->N:I

    .line 515
    const/16 v2, 0x35

    .line 517
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 520
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 522
    sget v1, Lh90;->I0:I

    .line 524
    const/16 v2, 0x36

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 529
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 531
    sget v1, Lh90;->m0:I

    .line 533
    const/16 v2, 0x37

    .line 535
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 538
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 540
    sget v1, Lh90;->J0:I

    .line 542
    const/16 v2, 0x38

    .line 544
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 547
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 549
    sget v1, Lh90;->n0:I

    .line 551
    const/16 v2, 0x39

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 556
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 558
    sget v1, Lh90;->K0:I

    .line 560
    const/16 v2, 0x3a

    .line 562
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 565
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 567
    sget v1, Lh90;->o0:I

    .line 569
    const/16 v2, 0x3b

    .line 571
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 574
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 576
    sget v1, Lh90;->d0:I

    .line 578
    const/16 v2, 0x3d

    .line 580
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 583
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 585
    sget v1, Lh90;->f0:I

    .line 587
    const/16 v2, 0x3e

    .line 589
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 592
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 594
    sget v1, Lh90;->e0:I

    .line 596
    const/16 v2, 0x3f

    .line 598
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 601
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 603
    sget v1, Lh90;->P:I

    .line 605
    const/16 v2, 0x40

    .line 607
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 610
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 612
    sget v1, Lh90;->X0:I

    .line 614
    const/16 v2, 0x41

    .line 616
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 619
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 621
    sget v1, Lh90;->V:I

    .line 623
    const/16 v2, 0x42

    .line 625
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 628
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 630
    sget v1, Lh90;->Y0:I

    .line 632
    const/16 v2, 0x43

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 637
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 639
    sget v1, Lh90;->V0:I

    .line 641
    const/16 v2, 0x4f

    .line 643
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 646
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 648
    sget v1, Lh90;->t:I

    .line 650
    const/16 v2, 0x26

    .line 652
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 655
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 657
    sget v1, Lh90;->U0:I

    .line 659
    const/16 v2, 0x44

    .line 661
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 664
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 666
    sget v1, Lh90;->L0:I

    .line 668
    const/16 v2, 0x45

    .line 670
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 673
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 675
    sget v1, Lh90;->p0:I

    .line 677
    const/16 v2, 0x46

    .line 679
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 682
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 684
    sget v1, Lh90;->T:I

    .line 686
    const/16 v2, 0x47

    .line 688
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 691
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 693
    sget v1, Lh90;->R:I

    .line 695
    const/16 v2, 0x48

    .line 697
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 700
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 702
    sget v1, Lh90;->S:I

    .line 704
    const/16 v2, 0x49

    .line 706
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 709
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 711
    sget v1, Lh90;->U:I

    .line 713
    const/16 v2, 0x4a

    .line 715
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 718
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 720
    sget v1, Lh90;->Q:I

    .line 722
    const/16 v2, 0x4b

    .line 724
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 727
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 729
    sget v1, Lh90;->W0:I

    .line 731
    const/16 v2, 0x4c

    .line 733
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 736
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 738
    sget v1, Lh90;->B0:I

    .line 740
    const/16 v2, 0x4d

    .line 742
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 745
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 747
    sget v1, Lh90;->Z0:I

    .line 749
    const/16 v2, 0x4e

    .line 751
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 754
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 756
    sget v1, Lh90;->X:I

    .line 758
    const/16 v2, 0x50

    .line 760
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 763
    sget-object v0, Lkg;->e:Landroid/util/SparseIntArray;

    .line 765
    sget v1, Lh90;->W:I

    .line 767
    const/16 v2, 0x51

    .line 769
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 772
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lkg;->a:Ljava/util/HashMap;

    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lkg;->b:Z

    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 19
    iput-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method public static synthetic a(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b()[I
    .locals 1

    .line 1
    sget-object v0, Lkg;->d:[I

    .line 3
    return-object v0
.end method

.method public static o(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 4
    move-result p2

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p2, v0, :cond_0

    .line 8
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 11
    move-result p2

    .line 12
    :cond_0
    return p2
.end method


# virtual methods
.method public c(Lig;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lkg;->d(Lig;Z)V

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Lig;->setConstraintSet(Lkg;)V

    .line 9
    invoke-virtual {p1}, Lig;->requestLayout()V

    .line 12
    return-void
.end method

.method public d(Lig;Z)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/HashSet;

    .line 7
    iget-object v2, p0, Lkg;->c:Ljava/util/HashMap;

    .line 9
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 12
    move-result-object v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    const/4 v3, 0x1

    .line 18
    const/4 v4, -0x1

    .line 19
    if-ge v2, v0, :cond_e

    .line 21
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 24
    move-result-object v5

    .line 25
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 28
    move-result v6

    .line 29
    iget-object v7, p0, Lkg;->c:Ljava/util/HashMap;

    .line 31
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 38
    move-result v7

    .line 39
    const-string v8, "ConstraintSet"

    .line 41
    if-nez v7, :cond_0

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    const-string v4, "id unknown "

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-static {v5}, Lyh;->a(Landroid/view/View;)Ljava/lang/String;

    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v3

    .line 64
    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto/16 :goto_3

    .line 69
    :cond_0
    iget-boolean v7, p0, Lkg;->b:Z

    .line 71
    if-eqz v7, :cond_2

    .line 73
    if-eq v6, v4, :cond_1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 78
    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 80
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 83
    throw p1

    .line 84
    :cond_2
    :goto_1
    if-ne v6, v4, :cond_3

    .line 86
    goto/16 :goto_3

    .line 88
    :cond_3
    iget-object v7, p0, Lkg;->c:Ljava/util/HashMap;

    .line 90
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object v9

    .line 94
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 97
    move-result v7

    .line 98
    if-eqz v7, :cond_c

    .line 100
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v7

    .line 104
    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 107
    iget-object v7, p0, Lkg;->c:Ljava/util/HashMap;

    .line 109
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v8

    .line 113
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v7

    .line 117
    check-cast v7, Lkg$a;

    .line 119
    instance-of v8, v5, Lvb;

    .line 121
    if-eqz v8, :cond_4

    .line 123
    iget-object v8, v7, Lkg$a;->d:Lkg$b;

    .line 125
    iput v3, v8, Lkg$b;->d0:I

    .line 127
    :cond_4
    iget-object v8, v7, Lkg$a;->d:Lkg$b;

    .line 129
    iget v8, v8, Lkg$b;->d0:I

    .line 131
    if-eq v8, v4, :cond_7

    .line 133
    if-eq v8, v3, :cond_5

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    move-object v3, v5

    .line 137
    check-cast v3, Lvb;

    .line 139
    invoke-virtual {v3, v6}, Landroid/view/View;->setId(I)V

    .line 142
    iget-object v4, v7, Lkg$a;->d:Lkg$b;

    .line 144
    iget v4, v4, Lkg$b;->b0:I

    .line 146
    invoke-virtual {v3, v4}, Lvb;->setType(I)V

    .line 149
    iget-object v4, v7, Lkg$a;->d:Lkg$b;

    .line 151
    iget v4, v4, Lkg$b;->c0:I

    .line 153
    invoke-virtual {v3, v4}, Lvb;->setMargin(I)V

    .line 156
    iget-object v4, v7, Lkg$a;->d:Lkg$b;

    .line 158
    iget-boolean v4, v4, Lkg$b;->j0:Z

    .line 160
    invoke-virtual {v3, v4}, Lvb;->setAllowsGoneWidget(Z)V

    .line 163
    iget-object v4, v7, Lkg$a;->d:Lkg$b;

    .line 165
    iget-object v6, v4, Lkg$b;->e0:[I

    .line 167
    if-eqz v6, :cond_6

    .line 169
    invoke-virtual {v3, v6}, Lhg;->setReferencedIds([I)V

    .line 172
    goto :goto_2

    .line 173
    :cond_6
    iget-object v6, v4, Lkg$b;->f0:Ljava/lang/String;

    .line 175
    if-eqz v6, :cond_7

    .line 177
    invoke-virtual {p0, v3, v6}, Lkg;->j(Landroid/view/View;Ljava/lang/String;)[I

    .line 180
    move-result-object v6

    .line 181
    iput-object v6, v4, Lkg$b;->e0:[I

    .line 183
    iget-object v4, v7, Lkg$a;->d:Lkg$b;

    .line 185
    iget-object v4, v4, Lkg$b;->e0:[I

    .line 187
    invoke-virtual {v3, v4}, Lhg;->setReferencedIds([I)V

    .line 190
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 193
    move-result-object v3

    .line 194
    check-cast v3, Lig$b;

    .line 196
    invoke-virtual {v3}, Lig$b;->a()V

    .line 199
    invoke-virtual {v7, v3}, Lkg$a;->b(Lig$b;)V

    .line 202
    if-eqz p2, :cond_8

    .line 204
    iget-object v4, v7, Lkg$a;->f:Ljava/util/HashMap;

    .line 206
    invoke-static {v5, v4}, Lgg;->c(Landroid/view/View;Ljava/util/HashMap;)V

    .line 209
    :cond_8
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v3, v7, Lkg$a;->b:Lkg$d;

    .line 214
    iget v4, v3, Lkg$d;->c:I

    .line 216
    if-nez v4, :cond_9

    .line 218
    iget v3, v3, Lkg$d;->b:I

    .line 220
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :cond_9
    iget-object v3, v7, Lkg$a;->b:Lkg$d;

    .line 225
    iget v3, v3, Lkg$d;->d:F

    .line 227
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 230
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 232
    iget v3, v3, Lkg$e;->b:F

    .line 234
    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 237
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 239
    iget v3, v3, Lkg$e;->c:F

    .line 241
    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 244
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 246
    iget v3, v3, Lkg$e;->d:F

    .line 248
    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 251
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 253
    iget v3, v3, Lkg$e;->e:F

    .line 255
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 258
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 260
    iget v3, v3, Lkg$e;->f:F

    .line 262
    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 265
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 267
    iget v3, v3, Lkg$e;->g:F

    .line 269
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 272
    move-result v3

    .line 273
    if-nez v3, :cond_a

    .line 275
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 277
    iget v3, v3, Lkg$e;->g:F

    .line 279
    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 282
    :cond_a
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 284
    iget v3, v3, Lkg$e;->h:F

    .line 286
    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    .line 289
    move-result v3

    .line 290
    if-nez v3, :cond_b

    .line 292
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 294
    iget v3, v3, Lkg$e;->h:F

    .line 296
    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 299
    :cond_b
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 301
    iget v3, v3, Lkg$e;->i:F

    .line 303
    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 306
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 308
    iget v3, v3, Lkg$e;->j:F

    .line 310
    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 313
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 315
    iget v3, v3, Lkg$e;->k:F

    .line 317
    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 320
    iget-object v3, v7, Lkg$a;->e:Lkg$e;

    .line 322
    iget-boolean v4, v3, Lkg$e;->l:Z

    .line 324
    if-eqz v4, :cond_d

    .line 326
    iget v3, v3, Lkg$e;->m:F

    .line 328
    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    .line 331
    goto :goto_3

    .line 332
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    .line 334
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    const-string v4, "WARNING NO CONSTRAINTS for view "

    .line 339
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    move-result-object v3

    .line 349
    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 354
    goto/16 :goto_0

    .line 356
    :cond_e
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 359
    move-result-object p2

    .line 360
    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 363
    move-result v0

    .line 364
    if-eqz v0, :cond_14

    .line 366
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 369
    move-result-object v0

    .line 370
    check-cast v0, Ljava/lang/Integer;

    .line 372
    iget-object v1, p0, Lkg;->c:Ljava/util/HashMap;

    .line 374
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    move-result-object v1

    .line 378
    check-cast v1, Lkg$a;

    .line 380
    iget-object v2, v1, Lkg$a;->d:Lkg$b;

    .line 382
    iget v2, v2, Lkg$b;->d0:I

    .line 384
    if-eq v2, v4, :cond_13

    .line 386
    if-eq v2, v3, :cond_10

    .line 388
    goto :goto_6

    .line 389
    :cond_10
    new-instance v2, Lvb;

    .line 391
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 394
    move-result-object v5

    .line 395
    invoke-direct {v2, v5}, Lvb;-><init>(Landroid/content/Context;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 401
    move-result v5

    .line 402
    invoke-virtual {v2, v5}, Landroid/view/View;->setId(I)V

    .line 405
    iget-object v5, v1, Lkg$a;->d:Lkg$b;

    .line 407
    iget-object v6, v5, Lkg$b;->e0:[I

    .line 409
    if-eqz v6, :cond_11

    .line 411
    invoke-virtual {v2, v6}, Lhg;->setReferencedIds([I)V

    .line 414
    goto :goto_5

    .line 415
    :cond_11
    iget-object v6, v5, Lkg$b;->f0:Ljava/lang/String;

    .line 417
    if-eqz v6, :cond_12

    .line 419
    invoke-virtual {p0, v2, v6}, Lkg;->j(Landroid/view/View;Ljava/lang/String;)[I

    .line 422
    move-result-object v6

    .line 423
    iput-object v6, v5, Lkg$b;->e0:[I

    .line 425
    iget-object v5, v1, Lkg$a;->d:Lkg$b;

    .line 427
    iget-object v5, v5, Lkg$b;->e0:[I

    .line 429
    invoke-virtual {v2, v5}, Lhg;->setReferencedIds([I)V

    .line 432
    :cond_12
    :goto_5
    iget-object v5, v1, Lkg$a;->d:Lkg$b;

    .line 434
    iget v5, v5, Lkg$b;->b0:I

    .line 436
    invoke-virtual {v2, v5}, Lvb;->setType(I)V

    .line 439
    iget-object v5, v1, Lkg$a;->d:Lkg$b;

    .line 441
    iget v5, v5, Lkg$b;->c0:I

    .line 443
    invoke-virtual {v2, v5}, Lvb;->setMargin(I)V

    .line 446
    invoke-virtual {p1}, Lig;->d()Lig$b;

    .line 449
    move-result-object v5

    .line 450
    invoke-virtual {v2}, Lhg;->l()V

    .line 453
    invoke-virtual {v1, v5}, Lkg$a;->b(Lig$b;)V

    .line 456
    invoke-virtual {p1, v2, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 459
    :cond_13
    :goto_6
    iget-object v2, v1, Lkg$a;->d:Lkg$b;

    .line 461
    iget-boolean v2, v2, Lkg$b;->a:Z

    .line 463
    if-eqz v2, :cond_f

    .line 465
    new-instance v2, Lso;

    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 470
    move-result-object v5

    .line 471
    invoke-direct {v2, v5}, Lso;-><init>(Landroid/content/Context;)V

    .line 474
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 477
    move-result v0

    .line 478
    invoke-virtual {v2, v0}, Landroid/view/View;->setId(I)V

    .line 481
    invoke-virtual {p1}, Lig;->d()Lig$b;

    .line 484
    move-result-object v0

    .line 485
    invoke-virtual {v1, v0}, Lkg$a;->b(Lig$b;)V

    .line 488
    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 491
    goto/16 :goto_4

    .line 493
    :cond_14
    return-void
.end method

.method public e(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lkg$a;

    .line 25
    const/4 v0, -0x1

    .line 26
    packed-switch p2, :pswitch_data_0

    .line 29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 31
    const-string p2, "unknown constraint"

    .line 33
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1

    .line 37
    :pswitch_0
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 39
    iput v0, p1, Lkg$b;->s:I

    .line 41
    iput v0, p1, Lkg$b;->t:I

    .line 43
    iput v0, p1, Lkg$b;->H:I

    .line 45
    iput v0, p1, Lkg$b;->N:I

    .line 47
    goto :goto_0

    .line 48
    :pswitch_1
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 50
    iput v0, p1, Lkg$b;->q:I

    .line 52
    iput v0, p1, Lkg$b;->r:I

    .line 54
    iput v0, p1, Lkg$b;->I:I

    .line 56
    iput v0, p1, Lkg$b;->O:I

    .line 58
    goto :goto_0

    .line 59
    :pswitch_2
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 61
    iput v0, p1, Lkg$b;->p:I

    .line 63
    goto :goto_0

    .line 64
    :pswitch_3
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 66
    iput v0, p1, Lkg$b;->n:I

    .line 68
    iput v0, p1, Lkg$b;->o:I

    .line 70
    iput v0, p1, Lkg$b;->G:I

    .line 72
    iput v0, p1, Lkg$b;->M:I

    .line 74
    goto :goto_0

    .line 75
    :pswitch_4
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 77
    iput v0, p1, Lkg$b;->m:I

    .line 79
    iput v0, p1, Lkg$b;->l:I

    .line 81
    iput v0, p1, Lkg$b;->F:I

    .line 83
    iput v0, p1, Lkg$b;->K:I

    .line 85
    goto :goto_0

    .line 86
    :pswitch_5
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 88
    iput v0, p1, Lkg$b;->k:I

    .line 90
    iput v0, p1, Lkg$b;->j:I

    .line 92
    iput v0, p1, Lkg$b;->E:I

    .line 94
    iput v0, p1, Lkg$b;->L:I

    .line 96
    goto :goto_0

    .line 97
    :pswitch_6
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 99
    iput v0, p1, Lkg$b;->i:I

    .line 101
    iput v0, p1, Lkg$b;->h:I

    .line 103
    iput v0, p1, Lkg$b;->D:I

    .line 105
    iput v0, p1, Lkg$b;->J:I

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public f(Lig;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lkg;->c:Ljava/util/HashMap;

    .line 7
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_7

    .line 13
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lig$b;

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    .line 26
    move-result v4

    .line 27
    iget-boolean v5, p0, Lkg;->b:Z

    .line 29
    if-eqz v5, :cond_1

    .line 31
    const/4 v5, -0x1

    .line 32
    if-eq v4, v5, :cond_0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 37
    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    .line 39
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_1
    iget-object v5, p0, Lkg;->c:Ljava/util/HashMap;

    .line 45
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v6

    .line 49
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 52
    move-result v5

    .line 53
    if-nez v5, :cond_2

    .line 55
    iget-object v5, p0, Lkg;->c:Ljava/util/HashMap;

    .line 57
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v6

    .line 61
    new-instance v7, Lkg$a;

    .line 63
    invoke-direct {v7}, Lkg$a;-><init>()V

    .line 66
    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_2
    iget-object v5, p0, Lkg;->c:Ljava/util/HashMap;

    .line 71
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Lkg$a;

    .line 81
    iget-object v6, p0, Lkg;->a:Ljava/util/HashMap;

    .line 83
    invoke-static {v6, v2}, Lgg;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;

    .line 86
    move-result-object v6

    .line 87
    iput-object v6, v5, Lkg$a;->f:Ljava/util/HashMap;

    .line 89
    invoke-static {v5, v4, v3}, Lkg$a;->a(Lkg$a;ILig$b;)V

    .line 92
    iget-object v3, v5, Lkg$a;->b:Lkg$d;

    .line 94
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 97
    move-result v4

    .line 98
    iput v4, v3, Lkg$d;->b:I

    .line 100
    iget-object v3, v5, Lkg$a;->b:Lkg$d;

    .line 102
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 105
    move-result v4

    .line 106
    iput v4, v3, Lkg$d;->d:F

    .line 108
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 110
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 113
    move-result v4

    .line 114
    iput v4, v3, Lkg$e;->b:F

    .line 116
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 118
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    .line 121
    move-result v4

    .line 122
    iput v4, v3, Lkg$e;->c:F

    .line 124
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 126
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    .line 129
    move-result v4

    .line 130
    iput v4, v3, Lkg$e;->d:F

    .line 132
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 137
    move-result v4

    .line 138
    iput v4, v3, Lkg$e;->e:F

    .line 140
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    .line 145
    move-result v4

    .line 146
    iput v4, v3, Lkg$e;->f:F

    .line 148
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    .line 151
    move-result v3

    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    .line 155
    move-result v4

    .line 156
    float-to-double v6, v3

    .line 157
    const-wide/16 v8, 0x0

    .line 159
    cmpl-double v10, v6, v8

    .line 161
    if-nez v10, :cond_3

    .line 163
    float-to-double v6, v4

    .line 164
    cmpl-double v10, v6, v8

    .line 166
    if-eqz v10, :cond_4

    .line 168
    :cond_3
    iget-object v6, v5, Lkg$a;->e:Lkg$e;

    .line 170
    iput v3, v6, Lkg$e;->g:F

    .line 172
    iput v4, v6, Lkg$e;->h:F

    .line 174
    :cond_4
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 179
    move-result v4

    .line 180
    iput v4, v3, Lkg$e;->i:F

    .line 182
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 184
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 187
    move-result v4

    .line 188
    iput v4, v3, Lkg$e;->j:F

    .line 190
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    .line 195
    move-result v4

    .line 196
    iput v4, v3, Lkg$e;->k:F

    .line 198
    iget-object v3, v5, Lkg$a;->e:Lkg$e;

    .line 200
    iget-boolean v4, v3, Lkg$e;->l:Z

    .line 202
    if-eqz v4, :cond_5

    .line 204
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    .line 207
    move-result v4

    .line 208
    iput v4, v3, Lkg$e;->m:F

    .line 210
    :cond_5
    instance-of v3, v2, Lvb;

    .line 212
    if-eqz v3, :cond_6

    .line 214
    check-cast v2, Lvb;

    .line 216
    iget-object v3, v5, Lkg$a;->d:Lkg$b;

    .line 218
    invoke-virtual {v2}, Lvb;->m()Z

    .line 221
    move-result v4

    .line 222
    iput-boolean v4, v3, Lkg$b;->j0:Z

    .line 224
    iget-object v3, v5, Lkg$a;->d:Lkg$b;

    .line 226
    invoke-virtual {v2}, Lhg;->getReferencedIds()[I

    .line 229
    move-result-object v4

    .line 230
    iput-object v4, v3, Lkg$b;->e0:[I

    .line 232
    iget-object v3, v5, Lkg$a;->d:Lkg$b;

    .line 234
    invoke-virtual {v2}, Lvb;->getType()I

    .line 237
    move-result v4

    .line 238
    iput v4, v3, Lkg$b;->b0:I

    .line 240
    iget-object v3, v5, Lkg$a;->d:Lkg$b;

    .line 242
    invoke-virtual {v2}, Lvb;->getMargin()I

    .line 245
    move-result v2

    .line 246
    iput v2, v3, Lkg$b;->c0:I

    .line 248
    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 250
    goto/16 :goto_0

    .line 252
    :cond_7
    return-void
.end method

.method public g(Landroid/content/Context;I)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lig;

    .line 12
    invoke-virtual {p0, p1}, Lkg;->f(Lig;)V

    .line 15
    return-void
.end method

.method public h(IIIII)V
    .locals 9

    .line 1
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lkg$a;

    .line 21
    invoke-direct {v2}, Lkg$a;-><init>()V

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lkg$a;

    .line 39
    const/4 v0, 0x2

    .line 40
    const/4 v1, 0x7

    .line 41
    const/4 v2, 0x6

    .line 42
    const/4 v3, 0x4

    .line 43
    const/4 v4, 0x3

    .line 44
    const/4 v5, 0x1

    .line 45
    const-string v6, "right to "

    .line 47
    const-string v7, " undefined"

    .line 49
    const/4 v8, -0x1

    .line 50
    packed-switch p2, :pswitch_data_0

    .line 53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    new-instance p3, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    invoke-virtual {p0, p2}, Lkg;->r(I)Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p2, " to "

    .line 69
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    const-string p2, " unknown"

    .line 81
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 91
    throw p1

    .line 92
    :pswitch_0
    if-ne p4, v1, :cond_1

    .line 94
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 96
    iput p3, p2, Lkg$b;->t:I

    .line 98
    iput v8, p2, Lkg$b;->s:I

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    if-ne p4, v2, :cond_2

    .line 103
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 105
    iput p3, p2, Lkg$b;->s:I

    .line 107
    iput v8, p2, Lkg$b;->t:I

    .line 109
    :goto_0
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 111
    iput p5, p1, Lkg$b;->H:I

    .line 113
    goto/16 :goto_6

    .line 115
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 117
    new-instance p2, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 128
    move-result-object p3

    .line 129
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object p2

    .line 139
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 142
    throw p1

    .line 143
    :pswitch_1
    if-ne p4, v2, :cond_3

    .line 145
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 147
    iput p3, p2, Lkg$b;->r:I

    .line 149
    iput v8, p2, Lkg$b;->q:I

    .line 151
    goto :goto_1

    .line 152
    :cond_3
    if-ne p4, v1, :cond_4

    .line 154
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 156
    iput p3, p2, Lkg$b;->q:I

    .line 158
    iput v8, p2, Lkg$b;->r:I

    .line 160
    :goto_1
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 162
    iput p5, p1, Lkg$b;->I:I

    .line 164
    goto/16 :goto_6

    .line 166
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 179
    move-result-object p3

    .line 180
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    move-result-object p2

    .line 190
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 193
    throw p1

    .line 194
    :pswitch_2
    const/4 p2, 0x5

    .line 195
    if-ne p4, p2, :cond_5

    .line 197
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 199
    iput p3, p1, Lkg$b;->p:I

    .line 201
    iput v8, p1, Lkg$b;->o:I

    .line 203
    iput v8, p1, Lkg$b;->n:I

    .line 205
    iput v8, p1, Lkg$b;->l:I

    .line 207
    iput v8, p1, Lkg$b;->m:I

    .line 209
    goto/16 :goto_6

    .line 211
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 213
    new-instance p2, Ljava/lang/StringBuilder;

    .line 215
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 224
    move-result-object p3

    .line 225
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    move-result-object p2

    .line 235
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 238
    throw p1

    .line 239
    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 241
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 243
    iput p3, p2, Lkg$b;->o:I

    .line 245
    iput v8, p2, Lkg$b;->n:I

    .line 247
    iput v8, p2, Lkg$b;->p:I

    .line 249
    goto :goto_2

    .line 250
    :cond_6
    if-ne p4, v4, :cond_7

    .line 252
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 254
    iput p3, p2, Lkg$b;->n:I

    .line 256
    iput v8, p2, Lkg$b;->o:I

    .line 258
    iput v8, p2, Lkg$b;->p:I

    .line 260
    :goto_2
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 262
    iput p5, p1, Lkg$b;->G:I

    .line 264
    goto/16 :goto_6

    .line 266
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 268
    new-instance p2, Ljava/lang/StringBuilder;

    .line 270
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 273
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 279
    move-result-object p3

    .line 280
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object p2

    .line 290
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 293
    throw p1

    .line 294
    :pswitch_4
    if-ne p4, v4, :cond_8

    .line 296
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 298
    iput p3, p2, Lkg$b;->l:I

    .line 300
    iput v8, p2, Lkg$b;->m:I

    .line 302
    iput v8, p2, Lkg$b;->p:I

    .line 304
    goto :goto_3

    .line 305
    :cond_8
    if-ne p4, v3, :cond_9

    .line 307
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 309
    iput p3, p2, Lkg$b;->m:I

    .line 311
    iput v8, p2, Lkg$b;->l:I

    .line 313
    iput v8, p2, Lkg$b;->p:I

    .line 315
    :goto_3
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 317
    iput p5, p1, Lkg$b;->F:I

    .line 319
    goto :goto_6

    .line 320
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 322
    new-instance p2, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 327
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 333
    move-result-object p3

    .line 334
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 343
    move-result-object p2

    .line 344
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 347
    throw p1

    .line 348
    :pswitch_5
    if-ne p4, v5, :cond_a

    .line 350
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 352
    iput p3, p2, Lkg$b;->j:I

    .line 354
    iput v8, p2, Lkg$b;->k:I

    .line 356
    goto :goto_4

    .line 357
    :cond_a
    if-ne p4, v0, :cond_b

    .line 359
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 361
    iput p3, p2, Lkg$b;->k:I

    .line 363
    iput v8, p2, Lkg$b;->j:I

    .line 365
    :goto_4
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 367
    iput p5, p1, Lkg$b;->E:I

    .line 369
    goto :goto_6

    .line 370
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 372
    new-instance p2, Ljava/lang/StringBuilder;

    .line 374
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 377
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 383
    move-result-object p3

    .line 384
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    move-result-object p2

    .line 394
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 397
    throw p1

    .line 398
    :pswitch_6
    if-ne p4, v5, :cond_c

    .line 400
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 402
    iput p3, p2, Lkg$b;->h:I

    .line 404
    iput v8, p2, Lkg$b;->i:I

    .line 406
    goto :goto_5

    .line 407
    :cond_c
    if-ne p4, v0, :cond_d

    .line 409
    iget-object p2, p1, Lkg$a;->d:Lkg$b;

    .line 411
    iput p3, p2, Lkg$b;->i:I

    .line 413
    iput v8, p2, Lkg$b;->h:I

    .line 415
    :goto_5
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 417
    iput p5, p1, Lkg$b;->D:I

    .line 419
    :goto_6
    return-void

    .line 420
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 422
    new-instance p2, Ljava/lang/StringBuilder;

    .line 424
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    const-string p3, "Left to "

    .line 429
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p0, p4}, Lkg;->r(I)Ljava/lang/String;

    .line 435
    move-result-object p3

    .line 436
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 445
    move-result-object p2

    .line 446
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 449
    throw p1

    .line 450
    nop

    .line 451
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public i(II)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg;->l(I)Lkg$a;

    .line 4
    move-result-object p1

    .line 5
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 7
    iput p2, p1, Lkg$b;->c:I

    .line 9
    return-void
.end method

.method public final j(Landroid/view/View;Ljava/lang/String;)[I
    .locals 9

    .line 1
    const-string v0, ","

    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p2

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 11
    array-length v1, p2

    .line 12
    new-array v1, v1, [I

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    array-length v5, p2

    .line 18
    if-ge v3, v5, :cond_2

    .line 20
    aget-object v5, p2, v3

    .line 22
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 25
    move-result-object v5

    .line 26
    :try_start_0
    const-class v6, Lw80;

    .line 28
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 31
    move-result-object v6

    .line 32
    const/4 v7, 0x0

    .line 33
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 36
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    nop

    .line 39
    const/4 v6, 0x0

    .line 40
    :goto_1
    if-nez v6, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object v6

    .line 46
    const-string v7, "id"

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 51
    move-result-object v8

    .line 52
    invoke-virtual {v6, v5, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    move-result v6

    .line 56
    :cond_0
    if-nez v6, :cond_1

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    .line 61
    move-result v7

    .line 62
    if-eqz v7, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 67
    move-result-object v7

    .line 68
    instance-of v7, v7, Lig;

    .line 70
    if-eqz v7, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Lig;

    .line 78
    invoke-virtual {v7, v2, v5}, Lig;->f(ILjava/lang/Object;)Ljava/lang/Object;

    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_1

    .line 84
    instance-of v7, v5, Ljava/lang/Integer;

    .line 86
    if-eqz v7, :cond_1

    .line 88
    check-cast v5, Ljava/lang/Integer;

    .line 90
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 93
    move-result v6

    .line 94
    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 96
    aput v6, v1, v4

    .line 98
    add-int/lit8 v3, v3, 0x1

    .line 100
    move v4, v5

    .line 101
    goto :goto_0

    .line 102
    :cond_2
    array-length p1, p2

    .line 103
    if-eq v4, p1, :cond_3

    .line 105
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    .line 108
    move-result-object v1

    .line 109
    :cond_3
    return-object v1
.end method

.method public final k(Landroid/content/Context;Landroid/util/AttributeSet;)Lkg$a;
    .locals 2

    .line 1
    new-instance v0, Lkg$a;

    .line 3
    invoke-direct {v0}, Lkg$a;-><init>()V

    .line 6
    sget-object v1, Lh90;->r:[I

    .line 8
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 11
    move-result-object p2

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Lkg;->p(Landroid/content/Context;Lkg$a;Landroid/content/res/TypedArray;)V

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 18
    return-object v0
.end method

.method public final l(I)Lkg$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 15
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v1

    .line 19
    new-instance v2, Lkg$a;

    .line 21
    invoke-direct {v2}, Lkg$a;-><init>()V

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    :cond_0
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lkg$a;

    .line 39
    return-object p1
.end method

.method public m(Landroid/content/Context;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 8
    move-result-object p2

    .line 9
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 12
    move-result v0

    .line 13
    :goto_0
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_3

    .line 16
    if-eqz v0, :cond_2

    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v0, v2, :cond_0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p0, p1, v2}, Lkg;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Lkg$a;

    .line 33
    move-result-object v2

    .line 34
    const-string v3, "Guideline"

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    iget-object v0, v2, Lkg$a;->d:Lkg$b;

    .line 44
    iput-boolean v1, v0, Lkg$b;->a:Z

    .line 46
    :cond_1
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 48
    iget v1, v2, Lkg$a;->a:I

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 61
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 64
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 66
    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    goto :goto_2

    .line 71
    :catch_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 75
    :cond_3
    :goto_2
    return-void
.end method

.method public n(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 1
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 4
    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    :goto_0
    const/4 v3, 0x1

    .line 8
    if-eq v0, v3, :cond_b

    .line 10
    if-eqz v0, :cond_9

    .line 12
    const-string v4, "Constraint"

    .line 14
    const/4 v5, 0x3

    .line 15
    const/4 v6, 0x2

    .line 16
    if-eq v0, v6, :cond_2

    .line 18
    if-eq v0, v5, :cond_0

    .line 20
    goto/16 :goto_4

    .line 22
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 26
    const-string v3, "ConstraintSet"

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 34
    return-void

    .line 35
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_a

    .line 41
    iget-object v0, p0, Lkg;->c:Ljava/util/HashMap;

    .line 43
    iget v3, v2, Lkg$a;->a:I

    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-object v2, v1

    .line 53
    goto/16 :goto_4

    .line 55
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 62
    move-result v7

    .line 63
    sparse-switch v7, :sswitch_data_0

    .line 66
    goto :goto_1

    .line 67
    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_3

    .line 73
    const/4 v5, 0x0

    .line 74
    goto :goto_2

    .line 75
    :sswitch_1
    const-string v4, "CustomAttribute"

    .line 77
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 83
    const/4 v5, 0x7

    .line 84
    goto :goto_2

    .line 85
    :sswitch_2
    const-string v4, "Barrier"

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 93
    const/4 v5, 0x2

    .line 94
    goto :goto_2

    .line 95
    :sswitch_3
    const-string v4, "Guideline"

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_3

    .line 103
    const/4 v5, 0x1

    .line 104
    goto :goto_2

    .line 105
    :sswitch_4
    const-string v4, "Transform"

    .line 107
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_3

    .line 113
    const/4 v5, 0x4

    .line 114
    goto :goto_2

    .line 115
    :sswitch_5
    const-string v4, "PropertySet"

    .line 117
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_3

    .line 123
    goto :goto_2

    .line 124
    :sswitch_6
    const-string v4, "Motion"

    .line 126
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 129
    move-result v0

    .line 130
    if-eqz v0, :cond_3

    .line 132
    const/4 v5, 0x6

    .line 133
    goto :goto_2

    .line 134
    :sswitch_7
    const-string v4, "Layout"

    .line 136
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    if-eqz v0, :cond_3

    .line 142
    const/4 v5, 0x5

    .line 143
    goto :goto_2

    .line 144
    :cond_3
    :goto_1
    const/4 v5, -0x1

    .line 145
    :goto_2
    const-string v0, "XML parser error must be within a Constraint "

    .line 147
    packed-switch v5, :pswitch_data_0

    .line 150
    goto/16 :goto_4

    .line 152
    :pswitch_0
    if-eqz v2, :cond_4

    .line 154
    :try_start_2
    iget-object v0, v2, Lkg$a;->f:Ljava/util/HashMap;

    .line 156
    invoke-static {p1, p2, v0}, Lgg;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 159
    goto/16 :goto_4

    .line 161
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 174
    move-result p2

    .line 175
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object p2

    .line 182
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 185
    throw p1

    .line 186
    :pswitch_1
    if-eqz v2, :cond_5

    .line 188
    iget-object v0, v2, Lkg$a;->c:Lkg$c;

    .line 190
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 193
    move-result-object v3

    .line 194
    invoke-virtual {v0, p1, v3}, Lkg$c;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 197
    goto/16 :goto_4

    .line 199
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    .line 203
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 212
    move-result p2

    .line 213
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    move-result-object p2

    .line 220
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 223
    throw p1

    .line 224
    :pswitch_2
    if-eqz v2, :cond_6

    .line 226
    iget-object v0, v2, Lkg$a;->d:Lkg$b;

    .line 228
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 231
    move-result-object v3

    .line 232
    invoke-virtual {v0, p1, v3}, Lkg$b;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 235
    goto/16 :goto_4

    .line 237
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 250
    move-result p2

    .line 251
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    move-result-object p2

    .line 258
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 261
    throw p1

    .line 262
    :pswitch_3
    if-eqz v2, :cond_7

    .line 264
    iget-object v0, v2, Lkg$a;->e:Lkg$e;

    .line 266
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 269
    move-result-object v3

    .line 270
    invoke-virtual {v0, p1, v3}, Lkg$e;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 273
    goto :goto_4

    .line 274
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    .line 278
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 287
    move-result p2

    .line 288
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    move-result-object p2

    .line 295
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 298
    throw p1

    .line 299
    :pswitch_4
    if-eqz v2, :cond_8

    .line 301
    iget-object v0, v2, Lkg$a;->b:Lkg$d;

    .line 303
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v0, p1, v3}, Lkg$d;->b(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 310
    goto :goto_4

    .line 311
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 324
    move-result p2

    .line 325
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 331
    move-result-object p2

    .line 332
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 335
    throw p1

    .line 336
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 339
    move-result-object v0

    .line 340
    invoke-virtual {p0, p1, v0}, Lkg;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Lkg$a;

    .line 343
    move-result-object v0

    .line 344
    iget-object v2, v0, Lkg$a;->d:Lkg$b;

    .line 346
    iput v3, v2, Lkg$b;->d0:I

    .line 348
    goto :goto_3

    .line 349
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 352
    move-result-object v0

    .line 353
    invoke-virtual {p0, p1, v0}, Lkg;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Lkg$a;

    .line 356
    move-result-object v0

    .line 357
    iget-object v2, v0, Lkg$a;->d:Lkg$b;

    .line 359
    iput-boolean v3, v2, Lkg$b;->a:Z

    .line 361
    iput-boolean v3, v2, Lkg$b;->b:Z

    .line 363
    goto :goto_3

    .line 364
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 367
    move-result-object v0

    .line 368
    invoke-virtual {p0, p1, v0}, Lkg;->k(Landroid/content/Context;Landroid/util/AttributeSet;)Lkg$a;

    .line 371
    move-result-object v0

    .line 372
    :goto_3
    move-object v2, v0

    .line 373
    goto :goto_4

    .line 374
    :cond_9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 377
    :cond_a
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 380
    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 381
    goto/16 :goto_0

    .line 383
    :catch_0
    move-exception p1

    .line 384
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 387
    goto :goto_5

    .line 388
    :catch_1
    move-exception p1

    .line 389
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 392
    :cond_b
    :goto_5
    return-void

    .line 393
    :sswitch_data_0
    .sparse-switch
        -0x78c018b6 -> :sswitch_7
        -0x7648542a -> :sswitch_6
        -0x4bab3dd3 -> :sswitch_5
        -0x49cf74b4 -> :sswitch_4
        -0x446d330 -> :sswitch_3
        0x4f5d3b97 -> :sswitch_2
        0x6acd460b -> :sswitch_1
        0x6b78f1fd -> :sswitch_0
    .end sparse-switch

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final p(Landroid/content/Context;Lkg$a;Landroid/content/res/TypedArray;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_2

    .line 9
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 12
    move-result v2

    .line 13
    sget v3, Lh90;->t:I

    .line 15
    const/4 v4, 0x1

    .line 16
    if-eq v2, v3, :cond_0

    .line 18
    sget v3, Lh90;->L:I

    .line 20
    if-eq v3, v2, :cond_0

    .line 22
    sget v3, Lh90;->M:I

    .line 24
    if-eq v3, v2, :cond_0

    .line 26
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 28
    iput-boolean v4, v3, Lkg$c;->a:Z

    .line 30
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 32
    iput-boolean v4, v3, Lkg$b;->b:Z

    .line 34
    iget-object v3, p2, Lkg$a;->b:Lkg$d;

    .line 36
    iput-boolean v4, v3, Lkg$d;->a:Z

    .line 38
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 40
    iput-boolean v4, v3, Lkg$e;->a:Z

    .line 42
    :cond_0
    sget-object v3, Lkg;->e:Landroid/util/SparseIntArray;

    .line 44
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 47
    move-result v3

    .line 48
    const-string v5, "   "

    .line 50
    const/high16 v6, 0x3f800000    # 1.0f

    .line 52
    const-string v7, "ConstraintSet"

    .line 54
    packed-switch v3, :pswitch_data_0

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v4, "Unknown attribute 0x"

    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    sget-object v4, Lkg;->e:Landroid/util/SparseIntArray;

    .line 79
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 82
    move-result v2

    .line 83
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v2

    .line 90
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v4, "unused attribute 0x"

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    sget-object v4, Lkg;->e:Landroid/util/SparseIntArray;

    .line 117
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    .line 120
    move-result v2

    .line 121
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    move-result-object v2

    .line 128
    invoke-static {v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    goto/16 :goto_1

    .line 133
    :pswitch_1
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 135
    iget-boolean v4, v3, Lkg$b;->i0:Z

    .line 137
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 140
    move-result v2

    .line 141
    iput-boolean v2, v3, Lkg$b;->i0:Z

    .line 143
    goto/16 :goto_1

    .line 145
    :pswitch_2
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 147
    iget-boolean v4, v3, Lkg$b;->h0:Z

    .line 149
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 152
    move-result v2

    .line 153
    iput-boolean v2, v3, Lkg$b;->h0:Z

    .line 155
    goto/16 :goto_1

    .line 157
    :pswitch_3
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 159
    iget v4, v3, Lkg$c;->f:F

    .line 161
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 164
    move-result v2

    .line 165
    iput v2, v3, Lkg$c;->f:F

    .line 167
    goto/16 :goto_1

    .line 169
    :pswitch_4
    iget-object v3, p2, Lkg$a;->b:Lkg$d;

    .line 171
    iget v4, v3, Lkg$d;->c:I

    .line 173
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 176
    move-result v2

    .line 177
    iput v2, v3, Lkg$d;->c:I

    .line 179
    goto/16 :goto_1

    .line 181
    :pswitch_5
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 183
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 186
    move-result-object v2

    .line 187
    iput-object v2, v3, Lkg$b;->g0:Ljava/lang/String;

    .line 189
    goto/16 :goto_1

    .line 191
    :pswitch_6
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 193
    iget v4, v3, Lkg$c;->d:I

    .line 195
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 198
    move-result v2

    .line 199
    iput v2, v3, Lkg$c;->d:I

    .line 201
    goto/16 :goto_1

    .line 203
    :pswitch_7
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 205
    iget-boolean v4, v3, Lkg$b;->j0:Z

    .line 207
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 210
    move-result v2

    .line 211
    iput-boolean v2, v3, Lkg$b;->j0:Z

    .line 213
    goto/16 :goto_1

    .line 215
    :pswitch_8
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 217
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 220
    move-result-object v2

    .line 221
    iput-object v2, v3, Lkg$b;->f0:Ljava/lang/String;

    .line 223
    goto/16 :goto_1

    .line 225
    :pswitch_9
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 227
    iget v4, v3, Lkg$b;->c0:I

    .line 229
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 232
    move-result v2

    .line 233
    iput v2, v3, Lkg$b;->c0:I

    .line 235
    goto/16 :goto_1

    .line 237
    :pswitch_a
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 239
    iget v4, v3, Lkg$b;->b0:I

    .line 241
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 244
    move-result v2

    .line 245
    iput v2, v3, Lkg$b;->b0:I

    .line 247
    goto/16 :goto_1

    .line 249
    :pswitch_b
    const-string v2, "CURRENTLY UNSUPPORTED"

    .line 251
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    goto/16 :goto_1

    .line 256
    :pswitch_c
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 258
    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 261
    move-result v2

    .line 262
    iput v2, v3, Lkg$b;->a0:F

    .line 264
    goto/16 :goto_1

    .line 266
    :pswitch_d
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 268
    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 271
    move-result v2

    .line 272
    iput v2, v3, Lkg$b;->Z:F

    .line 274
    goto/16 :goto_1

    .line 276
    :pswitch_e
    iget-object v3, p2, Lkg$a;->b:Lkg$d;

    .line 278
    iget v4, v3, Lkg$d;->e:F

    .line 280
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 283
    move-result v2

    .line 284
    iput v2, v3, Lkg$d;->e:F

    .line 286
    goto/16 :goto_1

    .line 288
    :pswitch_f
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 290
    iget v4, v3, Lkg$c;->g:F

    .line 292
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 295
    move-result v2

    .line 296
    iput v2, v3, Lkg$c;->g:F

    .line 298
    goto/16 :goto_1

    .line 300
    :pswitch_10
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 302
    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 305
    move-result v2

    .line 306
    iput v2, v3, Lkg$c;->e:I

    .line 308
    goto/16 :goto_1

    .line 310
    :pswitch_11
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 313
    move-result-object v3

    .line 314
    iget v3, v3, Landroid/util/TypedValue;->type:I

    .line 316
    const/4 v4, 0x3

    .line 317
    if-ne v3, v4, :cond_1

    .line 319
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 321
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 324
    move-result-object v2

    .line 325
    iput-object v2, v3, Lkg$c;->c:Ljava/lang/String;

    .line 327
    goto/16 :goto_1

    .line 329
    :cond_1
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 331
    sget-object v4, Luk;->c:[Ljava/lang/String;

    .line 333
    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 336
    move-result v2

    .line 337
    aget-object v2, v4, v2

    .line 339
    iput-object v2, v3, Lkg$c;->c:Ljava/lang/String;

    .line 341
    goto/16 :goto_1

    .line 343
    :pswitch_12
    iget-object v3, p2, Lkg$a;->c:Lkg$c;

    .line 345
    iget v4, v3, Lkg$c;->b:I

    .line 347
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 350
    move-result v2

    .line 351
    iput v2, v3, Lkg$c;->b:I

    .line 353
    goto/16 :goto_1

    .line 355
    :pswitch_13
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 357
    iget v4, v3, Lkg$b;->z:F

    .line 359
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 362
    move-result v2

    .line 363
    iput v2, v3, Lkg$b;->z:F

    .line 365
    goto/16 :goto_1

    .line 367
    :pswitch_14
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 369
    iget v4, v3, Lkg$b;->y:I

    .line 371
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 374
    move-result v2

    .line 375
    iput v2, v3, Lkg$b;->y:I

    .line 377
    goto/16 :goto_1

    .line 379
    :pswitch_15
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 381
    iget v4, v3, Lkg$b;->x:I

    .line 383
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 386
    move-result v2

    .line 387
    iput v2, v3, Lkg$b;->x:I

    .line 389
    goto/16 :goto_1

    .line 391
    :pswitch_16
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 393
    iget v4, v3, Lkg$e;->b:F

    .line 395
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 398
    move-result v2

    .line 399
    iput v2, v3, Lkg$e;->b:F

    .line 401
    goto/16 :goto_1

    .line 403
    :pswitch_17
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 405
    iget v4, v3, Lkg$b;->Y:I

    .line 407
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 410
    move-result v2

    .line 411
    iput v2, v3, Lkg$b;->Y:I

    .line 413
    goto/16 :goto_1

    .line 415
    :pswitch_18
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 417
    iget v4, v3, Lkg$b;->X:I

    .line 419
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 422
    move-result v2

    .line 423
    iput v2, v3, Lkg$b;->X:I

    .line 425
    goto/16 :goto_1

    .line 427
    :pswitch_19
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 429
    iget v4, v3, Lkg$b;->W:I

    .line 431
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 434
    move-result v2

    .line 435
    iput v2, v3, Lkg$b;->W:I

    .line 437
    goto/16 :goto_1

    .line 439
    :pswitch_1a
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 441
    iget v4, v3, Lkg$b;->V:I

    .line 443
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 446
    move-result v2

    .line 447
    iput v2, v3, Lkg$b;->V:I

    .line 449
    goto/16 :goto_1

    .line 451
    :pswitch_1b
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 453
    iget v4, v3, Lkg$b;->U:I

    .line 455
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 458
    move-result v2

    .line 459
    iput v2, v3, Lkg$b;->U:I

    .line 461
    goto/16 :goto_1

    .line 463
    :pswitch_1c
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 465
    iget v4, v3, Lkg$b;->T:I

    .line 467
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 470
    move-result v2

    .line 471
    iput v2, v3, Lkg$b;->T:I

    .line 473
    goto/16 :goto_1

    .line 475
    :pswitch_1d
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 477
    iget v4, v3, Lkg$e;->k:F

    .line 479
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 482
    move-result v2

    .line 483
    iput v2, v3, Lkg$e;->k:F

    .line 485
    goto/16 :goto_1

    .line 487
    :pswitch_1e
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 489
    iget v4, v3, Lkg$e;->j:F

    .line 491
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 494
    move-result v2

    .line 495
    iput v2, v3, Lkg$e;->j:F

    .line 497
    goto/16 :goto_1

    .line 499
    :pswitch_1f
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 501
    iget v4, v3, Lkg$e;->i:F

    .line 503
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 506
    move-result v2

    .line 507
    iput v2, v3, Lkg$e;->i:F

    .line 509
    goto/16 :goto_1

    .line 511
    :pswitch_20
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 513
    iget v4, v3, Lkg$e;->h:F

    .line 515
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 518
    move-result v2

    .line 519
    iput v2, v3, Lkg$e;->h:F

    .line 521
    goto/16 :goto_1

    .line 523
    :pswitch_21
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 525
    iget v4, v3, Lkg$e;->g:F

    .line 527
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 530
    move-result v2

    .line 531
    iput v2, v3, Lkg$e;->g:F

    .line 533
    goto/16 :goto_1

    .line 535
    :pswitch_22
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 537
    iget v4, v3, Lkg$e;->f:F

    .line 539
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 542
    move-result v2

    .line 543
    iput v2, v3, Lkg$e;->f:F

    .line 545
    goto/16 :goto_1

    .line 547
    :pswitch_23
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 549
    iget v4, v3, Lkg$e;->e:F

    .line 551
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 554
    move-result v2

    .line 555
    iput v2, v3, Lkg$e;->e:F

    .line 557
    goto/16 :goto_1

    .line 559
    :pswitch_24
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 561
    iget v4, v3, Lkg$e;->d:F

    .line 563
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 566
    move-result v2

    .line 567
    iput v2, v3, Lkg$e;->d:F

    .line 569
    goto/16 :goto_1

    .line 571
    :pswitch_25
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 573
    iget v4, v3, Lkg$e;->c:F

    .line 575
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 578
    move-result v2

    .line 579
    iput v2, v3, Lkg$e;->c:F

    .line 581
    goto/16 :goto_1

    .line 583
    :pswitch_26
    iget-object v3, p2, Lkg$a;->e:Lkg$e;

    .line 585
    iput-boolean v4, v3, Lkg$e;->l:Z

    .line 587
    iget v4, v3, Lkg$e;->m:F

    .line 589
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 592
    move-result v2

    .line 593
    iput v2, v3, Lkg$e;->m:F

    .line 595
    goto/16 :goto_1

    .line 597
    :pswitch_27
    iget-object v3, p2, Lkg$a;->b:Lkg$d;

    .line 599
    iget v4, v3, Lkg$d;->d:F

    .line 601
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 604
    move-result v2

    .line 605
    iput v2, v3, Lkg$d;->d:F

    .line 607
    goto/16 :goto_1

    .line 609
    :pswitch_28
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 611
    iget v4, v3, Lkg$b;->S:I

    .line 613
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 616
    move-result v2

    .line 617
    iput v2, v3, Lkg$b;->S:I

    .line 619
    goto/16 :goto_1

    .line 621
    :pswitch_29
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 623
    iget v4, v3, Lkg$b;->R:I

    .line 625
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 628
    move-result v2

    .line 629
    iput v2, v3, Lkg$b;->R:I

    .line 631
    goto/16 :goto_1

    .line 633
    :pswitch_2a
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 635
    iget v4, v3, Lkg$b;->P:F

    .line 637
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 640
    move-result v2

    .line 641
    iput v2, v3, Lkg$b;->P:F

    .line 643
    goto/16 :goto_1

    .line 645
    :pswitch_2b
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 647
    iget v4, v3, Lkg$b;->Q:F

    .line 649
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 652
    move-result v2

    .line 653
    iput v2, v3, Lkg$b;->Q:F

    .line 655
    goto/16 :goto_1

    .line 657
    :pswitch_2c
    iget v3, p2, Lkg$a;->a:I

    .line 659
    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 662
    move-result v2

    .line 663
    iput v2, p2, Lkg$a;->a:I

    .line 665
    goto/16 :goto_1

    .line 667
    :pswitch_2d
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 669
    iget v4, v3, Lkg$b;->v:F

    .line 671
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 674
    move-result v2

    .line 675
    iput v2, v3, Lkg$b;->v:F

    .line 677
    goto/16 :goto_1

    .line 679
    :pswitch_2e
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 681
    iget v4, v3, Lkg$b;->l:I

    .line 683
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 686
    move-result v2

    .line 687
    iput v2, v3, Lkg$b;->l:I

    .line 689
    goto/16 :goto_1

    .line 691
    :pswitch_2f
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 693
    iget v4, v3, Lkg$b;->m:I

    .line 695
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 698
    move-result v2

    .line 699
    iput v2, v3, Lkg$b;->m:I

    .line 701
    goto/16 :goto_1

    .line 703
    :pswitch_30
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 705
    iget v4, v3, Lkg$b;->F:I

    .line 707
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 710
    move-result v2

    .line 711
    iput v2, v3, Lkg$b;->F:I

    .line 713
    goto/16 :goto_1

    .line 715
    :pswitch_31
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 717
    iget v4, v3, Lkg$b;->r:I

    .line 719
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 722
    move-result v2

    .line 723
    iput v2, v3, Lkg$b;->r:I

    .line 725
    goto/16 :goto_1

    .line 727
    :pswitch_32
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 729
    iget v4, v3, Lkg$b;->q:I

    .line 731
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 734
    move-result v2

    .line 735
    iput v2, v3, Lkg$b;->q:I

    .line 737
    goto/16 :goto_1

    .line 739
    :pswitch_33
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 741
    iget v4, v3, Lkg$b;->I:I

    .line 743
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 746
    move-result v2

    .line 747
    iput v2, v3, Lkg$b;->I:I

    .line 749
    goto/16 :goto_1

    .line 751
    :pswitch_34
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 753
    iget v4, v3, Lkg$b;->k:I

    .line 755
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 758
    move-result v2

    .line 759
    iput v2, v3, Lkg$b;->k:I

    .line 761
    goto/16 :goto_1

    .line 763
    :pswitch_35
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 765
    iget v4, v3, Lkg$b;->j:I

    .line 767
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 770
    move-result v2

    .line 771
    iput v2, v3, Lkg$b;->j:I

    .line 773
    goto/16 :goto_1

    .line 775
    :pswitch_36
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 777
    iget v4, v3, Lkg$b;->E:I

    .line 779
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 782
    move-result v2

    .line 783
    iput v2, v3, Lkg$b;->E:I

    .line 785
    goto/16 :goto_1

    .line 787
    :pswitch_37
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 789
    iget v4, v3, Lkg$b;->C:I

    .line 791
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 794
    move-result v2

    .line 795
    iput v2, v3, Lkg$b;->C:I

    .line 797
    goto/16 :goto_1

    .line 799
    :pswitch_38
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 801
    iget v4, v3, Lkg$b;->i:I

    .line 803
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 806
    move-result v2

    .line 807
    iput v2, v3, Lkg$b;->i:I

    .line 809
    goto/16 :goto_1

    .line 811
    :pswitch_39
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 813
    iget v4, v3, Lkg$b;->h:I

    .line 815
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 818
    move-result v2

    .line 819
    iput v2, v3, Lkg$b;->h:I

    .line 821
    goto/16 :goto_1

    .line 823
    :pswitch_3a
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 825
    iget v4, v3, Lkg$b;->D:I

    .line 827
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 830
    move-result v2

    .line 831
    iput v2, v3, Lkg$b;->D:I

    .line 833
    goto/16 :goto_1

    .line 835
    :pswitch_3b
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 837
    iget v4, v3, Lkg$b;->c:I

    .line 839
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 842
    move-result v2

    .line 843
    iput v2, v3, Lkg$b;->c:I

    .line 845
    goto/16 :goto_1

    .line 847
    :pswitch_3c
    iget-object v3, p2, Lkg$a;->b:Lkg$d;

    .line 849
    iget v4, v3, Lkg$d;->b:I

    .line 851
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 854
    move-result v2

    .line 855
    iput v2, v3, Lkg$d;->b:I

    .line 857
    iget-object v2, p2, Lkg$a;->b:Lkg$d;

    .line 859
    sget-object v3, Lkg;->d:[I

    .line 861
    iget v4, v2, Lkg$d;->b:I

    .line 863
    aget v3, v3, v4

    .line 865
    iput v3, v2, Lkg$d;->b:I

    .line 867
    goto/16 :goto_1

    .line 869
    :pswitch_3d
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 871
    iget v4, v3, Lkg$b;->d:I

    .line 873
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    .line 876
    move-result v2

    .line 877
    iput v2, v3, Lkg$b;->d:I

    .line 879
    goto/16 :goto_1

    .line 881
    :pswitch_3e
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 883
    iget v4, v3, Lkg$b;->u:F

    .line 885
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 888
    move-result v2

    .line 889
    iput v2, v3, Lkg$b;->u:F

    .line 891
    goto/16 :goto_1

    .line 893
    :pswitch_3f
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 895
    iget v4, v3, Lkg$b;->g:F

    .line 897
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 900
    move-result v2

    .line 901
    iput v2, v3, Lkg$b;->g:F

    .line 903
    goto/16 :goto_1

    .line 905
    :pswitch_40
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 907
    iget v4, v3, Lkg$b;->f:I

    .line 909
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 912
    move-result v2

    .line 913
    iput v2, v3, Lkg$b;->f:I

    .line 915
    goto/16 :goto_1

    .line 917
    :pswitch_41
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 919
    iget v4, v3, Lkg$b;->e:I

    .line 921
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 924
    move-result v2

    .line 925
    iput v2, v3, Lkg$b;->e:I

    .line 927
    goto/16 :goto_1

    .line 929
    :pswitch_42
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 931
    iget v4, v3, Lkg$b;->K:I

    .line 933
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 936
    move-result v2

    .line 937
    iput v2, v3, Lkg$b;->K:I

    .line 939
    goto/16 :goto_1

    .line 941
    :pswitch_43
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 943
    iget v4, v3, Lkg$b;->O:I

    .line 945
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 948
    move-result v2

    .line 949
    iput v2, v3, Lkg$b;->O:I

    .line 951
    goto/16 :goto_1

    .line 953
    :pswitch_44
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 955
    iget v4, v3, Lkg$b;->L:I

    .line 957
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 960
    move-result v2

    .line 961
    iput v2, v3, Lkg$b;->L:I

    .line 963
    goto/16 :goto_1

    .line 965
    :pswitch_45
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 967
    iget v4, v3, Lkg$b;->J:I

    .line 969
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 972
    move-result v2

    .line 973
    iput v2, v3, Lkg$b;->J:I

    .line 975
    goto/16 :goto_1

    .line 977
    :pswitch_46
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 979
    iget v4, v3, Lkg$b;->N:I

    .line 981
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 984
    move-result v2

    .line 985
    iput v2, v3, Lkg$b;->N:I

    .line 987
    goto/16 :goto_1

    .line 989
    :pswitch_47
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 991
    iget v4, v3, Lkg$b;->M:I

    .line 993
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 996
    move-result v2

    .line 997
    iput v2, v3, Lkg$b;->M:I

    .line 999
    goto/16 :goto_1

    .line 1001
    :pswitch_48
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1003
    iget v4, v3, Lkg$b;->s:I

    .line 1005
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 1008
    move-result v2

    .line 1009
    iput v2, v3, Lkg$b;->s:I

    .line 1011
    goto :goto_1

    .line 1012
    :pswitch_49
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1014
    iget v4, v3, Lkg$b;->t:I

    .line 1016
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 1019
    move-result v2

    .line 1020
    iput v2, v3, Lkg$b;->t:I

    .line 1022
    goto :goto_1

    .line 1023
    :pswitch_4a
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1025
    iget v4, v3, Lkg$b;->H:I

    .line 1027
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1030
    move-result v2

    .line 1031
    iput v2, v3, Lkg$b;->H:I

    .line 1033
    goto :goto_1

    .line 1034
    :pswitch_4b
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1036
    iget v4, v3, Lkg$b;->B:I

    .line 1038
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1041
    move-result v2

    .line 1042
    iput v2, v3, Lkg$b;->B:I

    .line 1044
    goto :goto_1

    .line 1045
    :pswitch_4c
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1047
    iget v4, v3, Lkg$b;->A:I

    .line 1049
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 1052
    move-result v2

    .line 1053
    iput v2, v3, Lkg$b;->A:I

    .line 1055
    goto :goto_1

    .line 1056
    :pswitch_4d
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1058
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 1061
    move-result-object v2

    .line 1062
    iput-object v2, v3, Lkg$b;->w:Ljava/lang/String;

    .line 1064
    goto :goto_1

    .line 1065
    :pswitch_4e
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1067
    iget v4, v3, Lkg$b;->n:I

    .line 1069
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 1072
    move-result v2

    .line 1073
    iput v2, v3, Lkg$b;->n:I

    .line 1075
    goto :goto_1

    .line 1076
    :pswitch_4f
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1078
    iget v4, v3, Lkg$b;->o:I

    .line 1080
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 1083
    move-result v2

    .line 1084
    iput v2, v3, Lkg$b;->o:I

    .line 1086
    goto :goto_1

    .line 1087
    :pswitch_50
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1089
    iget v4, v3, Lkg$b;->G:I

    .line 1091
    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1094
    move-result v2

    .line 1095
    iput v2, v3, Lkg$b;->G:I

    .line 1097
    goto :goto_1

    .line 1098
    :pswitch_51
    iget-object v3, p2, Lkg$a;->d:Lkg$b;

    .line 1100
    iget v4, v3, Lkg$b;->p:I

    .line 1102
    invoke-static {p3, v2, v4}, Lkg;->o(Landroid/content/res/TypedArray;II)I

    .line 1105
    move-result v2

    .line 1106
    iput v2, v3, Lkg$b;->p:I

    .line 1108
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 1110
    goto/16 :goto_0

    .line 1112
    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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

.method public q(III)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkg;->l(I)Lkg$a;

    .line 4
    move-result-object p1

    .line 5
    packed-switch p2, :pswitch_data_0

    .line 8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p2, "unknown constraint"

    .line 12
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    :pswitch_0
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 18
    iput p3, p1, Lkg$b;->H:I

    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 23
    iput p3, p1, Lkg$b;->I:I

    .line 25
    goto :goto_0

    .line 26
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    const-string p2, "baseline does not support margins"

    .line 30
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p1

    .line 34
    :pswitch_3
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 36
    iput p3, p1, Lkg$b;->G:I

    .line 38
    goto :goto_0

    .line 39
    :pswitch_4
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 41
    iput p3, p1, Lkg$b;->F:I

    .line 43
    goto :goto_0

    .line 44
    :pswitch_5
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 46
    iput p3, p1, Lkg$b;->E:I

    .line 48
    goto :goto_0

    .line 49
    :pswitch_6
    iget-object p1, p1, Lkg$a;->d:Lkg$b;

    .line 51
    iput p3, p1, Lkg$b;->D:I

    .line 53
    :goto_0
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r(I)Ljava/lang/String;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    const-string p1, "undefined"

    return-object p1

    :pswitch_0
    const-string p1, "end"

    return-object p1

    :pswitch_1
    const-string p1, "start"

    return-object p1

    :pswitch_2
    const-string p1, "baseline"

    return-object p1

    :pswitch_3
    const-string p1, "bottom"

    return-object p1

    :pswitch_4
    const-string p1, "top"

    return-object p1

    :pswitch_5
    const-string p1, "right"

    return-object p1

    :pswitch_6
    const-string p1, "left"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

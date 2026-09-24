.class public Lab;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public final d:I

.field public final e:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    iput p1, p0, Lab;->d:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lab;->e:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    iput p1, p0, Lab;->d:I

    .line 6
    iput p2, p0, Lab;->e:I

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 10

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;-><init>()V

    .line 6
    iget v1, p0, Lab;->d:I

    .line 8
    const-string v2, "AutoStatusDisAction"

    .line 10
    const/4 v3, 0x7

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x1

    .line 13
    if-eqz v1, :cond_10

    .line 15
    if-eq v1, v5, :cond_f

    .line 17
    const/4 v6, 0x2

    .line 18
    if-eq v1, v6, :cond_e

    .line 20
    const/4 v7, 0x3

    .line 21
    if-eq v1, v7, :cond_d

    .line 23
    const/4 v8, 0x4

    .line 24
    if-eq v1, v8, :cond_c

    .line 26
    const/4 v8, 0x5

    .line 27
    if-eq v1, v8, :cond_b

    .line 29
    const/4 v9, 0x6

    .line 30
    if-eq v1, v9, :cond_a

    .line 32
    if-eq v1, v3, :cond_9

    .line 34
    const/16 v3, 0x3d

    .line 36
    if-eq v1, v3, :cond_8

    .line 38
    const/16 v3, 0x3e

    .line 40
    if-eq v1, v3, :cond_7

    .line 42
    const/16 v3, 0xca

    .line 44
    if-eq v1, v3, :cond_6

    .line 46
    const/16 v3, 0xcb

    .line 48
    if-eq v1, v3, :cond_5

    .line 50
    const/16 v3, 0xbb9

    .line 52
    if-eq v1, v3, :cond_4

    .line 54
    const/16 v3, 0xbba

    .line 56
    if-eq v1, v3, :cond_3

    .line 58
    const/16 v3, 0xbbd

    .line 60
    if-eq v1, v3, :cond_2

    .line 62
    const/16 v3, 0xbbe

    .line 64
    if-eq v1, v3, :cond_1

    .line 66
    sparse-switch v1, :sswitch_data_0

    .line 69
    packed-switch v1, :pswitch_data_0

    .line 72
    packed-switch v1, :pswitch_data_1

    .line 75
    packed-switch v1, :pswitch_data_2

    .line 78
    packed-switch v1, :pswitch_data_3

    .line 81
    packed-switch v1, :pswitch_data_4

    .line 84
    invoke-static {}, Lib;->h()Z

    .line 87
    move-result v3

    .line 88
    const/16 v6, 0x7d0

    .line 90
    if-eqz v3, :cond_0

    .line 92
    if-ge v1, v6, :cond_11

    .line 94
    add-int/lit16 v1, v1, 0x3e8

    .line 96
    goto/16 :goto_0

    .line 98
    :cond_0
    if-ge v1, v6, :cond_11

    .line 100
    new-array v0, v5, [Ljava/lang/Object;

    .line 102
    iget v1, p0, Lab;->d:I

    .line 104
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    move-result-object v1

    .line 108
    aput-object v1, v0, v4

    .line 110
    const-string v1, "autoStatus:{?} not match ProtocolAutoStatusType"

    .line 112
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    const/4 v0, 0x0

    .line 116
    return-object v0

    .line 117
    :pswitch_0
    const/16 v1, 0x5e3

    .line 119
    goto/16 :goto_0

    .line 121
    :pswitch_1
    const/16 v1, 0x5e2

    .line 123
    goto/16 :goto_0

    .line 125
    :pswitch_2
    const/16 v1, 0x5e1

    .line 127
    goto/16 :goto_0

    .line 129
    :pswitch_3
    const/16 v1, 0x5e0

    .line 131
    goto/16 :goto_0

    .line 133
    :pswitch_4
    const/16 v1, 0x5df

    .line 135
    goto/16 :goto_0

    .line 137
    :pswitch_5
    const/16 v1, 0x5de

    .line 139
    goto/16 :goto_0

    .line 141
    :pswitch_6
    const/16 v1, 0x5dd

    .line 143
    goto/16 :goto_0

    .line 145
    :pswitch_7
    const/4 v1, 0x6

    .line 146
    goto/16 :goto_0

    .line 148
    :pswitch_8
    const/4 v1, 0x5

    .line 149
    goto/16 :goto_0

    .line 151
    :pswitch_9
    const/16 v1, 0x6d

    .line 153
    goto/16 :goto_0

    .line 155
    :pswitch_a
    const/16 v1, 0x6c

    .line 157
    goto/16 :goto_0

    .line 159
    :pswitch_b
    const/16 v1, 0x6b

    .line 161
    goto/16 :goto_0

    .line 163
    :pswitch_c
    const/16 v1, 0x68

    .line 165
    goto/16 :goto_0

    .line 167
    :pswitch_d
    const/4 v1, 0x0

    .line 168
    goto/16 :goto_0

    .line 170
    :pswitch_e
    const/16 v1, 0x66

    .line 172
    goto/16 :goto_0

    .line 174
    :pswitch_f
    const/16 v1, 0x65

    .line 176
    goto/16 :goto_0

    .line 178
    :pswitch_10
    const/16 v1, 0x2a

    .line 180
    goto/16 :goto_0

    .line 182
    :pswitch_11
    const/16 v1, 0x29

    .line 184
    goto/16 :goto_0

    .line 186
    :pswitch_12
    const/16 v1, 0x28

    .line 188
    goto/16 :goto_0

    .line 190
    :pswitch_13
    const/16 v1, 0xc

    .line 192
    goto/16 :goto_0

    .line 194
    :pswitch_14
    const/16 v1, 0x12

    .line 196
    goto/16 :goto_0

    .line 198
    :pswitch_15
    const/16 v1, 0x20

    .line 200
    goto/16 :goto_0

    .line 202
    :pswitch_16
    const/16 v1, 0x1e

    .line 204
    goto/16 :goto_0

    .line 206
    :sswitch_0
    const/16 v1, 0xbd9

    .line 208
    goto/16 :goto_0

    .line 210
    :sswitch_1
    const/16 v1, 0xbd5

    .line 212
    goto/16 :goto_0

    .line 214
    :sswitch_2
    const/16 v1, 0x74

    .line 216
    goto/16 :goto_0

    .line 218
    :sswitch_3
    const/16 v1, 0xc8

    .line 220
    goto/16 :goto_0

    .line 222
    :sswitch_4
    const/16 v1, 0x1d

    .line 224
    goto/16 :goto_0

    .line 226
    :sswitch_5
    const/16 v1, 0x1c

    .line 228
    goto/16 :goto_0

    .line 230
    :sswitch_6
    const/16 v1, 0x16

    .line 232
    goto/16 :goto_0

    .line 234
    :sswitch_7
    const/16 v1, 0x15

    .line 236
    goto/16 :goto_0

    .line 238
    :sswitch_8
    const/16 v1, 0x18

    .line 240
    goto/16 :goto_0

    .line 242
    :sswitch_9
    const/16 v1, 0x17

    .line 244
    goto/16 :goto_0

    .line 246
    :sswitch_a
    const/16 v1, 0x19

    .line 248
    goto/16 :goto_0

    .line 250
    :sswitch_b
    const/16 v1, 0x1a

    .line 252
    goto :goto_0

    .line 253
    :sswitch_c
    const/16 v1, 0x1b

    .line 255
    goto :goto_0

    .line 256
    :sswitch_d
    const/16 v1, 0x13

    .line 258
    goto :goto_0

    .line 259
    :sswitch_e
    const/16 v1, 0x14

    .line 261
    goto :goto_0

    .line 262
    :sswitch_f
    const/16 v1, 0x3f6

    .line 264
    goto :goto_0

    .line 265
    :sswitch_10
    const/16 v1, 0x3f5

    .line 267
    goto :goto_0

    .line 268
    :sswitch_11
    const/16 v1, 0x23

    .line 270
    goto :goto_0

    .line 271
    :sswitch_12
    const/16 v1, 0x22

    .line 273
    goto :goto_0

    .line 274
    :sswitch_13
    const/16 v1, 0x21

    .line 276
    goto :goto_0

    .line 277
    :sswitch_14
    const/16 v1, 0x11

    .line 279
    goto :goto_0

    .line 280
    :sswitch_15
    const/16 v1, 0x10

    .line 282
    goto :goto_0

    .line 283
    :cond_1
    const/16 v1, 0xbbe

    .line 285
    goto :goto_0

    .line 286
    :cond_2
    const/16 v1, 0xbbd

    .line 288
    goto :goto_0

    .line 289
    :cond_3
    const/16 v1, 0xbba

    .line 291
    goto :goto_0

    .line 292
    :cond_4
    const/16 v1, 0xbb9

    .line 294
    goto :goto_0

    .line 295
    :cond_5
    const/16 v1, 0x2c

    .line 297
    goto :goto_0

    .line 298
    :cond_6
    const/16 v1, 0x2b

    .line 300
    goto :goto_0

    .line 301
    :cond_7
    const/4 v1, 0x3

    .line 302
    goto :goto_0

    .line 303
    :cond_8
    const/4 v1, 0x2

    .line 304
    goto :goto_0

    .line 305
    :cond_9
    :sswitch_16
    const/16 v1, 0xf

    .line 307
    goto :goto_0

    .line 308
    :cond_a
    const/16 v1, 0xe

    .line 310
    goto :goto_0

    .line 311
    :cond_b
    const/16 v1, 0xd

    .line 313
    goto :goto_0

    .line 314
    :cond_c
    const/16 v1, 0xb

    .line 316
    goto :goto_0

    .line 317
    :cond_d
    const/16 v1, 0xa

    .line 319
    goto :goto_0

    .line 320
    :cond_e
    const/16 v1, 0x9

    .line 322
    goto :goto_0

    .line 323
    :cond_f
    const/16 v1, 0x8

    .line 325
    goto :goto_0

    .line 326
    :cond_10
    const/4 v1, 0x7

    .line 327
    :cond_11
    :goto_0
    new-array v3, v5, [Ljava/lang/Object;

    .line 329
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 332
    move-result-object v5

    .line 333
    aput-object v5, v3, v4

    .line 335
    const-string v4, "setAutoStatus ={?}"

    .line 337
    invoke-static {v2, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 343
    iget v1, p0, Lab;->e:I

    .line 345
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->u(I)V

    .line 348
    return-object v0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_16
        0x8 -> :sswitch_15
        0x9 -> :sswitch_14
        0xa -> :sswitch_13
        0xb -> :sswitch_12
        0xc -> :sswitch_11
        0xd -> :sswitch_10
        0xe -> :sswitch_f
        0xf -> :sswitch_e
        0x10 -> :sswitch_d
        0x11 -> :sswitch_c
        0x12 -> :sswitch_b
        0x13 -> :sswitch_a
        0x14 -> :sswitch_9
        0x15 -> :sswitch_8
        0x16 -> :sswitch_7
        0x17 -> :sswitch_6
        0x18 -> :sswitch_5
        0x19 -> :sswitch_4
        0x74 -> :sswitch_3
        0xc8 -> :sswitch_2
        0xbd5 -> :sswitch_1
        0xbd9 -> :sswitch_0
    .end sparse-switch

    .line 443
    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    .line 455
    :pswitch_data_1
    .packed-switch 0x46
        :pswitch_12
        :pswitch_11
        :pswitch_10
    .end packed-switch

    .line 465
    :pswitch_data_2
    .packed-switch 0x65
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    .line 477
    :pswitch_data_3
    .packed-switch 0x6b
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    .line 491
    :pswitch_data_4
    .packed-switch 0x1f5
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2723

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_STATE"

    .line 15
    iget v2, p0, Lab;->d:I

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    const-string v1, "EXTRA_STATUS_DETAILS"

    .line 22
    iget v2, p0, Lab;->e:I

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

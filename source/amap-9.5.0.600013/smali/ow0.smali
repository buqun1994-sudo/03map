.class public final enum Low0;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:Low0;

.field public static final enum e:Low0;

.field public static final enum f:Low0;

.field public static final enum g:Low0;

.field public static final enum h:Low0;

.field public static final enum i:Low0;

.field public static final enum j:Low0;

.field public static final enum k:Low0;

.field public static final enum l:Low0;

.field public static final enum m:Low0;

.field public static final enum n:Low0;

.field public static final enum o:Low0;

.field public static final enum p:Low0;

.field public static final enum q:Low0;

.field public static final enum r:Low0;

.field public static final enum s:Low0;

.field public static final enum t:Low0;

.field public static final synthetic u:[Low0;


# instance fields
.field public a:Ljava/lang/Byte;

.field public b:Ljava/lang/String;

.field public c:Low0;


# direct methods
.method public static constructor <clinit>()V
    .locals 21

    .line 1
    new-instance v0, Low0;

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 7
    move-result-object v2

    .line 8
    const-string v3, "gps\u5b9a\u4f4d"

    .line 10
    const-string v4, "GPS"

    .line 12
    invoke-direct {v0, v4, v1, v2, v3}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 15
    sput-object v0, Low0;->d:Low0;

    .line 17
    new-instance v2, Low0;

    .line 19
    const/4 v3, 0x1

    .line 20
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 23
    move-result-object v4

    .line 24
    const-string v5, "wifi\u5b9a\u4f4d"

    .line 26
    const-string v6, "WIFI"

    .line 28
    invoke-direct {v2, v6, v3, v4, v5}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 31
    sput-object v2, Low0;->e:Low0;

    .line 33
    new-instance v4, Low0;

    .line 35
    const/4 v5, 0x2

    .line 36
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 39
    move-result-object v6

    .line 40
    const-string v7, "\u6df7\u5408\u5b9a\u4f4d"

    .line 42
    const-string v8, "MIX"

    .line 44
    invoke-direct {v4, v8, v5, v6, v7}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 47
    sput-object v4, Low0;->f:Low0;

    .line 49
    new-instance v6, Low0;

    .line 51
    const/4 v7, 0x3

    .line 52
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 55
    move-result-object v8

    .line 56
    const-string v9, "\u7ec6\u6307\u7eb9\u5b9a\u4f4d\u7ed3\u679c-\u57fa\u7ad9\u5b9a\u4f4d"

    .line 58
    const-string v10, "CELL"

    .line 60
    invoke-direct {v6, v10, v7, v8, v9}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 63
    sput-object v6, Low0;->g:Low0;

    .line 65
    new-instance v8, Low0;

    .line 67
    const/4 v9, 0x4

    .line 68
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 71
    move-result-object v10

    .line 72
    const-string v11, "\u7ec6\u6307\u7eb9\u5b9a\u4f4d\u7ed3\u679c-\u76f8\u90bb\u6247\u533a\u5b9a\u4f4d"

    .line 74
    const-string v12, "SECTOR"

    .line 76
    invoke-direct {v8, v12, v9, v10, v11}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 79
    sput-object v8, Low0;->h:Low0;

    .line 81
    new-instance v10, Low0;

    .line 83
    const/4 v11, 0x5

    .line 84
    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 87
    move-result-object v12

    .line 88
    const-string v13, "cdma\u81ea\u5e26\u7ecf\u7eac\u5ea6\u5b9a\u4f4d"

    .line 90
    const-string v14, "CDMA_LNGLAT"

    .line 92
    invoke-direct {v10, v14, v11, v12, v13}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 95
    sput-object v10, Low0;->i:Low0;

    .line 97
    new-instance v12, Low0;

    .line 99
    const/4 v13, 0x7

    .line 100
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 103
    move-result-object v14

    .line 104
    const-string v15, "\u57ce\u5e02\u5b9a\u4f4d\u7c7b\u578b"

    .line 106
    const-string v11, "CITY"

    .line 108
    const/4 v9, 0x6

    .line 109
    invoke-direct {v12, v11, v9, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 112
    sput-object v12, Low0;->j:Low0;

    .line 114
    new-instance v11, Low0;

    .line 116
    const/16 v14, 0x8

    .line 118
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 121
    move-result-object v15

    .line 122
    const-string v9, "\u5b9a\u4f4d\u5931\u8d25\u7684\u7684\u7c7b\u578b"

    .line 124
    const-string v7, "FAILUR"

    .line 126
    invoke-direct {v11, v7, v13, v15, v9}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 129
    sput-object v11, Low0;->k:Low0;

    .line 131
    new-instance v7, Low0;

    .line 133
    const/16 v9, 0x9

    .line 135
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 138
    move-result-object v15

    .line 139
    const-string v13, "\u7ec6\u6307\u7eb9\u5b9a\u4f4d\u7ed3\u679c-\u540c\u5740\u57fa\u7ad9\u5b9a\u4f4d"

    .line 141
    const-string v5, "COSITE"

    .line 143
    invoke-direct {v7, v5, v14, v15, v13}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 146
    sput-object v7, Low0;->l:Low0;

    .line 148
    new-instance v5, Low0;

    .line 150
    const/16 v13, 0xe

    .line 152
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 155
    move-result-object v15

    .line 156
    const-string v14, "\u7ec6\u6307\u7eb9\u5b9a\u4f4d\u7ed3\u679c-wifi\u5b9a\u4f4d"

    .line 158
    const-string v3, "SF_WIFI"

    .line 160
    invoke-direct {v5, v3, v9, v15, v14}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 163
    sput-object v5, Low0;->m:Low0;

    .line 165
    new-instance v3, Low0;

    .line 167
    const/16 v14, 0x18

    .line 169
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 172
    move-result-object v14

    .line 173
    const-string v15, "\u7ec6\u6307\u7eb9\u5b9a\u4f4d\u7ed3\u679c-\u6df7\u5408\u5b9a\u4f4d"

    .line 175
    const-string v9, "SF_CELL"

    .line 177
    const/16 v1, 0xa

    .line 179
    invoke-direct {v3, v9, v1, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 182
    sput-object v3, Low0;->n:Low0;

    .line 184
    new-instance v9, Low0;

    .line 186
    const/4 v14, -0x1

    .line 187
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 190
    move-result-object v14

    .line 191
    const-string v15, "\u5ba4\u5185\u5b9a\u4f4d"

    .line 193
    const-string v1, "INDOOR"

    .line 195
    const/16 v13, 0xb

    .line 197
    invoke-direct {v9, v1, v13, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 200
    sput-object v9, Low0;->o:Low0;

    .line 202
    new-instance v1, Low0;

    .line 204
    const/4 v14, -0x2

    .line 205
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 208
    move-result-object v14

    .line 209
    const-string v15, "google\u5b9a\u4f4d"

    .line 211
    const-string v13, "GOOGLE"

    .line 213
    move-object/from16 v16, v9

    .line 215
    const/16 v9, 0xc

    .line 217
    invoke-direct {v1, v13, v9, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 220
    sput-object v1, Low0;->p:Low0;

    .line 222
    new-instance v13, Low0;

    .line 224
    const/4 v14, -0x4

    .line 225
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 228
    move-result-object v14

    .line 229
    const-string v15, "skyhook\u5b9a\u4f4d"

    .line 231
    const-string v9, "SKYHOOK"

    .line 233
    move-object/from16 v17, v1

    .line 235
    const/16 v1, 0xd

    .line 237
    invoke-direct {v13, v9, v1, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 240
    sput-object v13, Low0;->q:Low0;

    .line 242
    new-instance v9, Low0;

    .line 244
    const/4 v14, -0x5

    .line 245
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 248
    move-result-object v14

    .line 249
    const-string v15, "L\u7b97\u6cd5\u3001 M\u7b97\u6cd5"

    .line 251
    const-string v1, "ACCURATE"

    .line 253
    move-object/from16 v18, v13

    .line 255
    const/16 v13, 0xe

    .line 257
    invoke-direct {v9, v1, v13, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 260
    sput-object v9, Low0;->r:Low0;

    .line 262
    new-instance v1, Low0;

    .line 264
    const/4 v13, -0x6

    .line 265
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 268
    move-result-object v13

    .line 269
    const-string v14, "iOS\u7c97\u5b9a\u4f4d"

    .line 271
    const-string v15, "IOS"

    .line 273
    move-object/from16 v19, v9

    .line 275
    const/16 v9, 0xf

    .line 277
    invoke-direct {v1, v15, v9, v13, v14}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 280
    sput-object v1, Low0;->s:Low0;

    .line 282
    new-instance v13, Low0;

    .line 284
    const/16 v14, -0x63

    .line 286
    invoke-static {v14}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 289
    move-result-object v14

    .line 290
    const-string v15, "\u672a\u77e5\u7c7b\u578b"

    .line 292
    const-string v9, "UNKNOWN"

    .line 294
    move-object/from16 v20, v1

    .line 296
    const/16 v1, 0x10

    .line 298
    invoke-direct {v13, v9, v1, v14, v15}, Low0;-><init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V

    .line 301
    sput-object v13, Low0;->t:Low0;

    .line 303
    const/16 v9, 0x11

    .line 305
    new-array v9, v9, [Low0;

    .line 307
    const/4 v14, 0x0

    .line 308
    aput-object v0, v9, v14

    .line 310
    const/4 v0, 0x1

    .line 311
    aput-object v2, v9, v0

    .line 313
    const/4 v0, 0x2

    .line 314
    aput-object v4, v9, v0

    .line 316
    const/4 v0, 0x3

    .line 317
    aput-object v6, v9, v0

    .line 319
    const/4 v0, 0x4

    .line 320
    aput-object v8, v9, v0

    .line 322
    const/4 v0, 0x5

    .line 323
    aput-object v10, v9, v0

    .line 325
    const/4 v0, 0x6

    .line 326
    aput-object v12, v9, v0

    .line 328
    const/4 v0, 0x7

    .line 329
    aput-object v11, v9, v0

    .line 331
    const/16 v0, 0x8

    .line 333
    aput-object v7, v9, v0

    .line 335
    const/16 v0, 0x9

    .line 337
    aput-object v5, v9, v0

    .line 339
    const/16 v0, 0xa

    .line 341
    aput-object v3, v9, v0

    .line 343
    const/16 v0, 0xb

    .line 345
    aput-object v16, v9, v0

    .line 347
    const/16 v0, 0xc

    .line 349
    aput-object v17, v9, v0

    .line 351
    const/16 v0, 0xd

    .line 353
    aput-object v18, v9, v0

    .line 355
    const/16 v0, 0xe

    .line 357
    aput-object v19, v9, v0

    .line 359
    const/16 v0, 0xf

    .line 361
    aput-object v20, v9, v0

    .line 363
    aput-object v13, v9, v1

    .line 365
    sput-object v9, Low0;->u:[Low0;

    .line 367
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/Byte;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Low0;->a:Ljava/lang/Byte;

    .line 6
    iput-object p4, p0, Low0;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Byte;->byteValue()B

    .line 11
    move-result p1

    .line 12
    div-int/lit8 p1, p1, 0xa

    .line 14
    int-to-byte p1, p1

    .line 15
    if-nez p1, :cond_0

    .line 17
    iput-object p0, p0, Low0;->c:Low0;

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 23
    move-result-object p1

    .line 24
    invoke-static {p1}, Low0;->a(Ljava/lang/Byte;)Low0;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Low0;->c:Low0;

    .line 30
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/Byte;)Low0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    .line 4
    move-result p0

    .line 5
    const/4 v0, -0x6

    .line 6
    if-eq p0, v0, :cond_7

    .line 8
    const/4 v0, -0x5

    .line 9
    if-eq p0, v0, :cond_6

    .line 11
    const/4 v0, -0x4

    .line 12
    if-eq p0, v0, :cond_5

    .line 14
    const/4 v0, 0x7

    .line 15
    if-eq p0, v0, :cond_4

    .line 17
    const/16 v0, 0x8

    .line 19
    if-eq p0, v0, :cond_3

    .line 21
    const/16 v0, 0x9

    .line 23
    if-eq p0, v0, :cond_2

    .line 25
    const/16 v0, 0xe

    .line 27
    if-eq p0, v0, :cond_1

    .line 29
    const/16 v0, 0x18

    .line 31
    if-eq p0, v0, :cond_0

    .line 33
    packed-switch p0, :pswitch_data_0

    .line 36
    sget-object p0, Low0;->t:Low0;

    .line 38
    return-object p0

    .line 39
    :pswitch_0
    sget-object p0, Low0;->i:Low0;

    .line 41
    return-object p0

    .line 42
    :pswitch_1
    sget-object p0, Low0;->h:Low0;

    .line 44
    return-object p0

    .line 45
    :pswitch_2
    sget-object p0, Low0;->g:Low0;

    .line 47
    return-object p0

    .line 48
    :pswitch_3
    sget-object p0, Low0;->f:Low0;

    .line 50
    return-object p0

    .line 51
    :pswitch_4
    sget-object p0, Low0;->e:Low0;

    .line 53
    return-object p0

    .line 54
    :pswitch_5
    sget-object p0, Low0;->d:Low0;

    .line 56
    return-object p0

    .line 57
    :pswitch_6
    sget-object p0, Low0;->o:Low0;

    .line 59
    return-object p0

    .line 60
    :pswitch_7
    sget-object p0, Low0;->p:Low0;

    .line 62
    return-object p0

    .line 63
    :cond_0
    sget-object p0, Low0;->n:Low0;

    .line 65
    return-object p0

    .line 66
    :cond_1
    sget-object p0, Low0;->m:Low0;

    .line 68
    return-object p0

    .line 69
    :cond_2
    sget-object p0, Low0;->l:Low0;

    .line 71
    return-object p0

    .line 72
    :cond_3
    sget-object p0, Low0;->k:Low0;

    .line 74
    return-object p0

    .line 75
    :cond_4
    sget-object p0, Low0;->j:Low0;

    .line 77
    return-object p0

    .line 78
    :cond_5
    sget-object p0, Low0;->q:Low0;

    .line 80
    return-object p0

    .line 81
    :cond_6
    sget-object p0, Low0;->r:Low0;

    .line 83
    return-object p0

    .line 84
    :cond_7
    sget-object p0, Low0;->s:Low0;

    .line 86
    return-object p0

    .line 87
    :pswitch_data_0
    .packed-switch -0x2
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

.method public static b(Ljava/lang/String;)Low0;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 8
    move-result-object p0

    .line 9
    invoke-static {p0}, Low0;->a(Ljava/lang/Byte;)Low0;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object p0

    .line 14
    :catch_0
    sget-object p0, Low0;->t:Low0;

    .line 16
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Low0;
    .locals 1

    .line 1
    const-class v0, Low0;

    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Low0;

    .line 9
    return-object p0
.end method

.method public static values()[Low0;
    .locals 1

    .line 1
    sget-object v0, Low0;->u:[Low0;

    .line 3
    invoke-virtual {v0}, [Low0;->clone()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Low0;

    .line 9
    return-object v0
.end method


# virtual methods
.method public c()Ljava/lang/Byte;
    .locals 1

    .line 1
    iget-object v0, p0, Low0;->a:Ljava/lang/Byte;

    .line 3
    return-object v0
.end method

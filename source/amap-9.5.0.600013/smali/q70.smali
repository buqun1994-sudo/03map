.class public abstract Lq70;
.super Lr;
.source "SourceFile"


# instance fields
.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lr;-><init>(Z)V

    .line 4
    const-string p1, "ProtocolAssert"

    .line 6
    iput-object p1, p0, Lq70;->h:Ljava/lang/String;

    .line 8
    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lq70;->i:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lq70;->j:Ljava/lang/Class;

    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4
    const/4 p3, 0x0

    .line 5
    :try_start_0
    iget-object v0, p0, Lq70;->j:Ljava/lang/Class;

    .line 7
    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lq70;->i:Ljava/lang/String;

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lr;->e:Ljava/util/List;

    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    const-string p1, "data"

    .line 26
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lq70;->j:Ljava/lang/Class;

    .line 32
    invoke-virtual {p0, v0}, Lq70;->j(Ljava/lang/Class;)Ljava/util/List;

    .line 35
    move-result-object v0

    .line 36
    iget-object v1, p0, Lq70;->i:Ljava/lang/String;

    .line 38
    invoke-virtual {p0, p2, v1, p1, v0}, Lq70;->h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    .line 41
    const/4 p1, 0x1

    .line 42
    return p1

    .line 43
    :cond_1
    :goto_0
    iget-object p1, p0, Lr;->c:Ljava/lang/String;

    .line 45
    const-string p2, "doAssert modelClass == null || modelName == null"

    .line 47
    new-array v0, p3, [Ljava/lang/Object;

    .line 49
    invoke-static {p1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    return p3

    .line 53
    :catch_0
    move-exception p1

    .line 54
    iget-object p2, p0, Lr;->c:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 60
    new-array v1, p3, [Ljava/lang/Object;

    .line 62
    invoke-static {p2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception p1

    .line 67
    iget-object p2, p0, Lr;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 73
    new-array v1, p3, [Ljava/lang/Object;

    .line 75
    invoke-static {p2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 78
    :goto_1
    return p3
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-super {p0}, Lr;->b()V

    .line 4
    return-void
.end method

.method public final d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[DDDZ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p2

    .line 5
    move-object/from16 v2, p3

    .line 7
    move-object/from16 v3, p4

    .line 9
    move-object/from16 v4, p5

    .line 11
    move-wide/from16 v5, p6

    .line 13
    move-wide/from16 v7, p8

    .line 15
    move-object/from16 v9, p1

    .line 17
    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 20
    move-result-wide v9

    .line 21
    const-string v11, " \u4e2d\u7684 "

    .line 23
    if-eqz p10, :cond_0

    .line 25
    const-wide/16 v4, 0x0

    .line 27
    cmpl-double v6, v9, v4

    .line 29
    if-nez v6, :cond_a

    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    const-string v2, " \u5b57\u6bb5\u7684\u53c2\u6570\u53d6\u503c\u8303\u56f4\u5f02\u5e38\uff0c\u5373\u8fd9\u91cc\u5916\u90e8\u4f20\u5165\u7684\u7ecf\u7eac\u5ea6\u5e94\u8be5\u6ca1\u6709\u8d4b\u503c\uff01"

    .line 47
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    new-instance v4, Lal;

    .line 56
    invoke-direct {v4}, Lal;-><init>()V

    .line 59
    invoke-virtual {v4, v3}, Lal;->d(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v4, v1}, Lal;->e(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v4, v2}, Lal;->c(Ljava/lang/String;)V

    .line 68
    iget-object v1, v0, Lr;->e:Ljava/util/List;

    .line 70
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    goto/16 :goto_3

    .line 75
    :cond_0
    const-string v13, " \uff0c\u6700\u5927\u503c\u5e94\u8be5\u4e3a\uff1a"

    .line 77
    if-eqz v4, :cond_7

    .line 79
    array-length v14, v4

    .line 80
    if-lez v14, :cond_7

    .line 82
    const/4 v15, 0x0

    .line 83
    :goto_0
    array-length v14, v4

    .line 84
    if-ge v15, v14, :cond_2

    .line 86
    aget-wide v16, v4, v15

    .line 88
    cmpl-double v14, v9, v16

    .line 90
    if-nez v14, :cond_1

    .line 92
    const/4 v14, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    add-int/lit8 v15, v15, 0x1

    .line 96
    goto :goto_0

    .line 97
    :cond_2
    const/4 v14, 0x0

    .line 98
    :goto_1
    if-nez v14, :cond_a

    .line 100
    new-instance v14, Lal;

    .line 102
    invoke-direct {v14}, Lal;-><init>()V

    .line 105
    const/4 v15, 0x7

    .line 106
    invoke-virtual {v14, v15}, Lal;->b(I)V

    .line 109
    invoke-static/range {p5 .. p5}, Lm3;->b([D)Ljava/lang/String;

    .line 112
    move-result-object v4

    .line 113
    new-instance v15, Ljava/lang/StringBuilder;

    .line 115
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, " \u5b57\u6bb5\u7684\u53c2\u6570\u53d6\u503c\u8303\u56f4\u5f02\u5e38\uff0c"

    .line 129
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 135
    move-result v2

    .line 136
    const-string v11, ""

    .line 138
    if-nez v2, :cond_3

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    .line 142
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    const-string v12, "\u5373\u6b63\u5e38\u7684\u53d6\u503c\u8303\u56f4\u5e94\u8be5\u4e3a\uff1a"

    .line 147
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v4, "\uff0c"

    .line 155
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    move-result-object v2

    .line 162
    goto :goto_2

    .line 163
    :cond_3
    move-object v2, v11

    .line 164
    :goto_2
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "\u800c\u8fd9\u91cc\u5916\u90e8\u4f20\u5165\u7684\u503c\u4e3a: "

    .line 169
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v15, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v2

    .line 182
    invoke-static/range {p6 .. p7}, Lm3;->g(D)Z

    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_4

    .line 188
    cmpl-double v4, v9, v5

    .line 190
    if-gtz v4, :cond_5

    .line 192
    :cond_4
    invoke-static/range {p8 .. p9}, Lm3;->h(D)Z

    .line 195
    move-result v4

    .line 196
    if-eqz v4, :cond_6

    .line 198
    cmpg-double v4, v9, v7

    .line 200
    if-gez v4, :cond_6

    .line 202
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    .line 204
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "\uff0c\u540c\u65f6\u8d85\u51fa\u4e86\u6700\u5927\u503c\u3001\u6700\u5c0f\u503c\u7684\u9650\u5236\uff0c\u6b63\u5e38\u6700\u5c0f\u503c\u5e94\u8be5\u4e3a\uff1a"

    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 224
    const-string v2, " !"

    .line 226
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v14}, Lal;->a()I

    .line 236
    move-result v4

    .line 237
    const/16 v5, 0x8

    .line 239
    or-int/2addr v4, v5

    .line 240
    invoke-virtual {v14, v4}, Lal;->b(I)V

    .line 243
    :cond_6
    invoke-virtual {v14, v3}, Lal;->d(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v14, v1}, Lal;->e(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v14, v2}, Lal;->c(Ljava/lang/String;)V

    .line 252
    iget-object v1, v0, Lr;->e:Ljava/util/List;

    .line 254
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    goto :goto_3

    .line 258
    :cond_7
    invoke-static/range {p6 .. p7}, Lm3;->g(D)Z

    .line 261
    move-result v4

    .line 262
    if-eqz v4, :cond_8

    .line 264
    cmpl-double v4, v9, v5

    .line 266
    if-gtz v4, :cond_9

    .line 268
    :cond_8
    invoke-static/range {p8 .. p9}, Lm3;->h(D)Z

    .line 271
    move-result v4

    .line 272
    if-eqz v4, :cond_a

    .line 274
    cmpg-double v4, v9, v7

    .line 276
    if-gez v4, :cond_a

    .line 278
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 280
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 283
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const-string v2, " \u5b57\u6bb5\u7684\u53c2\u6570\u53d6\u503c\u8303\u56f4\u5f02\u5e38\uff0c\u5373\u8d85\u51fa\u4e86\u6700\u5927\u503c\u3001\u6700\u5c0f\u503c\u7684\u9650\u5236\uff0c\u6b63\u5e38\u6700\u5c0f\u503c\u5e94\u8be5\u4e3a\uff1a"

    .line 294
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 306
    const-string v2, " \uff0c\u800c\u8fd9\u91cc\u5916\u90e8\u4f20\u5165\u7684\u503c\u4e3a: "

    .line 308
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    move-result-object v2

    .line 318
    new-instance v4, Lal;

    .line 320
    invoke-direct {v4}, Lal;-><init>()V

    .line 323
    const/16 v5, 0x8

    .line 325
    invoke-virtual {v4, v5}, Lal;->b(I)V

    .line 328
    invoke-virtual {v4, v3}, Lal;->d(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v4, v1}, Lal;->e(Ljava/lang/String;)V

    .line 334
    invoke-virtual {v4, v2}, Lal;->c(Ljava/lang/String;)V

    .line 337
    iget-object v1, v0, Lr;->e:Ljava/util/List;

    .line 339
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 342
    :cond_a
    :goto_3
    return-void
.end method

.method public final e(Lorg/json/JSONObject;Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Lz70;Ljava/lang/String;)V
    .locals 12

    .line 1
    move-object v11, p0

    .line 2
    iget-object v0, v11, Lr;->c:Ljava/lang/String;

    .line 4
    const/4 v1, 0x1

    .line 5
    new-array v1, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x0

    .line 16
    aput-object v2, v1, v3

    .line 18
    const-string v2, "assertFieldCheck field.getGenericType().toString() = {?}"

    .line 20
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    move-result-object v4

    .line 31
    const-string v0, "int"

    .line 33
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 39
    invoke-interface/range {p6 .. p6}, Lz70;->minValue()I

    .line 42
    move-result v7

    .line 43
    invoke-interface/range {p6 .. p6}, Lz70;->maxValue()I

    .line 46
    move-result v6

    .line 47
    invoke-interface/range {p6 .. p6}, Lz70;->intValues()[I

    .line 50
    move-result-object v5

    .line 51
    move-object v0, p0

    .line 52
    move-object v1, p1

    .line 53
    move-object/from16 v2, p5

    .line 55
    move-object/from16 v3, p7

    .line 57
    move-object/from16 v4, p4

    .line 59
    invoke-virtual/range {v0 .. v7}, Lq70;->f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[III)V

    .line 62
    goto :goto_0

    .line 63
    :cond_0
    const-string v0, "class java.lang.String"

    .line 65
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 69
    if-eqz v0, :cond_1

    .line 71
    move-object v0, p0

    .line 72
    move-object v1, p1

    .line 73
    move-object/from16 v2, p5

    .line 75
    move-object/from16 v3, p7

    .line 77
    move-object/from16 v4, p4

    .line 79
    move v5, p3

    .line 80
    invoke-virtual/range {v0 .. v5}, Lq70;->i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const-string v0, "double"

    .line 86
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_2

    .line 92
    invoke-interface/range {p6 .. p6}, Lz70;->isLonLat()Z

    .line 95
    move-result v10

    .line 96
    invoke-interface/range {p6 .. p6}, Lz70;->doubleValues()[D

    .line 99
    move-result-object v5

    .line 100
    invoke-interface/range {p6 .. p6}, Lz70;->minDoubleValue()D

    .line 103
    move-result-wide v8

    .line 104
    invoke-interface/range {p6 .. p6}, Lz70;->maxDoubleValue()D

    .line 107
    move-result-wide v6

    .line 108
    move-object v0, p0

    .line 109
    move-object v1, p1

    .line 110
    move-object/from16 v2, p5

    .line 112
    move-object/from16 v3, p7

    .line 114
    move-object/from16 v4, p4

    .line 116
    invoke-virtual/range {v0 .. v10}, Lq70;->d(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[DDDZ)V

    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const-string v0, "class com.autonavi.amapauto.protocol.model"

    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_3

    .line 128
    move-object v0, p0

    .line 129
    move-object v1, p1

    .line 130
    move-object/from16 v2, p5

    .line 132
    move-object/from16 v3, p4

    .line 134
    move v5, p3

    .line 135
    invoke-virtual/range {v0 .. v5}, Lq70;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 138
    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[III)V
    .locals 6

    .line 1
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x6

    .line 6
    const-string v1, " \uff0c\u6700\u5927\u503c\u5e94\u8be5\u4e3a\uff1a"

    .line 8
    const-string v2, " \u4e2d\u7684 "

    .line 10
    if-eqz p5, :cond_6

    .line 12
    array-length v3, p5

    .line 13
    if-lez v3, :cond_6

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    :goto_0
    array-length v5, p5

    .line 18
    if-ge v4, v5, :cond_1

    .line 20
    aget v5, p5, v4

    .line 22
    if-ne p1, v5, :cond_0

    .line 24
    const/4 v3, 0x1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    if-nez v3, :cond_9

    .line 31
    new-instance v3, Lal;

    .line 33
    invoke-direct {v3}, Lal;-><init>()V

    .line 36
    const/4 v4, 0x5

    .line 37
    invoke-virtual {v3, v4}, Lal;->b(I)V

    .line 40
    invoke-static {p5}, Lm3;->l([I)Ljava/lang/String;

    .line 43
    move-result-object p5

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    const-string p3, " \u5b57\u6bb5\u7684\u53c2\u6570\u53d6\u503c\u8303\u56f4\u5f02\u5e38\uff0c"

    .line 60
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 66
    move-result p3

    .line 67
    const-string v2, ""

    .line 69
    if-nez p3, :cond_2

    .line 71
    new-instance p3, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v5, "\u5373\u6b63\u5e38\u7684\u53d6\u503c\u8303\u56f4\u5e94\u8be5\u4e3a\uff1a"

    .line 78
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string p5, "\uff0c"

    .line 86
    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object p3

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move-object p3, v2

    .line 95
    :goto_2
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string p3, "\u800c\u8fd9\u91cc\u5916\u90e8\u4f20\u5165\u7684\u503c\u4e3a: "

    .line 100
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p3

    .line 113
    invoke-static {p6}, Lm3;->i(I)Z

    .line 116
    move-result p5

    .line 117
    if-eqz p5, :cond_3

    .line 119
    if-gt p1, p6, :cond_4

    .line 121
    :cond_3
    invoke-static {p7}, Lm3;->j(I)Z

    .line 124
    move-result p5

    .line 125
    if-eqz p5, :cond_5

    .line 127
    if-ge p1, p7, :cond_5

    .line 129
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string p3, "\uff0c\u540c\u65f6\u8d85\u51fa\u4e86\u6700\u5927\u503c\u3001\u6700\u5c0f\u503c\u7684\u9650\u5236\uff0c\u6b63\u5e38\u6700\u5c0f\u503c\u5e94\u8be5\u4e3a\uff1a"

    .line 139
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {p1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    const-string p3, " !"

    .line 153
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    move-result-object p3

    .line 160
    invoke-virtual {v3}, Lal;->a()I

    .line 163
    move-result p1

    .line 164
    or-int/2addr p1, v0

    .line 165
    invoke-virtual {v3, p1}, Lal;->b(I)V

    .line 168
    :cond_5
    invoke-virtual {v3, p4}, Lal;->d(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3, p2}, Lal;->e(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v3, p3}, Lal;->c(Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lr;->e:Ljava/util/List;

    .line 179
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    goto :goto_3

    .line 183
    :cond_6
    invoke-static {p6}, Lm3;->i(I)Z

    .line 186
    move-result p5

    .line 187
    if-eqz p5, :cond_7

    .line 189
    if-gt p1, p6, :cond_8

    .line 191
    :cond_7
    invoke-static {p7}, Lm3;->j(I)Z

    .line 194
    move-result p5

    .line 195
    if-eqz p5, :cond_9

    .line 197
    if-ge p1, p7, :cond_9

    .line 199
    :cond_8
    new-instance p5, Ljava/lang/StringBuilder;

    .line 201
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string p3, " \u5b57\u6bb5\u7684\u53c2\u6570\u53d6\u503c\u8303\u56f4\u5f02\u5e38\uff0c\u5373\u8d85\u51fa\u4e86\u6700\u5927\u503c\u3001\u6700\u5c0f\u503c\u7684\u9650\u5236\uff0c\u6b63\u5e38\u6700\u5c0f\u503c\u5e94\u8be5\u4e3a\uff1a"

    .line 215
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p5, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 227
    const-string p3, " \uff0c\u800c\u8fd9\u91cc\u5916\u90e8\u4f20\u5165\u7684\u503c\u4e3a: "

    .line 229
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object p1

    .line 239
    new-instance p3, Lal;

    .line 241
    invoke-direct {p3}, Lal;-><init>()V

    .line 244
    invoke-virtual {p3, v0}, Lal;->b(I)V

    .line 247
    invoke-virtual {p3, p4}, Lal;->d(Ljava/lang/String;)V

    .line 250
    invoke-virtual {p3, p2}, Lal;->e(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p3, p1}, Lal;->c(Ljava/lang/String;)V

    .line 256
    iget-object p1, p0, Lr;->e:Ljava/util/List;

    .line 258
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    :cond_9
    :goto_3
    return-void
.end method

.method public final g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    .line 1
    const/4 v0, 0x6

    .line 2
    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 5
    move-result-object p4

    .line 6
    iget-object v0, p0, Lr;->c:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, "assertObjectValueCheck modelName = "

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v3, v2, [Ljava/lang/Object;

    .line 28
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_2

    .line 37
    if-eqz p5, :cond_1

    .line 39
    const-string p5, "30409"

    .line 41
    invoke-virtual {p2, p5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 44
    move-result p5

    .line 45
    const/4 v0, 0x2

    .line 46
    if-eqz p5, :cond_0

    .line 48
    const-string p5, "action"

    .line 50
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p1, p5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 59
    move-result p1

    .line 60
    const/4 p5, -0x1

    .line 61
    if-eq p1, p5, :cond_1

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    const-string p5, "\u5fc5\u586b\u5b57\u6bb5 "

    .line 70
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string p4, " \u6ca1\u6709\u4f20\u5165\uff01"

    .line 78
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    new-instance p4, Lal;

    .line 87
    invoke-direct {p4}, Lal;-><init>()V

    .line 90
    invoke-virtual {p4, v0}, Lal;->b(I)V

    .line 93
    invoke-virtual {p4, p3}, Lal;->d(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p4, p2}, Lal;->e(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p4, p1}, Lal;->c(Ljava/lang/String;)V

    .line 102
    iget-object p1, p0, Lr;->e:Ljava/util/List;

    .line 104
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 110
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    const-string p5, " \u5fc5\u586b\u5b57\u6bb5 "

    .line 115
    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    const-string p4, " \u6ca1\u6709\u4f20\u5165"

    .line 123
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    move-result-object p1

    .line 130
    new-instance p4, Lal;

    .line 132
    invoke-direct {p4}, Lal;-><init>()V

    .line 135
    invoke-virtual {p4, v0}, Lal;->b(I)V

    .line 138
    invoke-virtual {p4, p3}, Lal;->d(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p4, p2}, Lal;->e(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p4, p1}, Lal;->c(Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lr;->e:Ljava/util/List;

    .line 149
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_1
    :goto_0
    return-void

    .line 153
    :cond_2
    invoke-virtual {p1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 156
    move-result-object p1

    .line 157
    :try_start_0
    invoke-static {p4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 160
    move-result-object p4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_1

    .line 162
    :catch_0
    move-exception p4

    .line 163
    iget-object p5, p0, Lr;->c:Ljava/lang/String;

    .line 165
    const/4 v0, 0x1

    .line 166
    new-array v0, v0, [Ljava/lang/Object;

    .line 168
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 171
    move-result-object p4

    .line 172
    aput-object p4, v0, v2

    .line 174
    const-string p4, "assertObjectValueCheck ClassNotFoundException = {?}"

    .line 176
    invoke-static {p5, p4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    const/4 p4, 0x0

    .line 180
    :goto_1
    invoke-virtual {p0, p4}, Lq70;->j(Ljava/lang/Class;)Ljava/util/List;

    .line 183
    move-result-object p4

    .line 184
    invoke-virtual {p0, p2, p3, p1, p4}, Lq70;->h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V

    .line 187
    return-void
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 9

    .line 1
    if-nez p3, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p4

    .line 8
    :cond_1
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_b

    .line 14
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Ljava/lang/reflect/Field;

    .line 21
    iget-object v0, p0, Lr;->c:Ljava/lang/String;

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v2, v1, [Ljava/lang/Object;

    .line 26
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 30
    const/4 v5, 0x0

    .line 31
    aput-object v4, v2, v5

    .line 33
    const-string v4, "assertParamsCheck name = {?}"

    .line 35
    invoke-static {v0, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    const-class v0, Lz70;

    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 43
    move-result-object v0

    .line 44
    move-object v7, v0

    .line 45
    check-cast v7, Lz70;

    .line 47
    if-nez v7, :cond_2

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    invoke-interface {v7}, Lz70;->isMustFill()Z

    .line 57
    move-result v2

    .line 58
    iget-object v4, p0, Lr;->c:Ljava/lang/String;

    .line 60
    new-array v6, v1, [Ljava/lang/Object;

    .line 62
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    move-result-object v8

    .line 66
    aput-object v8, v6, v5

    .line 68
    const-string v8, "assertParamsCheck isMustFill = {?}"

    .line 70
    invoke-static {v4, v8, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-string v4, " \u5b57\u6bb5 "

    .line 75
    if-eqz v2, :cond_7

    .line 77
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 80
    move-result v2

    .line 81
    if-eqz v2, :cond_3

    .line 83
    const/4 v4, 0x1

    .line 84
    move-object v1, p0

    .line 85
    move-object v2, p3

    .line 86
    move-object v5, v0

    .line 87
    move-object v6, p1

    .line 88
    move-object v8, p2

    .line 89
    invoke-virtual/range {v1 .. v8}, Lq70;->e(Lorg/json/JSONObject;Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Lz70;Ljava/lang/String;)V

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 96
    move-result-object v2

    .line 97
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_5

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    move-result-object v3

    .line 107
    check-cast v3, Ljava/lang/String;

    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    move-result v3

    .line 113
    if-eqz v3, :cond_4

    .line 115
    const/4 v5, 0x1

    .line 116
    :cond_5
    if-eqz v5, :cond_6

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v3, " \u4e3a\u5fc5\u586b\uff0c\u4f46\u662f\u5916\u90e8\u5bf9\u8be5\u5b57\u6bb5\u5927\u5c0f\u5199\u4f20\u5165\u9519\u8bef\uff01"

    .line 131
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    new-instance v3, Lal;

    .line 140
    invoke-direct {v3}, Lal;-><init>()V

    .line 143
    invoke-virtual {v3, v1}, Lal;->b(I)V

    .line 146
    invoke-virtual {v3, v0}, Lal;->d(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v3, p1}, Lal;->e(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, v2}, Lal;->c(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lr;->e:Ljava/util/List;

    .line 157
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    goto/16 :goto_0

    .line 162
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v2, " \u4e3a\u5fc5\u586b\uff0c\u4f46\u662f\u5916\u90e8\u6ca1\u6709\u4f20\uff01"

    .line 175
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    move-result-object v1

    .line 182
    new-instance v2, Lal;

    .line 184
    invoke-direct {v2}, Lal;-><init>()V

    .line 187
    const/4 v3, 0x2

    .line 188
    invoke-virtual {v2, v3}, Lal;->b(I)V

    .line 191
    invoke-virtual {v2, v0}, Lal;->d(Ljava/lang/String;)V

    .line 194
    invoke-virtual {v2, p1}, Lal;->e(Ljava/lang/String;)V

    .line 197
    invoke-virtual {v2, v1}, Lal;->c(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lr;->e:Ljava/util/List;

    .line 202
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_7
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_8

    .line 213
    const/4 v4, 0x0

    .line 214
    move-object v1, p0

    .line 215
    move-object v2, p3

    .line 216
    move-object v5, v0

    .line 217
    move-object v6, p1

    .line 218
    move-object v8, p2

    .line 219
    invoke-virtual/range {v1 .. v8}, Lq70;->e(Lorg/json/JSONObject;Ljava/lang/reflect/Field;ZLjava/lang/String;Ljava/lang/String;Lz70;Ljava/lang/String;)V

    .line 222
    goto/16 :goto_0

    .line 224
    :cond_8
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 227
    move-result-object v2

    .line 228
    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_a

    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 237
    move-result-object v3

    .line 238
    check-cast v3, Ljava/lang/String;

    .line 240
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 243
    move-result v3

    .line 244
    if-eqz v3, :cond_9

    .line 246
    goto :goto_1

    .line 247
    :cond_a
    const/4 v1, 0x0

    .line 248
    :goto_1
    if-eqz v1, :cond_1

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v2, " \u5927\u5c0f\u5199\u4f20\u5165\u9519\u8bef\uff01"

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    new-instance v2, Lal;

    .line 272
    invoke-direct {v2}, Lal;-><init>()V

    .line 275
    invoke-virtual {v2, v5}, Lal;->b(I)V

    .line 278
    invoke-virtual {v2, v0}, Lal;->d(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v2, p1}, Lal;->e(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v2, v1}, Lal;->c(Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lr;->e:Ljava/util/List;

    .line 289
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    goto/16 :goto_0

    .line 294
    :cond_b
    return-void
.end method

.method public final i(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-virtual {p1, p4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    if-eqz p5, :cond_0

    .line 13
    new-instance p5, Ljava/lang/StringBuilder;

    .line 15
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string p3, " \u4e2d\u7684 "

    .line 23
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    const-string p3, " \u5b57\u6bb5\u7684\u53c2\u6570\u53d6\u503c\u8303\u56f4\u5f02\u5e38\uff0c\u800c\u8fd9\u91cc\u5916\u90e8\u4f20\u5165\u7684\u503c\u4e3a: "

    .line 31
    invoke-virtual {p5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 41
    new-instance p3, Lal;

    .line 43
    invoke-direct {p3}, Lal;-><init>()V

    .line 46
    invoke-virtual {p3, p4}, Lal;->d(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p3, p2}, Lal;->e(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3, p1}, Lal;->c(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lr;->e:Ljava/util/List;

    .line 57
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Class;)Ljava/util/List;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :goto_0
    if-eqz p1, :cond_0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    :try_start_0
    iget-object v4, p0, Lr;->c:Ljava/lang/String;

    .line 13
    const-string v5, "getClassFields 1 tempClass = {?}"

    .line 15
    new-array v6, v2, [Ljava/lang/Object;

    .line 17
    aput-object p1, v6, v3

    .line 19
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 25
    move-result-object v4

    .line 26
    iget-object v5, p0, Lr;->c:Ljava/lang/String;

    .line 28
    const-string v6, "getClassFields 2 tempClass = {?}, fields = {?}"

    .line 30
    new-array v7, v1, [Ljava/lang/Object;

    .line 32
    aput-object p1, v7, v3

    .line 34
    aput-object v4, v7, v2

    .line 36
    invoke-static {v5, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 42
    move-result-object v4

    .line 43
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v4, p0, Lr;->c:Ljava/lang/String;

    .line 48
    const-string v5, "getClassFields 3 tempClass = {?}"

    .line 50
    new-array v6, v2, [Ljava/lang/Object;

    .line 52
    aput-object p1, v6, v3

    .line 54
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 60
    move-result-object p1

    .line 61
    iget-object v4, p0, Lr;->c:Ljava/lang/String;

    .line 63
    const-string v5, "getClassFields 4 tempClass = {?}"

    .line 65
    new-array v6, v2, [Ljava/lang/Object;

    .line 67
    aput-object p1, v6, v3

    .line 69
    invoke-static {v4, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 73
    :catch_0
    move-exception v4

    .line 74
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    iget-object v5, p0, Lr;->c:Ljava/lang/String;

    .line 79
    new-array v1, v1, [Ljava/lang/Object;

    .line 81
    aput-object p1, v1, v3

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    move-result-object p1

    .line 87
    aput-object p1, v1, v2

    .line 89
    const-string p1, "getClassFields 5 tempClass = {?}, Exception = {?}"

    .line 91
    invoke-static {v5, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_0
    return-object v0
.end method

.method public k(I)Ls10;
    .locals 3

    .line 1
    new-instance v0, Ls10;

    .line 3
    invoke-direct {v0}, Ls10;-><init>()V

    .line 6
    const/16 v1, 0x753f

    .line 8
    if-eq p1, v1, :cond_5

    .line 10
    const/16 v1, 0x7540

    .line 12
    if-eq p1, v1, :cond_4

    .line 14
    const/16 v1, 0x76d3

    .line 16
    if-eq p1, v1, :cond_3

    .line 18
    const/16 v1, 0x76d4

    .line 20
    if-eq p1, v1, :cond_2

    .line 22
    const/16 v1, 0x76df

    .line 24
    if-eq p1, v1, :cond_1

    .line 26
    const/16 v1, 0x76e0

    .line 28
    if-eq p1, v1, :cond_0

    .line 30
    packed-switch p1, :pswitch_data_0

    .line 33
    packed-switch p1, :pswitch_data_1

    .line 36
    packed-switch p1, :pswitch_data_2

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 42
    packed-switch p1, :pswitch_data_3

    .line 45
    packed-switch p1, :pswitch_data_4

    .line 48
    packed-switch p1, :pswitch_data_5

    .line 51
    const/4 p1, 0x0

    .line 52
    move-object v1, p1

    .line 53
    goto/16 :goto_1

    .line 55
    :pswitch_0
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 61
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    .line 63
    goto/16 :goto_1

    .line 65
    :pswitch_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    .line 67
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 71
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    .line 73
    goto/16 :goto_1

    .line 75
    :pswitch_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    .line 83
    goto/16 :goto_1

    .line 85
    :pswitch_3
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    .line 87
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 91
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 100
    move-result-object p1

    .line 101
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    .line 103
    goto/16 :goto_1

    .line 105
    :pswitch_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;

    .line 107
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;

    .line 113
    goto/16 :goto_1

    .line 115
    :pswitch_6
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    .line 117
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 120
    move-result-object p1

    .line 121
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    .line 123
    goto/16 :goto_1

    .line 125
    :pswitch_7
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    .line 133
    goto/16 :goto_1

    .line 135
    :pswitch_8
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;

    .line 143
    goto/16 :goto_1

    .line 145
    :pswitch_9
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 150
    move-result-object p1

    .line 151
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 153
    goto/16 :goto_1

    .line 155
    :pswitch_a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    .line 157
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 160
    move-result-object p1

    .line 161
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    .line 163
    goto/16 :goto_1

    .line 165
    :pswitch_b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 167
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 170
    move-result-object p1

    .line 171
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 173
    goto/16 :goto_1

    .line 175
    :pswitch_c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    .line 183
    goto/16 :goto_1

    .line 185
    :pswitch_d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    .line 187
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 190
    move-result-object p1

    .line 191
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    .line 193
    goto/16 :goto_1

    .line 195
    :pswitch_e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 197
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 200
    move-result-object p1

    .line 201
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 203
    goto/16 :goto_1

    .line 205
    :pswitch_f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 207
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 210
    move-result-object p1

    .line 211
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 213
    goto/16 :goto_1

    .line 215
    :pswitch_10
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 217
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 220
    move-result-object p1

    .line 221
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 223
    goto/16 :goto_1

    .line 225
    :sswitch_0
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;

    .line 227
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 230
    move-result-object p1

    .line 231
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspRevealingResCharingStaInfoModel;

    .line 233
    goto/16 :goto_1

    .line 235
    :sswitch_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRevealingChargingStaInfoModel;

    .line 237
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 240
    move-result-object p1

    .line 241
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqRevealingChargingStaInfoModel;

    .line 243
    goto/16 :goto_1

    .line 245
    :sswitch_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;

    .line 247
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;

    .line 253
    goto/16 :goto_1

    .line 255
    :sswitch_3
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    .line 257
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    .line 263
    goto/16 :goto_1

    .line 265
    :sswitch_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 267
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 270
    move-result-object p1

    .line 271
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspTrafficLightsCountdownInfoModel;

    .line 273
    goto/16 :goto_1

    .line 275
    :sswitch_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqArrivePOIResidualEnegryModel;

    .line 277
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqArrivePOIResidualEnegryModel;

    .line 283
    goto/16 :goto_1

    .line 285
    :sswitch_6
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;

    .line 287
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 290
    move-result-object p1

    .line 291
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspNotifyViaAndEndPoiInfoModel;

    .line 293
    goto/16 :goto_1

    .line 295
    :sswitch_7
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    .line 297
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 300
    move-result-object p1

    .line 301
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspUserPersonalInformationAuthorizedModel;

    .line 303
    goto/16 :goto_1

    .line 305
    :sswitch_8
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;

    .line 307
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 310
    move-result-object p1

    .line 311
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudRenderRangeModel;

    .line 313
    goto/16 :goto_1

    .line 315
    :sswitch_9
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    .line 317
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 320
    move-result-object p1

    .line 321
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqARHudVirtualImageParamModel;

    .line 323
    goto/16 :goto_1

    .line 325
    :sswitch_a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    .line 327
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 330
    move-result-object p1

    .line 331
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspGetTruckParmModel;

    .line 333
    goto/16 :goto_1

    .line 335
    :sswitch_b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetCityRestrictionModel;

    .line 337
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 340
    move-result-object p1

    .line 341
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetCityRestrictionModel;

    .line 343
    goto/16 :goto_1

    .line 345
    :sswitch_c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetODDInfoModel;

    .line 347
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 350
    move-result-object p1

    .line 351
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetODDInfoModel;

    .line 353
    goto/16 :goto_1

    .line 355
    :sswitch_d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudChangeLineOutputModel;

    .line 357
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 360
    move-result-object p1

    .line 361
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudChangeLineOutputModel;

    .line 363
    goto/16 :goto_1

    .line 365
    :sswitch_e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNaviPreferSetModel;

    .line 367
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 370
    move-result-object p1

    .line 371
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqNaviPreferSetModel;

    .line 373
    goto/16 :goto_1

    .line 375
    :sswitch_f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;

    .line 377
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 380
    move-result-object p1

    .line 381
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudArrivePointOutputModel;

    .line 383
    goto/16 :goto_1

    .line 385
    :sswitch_10
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;

    .line 387
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 390
    move-result-object p1

    .line 391
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudGuideLineOutputModel;

    .line 393
    goto/16 :goto_1

    .line 395
    :sswitch_11
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudTBTInfoOutputModel;

    .line 397
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 400
    move-result-object p1

    .line 401
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudTBTInfoOutputModel;

    .line 403
    goto/16 :goto_1

    .line 405
    :sswitch_12
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqOpenNaviFuncModel;

    .line 407
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 410
    move-result-object p1

    .line 411
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqOpenNaviFuncModel;

    .line 413
    goto/16 :goto_1

    .line 415
    :sswitch_13
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    .line 417
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 420
    move-result-object p1

    .line 421
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVRKeywordsModel;

    .line 423
    goto/16 :goto_1

    .line 425
    :sswitch_14
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetNaviFuncModel;

    .line 427
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 430
    move-result-object p1

    .line 431
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetNaviFuncModel;

    .line 433
    goto/16 :goto_1

    .line 435
    :sswitch_15
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNaviFunctionCheckModel;

    .line 437
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 440
    move-result-object p1

    .line 441
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqNaviFunctionCheckModel;

    .line 443
    goto/16 :goto_1

    .line 445
    :sswitch_16
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapDownloadModel;

    .line 447
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 450
    move-result-object p1

    .line 451
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapDownloadModel;

    .line 453
    goto/16 :goto_1

    .line 455
    :sswitch_17
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetRouteContinueInfoModel;

    .line 457
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 460
    move-result-object p1

    .line 461
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetRouteContinueInfoModel;

    .line 463
    goto/16 :goto_1

    .line 465
    :sswitch_18
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchNavInfoModel;

    .line 467
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 470
    move-result-object p1

    .line 471
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchNavInfoModel;

    .line 473
    goto/16 :goto_1

    .line 475
    :sswitch_19
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    .line 477
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 480
    move-result-object p1

    .line 481
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchAlongBySpecialPointModel;

    .line 483
    goto/16 :goto_1

    .line 485
    :sswitch_1a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 487
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 490
    move-result-object p1

    .line 491
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 493
    goto/16 :goto_1

    .line 495
    :sswitch_1b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGeoDecodeModel;

    .line 497
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 500
    move-result-object p1

    .line 501
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGeoDecodeModel;

    .line 503
    goto/16 :goto_1

    .line 505
    :sswitch_1c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudRouteInfoOutputModel;

    .line 507
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 510
    move-result-object p1

    .line 511
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspArHudRouteInfoOutputModel;

    .line 513
    goto/16 :goto_1

    .line 515
    :sswitch_1d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetMapOperateResultModel;

    .line 517
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 520
    move-result-object p1

    .line 521
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetMapOperateResultModel;

    .line 523
    goto/16 :goto_1

    .line 525
    :sswitch_1e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteChangeModel;

    .line 527
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 530
    move-result-object p1

    .line 531
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteChangeModel;

    .line 533
    goto/16 :goto_1

    .line 535
    :sswitch_1f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqFuncConfigLoadingStatusModel;

    .line 537
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 540
    move-result-object p1

    .line 541
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqFuncConfigLoadingStatusModel;

    .line 543
    goto/16 :goto_1

    .line 545
    :sswitch_20
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    .line 547
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 550
    move-result-object p1

    .line 551
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    .line 553
    goto/16 :goto_1

    .line 555
    :sswitch_21
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetPlateNumberFromAutoModel;

    .line 557
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 560
    move-result-object p1

    .line 561
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetPlateNumberFromAutoModel;

    .line 563
    goto/16 :goto_1

    .line 565
    :sswitch_22
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspGetPlateNumberModel;

    .line 567
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 570
    move-result-object p1

    .line 571
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspGetPlateNumberModel;

    .line 573
    goto/16 :goto_1

    .line 575
    :sswitch_23
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetManufactureInfoFromAutoModel;

    .line 577
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 580
    move-result-object p1

    .line 581
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetManufactureInfoFromAutoModel;

    .line 583
    goto/16 :goto_1

    .line 585
    :sswitch_24
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspGetManufactureInfoModel;

    .line 587
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 590
    move-result-object p1

    .line 591
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspGetManufactureInfoModel;

    .line 593
    goto/16 :goto_1

    .line 595
    :sswitch_25
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;

    .line 597
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 600
    move-result-object p1

    .line 601
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;

    .line 603
    goto/16 :goto_1

    .line 605
    :sswitch_26
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    .line 607
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 610
    move-result-object p1

    .line 611
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    .line 613
    goto/16 :goto_1

    .line 615
    :sswitch_27
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspChannelIDModel;

    .line 617
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 620
    move-result-object p1

    .line 621
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspChannelIDModel;

    .line 623
    goto/16 :goto_1

    .line 625
    :sswitch_28
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspCarRestrictionsInfoModel;

    .line 627
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 630
    move-result-object p1

    .line 631
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspCarRestrictionsInfoModel;

    .line 633
    goto/16 :goto_1

    .line 635
    :sswitch_29
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAccountInfoFromAutoModel;

    .line 637
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 640
    move-result-object p1

    .line 641
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAccountInfoFromAutoModel;

    .line 643
    goto/16 :goto_1

    .line 645
    :sswitch_2a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    .line 647
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 650
    move-result-object p1

    .line 651
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    .line 653
    goto/16 :goto_1

    .line 655
    :sswitch_2b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNewQuerySavesModel;

    .line 657
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 660
    move-result-object p1

    .line 661
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqNewQuerySavesModel;

    .line 663
    goto/16 :goto_1

    .line 665
    :sswitch_2c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNewMidPOIsInfoNotifyModel;

    .line 667
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 670
    move-result-object p1

    .line 671
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqNewMidPOIsInfoNotifyModel;

    .line 673
    goto/16 :goto_1

    .line 675
    :sswitch_2d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 677
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 680
    move-result-object p1

    .line 681
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 683
    goto/16 :goto_1

    .line 685
    :sswitch_2e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 687
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 690
    move-result-object p1

    .line 691
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 693
    goto/16 :goto_1

    .line 695
    :sswitch_2f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    .line 697
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 700
    move-result-object p1

    .line 701
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    .line 703
    goto/16 :goto_1

    .line 705
    :sswitch_30
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAutoUpdateRollBackModel;

    .line 707
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 710
    move-result-object p1

    .line 711
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqAutoUpdateRollBackModel;

    .line 713
    goto/16 :goto_1

    .line 715
    :sswitch_31
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    .line 717
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 720
    move-result-object p1

    .line 721
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    .line 723
    goto/16 :goto_1

    .line 725
    :sswitch_32
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    .line 727
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 730
    move-result-object p1

    .line 731
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    .line 733
    goto/16 :goto_1

    .line 735
    :sswitch_33
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 737
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 740
    move-result-object p1

    .line 741
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 743
    goto/16 :goto_1

    .line 745
    :sswitch_34
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspIsNOAFunctionOpenModel;

    .line 747
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 750
    move-result-object p1

    .line 751
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspIsNOAFunctionOpenModel;

    .line 753
    goto/16 :goto_1

    .line 755
    :sswitch_35
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    .line 757
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 760
    move-result-object p1

    .line 761
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    .line 763
    goto/16 :goto_1

    .line 765
    :sswitch_36
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 767
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 770
    move-result-object p1

    .line 771
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    .line 773
    goto/16 :goto_1

    .line 775
    :sswitch_37
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArOperationInformModel;

    .line 777
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 780
    move-result-object p1

    .line 781
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspArOperationInformModel;

    .line 783
    goto/16 :goto_1

    .line 785
    :sswitch_38
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 787
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 790
    move-result-object p1

    .line 791
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    .line 793
    goto/16 :goto_1

    .line 795
    :sswitch_39
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 797
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 800
    move-result-object p1

    .line 801
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 803
    goto/16 :goto_1

    .line 805
    :sswitch_3a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;

    .line 807
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 810
    move-result-object p1

    .line 811
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;

    .line 813
    goto/16 :goto_1

    .line 815
    :sswitch_3b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    .line 817
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 820
    move-result-object p1

    .line 821
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    .line 823
    goto/16 :goto_1

    .line 825
    :sswitch_3c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    .line 827
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 830
    move-result-object p1

    .line 831
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    .line 833
    goto/16 :goto_1

    .line 835
    :sswitch_3d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSlopeAndRollAngleInfoModel;

    .line 837
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 840
    move-result-object p1

    .line 841
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspSlopeAndRollAngleInfoModel;

    .line 843
    goto/16 :goto_1

    .line 845
    :sswitch_3e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    .line 847
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 850
    move-result-object p1

    .line 851
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    .line 853
    goto/16 :goto_1

    .line 855
    :sswitch_3f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    .line 857
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 860
    move-result-object p1

    .line 861
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    .line 863
    goto/16 :goto_1

    .line 865
    :sswitch_40
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 867
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 870
    move-result-object p1

    .line 871
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    .line 873
    goto/16 :goto_1

    .line 875
    :sswitch_41
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    .line 877
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 880
    move-result-object p1

    .line 881
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    .line 883
    goto/16 :goto_1

    .line 885
    :sswitch_42
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    .line 887
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 890
    move-result-object p1

    .line 891
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    .line 893
    goto/16 :goto_1

    .line 895
    :sswitch_43
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    .line 897
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 900
    move-result-object p1

    .line 901
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    .line 903
    goto/16 :goto_1

    .line 905
    :sswitch_44
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 907
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 910
    move-result-object p1

    .line 911
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    .line 913
    goto/16 :goto_1

    .line 915
    :sswitch_45
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 917
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 920
    move-result-object p1

    .line 921
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    .line 923
    goto/16 :goto_1

    .line 925
    :sswitch_46
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    .line 927
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 930
    move-result-object p1

    .line 931
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    .line 933
    goto/16 :goto_1

    .line 935
    :sswitch_47
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    .line 937
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 940
    move-result-object p1

    .line 941
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    .line 943
    goto/16 :goto_1

    .line 945
    :sswitch_48
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 947
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 950
    move-result-object p1

    .line 951
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    .line 953
    goto/16 :goto_1

    .line 955
    :sswitch_49
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    .line 957
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 960
    move-result-object p1

    .line 961
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    .line 963
    goto/16 :goto_1

    .line 965
    :sswitch_4a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficRestrictQueryModel;

    .line 967
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 970
    move-result-object p1

    .line 971
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficRestrictQueryModel;

    .line 973
    goto/16 :goto_1

    .line 975
    :sswitch_4b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    .line 977
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 980
    move-result-object p1

    .line 981
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    .line 983
    goto/16 :goto_1

    .line 985
    :sswitch_4c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    .line 987
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 990
    move-result-object p1

    .line 991
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    .line 993
    goto/16 :goto_1

    .line 995
    :sswitch_4d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    .line 997
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1000
    move-result-object p1

    .line 1001
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    .line 1003
    goto/16 :goto_1

    .line 1005
    :sswitch_4e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    .line 1007
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1010
    move-result-object p1

    .line 1011
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    .line 1013
    goto/16 :goto_1

    .line 1015
    :sswitch_4f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    .line 1017
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1020
    move-result-object p1

    .line 1021
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    .line 1023
    goto/16 :goto_1

    .line 1025
    :sswitch_50
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 1027
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1030
    move-result-object p1

    .line 1031
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 1033
    goto/16 :goto_1

    .line 1035
    :sswitch_51
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    .line 1037
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1040
    move-result-object p1

    .line 1041
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    .line 1043
    goto/16 :goto_1

    .line 1045
    :sswitch_52
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    .line 1047
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1050
    move-result-object p1

    .line 1051
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    .line 1053
    goto/16 :goto_1

    .line 1055
    :sswitch_53
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    .line 1057
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1060
    move-result-object p1

    .line 1061
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    .line 1063
    goto/16 :goto_1

    .line 1065
    :sswitch_54
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    .line 1067
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1070
    move-result-object p1

    .line 1071
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    .line 1073
    goto/16 :goto_1

    .line 1075
    :sswitch_55
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSoftwareInfoQueryModel;

    .line 1077
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1080
    move-result-object p1

    .line 1081
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqSoftwareInfoQueryModel;

    .line 1083
    goto/16 :goto_1

    .line 1085
    :sswitch_56
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    .line 1087
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1090
    move-result-object p1

    .line 1091
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    .line 1093
    goto/16 :goto_1

    .line 1095
    :sswitch_57
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    .line 1097
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1100
    move-result-object p1

    .line 1101
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    .line 1103
    goto/16 :goto_1

    .line 1105
    :sswitch_58
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1110
    move-result-object p1

    .line 1111
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    .line 1113
    goto/16 :goto_1

    .line 1115
    :sswitch_59
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    .line 1117
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1120
    move-result-object p1

    .line 1121
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    .line 1123
    goto/16 :goto_1

    .line 1125
    :sswitch_5a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    .line 1127
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1130
    move-result-object p1

    .line 1131
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    .line 1133
    goto/16 :goto_1

    .line 1135
    :sswitch_5b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1140
    move-result-object p1

    .line 1141
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    .line 1143
    goto/16 :goto_1

    .line 1145
    :sswitch_5c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    .line 1147
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1150
    move-result-object p1

    .line 1151
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    .line 1153
    goto/16 :goto_1

    .line 1155
    :sswitch_5d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    .line 1157
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1160
    move-result-object p1

    .line 1161
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    .line 1163
    goto/16 :goto_1

    .line 1165
    :sswitch_5e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    .line 1167
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1170
    move-result-object p1

    .line 1171
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    .line 1173
    goto/16 :goto_1

    .line 1175
    :sswitch_5f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 1177
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1180
    move-result-object p1

    .line 1181
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 1183
    goto/16 :goto_1

    .line 1185
    :sswitch_60
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    .line 1187
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1190
    move-result-object p1

    .line 1191
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    .line 1193
    goto/16 :goto_1

    .line 1195
    :sswitch_61
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    .line 1197
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1200
    move-result-object p1

    .line 1201
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    .line 1203
    goto/16 :goto_1

    .line 1205
    :sswitch_62
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 1207
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1210
    move-result-object p1

    .line 1211
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 1213
    goto/16 :goto_1

    .line 1215
    :sswitch_63
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlContinueNaviTipShowOrNotModel;

    .line 1217
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1220
    move-result-object p1

    .line 1221
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlContinueNaviTipShowOrNotModel;

    .line 1223
    goto/16 :goto_1

    .line 1225
    :sswitch_64
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlCommuteTipShowOrNotModel;

    .line 1227
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1230
    move-result-object p1

    .line 1231
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlCommuteTipShowOrNotModel;

    .line 1233
    goto/16 :goto_1

    .line 1235
    :sswitch_65
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 1237
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1240
    move-result-object p1

    .line 1241
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    .line 1243
    goto/16 :goto_1

    .line 1245
    :sswitch_66
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/ReqSystemDayNightModeModel;

    .line 1247
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1250
    move-result-object p1

    .line 1251
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/ReqSystemDayNightModeModel;

    .line 1253
    goto/16 :goto_1

    .line 1255
    :sswitch_67
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 1257
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1260
    move-result-object p1

    .line 1261
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 1263
    goto/16 :goto_1

    .line 1265
    :sswitch_68
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    .line 1267
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1270
    move-result-object p1

    .line 1271
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    .line 1273
    goto/16 :goto_1

    .line 1275
    :sswitch_69
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 1277
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1280
    move-result-object p1

    .line 1281
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    .line 1283
    goto/16 :goto_1

    .line 1285
    :sswitch_6a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    .line 1287
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1290
    move-result-object p1

    .line 1291
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    .line 1293
    goto/16 :goto_1

    .line 1295
    :sswitch_6b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMinimizeAutoModel;

    .line 1297
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1300
    move-result-object p1

    .line 1301
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqMinimizeAutoModel;

    .line 1303
    goto/16 :goto_1

    .line 1305
    :sswitch_6c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    .line 1307
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1310
    move-result-object p1

    .line 1311
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    .line 1313
    goto/16 :goto_1

    .line 1315
    :sswitch_6d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;

    .line 1317
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1320
    move-result-object p1

    .line 1321
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;

    .line 1323
    goto/16 :goto_1

    .line 1325
    :sswitch_6e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    .line 1327
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1330
    move-result-object p1

    .line 1331
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    .line 1333
    goto/16 :goto_1

    .line 1335
    :sswitch_6f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    .line 1337
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1340
    move-result-object p1

    .line 1341
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    .line 1343
    goto/16 :goto_1

    .line 1345
    :sswitch_70
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/ReqGetVehicleStateModel;

    .line 1347
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1350
    move-result-object p1

    .line 1351
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/ReqGetVehicleStateModel;

    .line 1353
    goto/16 :goto_1

    .line 1355
    :sswitch_71
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;

    .line 1357
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1360
    move-result-object p1

    .line 1361
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;

    .line 1363
    goto/16 :goto_1

    .line 1365
    :sswitch_72
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    .line 1367
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1370
    move-result-object p1

    .line 1371
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    .line 1373
    goto/16 :goto_1

    .line 1375
    :sswitch_73
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    .line 1377
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1380
    move-result-object p1

    .line 1381
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    .line 1383
    goto/16 :goto_1

    .line 1385
    :sswitch_74
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    .line 1387
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1390
    move-result-object p1

    .line 1391
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    .line 1393
    goto/16 :goto_1

    .line 1395
    :sswitch_75
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 1397
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1400
    move-result-object p1

    .line 1401
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 1403
    goto/16 :goto_1

    .line 1405
    :sswitch_76
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    .line 1407
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1410
    move-result-object p1

    .line 1411
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    .line 1413
    goto/16 :goto_1

    .line 1415
    :sswitch_77
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 1417
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1420
    move-result-object p1

    .line 1421
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 1423
    goto/16 :goto_1

    .line 1425
    :sswitch_78
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSendLayoutTreeInformationToSystemModel;

    .line 1427
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1430
    move-result-object p1

    .line 1431
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/RspSendLayoutTreeInformationToSystemModel;

    .line 1433
    goto/16 :goto_1

    .line 1435
    :sswitch_79
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 1437
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1440
    move-result-object p1

    .line 1441
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 1443
    goto/16 :goto_1

    .line 1445
    :sswitch_7a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    .line 1447
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1450
    move-result-object p1

    .line 1451
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    .line 1453
    goto/16 :goto_1

    .line 1455
    :sswitch_7b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 1457
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1460
    move-result-object p1

    .line 1461
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 1463
    goto/16 :goto_1

    .line 1465
    :sswitch_7c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 1467
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1470
    move-result-object p1

    .line 1471
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 1473
    goto/16 :goto_1

    .line 1475
    :sswitch_7d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 1477
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1480
    move-result-object p1

    .line 1481
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 1483
    goto/16 :goto_1

    .line 1485
    :sswitch_7e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    .line 1487
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1490
    move-result-object p1

    .line 1491
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    .line 1493
    goto/16 :goto_1

    .line 1495
    :sswitch_7f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 1497
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1500
    move-result-object p1

    .line 1501
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 1503
    goto/16 :goto_1

    .line 1505
    :sswitch_80
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    .line 1507
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1510
    move-result-object p1

    .line 1511
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    .line 1513
    goto/16 :goto_1

    .line 1515
    :sswitch_81
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 1517
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1520
    move-result-object p1

    .line 1521
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 1523
    goto/16 :goto_1

    .line 1525
    :sswitch_82
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    .line 1527
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1530
    move-result-object p1

    .line 1531
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    .line 1533
    goto/16 :goto_1

    .line 1535
    :sswitch_83
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 1537
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1540
    move-result-object p1

    .line 1541
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 1543
    goto/16 :goto_1

    .line 1545
    :sswitch_84
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    .line 1547
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1550
    move-result-object p1

    .line 1551
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    .line 1553
    goto/16 :goto_1

    .line 1555
    :sswitch_85
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 1557
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1560
    move-result-object p1

    .line 1561
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 1563
    goto/16 :goto_1

    .line 1565
    :sswitch_86
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 1567
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1570
    move-result-object p1

    .line 1571
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 1573
    goto/16 :goto_1

    .line 1575
    :sswitch_87
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 1577
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1580
    move-result-object p1

    .line 1581
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 1583
    goto/16 :goto_1

    .line 1585
    :sswitch_88
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 1587
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1590
    move-result-object p1

    .line 1591
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 1593
    goto/16 :goto_1

    .line 1595
    :sswitch_89
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 1597
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1600
    move-result-object p1

    .line 1601
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 1603
    goto/16 :goto_1

    .line 1605
    :sswitch_8a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 1607
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1610
    move-result-object p1

    .line 1611
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 1613
    goto/16 :goto_1

    .line 1615
    :sswitch_8b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 1617
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1620
    move-result-object p1

    .line 1621
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 1623
    goto/16 :goto_1

    .line 1625
    :pswitch_11
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 1627
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1630
    move-result-object v1

    .line 1631
    goto/16 :goto_0

    .line 1633
    :pswitch_12
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;

    .line 1635
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1638
    move-result-object v1

    .line 1639
    goto/16 :goto_0

    .line 1641
    :pswitch_13
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;

    .line 1643
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1646
    move-result-object v1

    .line 1647
    goto/16 :goto_0

    .line 1649
    :pswitch_14
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;

    .line 1651
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1654
    move-result-object v1

    .line 1655
    goto/16 :goto_0

    .line 1657
    :pswitch_15
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;

    .line 1659
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1662
    move-result-object v1

    .line 1663
    goto :goto_0

    .line 1664
    :pswitch_16
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    .line 1666
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1669
    move-result-object v1

    .line 1670
    goto :goto_0

    .line 1671
    :pswitch_17
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;

    .line 1673
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1676
    move-result-object v1

    .line 1677
    goto :goto_0

    .line 1678
    :pswitch_18
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 1680
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1683
    move-result-object v1

    .line 1684
    goto :goto_0

    .line 1685
    :pswitch_19
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    .line 1687
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1690
    move-result-object v1

    .line 1691
    goto :goto_0

    .line 1692
    :pswitch_1a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 1694
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1697
    move-result-object v1

    .line 1698
    goto :goto_0

    .line 1699
    :pswitch_1b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    .line 1701
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1704
    move-result-object v1

    .line 1705
    goto :goto_0

    .line 1706
    :pswitch_1c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    .line 1708
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1711
    move-result-object v1

    .line 1712
    goto :goto_0

    .line 1713
    :pswitch_1d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    .line 1715
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1718
    move-result-object v1

    .line 1719
    goto :goto_0

    .line 1720
    :pswitch_1e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;

    .line 1722
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1725
    move-result-object v1

    .line 1726
    goto :goto_0

    .line 1727
    :pswitch_1f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 1729
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1732
    move-result-object v1

    .line 1733
    goto :goto_0

    .line 1734
    :pswitch_20
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;

    .line 1736
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1739
    move-result-object v1

    .line 1740
    goto :goto_0

    .line 1741
    :pswitch_21
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;

    .line 1743
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1746
    move-result-object v1

    .line 1747
    goto :goto_0

    .line 1748
    :pswitch_22
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 1750
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1753
    move-result-object v1

    .line 1754
    goto :goto_0

    .line 1755
    :pswitch_23
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 1757
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1760
    move-result-object v1

    .line 1761
    :goto_0
    move-object v2, v1

    .line 1762
    move-object v1, p1

    .line 1763
    move-object p1, v2

    .line 1764
    goto :goto_1

    .line 1765
    :cond_0
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 1767
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1770
    move-result-object p1

    .line 1771
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 1773
    goto :goto_1

    .line 1774
    :cond_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 1776
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1779
    move-result-object p1

    .line 1780
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 1782
    goto :goto_1

    .line 1783
    :cond_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    .line 1785
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1788
    move-result-object p1

    .line 1789
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    .line 1791
    goto :goto_1

    .line 1792
    :cond_3
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 1794
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1797
    move-result-object p1

    .line 1798
    const-class v1, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 1800
    goto :goto_1

    .line 1801
    :cond_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 1803
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1806
    move-result-object v1

    .line 1807
    goto :goto_0

    .line 1808
    :cond_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 1810
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1813
    move-result-object v1

    .line 1814
    goto :goto_0

    .line 1815
    :goto_1
    invoke-virtual {v0, p1}, Ls10;->d(Ljava/lang/String;)V

    .line 1818
    invoke-virtual {v0, v1}, Ls10;->c(Ljava/lang/Class;)V

    .line 1821
    return-object v0

    .line 1822
    nop

    .line 1823
    :pswitch_data_0
    .packed-switch 0x7530
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    .line 1841
    :pswitch_data_1
    .packed-switch 0x7538
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    .line 1857
    :pswitch_data_2
    .packed-switch 0x765c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    .line 1875
    :sswitch_data_0
    .sparse-switch
        0x76c0 -> :sswitch_8b
        0x76c2 -> :sswitch_8a
        0x76cd -> :sswitch_89
        0x76d1 -> :sswitch_88
        0x76d7 -> :sswitch_87
        0x76db -> :sswitch_86
        0x76e2 -> :sswitch_85
        0x76e4 -> :sswitch_84
        0x7724 -> :sswitch_83
        0x7726 -> :sswitch_82
        0x7728 -> :sswitch_81
        0x772b -> :sswitch_80
        0x772d -> :sswitch_7f
        0x772f -> :sswitch_7e
        0x7733 -> :sswitch_7d
        0x778c -> :sswitch_7c
        0x778f -> :sswitch_7b
        0x7850 -> :sswitch_7a
        0x78b5 -> :sswitch_79
        0xc359 -> :sswitch_78
        0x13888 -> :sswitch_77
        0x1388b -> :sswitch_76
        0x1388d -> :sswitch_75
        0x13895 -> :sswitch_74
        0x1389c -> :sswitch_73
        0x1389e -> :sswitch_72
        0x138a8 -> :sswitch_71
        0x138a9 -> :sswitch_70
        0x138aa -> :sswitch_6f
        0x138ab -> :sswitch_6e
        0x138ac -> :sswitch_6d
        0x138ad -> :sswitch_6c
        0x138ae -> :sswitch_6b
        0x138af -> :sswitch_6a
        0x138b0 -> :sswitch_69
        0x138b3 -> :sswitch_68
        0x138b4 -> :sswitch_67
        0x138b8 -> :sswitch_66
        0x138b9 -> :sswitch_65
        0x138bb -> :sswitch_64
        0x138bc -> :sswitch_63
        0x138bf -> :sswitch_62
        0x138c3 -> :sswitch_61
        0x138c4 -> :sswitch_60
        0x138c5 -> :sswitch_5f
        0x138c6 -> :sswitch_5e
        0x138c7 -> :sswitch_5d
        0x138c8 -> :sswitch_5c
        0x138c9 -> :sswitch_5b
        0x138ca -> :sswitch_5a
        0x138cb -> :sswitch_59
        0x138cc -> :sswitch_58
        0x138cd -> :sswitch_57
        0x138ce -> :sswitch_56
        0x138cf -> :sswitch_55
        0x138d1 -> :sswitch_54
        0x138d2 -> :sswitch_53
        0x138d3 -> :sswitch_52
        0x138d4 -> :sswitch_51
        0x138d5 -> :sswitch_50
        0x138d7 -> :sswitch_4f
        0x138d8 -> :sswitch_4e
        0x138d9 -> :sswitch_4d
        0x138da -> :sswitch_4c
        0x138df -> :sswitch_4b
        0x138e1 -> :sswitch_4a
        0x138e3 -> :sswitch_49
        0x138e4 -> :sswitch_48
        0x138e5 -> :sswitch_47
        0x138e6 -> :sswitch_46
        0x138e7 -> :sswitch_45
        0x138e8 -> :sswitch_44
        0x138e9 -> :sswitch_43
        0x138eb -> :sswitch_42
        0x138ec -> :sswitch_41
        0x138ed -> :sswitch_40
        0x138ee -> :sswitch_3f
        0x138ef -> :sswitch_3e
        0x138f0 -> :sswitch_3d
        0x138f1 -> :sswitch_3c
        0x138f2 -> :sswitch_3b
        0x138f3 -> :sswitch_3a
        0x138f4 -> :sswitch_39
        0x138f7 -> :sswitch_38
        0x138f8 -> :sswitch_37
        0x138fa -> :sswitch_36
        0x138fb -> :sswitch_35
        0x138fc -> :sswitch_34
        0x138ff -> :sswitch_33
        0x13900 -> :sswitch_32
        0x13901 -> :sswitch_31
        0x13903 -> :sswitch_30
        0x13904 -> :sswitch_2f
        0x13905 -> :sswitch_2e
        0x13906 -> :sswitch_2d
        0x1390a -> :sswitch_2c
        0x1390b -> :sswitch_2b
        0x1390c -> :sswitch_2a
        0x1390d -> :sswitch_29
        0x1390e -> :sswitch_28
        0x1390f -> :sswitch_27
        0x13911 -> :sswitch_26
        0x13912 -> :sswitch_25
        0x13913 -> :sswitch_24
        0x13914 -> :sswitch_23
        0x13915 -> :sswitch_22
        0x13916 -> :sswitch_21
        0x13919 -> :sswitch_20
        0x1391a -> :sswitch_1f
        0x1391c -> :sswitch_1e
        0x1391d -> :sswitch_1d
        0x1391f -> :sswitch_1c
        0x13920 -> :sswitch_1b
        0x13921 -> :sswitch_1a
        0x13922 -> :sswitch_19
        0x13923 -> :sswitch_18
        0x13924 -> :sswitch_17
        0x13925 -> :sswitch_16
        0x13926 -> :sswitch_15
        0x13928 -> :sswitch_14
        0x1392b -> :sswitch_13
        0x1392f -> :sswitch_12
        0x13930 -> :sswitch_11
        0x13931 -> :sswitch_10
        0x13932 -> :sswitch_f
        0x13933 -> :sswitch_e
        0x13934 -> :sswitch_d
        0x13935 -> :sswitch_c
        0x13936 -> :sswitch_b
        0x13937 -> :sswitch_a
        0x13938 -> :sswitch_9
        0x13939 -> :sswitch_8
        0x1393a -> :sswitch_7
        0x1393b -> :sswitch_6
        0x1393c -> :sswitch_5
        0x1393d -> :sswitch_4
        0x1393e -> :sswitch_3
        0x1393f -> :sswitch_2
        0x13940 -> :sswitch_1
        0x13941 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x76c4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x13897
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x138a2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public l(Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq70;->j:Ljava/lang/Class;

    .line 3
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lq70;->i:Ljava/lang/String;

    .line 3
    return-void
.end method

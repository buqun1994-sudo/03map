.class public Li2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li2$a;
    }
.end annotation


# instance fields
.field public a:Lkw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lkw;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lkw;-><init>(Z)V

    .line 10
    iput-object v0, p0, Li2;->a:Lkw;

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Lnc;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0, p1}, Li2;->c(Ljava/lang/String;)Lnc;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b(Lnc;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "[NewProtocol] AidlJsonDataHandle"

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 7
    const-string p1, "convertDataToClient protocolData is null"

    .line 9
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-object v0

    .line 15
    :cond_0
    const/4 v3, 0x2

    .line 16
    new-array v3, v3, [Ljava/lang/Object;

    .line 18
    invoke-virtual {p1}, Lnc;->h()I

    .line 21
    move-result v4

    .line 22
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object v4

    .line 26
    aput-object v4, v3, v2

    .line 28
    iget-boolean v4, p1, Lnc;->c:Z

    .line 30
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 33
    move-result-object v4

    .line 34
    const/4 v5, 0x1

    .line 35
    aput-object v4, v3, v5

    .line 37
    const-string v4, "convertDataToClient actionId:{?} isSuccessed:{?}"

    .line 39
    invoke-static {v1, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v3, p1, Lnc;->b:Ljava/lang/Object;

    .line 44
    check-cast v3, Li2$a;

    .line 46
    iget-object v4, v3, Li2$a;->a:Ljava/lang/String;

    .line 48
    iput-object v4, v3, Li2$a;->b:Ljava/lang/String;

    .line 50
    const-string v4, ""

    .line 52
    iput-object v4, v3, Li2$a;->a:Ljava/lang/String;

    .line 54
    iput-boolean v2, v3, Li2$a;->c:Z

    .line 56
    const-string v4, "response"

    .line 58
    iput-object v4, v3, Li2$a;->h:Ljava/lang/String;

    .line 60
    invoke-static {}, Lrv;->H()Lrv;

    .line 63
    move-result-object v4

    .line 64
    invoke-virtual {v4}, Lrv;->L()Ljava/lang/String;

    .line 67
    move-result-object v4

    .line 68
    iput-object v4, v3, Li2$a;->f:Ljava/lang/String;

    .line 70
    const/16 v4, 0xc8

    .line 72
    iput v4, v3, Li2$a;->i:I

    .line 74
    invoke-virtual {p1}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_1

    .line 80
    iget-boolean v6, v4, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 82
    if-eqz v6, :cond_1

    .line 84
    new-array v0, v5, [Ljava/lang/Object;

    .line 86
    invoke-virtual {p1}, Lnc;->h()I

    .line 89
    move-result p1

    .line 90
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    move-result-object p1

    .line 94
    aput-object p1, v0, v2

    .line 96
    const-string p1, "convertDataToClient ProtocolId={?} isNewJsonResult is true"

    .line 98
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    iget-object p1, v4, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 103
    return-object p1

    .line 104
    :cond_1
    instance-of v4, p1, Lo2;

    .line 106
    if-eqz v4, :cond_4

    .line 108
    move-object v4, p1

    .line 109
    check-cast v4, Lo2;

    .line 111
    invoke-interface {v4}, Lo2;->b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 114
    move-result-object v4

    .line 115
    if-nez v4, :cond_2

    .line 117
    new-array v3, v5, [Ljava/lang/Object;

    .line 119
    invoke-virtual {p1}, Lnc;->h()I

    .line 122
    move-result p1

    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    move-result-object p1

    .line 127
    aput-object p1, v3, v2

    .line 129
    const-string p1, "convertDataToClient ProtocolId={?} parseToAidlModel is null"

    .line 131
    invoke-static {v1, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    return-object v0

    .line 135
    :cond_2
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 138
    move-result p1

    .line 139
    if-lez p1, :cond_3

    .line 141
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->getProtocolID()I

    .line 144
    move-result p1

    .line 145
    iput p1, v3, Li2$a;->d:I

    .line 147
    :cond_3
    invoke-virtual {v4}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->toJsonObject()Lorg/json/JSONObject;

    .line 150
    move-result-object p1

    .line 151
    iput-object p1, v3, Li2$a;->j:Lorg/json/JSONObject;

    .line 153
    :cond_4
    invoke-virtual {v3}, Li2$a;->toString()Ljava/lang/String;

    .line 156
    move-result-object p1

    .line 157
    return-object p1
.end method

.method public c(Ljava/lang/String;)Lnc;
    .locals 12

    .line 1
    const-string v0, "[NewProtocol] AidlJsonDataHandle"

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 10
    return-object v2

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 14
    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lse;->c()Lse;

    .line 20
    move-result-object v4

    .line 21
    new-instance v5, Leq$a;

    .line 23
    invoke-direct {v5, v3}, Leq$a;-><init>(Ljava/lang/Object;)V

    .line 26
    const v6, 0xea73

    .line 29
    invoke-virtual {v4, v6, v5}, Lse;->setOptionalValue(ILeq$a;)V

    .line 32
    invoke-virtual {p0, v3}, Li2;->d(Lorg/json/JSONObject;)Li2$a;

    .line 35
    move-result-object v4

    .line 36
    iget v5, v4, Li2$a;->d:I

    .line 38
    iget-object v6, v4, Li2$a;->j:Lorg/json/JSONObject;

    .line 40
    const-string v7, "handleProtocolModelData protocolID={?}"

    .line 42
    const/4 v8, 0x1

    .line 43
    new-array v9, v8, [Ljava/lang/Object;

    .line 45
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v10

    .line 49
    aput-object v10, v9, v1

    .line 51
    invoke-static {v0, v7, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    const-string v7, "requestAuthor"

    .line 56
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v7

    .line 60
    const-string v9, "clientRequestAuthor"

    .line 62
    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    invoke-static {}, Lrh;->d()Lrh;

    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v3}, Lrh;->a()Lh2;

    .line 72
    move-result-object v3

    .line 73
    invoke-virtual {v3, v7}, Lp;->b(Ljava/lang/String;)Z

    .line 76
    move-result v3

    .line 77
    const/4 v7, 0x2

    .line 78
    if-eqz v3, :cond_3

    .line 80
    const-string v3, "[ALSimulate] simulateDataForAidlJson = {?}"

    .line 82
    new-array v9, v8, [Ljava/lang/Object;

    .line 84
    aput-object p1, v9, v1

    .line 86
    invoke-static {v0, v3, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-static {}, Lr70;->e()Z

    .line 92
    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Liw; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    const-string v9, ""

    .line 95
    if-eqz v3, :cond_2

    .line 97
    :try_start_1
    iget-object v3, p0, Li2;->a:Lkw;

    .line 99
    invoke-virtual {v3, v5}, Lq70;->k(I)Ls10;

    .line 102
    move-result-object v3

    .line 103
    if-eqz v3, :cond_1

    .line 105
    iget-object v10, p0, Li2;->a:Lkw;

    .line 107
    invoke-virtual {v3}, Ls10;->a()Ljava/lang/Class;

    .line 110
    move-result-object v11

    .line 111
    invoke-virtual {v10, v11}, Lq70;->l(Ljava/lang/Class;)V

    .line 114
    iget-object v10, p0, Li2;->a:Lkw;

    .line 116
    invoke-virtual {v3}, Ls10;->b()Ljava/lang/String;

    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v10, v3}, Lq70;->m(Ljava/lang/String;)V

    .line 123
    :cond_1
    iget-object v3, p0, Li2;->a:Lkw;

    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v10

    .line 140
    const-string v11, "202012101229"

    .line 142
    invoke-virtual {v3, p1, v10, v11}, Lq70;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 145
    iget-object v3, p0, Li2;->a:Lkw;

    .line 147
    invoke-virtual {v3}, Lq70;->b()V

    .line 150
    goto :goto_0

    .line 151
    :cond_2
    const-string v3, "[ALSimulate] isProtocolDebugOpen = false"

    .line 153
    new-array v10, v1, [Ljava/lang/Object;

    .line 155
    invoke-static {v0, v3, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Liw; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :goto_0
    :try_start_2
    const-string v3, "UTF-8"

    .line 160
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 163
    move-result-object v3

    .line 164
    invoke-static {v3, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    const-string v3, "[ALSimulate] base64 encode simulateData = {?}"

    .line 170
    new-array v10, v8, [Ljava/lang/Object;

    .line 172
    aput-object p1, v10, v1

    .line 174
    invoke-static {v0, v3, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Liw; {:try_start_2 .. :try_end_2} :catch_1

    .line 177
    goto :goto_1

    .line 178
    :catch_0
    move-exception v3

    .line 179
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    move-result-object v3

    .line 183
    new-array v10, v1, [Ljava/lang/Object;

    .line 185
    invoke-static {v0, v3, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    move-result-object v3

    .line 203
    invoke-static {v7, p1, v3}, Lzd0;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 206
    goto :goto_2

    .line 207
    :cond_3
    const-string p1, "[ALSimulate] simulateDataForAidlJson isNeedCollection == false"

    .line 209
    new-array v3, v1, [Ljava/lang/Object;

    .line 211
    invoke-static {v0, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    :goto_2
    const/16 p1, 0x753f

    .line 216
    if-eq v5, p1, :cond_a

    .line 218
    const/16 p1, 0x7540

    .line 220
    if-eq v5, p1, :cond_9

    .line 222
    const/16 p1, 0x76d3

    .line 224
    if-eq v5, p1, :cond_8

    .line 226
    const/16 p1, 0x76d4

    .line 228
    if-eq v5, p1, :cond_7

    .line 230
    const/16 p1, 0x76df

    .line 232
    if-eq v5, p1, :cond_6

    .line 234
    const/16 p1, 0x76e0

    .line 236
    if-eq v5, p1, :cond_5

    .line 238
    packed-switch v5, :pswitch_data_0

    .line 241
    packed-switch v5, :pswitch_data_1

    .line 244
    packed-switch v5, :pswitch_data_2

    .line 247
    sparse-switch v5, :sswitch_data_0

    .line 250
    packed-switch v5, :pswitch_data_3

    .line 253
    packed-switch v5, :pswitch_data_4

    .line 256
    packed-switch v5, :pswitch_data_5

    .line 259
    move-object p1, v2

    .line 260
    goto/16 :goto_4

    .line 262
    :pswitch_0
    new-instance p1, Lxz;

    .line 264
    invoke-direct {p1}, Lxz;-><init>()V

    .line 267
    goto/16 :goto_4

    .line 269
    :pswitch_1
    new-instance p1, La50;

    .line 271
    invoke-direct {p1}, La50;-><init>()V

    .line 274
    goto/16 :goto_4

    .line 276
    :pswitch_2
    new-instance p1, Ldo;

    .line 278
    invoke-direct {p1}, Ldo;-><init>()V

    .line 281
    goto/16 :goto_4

    .line 283
    :pswitch_3
    new-instance p1, Lfl;

    .line 285
    invoke-direct {p1}, Lfl;-><init>()V

    .line 288
    goto/16 :goto_4

    .line 290
    :pswitch_4
    new-instance p1, Lww;

    .line 292
    invoke-direct {p1}, Lww;-><init>()V

    .line 295
    goto/16 :goto_4

    .line 297
    :pswitch_5
    new-instance p1, Ltl;

    .line 299
    invoke-direct {p1}, Ltl;-><init>()V

    .line 302
    goto/16 :goto_4

    .line 304
    :pswitch_6
    new-instance p1, Lrl;

    .line 306
    invoke-direct {p1}, Lrl;-><init>()V

    .line 309
    goto/16 :goto_4

    .line 311
    :pswitch_7
    new-instance p1, Lu60;

    .line 313
    invoke-direct {p1}, Lu60;-><init>()V

    .line 316
    goto/16 :goto_4

    .line 318
    :pswitch_8
    new-instance p1, Lte;

    .line 320
    invoke-direct {p1}, Lte;-><init>()V

    .line 323
    goto/16 :goto_4

    .line 325
    :pswitch_9
    new-instance p1, Llk;

    .line 327
    invoke-direct {p1}, Llk;-><init>()V

    .line 330
    goto/16 :goto_4

    .line 332
    :pswitch_a
    new-instance p1, Lv60;

    .line 334
    invoke-direct {p1}, Lv60;-><init>()V

    .line 337
    goto/16 :goto_4

    .line 339
    :pswitch_b
    new-instance p1, Ltw;

    .line 341
    invoke-direct {p1}, Ltw;-><init>()V

    .line 344
    goto/16 :goto_4

    .line 346
    :pswitch_c
    new-instance p1, Lga0;

    .line 348
    invoke-direct {p1}, Lga0;-><init>()V

    .line 351
    goto/16 :goto_4

    .line 353
    :pswitch_d
    new-instance p1, Lxh;

    .line 355
    invoke-direct {p1}, Lxh;-><init>()V

    .line 358
    goto/16 :goto_4

    .line 360
    :pswitch_e
    new-instance p1, Lkc0;

    .line 362
    invoke-direct {p1}, Lkc0;-><init>()V

    .line 365
    goto/16 :goto_4

    .line 367
    :sswitch_0
    new-instance p1, Lbb0;

    .line 369
    invoke-direct {p1}, Lbb0;-><init>()V

    .line 372
    goto/16 :goto_4

    .line 374
    :sswitch_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;

    .line 376
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 379
    move-result-object p1

    .line 380
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;

    .line 382
    new-instance v3, Lyg;

    .line 384
    invoke-direct {v3, p1}, Lyg;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqControlTouchBeepModel;)V

    .line 387
    goto/16 :goto_3

    .line 389
    :sswitch_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    .line 391
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 394
    move-result-object p1

    .line 395
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;

    .line 397
    new-instance v3, Lid0;

    .line 399
    invoke-direct {v3, p1}, Lid0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspSetSpeedometerActionModel;)V

    .line 402
    goto/16 :goto_3

    .line 404
    :sswitch_3
    new-instance p1, Ld6;

    .line 406
    invoke-direct {p1}, Ld6;-><init>()V

    .line 409
    goto/16 :goto_4

    .line 411
    :sswitch_4
    new-instance p1, Ljj0;

    .line 413
    invoke-direct {p1}, Ljj0;-><init>()V

    .line 416
    goto/16 :goto_4

    .line 418
    :sswitch_5
    new-instance p1, Lk;

    .line 420
    invoke-direct {p1}, Lk;-><init>()V

    .line 423
    goto/16 :goto_4

    .line 425
    :sswitch_6
    new-instance p1, Ll;

    .line 427
    invoke-direct {p1}, Ll;-><init>()V

    .line 430
    goto/16 :goto_4

    .line 432
    :sswitch_7
    new-instance p1, Lyn;

    .line 434
    invoke-direct {p1}, Lyn;-><init>()V

    .line 437
    goto/16 :goto_4

    .line 439
    :sswitch_8
    new-instance p1, Lln;

    .line 441
    invoke-direct {p1}, Lln;-><init>()V

    .line 444
    goto/16 :goto_4

    .line 446
    :sswitch_9
    new-instance p1, Ltn;

    .line 448
    invoke-direct {p1}, Ltn;-><init>()V

    .line 451
    goto/16 :goto_4

    .line 453
    :sswitch_a
    new-instance p1, Lp20;

    .line 455
    invoke-direct {p1}, Lp20;-><init>()V

    .line 458
    goto/16 :goto_4

    .line 460
    :sswitch_b
    new-instance p1, Lb50;

    .line 462
    invoke-direct {p1}, Lb50;-><init>()V

    .line 465
    goto/16 :goto_4

    .line 467
    :sswitch_c
    new-instance p1, Lp40;

    .line 469
    invoke-direct {p1}, Lp40;-><init>()V

    .line 472
    goto/16 :goto_4

    .line 474
    :sswitch_d
    new-instance p1, Led0;

    .line 476
    invoke-direct {p1}, Led0;-><init>()V

    .line 479
    goto/16 :goto_4

    .line 481
    :sswitch_e
    new-instance p1, Ll20;

    .line 483
    invoke-direct {p1}, Ll20;-><init>()V

    .line 486
    goto/16 :goto_4

    .line 488
    :sswitch_f
    new-instance p1, Ltz;

    .line 490
    invoke-direct {p1}, Ltz;-><init>()V

    .line 493
    goto/16 :goto_4

    .line 495
    :sswitch_10
    new-instance p1, Lwn;

    .line 497
    invoke-direct {p1}, Lwn;-><init>()V

    .line 500
    goto/16 :goto_4

    .line 502
    :sswitch_11
    new-instance p1, Lhc0;

    .line 504
    invoke-direct {p1}, Lhc0;-><init>()V

    .line 507
    goto/16 :goto_4

    .line 509
    :sswitch_12
    new-instance p1, Lfc0;

    .line 511
    invoke-direct {p1}, Lfc0;-><init>()V

    .line 514
    goto/16 :goto_4

    .line 516
    :sswitch_13
    new-instance p1, Lhn;

    .line 518
    invoke-direct {p1}, Lhn;-><init>()V

    .line 521
    goto/16 :goto_4

    .line 523
    :sswitch_14
    new-instance p1, Lrn;

    .line 525
    invoke-direct {p1}, Lrn;-><init>()V

    .line 528
    goto/16 :goto_4

    .line 530
    :sswitch_15
    new-instance p1, Leb0;

    .line 532
    invoke-direct {p1}, Leb0;-><init>()V

    .line 535
    goto/16 :goto_4

    .line 537
    :sswitch_16
    new-instance p1, Lan;

    .line 539
    invoke-direct {p1}, Lan;-><init>()V

    .line 542
    goto/16 :goto_4

    .line 544
    :sswitch_17
    new-instance p1, Ljo;

    .line 546
    invoke-direct {p1}, Ljo;-><init>()V

    .line 549
    goto/16 :goto_4

    .line 551
    :sswitch_18
    new-instance p1, Lvn;

    .line 553
    invoke-direct {p1}, Lvn;-><init>()V

    .line 556
    goto/16 :goto_4

    .line 558
    :sswitch_19
    new-instance p1, Lpn;

    .line 560
    invoke-direct {p1}, Lpn;-><init>()V

    .line 563
    goto/16 :goto_4

    .line 565
    :sswitch_1a
    new-instance p1, Lnn;

    .line 567
    invoke-direct {p1}, Lnn;-><init>()V

    .line 570
    goto/16 :goto_4

    .line 572
    :sswitch_1b
    new-instance p1, Lao;

    .line 574
    invoke-direct {p1}, Lao;-><init>()V

    .line 577
    goto/16 :goto_4

    .line 579
    :sswitch_1c
    new-instance p1, Lkn;

    .line 581
    invoke-direct {p1}, Lkn;-><init>()V

    .line 584
    goto/16 :goto_4

    .line 586
    :sswitch_1d
    new-instance p1, Lin;

    .line 588
    invoke-direct {p1}, Lin;-><init>()V

    .line 591
    goto/16 :goto_4

    .line 593
    :sswitch_1e
    new-instance p1, Lm30;

    .line 595
    invoke-direct {p1}, Lm30;-><init>()V

    .line 598
    goto/16 :goto_4

    .line 600
    :sswitch_1f
    new-instance p1, Lj30;

    .line 602
    invoke-direct {p1}, Lj30;-><init>()V

    .line 605
    goto/16 :goto_4

    .line 607
    :sswitch_20
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 609
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 612
    move-result-object p1

    .line 613
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    .line 615
    new-instance v3, Lrf0;

    .line 617
    invoke-direct {v3, p1}, Lrf0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;)V

    .line 620
    goto/16 :goto_3

    .line 622
    :sswitch_21
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 624
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 627
    move-result-object p1

    .line 628
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    .line 630
    new-instance v3, Li30;

    .line 632
    invoke-direct {v3, p1}, Li30;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;)V

    .line 635
    goto/16 :goto_3

    .line 637
    :sswitch_22
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    .line 639
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 642
    move-result-object p1

    .line 643
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    .line 645
    new-instance v3, Lbd;

    .line 647
    invoke-direct {v3, p1}, Lbd;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;)V

    .line 650
    goto/16 :goto_3

    .line 652
    :sswitch_23
    new-instance p1, Lhb;

    .line 654
    invoke-direct {p1}, Lhb;-><init>()V

    .line 657
    goto/16 :goto_4

    .line 659
    :sswitch_24
    new-instance p1, Lp50;

    .line 661
    invoke-direct {p1}, Lp50;-><init>()V

    .line 664
    goto/16 :goto_4

    .line 666
    :sswitch_25
    new-instance p1, Ltf;

    .line 668
    invoke-direct {p1}, Ltf;-><init>()V

    .line 671
    goto/16 :goto_4

    .line 673
    :sswitch_26
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 675
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 678
    move-result-object p1

    .line 679
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    .line 681
    new-instance v3, Lwe;

    .line 683
    invoke-direct {v3, p1}, Lwe;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;)V

    .line 686
    goto/16 :goto_3

    .line 688
    :sswitch_27
    new-instance p1, Lhv;

    .line 690
    invoke-direct {p1}, Lhv;-><init>()V

    .line 693
    goto/16 :goto_4

    .line 695
    :sswitch_28
    new-instance p1, Lr5;

    .line 697
    invoke-direct {p1}, Lr5;-><init>()V

    .line 700
    goto/16 :goto_4

    .line 702
    :sswitch_29
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;

    .line 704
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 707
    move-result-object p1

    .line 708
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;

    .line 710
    new-instance v3, Lsy;

    .line 712
    invoke-direct {v3, p1}, Lsy;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;)V

    .line 715
    goto/16 :goto_3

    .line 717
    :sswitch_2a
    new-instance p1, Lma0;

    .line 719
    invoke-direct {p1}, Lma0;-><init>()V

    .line 722
    goto/16 :goto_4

    .line 724
    :sswitch_2b
    new-instance p1, Ley;

    .line 726
    invoke-direct {p1}, Ley;-><init>()V

    .line 729
    goto/16 :goto_4

    .line 731
    :sswitch_2c
    new-instance p1, Lml;

    .line 733
    invoke-direct {p1}, Lml;-><init>()V

    .line 736
    goto/16 :goto_4

    .line 738
    :sswitch_2d
    new-instance p1, Lll;

    .line 740
    invoke-direct {p1}, Lll;-><init>()V

    .line 743
    goto/16 :goto_4

    .line 745
    :sswitch_2e
    new-instance p1, Lxd0;

    .line 747
    invoke-direct {p1}, Lxd0;-><init>()V

    .line 750
    goto/16 :goto_4

    .line 752
    :sswitch_2f
    new-instance p1, Lie;

    .line 754
    invoke-direct {p1}, Lie;-><init>()V

    .line 757
    goto/16 :goto_4

    .line 759
    :sswitch_30
    new-instance p1, Lpl;

    .line 761
    invoke-direct {p1}, Lpl;-><init>()V

    .line 764
    goto/16 :goto_4

    .line 766
    :sswitch_31
    new-instance p1, Lnl;

    .line 768
    invoke-direct {p1}, Lnl;-><init>()V

    .line 771
    goto/16 :goto_4

    .line 773
    :sswitch_32
    new-instance p1, Lze;

    .line 775
    invoke-direct {p1}, Lze;-><init>()V

    .line 778
    goto/16 :goto_4

    .line 780
    :sswitch_33
    new-instance p1, Lzh0;

    .line 782
    invoke-direct {p1}, Lzh0;-><init>()V

    .line 785
    goto/16 :goto_4

    .line 787
    :sswitch_34
    new-instance p1, Lx10;

    .line 789
    invoke-direct {p1}, Lx10;-><init>()V

    .line 792
    goto/16 :goto_4

    .line 794
    :sswitch_35
    new-instance p1, Lwc0;

    .line 796
    invoke-direct {p1}, Lwc0;-><init>()V

    .line 799
    goto/16 :goto_4

    .line 801
    :sswitch_36
    new-instance p1, Lw;

    .line 803
    invoke-direct {p1}, Lw;-><init>()V

    .line 806
    goto/16 :goto_4

    .line 808
    :sswitch_37
    new-instance p1, Lll0;

    .line 810
    invoke-direct {p1}, Lll0;-><init>()V

    .line 813
    goto/16 :goto_4

    .line 815
    :sswitch_38
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 817
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 820
    move-result-object p1

    .line 821
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    .line 823
    new-instance v3, Lkd0;

    .line 825
    invoke-direct {v3, p1}, Lkd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;)V

    .line 828
    goto/16 :goto_3

    .line 830
    :sswitch_39
    new-instance p1, Lgd0;

    .line 832
    invoke-direct {p1}, Lgd0;-><init>()V

    .line 835
    goto/16 :goto_4

    .line 837
    :sswitch_3a
    new-instance p1, Lba0;

    .line 839
    invoke-direct {p1}, Lba0;-><init>()V

    .line 842
    goto/16 :goto_4

    .line 844
    :sswitch_3b
    new-instance p1, Ld60;

    .line 846
    invoke-direct {p1}, Ld60;-><init>()V

    .line 849
    goto/16 :goto_4

    .line 851
    :sswitch_3c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    .line 853
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 856
    move-result-object p1

    .line 857
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    .line 859
    new-instance v3, Le50;

    .line 861
    invoke-direct {v3, p1}, Le50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;)V

    .line 864
    goto/16 :goto_3

    .line 866
    :sswitch_3d
    new-instance p1, Lbo;

    .line 868
    invoke-direct {p1}, Lbo;-><init>()V

    .line 871
    goto/16 :goto_4

    .line 873
    :sswitch_3e
    new-instance p1, Lxe0;

    .line 875
    invoke-direct {p1}, Lxe0;-><init>()V

    .line 878
    goto/16 :goto_4

    .line 880
    :sswitch_3f
    new-instance p1, Ltl0;

    .line 882
    invoke-direct {p1}, Ltl0;-><init>()V

    .line 885
    goto/16 :goto_4

    .line 887
    :sswitch_40
    new-instance p1, Lhb0;

    .line 889
    invoke-direct {p1}, Lhb0;-><init>()V

    .line 892
    goto/16 :goto_4

    .line 894
    :sswitch_41
    new-instance p1, Lft;

    .line 896
    invoke-direct {p1}, Lft;-><init>()V

    .line 899
    goto/16 :goto_4

    .line 901
    :sswitch_42
    new-instance p1, Lyp;

    .line 903
    invoke-direct {p1}, Lyp;-><init>()V

    .line 906
    goto/16 :goto_4

    .line 908
    :sswitch_43
    new-instance p1, Lvl;

    .line 910
    invoke-direct {p1}, Lvl;-><init>()V

    .line 913
    goto/16 :goto_4

    .line 915
    :sswitch_44
    new-instance p1, Lxl;

    .line 917
    invoke-direct {p1}, Lxl;-><init>()V

    .line 920
    goto/16 :goto_4

    .line 922
    :sswitch_45
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 924
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 927
    move-result-object p1

    .line 928
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    .line 930
    new-instance v3, Lxh0;

    .line 932
    invoke-direct {v3, p1}, Lxh0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;)V

    .line 935
    goto/16 :goto_3

    .line 937
    :sswitch_46
    new-instance p1, Lf1;

    .line 939
    invoke-direct {p1}, Lf1;-><init>()V

    .line 942
    goto/16 :goto_4

    .line 944
    :sswitch_47
    new-instance p1, Lxg;

    .line 946
    invoke-direct {p1}, Lxg;-><init>()V

    .line 949
    goto/16 :goto_4

    .line 951
    :sswitch_48
    new-instance p1, Lvg;

    .line 953
    invoke-direct {p1}, Lvg;-><init>()V

    .line 956
    goto/16 :goto_4

    .line 958
    :sswitch_49
    new-instance p1, Lem;

    .line 960
    invoke-direct {p1}, Lem;-><init>()V

    .line 963
    goto/16 :goto_4

    .line 965
    :sswitch_4a
    new-instance p1, Lgk0;

    .line 967
    invoke-direct {p1}, Lgk0;-><init>()V

    .line 970
    goto/16 :goto_4

    .line 972
    :sswitch_4b
    new-instance p1, Lv5;

    .line 974
    invoke-direct {p1}, Lv5;-><init>()V

    .line 977
    goto/16 :goto_4

    .line 979
    :sswitch_4c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    .line 981
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 984
    move-result-object p1

    .line 985
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    .line 987
    new-instance v3, Li5;

    .line 989
    invoke-direct {v3, p1}, Li5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;)V

    .line 992
    goto/16 :goto_3

    .line 994
    :sswitch_4d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 996
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 999
    move-result-object p1

    .line 1000
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 1002
    new-instance v3, Lql0;

    .line 1004
    invoke-direct {v3, p1}, Lql0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;)V

    .line 1007
    goto/16 :goto_3

    .line 1009
    :sswitch_4e
    new-instance p1, Lgv;

    .line 1011
    invoke-direct {p1}, Lgv;-><init>()V

    .line 1014
    goto/16 :goto_4

    .line 1016
    :sswitch_4f
    invoke-static {}, Lib;->h()Z

    .line 1019
    move-result p1

    .line 1020
    if-eqz p1, :cond_4

    .line 1022
    new-instance p1, La00;

    .line 1024
    invoke-direct {p1}, La00;-><init>()V

    .line 1027
    goto/16 :goto_4

    .line 1029
    :cond_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 1031
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1034
    move-result-object p1

    .line 1035
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    .line 1037
    new-instance v3, Lda0;

    .line 1039
    invoke-direct {v3, p1}, Lda0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;)V

    .line 1042
    goto/16 :goto_3

    .line 1044
    :sswitch_50
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 1046
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1049
    move-result-object p1

    .line 1050
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    .line 1052
    new-instance v3, Ljd0;

    .line 1054
    invoke-direct {v3, p1}, Ljd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;)V

    .line 1057
    goto/16 :goto_3

    .line 1059
    :sswitch_51
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    .line 1061
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1064
    move-result-object p1

    .line 1065
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    .line 1067
    new-instance v3, Lcl;

    .line 1069
    invoke-direct {v3, p1}, Lcl;-><init>(Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;)V

    .line 1072
    goto/16 :goto_3

    .line 1074
    :sswitch_52
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 1076
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1079
    move-result-object p1

    .line 1080
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    .line 1082
    new-instance v3, Ls90;

    .line 1084
    invoke-direct {v3, p1}, Ls90;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;)V

    .line 1087
    goto/16 :goto_3

    .line 1089
    :sswitch_53
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 1091
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1094
    move-result-object p1

    .line 1095
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    .line 1097
    new-instance v3, Lhk0;

    .line 1099
    invoke-direct {v3, p1}, Lhk0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;)V

    .line 1102
    goto/16 :goto_3

    .line 1104
    :sswitch_54
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;

    .line 1106
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1109
    move-result-object p1

    .line 1110
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;

    .line 1112
    new-instance v3, Lw40;

    .line 1114
    invoke-direct {v3, p1}, Lw40;-><init>(Lcom/autonavi/amapauto/protocol/model/service/ResponseOilVolume;)V

    .line 1117
    goto/16 :goto_3

    .line 1119
    :sswitch_55
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 1121
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1124
    move-result-object p1

    .line 1125
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 1127
    new-instance v3, Lna0;

    .line 1129
    invoke-direct {v3, p1}, Lna0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;)V

    .line 1132
    goto/16 :goto_3

    .line 1134
    :sswitch_56
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    .line 1136
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1139
    move-result-object p1

    .line 1140
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    .line 1142
    new-instance v3, Lpa0;

    .line 1144
    invoke-direct {v3, p1}, Lpa0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;)V

    .line 1147
    goto/16 :goto_3

    .line 1149
    :sswitch_57
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 1151
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1154
    move-result-object p1

    .line 1155
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    .line 1157
    new-instance v3, Lx1;

    .line 1159
    invoke-direct {v3, p1}, Lx1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;)V

    .line 1162
    goto/16 :goto_3

    .line 1164
    :sswitch_58
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    .line 1166
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1169
    move-result-object p1

    .line 1170
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    .line 1172
    new-instance v3, Lmn;

    .line 1174
    invoke-direct {v3, p1}, Lmn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;)V

    .line 1177
    goto/16 :goto_3

    .line 1179
    :sswitch_59
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 1181
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1184
    move-result-object p1

    .line 1185
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    .line 1187
    new-instance v3, Lgz;

    .line 1189
    invoke-direct {v3, p1}, Lgz;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;)V

    .line 1192
    goto/16 :goto_3

    .line 1194
    :sswitch_5a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    .line 1196
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1199
    move-result-object p1

    .line 1200
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    .line 1202
    new-instance v3, Lee;

    .line 1204
    invoke-direct {v3, p1}, Lee;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;)V

    .line 1207
    goto/16 :goto_3

    .line 1209
    :sswitch_5b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 1211
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1214
    move-result-object p1

    .line 1215
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 1217
    new-instance v3, Lvc;

    .line 1219
    invoke-direct {v3, p1}, Lvc;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;)V

    .line 1222
    goto/16 :goto_3

    .line 1224
    :sswitch_5c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    .line 1226
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1229
    move-result-object p1

    .line 1230
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    .line 1232
    new-instance v3, Lkh0;

    .line 1234
    invoke-direct {v3, p1}, Lkh0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;)V

    .line 1237
    goto/16 :goto_3

    .line 1239
    :sswitch_5d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 1241
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1244
    move-result-object p1

    .line 1245
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    .line 1247
    new-instance v3, Lce;

    .line 1249
    invoke-direct {v3, p1}, Lce;-><init>(Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;)V

    .line 1252
    goto/16 :goto_3

    .line 1254
    :sswitch_5e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 1256
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1259
    move-result-object p1

    .line 1260
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    .line 1262
    new-instance v3, Lmf0;

    .line 1264
    invoke-direct {v3, p1}, Lmf0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;)V

    .line 1267
    goto/16 :goto_3

    .line 1269
    :sswitch_5f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 1271
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1274
    move-result-object p1

    .line 1275
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    .line 1277
    new-instance v3, Lyk;

    .line 1279
    invoke-direct {v3, p1}, Lyk;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;)V

    .line 1282
    goto/16 :goto_3

    .line 1284
    :sswitch_60
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 1286
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1289
    move-result-object p1

    .line 1290
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    .line 1292
    new-instance v3, Lrc0;

    .line 1294
    invoke-direct {v3, p1}, Lrc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;)V

    .line 1297
    goto/16 :goto_3

    .line 1299
    :sswitch_61
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 1301
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1304
    move-result-object p1

    .line 1305
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    .line 1307
    new-instance v3, Lo40;

    .line 1309
    invoke-direct {v3, p1}, Lo40;-><init>(Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;)V

    .line 1312
    goto/16 :goto_3

    .line 1314
    :sswitch_62
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 1316
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1319
    move-result-object p1

    .line 1320
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 1322
    new-instance v3, Lqd0;

    .line 1324
    invoke-direct {v3, p1}, Lqd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;)V

    .line 1327
    goto/16 :goto_3

    .line 1329
    :sswitch_63
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    .line 1331
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1334
    move-result-object p1

    .line 1335
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    .line 1337
    new-instance v3, Lj20;

    .line 1339
    invoke-direct {v3, p1}, Lj20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;)V

    .line 1342
    goto/16 :goto_3

    .line 1344
    :sswitch_64
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 1346
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1349
    move-result-object p1

    .line 1350
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    .line 1352
    new-instance v3, Lr20;

    .line 1354
    invoke-direct {v3, p1}, Lr20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;)V

    .line 1357
    goto/16 :goto_3

    .line 1359
    :sswitch_65
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    .line 1361
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1364
    move-result-object p1

    .line 1365
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    .line 1367
    new-instance v3, Lty;

    .line 1369
    invoke-direct {v3, p1}, Lty;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;)V

    .line 1372
    goto/16 :goto_3

    .line 1374
    :sswitch_66
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    .line 1376
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1379
    move-result-object p1

    .line 1380
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    .line 1382
    new-instance v3, Luw;

    .line 1384
    invoke-direct {v3, p1}, Luw;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;)V

    .line 1387
    goto/16 :goto_3

    .line 1389
    :sswitch_67
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 1391
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1394
    move-result-object p1

    .line 1395
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 1397
    new-instance v3, Lo20;

    .line 1399
    invoke-direct {v3, p1}, Lo20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;)V

    .line 1402
    goto/16 :goto_3

    .line 1404
    :sswitch_68
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 1406
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1409
    move-result-object p1

    .line 1410
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    .line 1412
    new-instance v3, Lq20;

    .line 1414
    invoke-direct {v3, p1}, Lq20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;)V

    .line 1417
    goto/16 :goto_3

    .line 1419
    :sswitch_69
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 1421
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1424
    move-result-object p1

    .line 1425
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    .line 1427
    new-instance v3, Lsc0;

    .line 1429
    invoke-direct {v3, p1}, Lsc0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;)V

    .line 1432
    goto/16 :goto_3

    .line 1434
    :sswitch_6a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 1436
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1439
    move-result-object p1

    .line 1440
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    .line 1442
    new-instance v3, Lib0;

    .line 1444
    invoke-direct {v3, p1}, Lib0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;)V

    .line 1447
    goto/16 :goto_3

    .line 1449
    :sswitch_6b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 1451
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1454
    move-result-object p1

    .line 1455
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    .line 1457
    new-instance v3, Lpp;

    .line 1459
    invoke-direct {v3, p1}, Lpp;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;)V

    .line 1462
    goto/16 :goto_3

    .line 1464
    :pswitch_f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 1466
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1469
    move-result-object p1

    .line 1470
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    .line 1472
    new-instance v3, Lf50;

    .line 1474
    invoke-direct {v3, p1}, Lf50;-><init>(Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;)V

    .line 1477
    goto/16 :goto_3

    .line 1479
    :pswitch_10
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;

    .line 1481
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1484
    move-result-object p1

    .line 1485
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;

    .line 1487
    new-instance v3, Ljp;

    .line 1489
    invoke-direct {v3, p1}, Ljp;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;)V

    .line 1492
    goto/16 :goto_3

    .line 1494
    :pswitch_11
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;

    .line 1496
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1499
    move-result-object p1

    .line 1500
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;

    .line 1502
    new-instance v3, Ly5;

    .line 1504
    invoke-direct {v3, p1}, Ly5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;)V

    .line 1507
    goto/16 :goto_3

    .line 1509
    :pswitch_12
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;

    .line 1511
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1514
    move-result-object p1

    .line 1515
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;

    .line 1517
    new-instance v3, Lt2;

    .line 1519
    invoke-direct {v3, p1}, Lt2;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;)V

    .line 1522
    goto/16 :goto_3

    .line 1524
    :pswitch_13
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;

    .line 1526
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1529
    move-result-object p1

    .line 1530
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;

    .line 1532
    new-instance v3, Ly5;

    .line 1534
    invoke-direct {v3, p1}, Ly5;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;)V

    .line 1537
    goto/16 :goto_3

    .line 1539
    :pswitch_14
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    .line 1541
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1544
    move-result-object p1

    .line 1545
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    .line 1547
    new-instance v3, Lpw;

    .line 1549
    invoke-direct {v3, p1}, Lpw;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;)V

    .line 1552
    goto/16 :goto_3

    .line 1554
    :pswitch_15
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;

    .line 1556
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1559
    move-result-object p1

    .line 1560
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;

    .line 1562
    new-instance v3, Lym;

    .line 1564
    invoke-direct {v3, p1}, Lym;-><init>(Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;)V

    .line 1567
    goto/16 :goto_3

    .line 1569
    :pswitch_16
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 1571
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1574
    move-result-object p1

    .line 1575
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    .line 1577
    new-instance v3, Lo60;

    .line 1579
    invoke-direct {v3, p1}, Lo60;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;)V

    .line 1582
    goto/16 :goto_3

    .line 1584
    :pswitch_17
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    .line 1586
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1589
    move-result-object p1

    .line 1590
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    .line 1592
    new-instance v3, Lhd0;

    .line 1594
    invoke-direct {v3, p1}, Lhd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;)V

    .line 1597
    goto/16 :goto_3

    .line 1599
    :pswitch_18
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 1601
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1604
    move-result-object p1

    .line 1605
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    .line 1607
    new-instance v3, Leo;

    .line 1609
    invoke-direct {v3, p1}, Leo;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;)V

    .line 1612
    goto/16 :goto_3

    .line 1614
    :pswitch_19
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    .line 1616
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1619
    move-result-object p1

    .line 1620
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    .line 1622
    new-instance v3, Lg1;

    .line 1624
    invoke-direct {v3, p1}, Lg1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;)V

    .line 1627
    goto/16 :goto_3

    .line 1629
    :pswitch_1a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    .line 1631
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1634
    move-result-object p1

    .line 1635
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    .line 1637
    new-instance v3, Lc20;

    .line 1639
    invoke-direct {v3, p1}, Lc20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;)V

    .line 1642
    goto :goto_3

    .line 1643
    :pswitch_1b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    .line 1645
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1648
    move-result-object p1

    .line 1649
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    .line 1651
    new-instance v3, Ln20;

    .line 1653
    invoke-direct {v3, p1}, Ln20;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;)V

    .line 1656
    goto :goto_3

    .line 1657
    :pswitch_1c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;

    .line 1659
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1662
    move-result-object p1

    .line 1663
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;

    .line 1665
    new-instance v3, Lxn;

    .line 1667
    invoke-direct {v3, p1}, Lxn;-><init>(Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;)V

    .line 1670
    goto :goto_3

    .line 1671
    :pswitch_1d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 1673
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1676
    move-result-object p1

    .line 1677
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    .line 1679
    new-instance v3, Lw1;

    .line 1681
    invoke-direct {v3, p1}, Lw1;-><init>(Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;)V

    .line 1684
    goto :goto_3

    .line 1685
    :pswitch_1e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;

    .line 1687
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1690
    move-result-object p1

    .line 1691
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;

    .line 1693
    new-instance v3, Lth0;

    .line 1695
    invoke-direct {v3, p1}, Lth0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;)V

    .line 1698
    goto :goto_3

    .line 1699
    :pswitch_1f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;

    .line 1701
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1704
    move-result-object p1

    .line 1705
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;

    .line 1707
    new-instance v3, Ltd0;

    .line 1709
    invoke-direct {v3, p1}, Ltd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;)V

    .line 1712
    goto :goto_3

    .line 1713
    :pswitch_20
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 1715
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1718
    move-result-object p1

    .line 1719
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 1721
    new-instance v3, Lub;

    .line 1723
    invoke-direct {v3, p1}, Lub;-><init>(Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;)V

    .line 1726
    goto :goto_3

    .line 1727
    :pswitch_21
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 1729
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1732
    move-result-object p1

    .line 1733
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    .line 1735
    new-instance v3, Lyz;

    .line 1737
    invoke-direct {v3, p1}, Lyz;-><init>(Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;)V

    .line 1740
    :goto_3
    move-object p1, v3

    .line 1741
    goto :goto_4

    .line 1742
    :cond_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 1744
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1747
    move-result-object p1

    .line 1748
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    .line 1750
    new-instance v3, Lfd0;

    .line 1752
    invoke-direct {v3, p1}, Lfd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;)V

    .line 1755
    goto :goto_3

    .line 1756
    :cond_6
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 1758
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1761
    move-result-object p1

    .line 1762
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    .line 1764
    new-instance v3, Lld0;

    .line 1766
    invoke-direct {v3, p1}, Lld0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;)V

    .line 1769
    goto :goto_3

    .line 1770
    :cond_7
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    .line 1772
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1775
    move-result-object p1

    .line 1776
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    .line 1778
    new-instance v3, Lv40;

    .line 1780
    invoke-direct {v3, p1}, Lv40;-><init>(Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;)V

    .line 1783
    goto :goto_3

    .line 1784
    :cond_8
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 1786
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1789
    move-result-object p1

    .line 1790
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    .line 1792
    new-instance v3, Lsb;

    .line 1794
    invoke-direct {v3, p1}, Lsb;-><init>(Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;)V

    .line 1797
    goto :goto_3

    .line 1798
    :cond_9
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 1800
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1803
    move-result-object p1

    .line 1804
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    .line 1806
    new-instance v3, Lmd0;

    .line 1808
    invoke-direct {v3, p1}, Lmd0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;)V

    .line 1811
    goto :goto_3

    .line 1812
    :cond_a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 1814
    invoke-static {v6, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 1817
    move-result-object p1

    .line 1818
    check-cast p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    .line 1820
    new-instance v3, Llf0;

    .line 1822
    invoke-direct {v3, p1}, Llf0;-><init>(Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;)V

    .line 1825
    goto :goto_3

    .line 1826
    :goto_4
    if-eqz p1, :cond_c

    .line 1828
    iput-object v4, p1, Lnc;->b:Ljava/lang/Object;

    .line 1830
    invoke-virtual {p1, v5}, Lnc;->t(I)V

    .line 1833
    sget-boolean v3, Li;->a:Z

    .line 1835
    if-nez v3, :cond_b

    .line 1837
    invoke-static {}, Li;->b()Z

    .line 1840
    move-result v3

    .line 1841
    if-eqz v3, :cond_c

    .line 1843
    :cond_b
    iget-object v3, v4, Li2$a;->a:Ljava/lang/String;

    .line 1845
    invoke-static {v3, v1}, Lah;->k(Ljava/lang/String;I)I

    .line 1848
    move-result v3

    .line 1849
    const-string v4, "galtest protocolId:{?} requestCode:{?}"

    .line 1851
    new-array v6, v7, [Ljava/lang/Object;

    .line 1853
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1856
    move-result-object v5

    .line 1857
    aput-object v5, v6, v1

    .line 1859
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1862
    move-result-object v5

    .line 1863
    aput-object v5, v6, v8

    .line 1865
    invoke-static {v0, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1868
    if-eqz v3, :cond_c

    .line 1870
    invoke-virtual {p1, v3}, Lnc;->u(I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Liw; {:try_start_3 .. :try_end_3} :catch_1

    .line 1873
    :cond_c
    return-object p1

    .line 1874
    :catch_1
    move-exception p1

    .line 1875
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1878
    move-result-object v3

    .line 1879
    new-array v1, v1, [Ljava/lang/Object;

    .line 1881
    invoke-static {v0, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1884
    return-object v2

    .line 1885
    :catch_2
    move-exception p1

    .line 1886
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1889
    move-result-object v3

    .line 1890
    new-array v1, v1, [Ljava/lang/Object;

    .line 1892
    invoke-static {v0, v3, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 1895
    return-object v2

    .line 1896
    nop

    :pswitch_data_0
    .packed-switch 0x7530
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7538
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x765c
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_14
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x76c0 -> :sswitch_6b
        0x76c2 -> :sswitch_6a
        0x76c4 -> :sswitch_69
        0x76c5 -> :sswitch_68
        0x76c6 -> :sswitch_67
        0x76c7 -> :sswitch_66
        0x76c8 -> :sswitch_65
        0x76c9 -> :sswitch_64
        0x76ca -> :sswitch_63
        0x76cb -> :sswitch_62
        0x76cd -> :sswitch_61
        0x76d1 -> :sswitch_60
        0x76d7 -> :sswitch_5f
        0x76db -> :sswitch_5e
        0x76e2 -> :sswitch_5d
        0x76e4 -> :sswitch_5c
        0x7724 -> :sswitch_5b
        0x7726 -> :sswitch_5a
        0x7728 -> :sswitch_59
        0x772b -> :sswitch_58
        0x772d -> :sswitch_57
        0x772f -> :sswitch_56
        0x7733 -> :sswitch_55
        0x7789 -> :sswitch_54
        0x778c -> :sswitch_53
        0x778f -> :sswitch_52
        0x7850 -> :sswitch_51
        0x78b5 -> :sswitch_50
        0x13888 -> :sswitch_4f
        0x1388b -> :sswitch_4e
        0x1388d -> :sswitch_4d
        0x13895 -> :sswitch_4c
        0x1389e -> :sswitch_4b
        0x138a8 -> :sswitch_4a
        0x138b3 -> :sswitch_49
        0x138bb -> :sswitch_48
        0x138bc -> :sswitch_47
        0x138c3 -> :sswitch_46
        0x138c5 -> :sswitch_45
        0x138c8 -> :sswitch_44
        0x138c9 -> :sswitch_43
        0x138ca -> :sswitch_42
        0x138cb -> :sswitch_41
        0x138cc -> :sswitch_40
        0x138cd -> :sswitch_3f
        0x138ce -> :sswitch_3e
        0x138cf -> :sswitch_3d
        0x138d1 -> :sswitch_3c
        0x138d2 -> :sswitch_3b
        0x138d3 -> :sswitch_3a
        0x138d4 -> :sswitch_39
        0x138d5 -> :sswitch_38
        0x138d7 -> :sswitch_37
        0x138d8 -> :sswitch_36
        0x138d9 -> :sswitch_35
        0x138da -> :sswitch_34
        0x138e1 -> :sswitch_33
        0x138e3 -> :sswitch_32
        0x138e5 -> :sswitch_31
        0x138e6 -> :sswitch_30
        0x138e8 -> :sswitch_2f
        0x138eb -> :sswitch_2e
        0x138ee -> :sswitch_2d
        0x138ef -> :sswitch_2c
        0x138f1 -> :sswitch_2b
        0x138f2 -> :sswitch_2a
        0x138f3 -> :sswitch_29
        0x138fb -> :sswitch_28
        0x138fc -> :sswitch_27
        0x138ff -> :sswitch_26
        0x13900 -> :sswitch_25
        0x13901 -> :sswitch_24
        0x13903 -> :sswitch_23
        0x13904 -> :sswitch_22
        0x13905 -> :sswitch_21
        0x13906 -> :sswitch_20
        0x1390a -> :sswitch_1f
        0x1390b -> :sswitch_1e
        0x1390c -> :sswitch_1d
        0x1390d -> :sswitch_1c
        0x13911 -> :sswitch_1b
        0x13913 -> :sswitch_1a
        0x13914 -> :sswitch_19
        0x13916 -> :sswitch_18
        0x13919 -> :sswitch_17
        0x1391a -> :sswitch_16
        0x1391c -> :sswitch_15
        0x1391d -> :sswitch_14
        0x13920 -> :sswitch_13
        0x13922 -> :sswitch_12
        0x13923 -> :sswitch_11
        0x13924 -> :sswitch_10
        0x13925 -> :sswitch_f
        0x13926 -> :sswitch_e
        0x13928 -> :sswitch_d
        0x1392b -> :sswitch_c
        0x1392f -> :sswitch_b
        0x13933 -> :sswitch_a
        0x13935 -> :sswitch_9
        0x13936 -> :sswitch_8
        0x13937 -> :sswitch_7
        0x13938 -> :sswitch_6
        0x13939 -> :sswitch_5
        0x1393a -> :sswitch_4
        0x1393c -> :sswitch_3
        0x1393e -> :sswitch_2
        0x1393f -> :sswitch_1
        0x13940 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x13897
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x138a3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x138aa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lorg/json/JSONObject;)Li2$a;
    .locals 2

    .line 1
    new-instance v0, Li2$a;

    .line 3
    invoke-direct {v0}, Li2$a;-><init>()V

    .line 6
    const-string v1, "requestCode"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Li2$a;->a:Ljava/lang/String;

    .line 14
    const-string v1, "responseCode"

    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Li2$a;->b:Ljava/lang/String;

    .line 22
    const-string v1, "needResponse"

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 27
    move-result v1

    .line 28
    iput-boolean v1, v0, Li2$a;->c:Z

    .line 30
    const-string v1, "protocolId"

    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 35
    move-result v1

    .line 36
    iput v1, v0, Li2$a;->d:I

    .line 38
    const-string v1, "versionName"

    .line 40
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Li2$a;->e:Ljava/lang/String;

    .line 46
    const-string v1, "requestAuthor"

    .line 48
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 52
    iput-object v1, v0, Li2$a;->f:Ljava/lang/String;

    .line 54
    const-string v1, "message"

    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    iput-object v1, v0, Li2$a;->g:Ljava/lang/String;

    .line 62
    const-string v1, "messageType"

    .line 64
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    iput-object v1, v0, Li2$a;->h:Ljava/lang/String;

    .line 70
    const-string v1, "statusCode"

    .line 72
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 75
    move-result v1

    .line 76
    iput v1, v0, Li2$a;->i:I

    .line 78
    const-string v1, "data"

    .line 80
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 83
    move-result-object v1

    .line 84
    iput-object v1, v0, Li2$a;->j:Lorg/json/JSONObject;

    .line 86
    const-string v1, "clientRequestAuthor"

    .line 88
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    iput-object p1, v0, Li2$a;->k:Ljava/lang/String;

    .line 94
    return-object v0
.end method

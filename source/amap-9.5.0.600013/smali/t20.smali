.class public Lt20;
.super Lh20;
.source "SourceFile"


# instance fields
.field public a:Lv2;

.field public b:Landroid/os/Handler;

.field public c:Lu20;

.field public d:Lpj0;

.field public e:Lrr;

.field public f:Z

.field public g:Lic0;

.field public h:Li80;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lh20;-><init>()V

    .line 4
    new-instance v0, Lt20$a;

    .line 6
    invoke-direct {v0, p0}, Lt20$a;-><init>(Lt20;)V

    .line 9
    iput-object v0, p0, Lt20;->e:Lrr;

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lt20;->f:Z

    .line 14
    const/4 v1, 0x0

    .line 15
    iput-object v1, p0, Lt20;->g:Lic0;

    .line 17
    const-string v1, " NaviVoiceClient(Context context)"

    .line 19
    new-array v2, v0, [Ljava/lang/Object;

    .line 21
    const-string v3, "NaviVoice"

    .line 23
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-string v1, " [VoiceRecognition] NaviVoiceClient NaviVoiceClient"

    .line 28
    new-array v0, v0, [Ljava/lang/Object;

    .line 30
    const-string v2, ""

    .line 32
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    new-instance v0, Landroid/os/Handler;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    iput-object v0, p0, Lt20;->b:Landroid/os/Handler;

    .line 46
    invoke-virtual {p0, p1}, Lt20;->o(Landroid/content/Context;)V

    .line 49
    return-void
.end method

.method public static E(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NaviVoice"

    .line 6
    const-string v3, " NaviVoice startUp"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, " [VoiceRecognition] NaviVoiceClient startUp"

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v2, ""

    .line 17
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v0, Lt20;

    .line 22
    invoke-direct {v0, p0}, Lt20;-><init>(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lv20;->a()Lv20;

    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {p0, v0}, Lv20;->c(Li20;)V

    .line 32
    return-void
.end method

.method public static synthetic a(Lt20;)Lrr;
    .locals 0

    .line 1
    iget-object p0, p0, Lt20;->e:Lrr;

    .line 3
    return-object p0
.end method

.method public static synthetic b(Lt20;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lt20;->C(Ljava/lang/String;I)V

    .line 4
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, ""

    .line 6
    const-string v3, " [VoiceRecognition] NaviVoiceClient showMyPosition"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 13
    iget-boolean v1, v1, Lpj0;->l:Z

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 18
    const-string v1, " [VoiceRecognition] NaviVoiceClient showMyPosition mVRFunctionSwitch.showMyPosition == true"

    .line 20
    new-array v4, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lt20;->a:Lv2;

    .line 27
    invoke-virtual {v1}, Lv2;->C()V

    .line 30
    const-string v1, " [VoiceRecognition] NaviVoiceClient showMyPosition return true"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v3

    .line 38
    :cond_0
    const-string v1, " [VoiceRecognition] NaviVoiceClient showMyPosition return false"

    .line 40
    new-array v3, v0, [Ljava/lang/Object;

    .line 42
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return v0
.end method

.method public B(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lh20;->B(Ljava/lang/String;)Z

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p1, v1, v2

    .line 10
    const-string v3, ""

    .line 12
    const-string v4, " [VoiceRecognition] NaviVoiceClient showOnMap parameters = {?}"

    .line 14
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 19
    iget-boolean v1, v1, Lpj0;->r:Z

    .line 21
    if-nez v1, :cond_0

    .line 23
    const-string p1, " [VoiceRecognition] NaviVoiceClient showOnMap !mVRFunctionSwitch.showOnMap"

    .line 25
    new-array v0, v2, [Ljava/lang/Object;

    .line 27
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    return v2

    .line 31
    :cond_0
    invoke-static {p1}, Lmw;->f(Ljava/lang/String;)Lcom/autonavi/iflytek/bean/Poi;

    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 37
    const-string p1, " [VoiceRecognition] AutoIntentController doShowOnMap poi == null"

    .line 39
    new-array v0, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    return v2

    .line 45
    :cond_1
    iget-object v1, p0, Lt20;->a:Lv2;

    .line 47
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->r()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, v2, v3, v4, p1}, Lv2;->D(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return v0
.end method

.method public final C(Ljava/lang/String;I)V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "startSearchPoi searchType:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "TAG_ADAPTER"

    .line 23
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x2

    .line 27
    new-array v0, v0, [Ljava/lang/Object;

    .line 29
    aput-object p1, v0, v1

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object v2

    .line 35
    const/4 v4, 0x1

    .line 36
    aput-object v2, v0, v4

    .line 38
    const-string v2, ""

    .line 40
    const-string v5, " [VoiceRecognition] NaviVoiceClient startSearchPoi searchType = {?} requestCode = {?}"

    .line 42
    invoke-static {v2, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    const v5, 0x7f0d001c

    .line 53
    invoke-static {v5}, Lta0;->d(I)Ljava/lang/String;

    .line 56
    move-result-object v5

    .line 57
    const v6, 0x7f0d001b

    .line 60
    invoke-static {v6}, Lta0;->d(I)Ljava/lang/String;

    .line 63
    move-result-object v6

    .line 64
    const v7, 0x7f0d001e

    .line 67
    invoke-static {v7}, Lta0;->d(I)Ljava/lang/String;

    .line 70
    move-result-object v7

    .line 71
    invoke-static {}, La7;->c()La7;

    .line 74
    move-result-object v8

    .line 75
    invoke-virtual {v8}, La7;->d()Z

    .line 78
    move-result v8

    .line 79
    const-string v9, "RESULT_NO_MATCH error"

    .line 81
    const-string v10, " [VoiceRecognition] NaviVoiceClient startSearchPoi RemoteException = {?}"

    .line 83
    const/4 v11, -0x4

    .line 84
    if-nez v8, :cond_0

    .line 86
    const-string v8, " [VoiceRecognition] NaviVoiceClient isBackgroudLoaded false"

    .line 88
    new-array v12, v1, [Ljava/lang/Object;

    .line 90
    invoke-static {v2, v8, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    :try_start_0
    sget-object v8, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 95
    invoke-interface {v8, p2, v11, v7}, Lm20;->M0(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    return-void

    .line 99
    :catch_0
    move-exception v8

    .line 100
    new-array v12, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {v3, v9, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    new-array v12, v4, [Ljava/lang/Object;

    .line 107
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 110
    move-result-object v8

    .line 111
    aput-object v8, v12, v1

    .line 113
    invoke-static {v2, v10, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    :cond_0
    invoke-virtual {p0}, Lt20;->r()Z

    .line 119
    move-result v8

    .line 120
    if-eqz v8, :cond_1

    .line 122
    const-string v6, " [VoiceRecognition] NaviVoiceClient startSearchPoi isCityOrArea"

    .line 124
    new-array v8, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v2, v6, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v6, p0, Lt20;->g:Lic0;

    .line 131
    iget-object v6, v6, Lic0;->i:Ljava/lang/String;

    .line 133
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 139
    move-result v6

    .line 140
    if-lez v6, :cond_d

    .line 142
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    goto/16 :goto_2

    .line 147
    :cond_1
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 149
    iget-object v8, v8, Lic0;->i:Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v8}, Lt20;->u(Ljava/lang/String;)Z

    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_2

    .line 157
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 159
    iget-object v5, v5, Lic0;->i:Ljava/lang/String;

    .line 161
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    goto/16 :goto_2

    .line 166
    :cond_2
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 168
    iget-object v8, v8, Lic0;->e:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, v8}, Lt20;->u(Ljava/lang/String;)Z

    .line 173
    move-result v8

    .line 174
    if-nez v8, :cond_7

    .line 176
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 178
    iget-object v8, v8, Lic0;->h:Ljava/lang/String;

    .line 180
    invoke-virtual {p0, v8}, Lt20;->u(Ljava/lang/String;)Z

    .line 183
    move-result v8

    .line 184
    if-eqz v8, :cond_3

    .line 186
    goto :goto_1

    .line 187
    :cond_3
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 189
    iget-object v8, v8, Lic0;->d:Ljava/lang/String;

    .line 191
    invoke-virtual {p0, v8}, Lt20;->u(Ljava/lang/String;)Z

    .line 194
    move-result v8

    .line 195
    if-eqz v8, :cond_4

    .line 197
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 199
    iget-object v8, v8, Lic0;->d:Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 206
    iget-object v8, v8, Lic0;->c:Ljava/lang/String;

    .line 208
    invoke-virtual {p0, v8}, Lt20;->u(Ljava/lang/String;)Z

    .line 211
    move-result v8

    .line 212
    if-nez v8, :cond_6

    .line 214
    iget-object v8, p0, Lt20;->g:Lic0;

    .line 216
    iget-object v8, v8, Lic0;->d:Ljava/lang/String;

    .line 218
    invoke-virtual {v8, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 221
    move-result v6

    .line 222
    if-eqz v6, :cond_6

    .line 224
    iget-object v6, p0, Lt20;->g:Lic0;

    .line 226
    iget-object v8, v6, Lic0;->d:Ljava/lang/String;

    .line 228
    iput-object v8, v6, Lic0;->c:Ljava/lang/String;

    .line 230
    goto :goto_0

    .line 231
    :cond_4
    iget-object v6, p0, Lt20;->g:Lic0;

    .line 233
    iget-object v6, v6, Lic0;->c:Ljava/lang/String;

    .line 235
    invoke-virtual {p0, v6}, Lt20;->u(Ljava/lang/String;)Z

    .line 238
    move-result v6

    .line 239
    if-eqz v6, :cond_5

    .line 241
    iget-object v6, p0, Lt20;->g:Lic0;

    .line 243
    iget-object v6, v6, Lic0;->c:Ljava/lang/String;

    .line 245
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    goto :goto_0

    .line 249
    :cond_5
    iget-object v6, p0, Lt20;->g:Lic0;

    .line 251
    iget-object v6, v6, Lic0;->b:Ljava/lang/String;

    .line 253
    invoke-virtual {p0, v6}, Lt20;->u(Ljava/lang/String;)Z

    .line 256
    move-result v6

    .line 257
    if-eqz v6, :cond_6

    .line 259
    iget-object v6, p0, Lt20;->g:Lic0;

    .line 261
    iget-object v6, v6, Lic0;->b:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    :cond_6
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 269
    move-result v6

    .line 270
    if-lez v6, :cond_d

    .line 272
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    goto/16 :goto_2

    .line 277
    :cond_7
    :goto_1
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 279
    iget-object v5, v5, Lic0;->b:Ljava/lang/String;

    .line 281
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 284
    move-result v5

    .line 285
    if-eqz v5, :cond_8

    .line 287
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 289
    iget-object v5, v5, Lic0;->b:Ljava/lang/String;

    .line 291
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    :cond_8
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 296
    iget-object v5, v5, Lic0;->c:Ljava/lang/String;

    .line 298
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 301
    move-result v5

    .line 302
    if-eqz v5, :cond_9

    .line 304
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 306
    iget-object v5, v5, Lic0;->c:Ljava/lang/String;

    .line 308
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :cond_9
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 313
    iget-object v5, v5, Lic0;->d:Ljava/lang/String;

    .line 315
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 318
    move-result v5

    .line 319
    if-eqz v5, :cond_a

    .line 321
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 323
    iget-object v5, v5, Lic0;->d:Ljava/lang/String;

    .line 325
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 330
    iget-object v5, v5, Lic0;->c:Ljava/lang/String;

    .line 332
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 335
    move-result v5

    .line 336
    if-nez v5, :cond_a

    .line 338
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 340
    iget-object v5, v5, Lic0;->d:Ljava/lang/String;

    .line 342
    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 345
    move-result v5

    .line 346
    if-eqz v5, :cond_a

    .line 348
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 350
    iget-object v6, v5, Lic0;->d:Ljava/lang/String;

    .line 352
    iput-object v6, v5, Lic0;->c:Ljava/lang/String;

    .line 354
    :cond_a
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 356
    iget-object v5, v5, Lic0;->e:Ljava/lang/String;

    .line 358
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 361
    move-result v5

    .line 362
    if-eqz v5, :cond_b

    .line 364
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 366
    iget-object v5, v5, Lic0;->e:Ljava/lang/String;

    .line 368
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_b
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 373
    iget-object v5, v5, Lic0;->h:Ljava/lang/String;

    .line 375
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 378
    move-result v5

    .line 379
    if-eqz v5, :cond_c

    .line 381
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 383
    iget-object v5, v5, Lic0;->h:Ljava/lang/String;

    .line 385
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_c
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 390
    iget-object v5, v5, Lic0;->g:Ljava/lang/String;

    .line 392
    invoke-virtual {p0, v5}, Lt20;->u(Ljava/lang/String;)Z

    .line 395
    move-result v5

    .line 396
    if-eqz v5, :cond_d

    .line 398
    iget-object v5, p0, Lt20;->g:Lic0;

    .line 400
    iget-object v5, v5, Lic0;->g:Ljava/lang/String;

    .line 402
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_d
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    .line 407
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    const-string v6, "getSearchPoi search: "

    .line 412
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    move-result-object v6

    .line 419
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 425
    move-result-object v5

    .line 426
    new-array v6, v1, [Ljava/lang/Object;

    .line 428
    invoke-static {v3, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 431
    new-array v5, v4, [Ljava/lang/Object;

    .line 433
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 436
    move-result-object v6

    .line 437
    aput-object v6, v5, v1

    .line 439
    const-string v6, " [VoiceRecognition] NaviVoiceClient startSearchPoi search = {?}"

    .line 441
    invoke-static {v2, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 444
    new-instance v5, Lcom/autonavi/iflytek/bean/ProviderPoi;

    .line 446
    invoke-direct {v5}, Lcom/autonavi/iflytek/bean/ProviderPoi;-><init>()V

    .line 449
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 452
    move-result-object v0

    .line 453
    iput-object v0, v5, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 455
    iput-object p1, v5, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 457
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 459
    iget-object p1, p1, Lic0;->c:Ljava/lang/String;

    .line 461
    iput-object p1, v5, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 463
    iget-object p1, p0, Lt20;->h:Li80;

    .line 465
    invoke-virtual {p1, v5}, Li80;->d(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;

    .line 468
    move-result-object p1

    .line 469
    if-eqz p1, :cond_12

    .line 471
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 474
    move-result v0

    .line 475
    if-nez v0, :cond_e

    .line 477
    goto/16 :goto_4

    .line 479
    :cond_e
    :try_start_1
    iget-object v0, p0, Lt20;->g:Lic0;

    .line 481
    iget-object v0, v0, Lic0;->h:Ljava/lang/String;

    .line 483
    invoke-virtual {p0, v0}, Lt20;->u(Ljava/lang/String;)Z

    .line 486
    move-result v0

    .line 487
    if-nez v0, :cond_f

    .line 489
    iget-object v0, p0, Lt20;->g:Lic0;

    .line 491
    iget-object v0, v0, Lic0;->e:Ljava/lang/String;

    .line 493
    invoke-virtual {p0, v0}, Lt20;->u(Ljava/lang/String;)Z

    .line 496
    move-result v0

    .line 497
    if-nez v0, :cond_f

    .line 499
    const-string p2, "searchPoi result is city area"

    .line 501
    new-array v0, v1, [Ljava/lang/Object;

    .line 503
    invoke-static {v3, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    const-string p2, " [VoiceRecognition] NaviVoiceClient startSearchPoi is province city or area"

    .line 508
    new-array v0, v1, [Ljava/lang/Object;

    .line 510
    invoke-static {v2, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 516
    move-result-object p1

    .line 517
    check-cast p1, Lcom/autonavi/iflytek/bean/Poi;

    .line 519
    invoke-static {}, Lrv;->H()Lrv;

    .line 522
    move-result-object p2

    .line 523
    invoke-virtual {p2}, Lrv;->y()Landroid/app/Application;

    .line 526
    move-result-object p2

    .line 527
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 530
    move-result-object v0

    .line 531
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 534
    move-result-object v5

    .line 535
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 538
    move-result-object p1

    .line 539
    invoke-static {p2, v0, v5, p1}, Lv2;->v(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void

    .line 543
    :cond_f
    invoke-static {p1}, Lmw;->d(Ljava/util/List;)Ljava/lang/String;

    .line 546
    move-result-object p1

    .line 547
    const-string v0, "searchPoi result:{?}"

    .line 549
    new-array v5, v4, [Ljava/lang/Object;

    .line 551
    aput-object p1, v5, v1

    .line 553
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    if-eqz p1, :cond_11

    .line 558
    const-string v0, "{"

    .line 560
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 563
    move-result v0

    .line 564
    if-eqz v0, :cond_11

    .line 566
    const-string v0, "}"

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 571
    move-result v0

    .line 572
    if-nez v0, :cond_10

    .line 574
    goto :goto_3

    .line 575
    :cond_10
    const-string v0, " [VoiceRecognition] NaviVoiceClient startSearchPoi result = {?}"

    .line 577
    new-array v5, v4, [Ljava/lang/Object;

    .line 579
    aput-object p1, v5, v1

    .line 581
    invoke-static {v2, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 586
    invoke-interface {v0, p2, v1, p1}, Lm20;->M0(IILjava/lang/String;)V

    .line 589
    goto :goto_5

    .line 590
    :cond_11
    :goto_3
    const-string p1, " [VoiceRecognition] NaviVoiceClient startSearchPoi result == null"

    .line 592
    new-array v0, v1, [Ljava/lang/Object;

    .line 594
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 597
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 599
    invoke-interface {p1, p2, v11, v7}, Lm20;->M0(IILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 602
    return-void

    .line 603
    :catch_1
    move-exception p1

    .line 604
    const-string p2, "searchPoi result error"

    .line 606
    new-array v0, v1, [Ljava/lang/Object;

    .line 608
    invoke-static {v3, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    new-array p2, v4, [Ljava/lang/Object;

    .line 613
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 616
    move-result-object p1

    .line 617
    aput-object p1, p2, v1

    .line 619
    invoke-static {v2, v10, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 622
    goto :goto_5

    .line 623
    :cond_12
    :goto_4
    const-string p1, "getSearchPoi pois \u4e3a\u7a7a"

    .line 625
    new-array v0, v1, [Ljava/lang/Object;

    .line 627
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 630
    const-string p1, " [VoiceRecognition] NaviVoiceClient startSearchPoi pois == null || pois.size() == 0"

    .line 632
    new-array v0, v1, [Ljava/lang/Object;

    .line 634
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 637
    :try_start_2
    sget-object p1, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 639
    invoke-interface {p1, p2, v11, v7}, Lm20;->M0(IILjava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 642
    return-void

    .line 643
    :catch_2
    move-exception p1

    .line 644
    new-array p2, v1, [Ljava/lang/Object;

    .line 646
    invoke-static {v3, v9, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 649
    new-array p2, v4, [Ljava/lang/Object;

    .line 651
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 654
    move-result-object p1

    .line 655
    aput-object p1, p2, v1

    .line 657
    invoke-static {v2, v10, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    :goto_5
    return-void
.end method

.method public D(Ljava/lang/String;)Z
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lh20;->D(Ljava/lang/String;)Z

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p1, v1, v2

    .line 10
    const-string v3, ""

    .line 12
    const-string v4, " [VoiceRecognition] NaviVoiceClient settingOption parameters = {?}"

    .line 14
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 23
    move-result v1

    .line 24
    const/4 v4, -0x1

    .line 25
    sparse-switch v1, :sswitch_data_0

    .line 28
    goto/16 :goto_0

    .line 30
    :sswitch_0
    const-string v1, "\u89c4\u907f\u9ad8\u901f\u8def\u7ebf"

    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p1

    .line 36
    if-nez p1, :cond_0

    .line 38
    goto/16 :goto_0

    .line 40
    :cond_0
    const/16 v4, 0x1a

    .line 42
    goto/16 :goto_0

    .line 44
    :sswitch_1
    const-string v1, "\u9ad8\u901f\u4f18\u5148\u8def\u7ebf"

    .line 46
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    move-result p1

    .line 50
    if-nez p1, :cond_1

    .line 52
    goto/16 :goto_0

    .line 54
    :cond_1
    const/16 v4, 0x19

    .line 56
    goto/16 :goto_0

    .line 58
    :sswitch_2
    const-string v1, "\u9ad8\u901f\u51fa\u53e3"

    .line 60
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    move-result p1

    .line 64
    if-nez p1, :cond_2

    .line 66
    goto/16 :goto_0

    .line 68
    :cond_2
    const/16 v4, 0x18

    .line 70
    goto/16 :goto_0

    .line 72
    :sswitch_3
    const-string v1, "\u9ad8\u901f\u4f18\u5148"

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p1

    .line 78
    if-nez p1, :cond_3

    .line 80
    goto/16 :goto_0

    .line 82
    :cond_3
    const/16 v4, 0x17

    .line 84
    goto/16 :goto_0

    .line 86
    :sswitch_4
    const-string v1, "\u8eb2\u907f\u62e5\u5835"

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_4

    .line 94
    goto/16 :goto_0

    .line 96
    :cond_4
    const/16 v4, 0x16

    .line 98
    goto/16 :goto_0

    .line 100
    :sswitch_5
    const-string v1, "\u907f\u514d\u6536\u8d39"

    .line 102
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    move-result p1

    .line 106
    if-nez p1, :cond_5

    .line 108
    goto/16 :goto_0

    .line 110
    :cond_5
    const/16 v4, 0x15

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_6
    const-string v1, "\u8f66\u5934\u671d\u524d"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_6

    .line 122
    goto/16 :goto_0

    .line 124
    :cond_6
    const/16 v4, 0x14

    .line 126
    goto/16 :goto_0

    .line 128
    :sswitch_7
    const-string v1, "\u8f66\u5934\u5411\u4e0a"

    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result p1

    .line 134
    if-nez p1, :cond_7

    .line 136
    goto/16 :goto_0

    .line 138
    :cond_7
    const/16 v4, 0x13

    .line 140
    goto/16 :goto_0

    .line 142
    :sswitch_8
    const-string v1, "\u8def\u51b5\u5f00\u542f"

    .line 144
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    move-result p1

    .line 148
    if-nez p1, :cond_8

    .line 150
    goto/16 :goto_0

    .line 152
    :cond_8
    const/16 v4, 0x12

    .line 154
    goto/16 :goto_0

    .line 156
    :sswitch_9
    const-string v1, "\u8def\u51b5\u5173\u95ed"

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_9

    .line 164
    goto/16 :goto_0

    .line 166
    :cond_9
    const/16 v4, 0x11

    .line 168
    goto/16 :goto_0

    .line 170
    :sswitch_a
    const-string v1, "\u89c6\u56fe\u5207\u6362"

    .line 172
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result p1

    .line 176
    if-nez p1, :cond_a

    .line 178
    goto/16 :goto_0

    .line 180
    :cond_a
    const/16 v4, 0x10

    .line 182
    goto/16 :goto_0

    .line 184
    :sswitch_b
    const-string v1, "\u89c4\u907f\u62e5\u5835\u8def\u7ebf"

    .line 186
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 189
    move-result p1

    .line 190
    if-nez p1, :cond_b

    .line 192
    goto/16 :goto_0

    .line 194
    :cond_b
    const/16 v4, 0xf

    .line 196
    goto/16 :goto_0

    .line 198
    :sswitch_c
    const-string v1, "\u7701\u94b1\u8def\u7ebf"

    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_c

    .line 206
    goto/16 :goto_0

    .line 208
    :cond_c
    const/16 v4, 0xe

    .line 210
    goto/16 :goto_0

    .line 212
    :sswitch_d
    const-string v1, "\u5730\u56fe\u7f29\u5c0f"

    .line 214
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 217
    move-result p1

    .line 218
    if-nez p1, :cond_d

    .line 220
    goto/16 :goto_0

    .line 222
    :cond_d
    const/16 v4, 0xd

    .line 224
    goto/16 :goto_0

    .line 226
    :sswitch_e
    const-string v1, "\u5730\u56fe\u6b63\u5317"

    .line 228
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    move-result p1

    .line 232
    if-nez p1, :cond_e

    .line 234
    goto/16 :goto_0

    .line 236
    :cond_e
    const/16 v4, 0xc

    .line 238
    goto/16 :goto_0

    .line 240
    :sswitch_f
    const-string v1, "\u5730\u56fe\u653e\u5927"

    .line 242
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    move-result p1

    .line 246
    if-nez p1, :cond_f

    .line 248
    goto/16 :goto_0

    .line 250
    :cond_f
    const/16 v4, 0xb

    .line 252
    goto/16 :goto_0

    .line 254
    :sswitch_10
    const-string v1, "\u53d6\u6d88\u5bfc\u822a"

    .line 256
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    move-result p1

    .line 260
    if-nez p1, :cond_10

    .line 262
    goto/16 :goto_0

    .line 264
    :cond_10
    const/16 v4, 0xa

    .line 266
    goto/16 :goto_0

    .line 268
    :sswitch_11
    const-string v1, "\u5220\u9664\u8def\u7ebf"

    .line 270
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    move-result p1

    .line 274
    if-nez p1, :cond_11

    .line 276
    goto/16 :goto_0

    .line 278
    :cond_11
    const/16 v4, 0x9

    .line 280
    goto/16 :goto_0

    .line 282
    :sswitch_12
    const-string v1, "\u5269\u4f59\u91cc\u7a0b"

    .line 284
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    move-result p1

    .line 288
    if-nez p1, :cond_12

    .line 290
    goto/16 :goto_0

    .line 292
    :cond_12
    const/16 v4, 0x8

    .line 294
    goto/16 :goto_0

    .line 296
    :sswitch_13
    const-string v1, "\u5269\u4f59\u65f6\u95f4"

    .line 298
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 301
    move-result p1

    .line 302
    if-nez p1, :cond_13

    .line 304
    goto :goto_0

    .line 305
    :cond_13
    const/4 v4, 0x7

    .line 306
    goto :goto_0

    .line 307
    :sswitch_14
    const-string v1, "\u4e0d\u8d70\u9ad8\u901f"

    .line 309
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    move-result p1

    .line 313
    if-nez p1, :cond_14

    .line 315
    goto :goto_0

    .line 316
    :cond_14
    const/4 v4, 0x6

    .line 317
    goto :goto_0

    .line 318
    :sswitch_15
    const-string v1, "\u56de\u5730\u56fe"

    .line 320
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 323
    move-result p1

    .line 324
    if-nez p1, :cond_15

    .line 326
    goto :goto_0

    .line 327
    :cond_15
    const/4 v4, 0x5

    .line 328
    goto :goto_0

    .line 329
    :sswitch_16
    const-string v1, "3d\u89c6\u56fe"

    .line 331
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 334
    move-result p1

    .line 335
    if-nez p1, :cond_16

    .line 337
    goto :goto_0

    .line 338
    :cond_16
    const/4 v4, 0x4

    .line 339
    goto :goto_0

    .line 340
    :sswitch_17
    const-string v1, "2d\u89c6\u56fe"

    .line 342
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 345
    move-result p1

    .line 346
    if-nez p1, :cond_17

    .line 348
    goto :goto_0

    .line 349
    :cond_17
    const/4 v4, 0x3

    .line 350
    goto :goto_0

    .line 351
    :sswitch_18
    const-string v1, "3D\u89c6\u56fe"

    .line 353
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 356
    move-result p1

    .line 357
    if-nez p1, :cond_18

    .line 359
    goto :goto_0

    .line 360
    :cond_18
    const/4 v4, 0x2

    .line 361
    goto :goto_0

    .line 362
    :sswitch_19
    const-string v1, "2D\u89c6\u56fe"

    .line 364
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    move-result p1

    .line 368
    if-nez p1, :cond_19

    .line 370
    goto :goto_0

    .line 371
    :cond_19
    const/4 v4, 0x1

    .line 372
    goto :goto_0

    .line 373
    :sswitch_1a
    const-string v1, "\u6536\u85cf\u5f53\u524d\u70b9"

    .line 375
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    move-result p1

    .line 379
    if-nez p1, :cond_1a

    .line 381
    goto :goto_0

    .line 382
    :cond_1a
    const/4 v4, 0x0

    .line 383
    :goto_0
    const-string p1, " [VoiceRecognition] NaviVoiceClient settingOption !mVRFunctionSwitch.remainderDistanceInfo"

    .line 385
    const-string v1, " [VoiceRecognition] NaviVoiceClient settingOption !mVRFunctionSwitch.mapMode"

    .line 387
    const-string v5, "0"

    .line 389
    const-string v6, "1"

    .line 391
    packed-switch v4, :pswitch_data_0

    .line 394
    return v0

    .line 395
    :pswitch_0
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 397
    iget-boolean p1, p1, Lpj0;->v:Z

    .line 399
    if-nez p1, :cond_1b

    .line 401
    const-string p1, " [VoiceRecognition] NaviVoiceClient settingOption !mVRFunctionSwitch.nextETA"

    .line 403
    new-array v0, v2, [Ljava/lang/Object;

    .line 405
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    return v2

    .line 409
    :cond_1b
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 411
    invoke-virtual {p1}, Lv2;->g()V

    .line 414
    return v0

    .line 415
    :pswitch_1
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 417
    invoke-virtual {p1, v6, v6, v6, v5}, Lv2;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    return v0

    .line 421
    :pswitch_2
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 423
    iget-boolean p1, p1, Lpj0;->d:Z

    .line 425
    if-nez p1, :cond_1c

    .line 427
    new-array p1, v2, [Ljava/lang/Object;

    .line 429
    invoke-static {v3, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    return v2

    .line 433
    :cond_1c
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 435
    invoke-virtual {p1}, Lv2;->q()V

    .line 438
    return v0

    .line 439
    :pswitch_3
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 441
    iget-boolean p1, p1, Lpj0;->b:Z

    .line 443
    if-nez p1, :cond_1d

    .line 445
    const-string p1, " [VoiceRecognition] NaviVoiceClient settingOption !mVRFunctionSwitch.realTimeTraffic"

    .line 447
    new-array v0, v2, [Ljava/lang/Object;

    .line 449
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 452
    return v2

    .line 453
    :cond_1d
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 455
    invoke-virtual {p1, v2}, Lv2;->H(I)V

    .line 458
    return v0

    .line 459
    :pswitch_4
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 461
    iget-boolean p1, p1, Lpj0;->b:Z

    .line 463
    if-nez p1, :cond_1e

    .line 465
    return v2

    .line 466
    :cond_1e
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 468
    invoke-virtual {p1, v0}, Lv2;->H(I)V

    .line 471
    return v0

    .line 472
    :pswitch_5
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 474
    iget-boolean p1, p1, Lpj0;->i:Z

    .line 476
    if-nez p1, :cond_1f

    .line 478
    return v2

    .line 479
    :cond_1f
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 481
    invoke-virtual {p1}, Lv2;->G()V

    .line 484
    return v0

    .line 485
    :pswitch_6
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 487
    invoke-virtual {p1, v5, v6, v6, v6}, Lv2;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return v0

    .line 491
    :pswitch_7
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 493
    invoke-virtual {p1, v6, v5, v6, v6}, Lv2;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return v0

    .line 497
    :pswitch_8
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 499
    iget-boolean p1, p1, Lpj0;->c:Z

    .line 501
    if-nez p1, :cond_20

    .line 503
    return v2

    .line 504
    :cond_20
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 506
    invoke-virtual {p1}, Lv2;->J()V

    .line 509
    return v0

    .line 510
    :pswitch_9
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 512
    iget-boolean p1, p1, Lpj0;->d:Z

    .line 514
    if-nez p1, :cond_21

    .line 516
    new-array p1, v2, [Ljava/lang/Object;

    .line 518
    invoke-static {v3, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    return v2

    .line 522
    :cond_21
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 524
    invoke-virtual {p1}, Lv2;->x()V

    .line 527
    return v0

    .line 528
    :pswitch_a
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 530
    iget-boolean p1, p1, Lpj0;->c:Z

    .line 532
    if-nez p1, :cond_22

    .line 534
    return v2

    .line 535
    :cond_22
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 537
    invoke-virtual {p1}, Lv2;->I()V

    .line 540
    return v0

    .line 541
    :pswitch_b
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 543
    iget-boolean p1, p1, Lpj0;->a:Z

    .line 545
    if-nez p1, :cond_23

    .line 547
    const-string p1, " [VoiceRecognition] NaviVoiceClient settingOption !mVRFunctionSwitch.cancleNavigation"

    .line 549
    new-array v0, v2, [Ljava/lang/Object;

    .line 551
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 554
    return v2

    .line 555
    :cond_23
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 557
    invoke-virtual {p1}, Lv2;->d()V

    .line 560
    return v0

    .line 561
    :pswitch_c
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 563
    iget-boolean v1, v1, Lpj0;->o:Z

    .line 565
    if-nez v1, :cond_24

    .line 567
    new-array v0, v2, [Ljava/lang/Object;

    .line 569
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 572
    return v2

    .line 573
    :cond_24
    invoke-virtual {p0}, Lt20;->j()V

    .line 576
    return v0

    .line 577
    :pswitch_d
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 579
    iget-boolean v1, v1, Lpj0;->o:Z

    .line 581
    if-nez v1, :cond_25

    .line 583
    new-array v0, v2, [Ljava/lang/Object;

    .line 585
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    return v2

    .line 589
    :cond_25
    invoke-virtual {p0}, Lt20;->j()V

    .line 592
    return v0

    .line 593
    :pswitch_e
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 595
    invoke-virtual {p1, v6, v6, v5, v6}, Lv2;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return v0

    .line 599
    :pswitch_f
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 601
    iget-boolean p1, p1, Lpj0;->k:Z

    .line 603
    if-nez p1, :cond_26

    .line 605
    const-string p1, " [VoiceRecognition] NaviVoiceClient settingOption !mVRFunctionSwitch.backToMap"

    .line 607
    new-array v0, v2, [Ljava/lang/Object;

    .line 609
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 612
    return v2

    .line 613
    :cond_26
    invoke-virtual {p0}, Lt20;->d()V

    .line 616
    return v0

    .line 617
    :pswitch_10
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 619
    iget-boolean p1, p1, Lpj0;->d:Z

    .line 621
    if-nez p1, :cond_27

    .line 623
    return v2

    .line 624
    :cond_27
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 626
    invoke-virtual {p1}, Lv2;->r()V

    .line 629
    return v0

    .line 630
    :pswitch_11
    iget-object p1, p0, Lt20;->d:Lpj0;

    .line 632
    iget-boolean p1, p1, Lpj0;->h:Z

    .line 634
    if-nez p1, :cond_28

    .line 636
    return v2

    .line 637
    :cond_28
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 639
    invoke-virtual {p1}, Lv2;->t()V

    .line 642
    return v0

    .line 643
    :pswitch_12
    invoke-virtual {p0}, Lt20;->c()Z

    .line 646
    move-result p1

    .line 647
    return p1

    .line 648
    nop

    .line 649
    :sswitch_data_0
    .sparse-switch
        -0x2f7d735a -> :sswitch_1a
        0x28bfca -> :sswitch_19
        0x293429 -> :sswitch_18
        0x2937ea -> :sswitch_17
        0x29ac49 -> :sswitch_16
        0x150fd2c -> :sswitch_15
        0x25a11c8a -> :sswitch_14
        0x26acf4ce -> :sswitch_13
        0x26b227cf -> :sswitch_12
        0x279b35f4 -> :sswitch_11
        0x27c2e5a0 -> :sswitch_10
        0x28f545f7 -> :sswitch_f
        0x28f5fe62 -> :sswitch_e
        0x28f86c54 -> :sswitch_d
        0x38587880 -> :sswitch_c
        0x38ea6e5b -> :sswitch_b
        0x3ff1ba33 -> :sswitch_a
        0x41c22300 -> :sswitch_9
        0x41c38555 -> :sswitch_8
        0x4288c727 -> :sswitch_7
        0x428b19de -> :sswitch_6
        0x42ed2bf1 -> :sswitch_5
        0x43085abd -> :sswitch_4
        0x488a3fb7 -> :sswitch_3
        0x488a9bb0 -> :sswitch_2
        0x4f0adca7 -> :sswitch_1
        0x532b32f2 -> :sswitch_0
    .end sparse-switch

    .line 759
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
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
        :pswitch_2
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_e
    .end packed-switch
.end method

.method public c()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, ""

    .line 6
    const-string v3, " [VoiceRecognition] NaviVoiceClient addCurrentPositionToFavorite"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 13
    iget-boolean v1, v1, Lpj0;->j:Z

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 18
    const-string v1, " [VoiceRecognition] NaviVoiceClient addCurrentPositionToFavorite mVRFunctionSwitch.addCurrentPositionToFavorite == true"

    .line 20
    new-array v4, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lt20;->a:Lv2;

    .line 27
    invoke-virtual {v1}, Lv2;->a()V

    .line 30
    const-string v1, " [VoiceRecognition] NaviVoiceClient addCurrentPositionToFavorite return true"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v3

    .line 38
    :cond_0
    const-string v1, " [VoiceRecognition] NaviVoiceClient addCurrentPositionToFavorite return false"

    .line 40
    new-array v3, v0, [Ljava/lang/Object;

    .line 42
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return v0
.end method

.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, ""

    .line 6
    const-string v3, " [VoiceRecognition] NaviVoiceClient backToMap"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 13
    iget-boolean v1, v1, Lpj0;->k:Z

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 18
    const-string v1, " [VoiceRecognition] NaviVoiceClient backToMap mVRFunctionSwitch.backToMap == true"

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lt20;->a:Lv2;

    .line 27
    invoke-virtual {v0}, Lv2;->c()V

    .line 30
    :cond_0
    return-void
.end method

.method public e(Ljava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "showTraffic parameters: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    const-string v3, "TAG_ADAPTER"

    .line 23
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const/4 v0, 0x1

    .line 27
    new-array v2, v0, [Ljava/lang/Object;

    .line 29
    aput-object p1, v2, v1

    .line 31
    const-string v3, ""

    .line 33
    const-string v4, " [VoiceRecognition] NaviVoiceClient showTraffic parameters = {?}"

    .line 35
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-static {p1}, Lmw;->f(Ljava/lang/String;)Lcom/autonavi/iflytek/bean/Poi;

    .line 41
    move-result-object p1

    .line 42
    const-string v2, "NaviVoice"

    .line 44
    if-eqz p1, :cond_1

    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v5, "doShowTraffic poi != null getPoi = "

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->D()Ljava/lang/String;

    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v4

    .line 67
    new-array v5, v1, [Ljava/lang/Object;

    .line 69
    invoke-static {v2, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    const-string v2, " [VoiceRecognition] AutoIntentController doShowTraffic poi != null"

    .line 74
    new-array v4, v1, [Ljava/lang/Object;

    .line 76
    invoke-static {v3, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const v2, 0x7f0d0028

    .line 82
    invoke-static {v2}, Lta0;->d(I)Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    new-array v4, v0, [Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lcom/autonavi/iflytek/bean/Poi;->D()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    aput-object p1, v4, v1

    .line 94
    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    iget-object v2, p0, Lt20;->d:Lpj0;

    .line 100
    iget-boolean v2, v2, Lpj0;->p:Z

    .line 102
    if-ne v2, v0, :cond_0

    .line 104
    const-string v2, " [VoiceRecognition] NaviVoiceClient showTraffic mVRFunctionSwitch.showTraffic == true"

    .line 106
    new-array v4, v1, [Ljava/lang/Object;

    .line 108
    invoke-static {v3, v2, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lt20;->a:Lv2;

    .line 113
    invoke-virtual {v2, p1}, Lv2;->E(Ljava/lang/String;)V

    .line 116
    const-string p1, " [VoiceRecognition] NaviVoiceClient showTraffic return true"

    .line 118
    new-array v1, v1, [Ljava/lang/Object;

    .line 120
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return v0

    .line 124
    :cond_0
    const-string p1, " [VoiceRecognition] NaviVoiceClient showTraffic return false"

    .line 126
    new-array v0, v1, [Ljava/lang/Object;

    .line 128
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    return v1

    .line 132
    :cond_1
    const-string p1, "doShowTraffic poi == null"

    .line 134
    new-array v0, v1, [Ljava/lang/Object;

    .line 136
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    const-string p1, " [VoiceRecognition] AutoIntentController doShowTraffic poi == null"

    .line 141
    new-array v0, v1, [Ljava/lang/Object;

    .line 143
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    return v1
.end method

.method public g(Ljava/lang/String;I)Z
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v0, p1

    .line 5
    move/from16 v2, p2

    .line 7
    invoke-super/range {p0 .. p2}, Lh20;->g(Ljava/lang/String;I)Z

    .line 10
    const/4 v3, 0x2

    .line 11
    new-array v4, v3, [Ljava/lang/Object;

    .line 13
    const/4 v5, 0x0

    .line 14
    aput-object v0, v4, v5

    .line 16
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object v6

    .line 20
    const/4 v7, 0x1

    .line 21
    aput-object v6, v4, v7

    .line 23
    const-string v6, ""

    .line 25
    const-string v8, " [VoiceRecognition] NaviVoiceClient searchPoiNearby parameters = {?} requestCode = {?}"

    .line 27
    invoke-static {v6, v8, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-boolean v4, v1, Lt20;->f:Z

    .line 32
    const/4 v8, -0x6

    .line 33
    const/4 v9, 0x0

    .line 34
    if-eqz v4, :cond_0

    .line 36
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby mIsAlongSearchingEnabled"

    .line 38
    new-array v3, v5, [Ljava/lang/Object;

    .line 40
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-boolean v5, v1, Lt20;->f:Z

    .line 45
    invoke-virtual {v1, v2, v8, v9}, Lt20;->z(IILjava/lang/String;)V

    .line 48
    return v7

    .line 49
    :cond_0
    invoke-static {}, La7;->c()La7;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, La7;->d()Z

    .line 56
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 59
    invoke-static {}, La7;->c()La7;

    .line 62
    move-result-object v4

    .line 63
    invoke-static {}, Lrv;->H()Lrv;

    .line 66
    move-result-object v10

    .line 67
    invoke-virtual {v10}, Lrv;->y()Landroid/app/Application;

    .line 70
    move-result-object v10

    .line 71
    invoke-virtual {v4, v10}, La7;->h(Landroid/content/Context;)V

    .line 74
    :cond_1
    const-string v4, " [VoiceRecognition] NaviVoiceClient searchPoiNearby ! mIsAlongSearchingEnabled"

    .line 76
    new-array v10, v5, [Ljava/lang/Object;

    .line 78
    invoke-static {v6, v4, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    move-result v4

    .line 85
    const-string v10, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean == null"

    .line 87
    const-string v11, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean = {?}"

    .line 89
    const-string v12, "TAG_ADAPTER"

    .line 91
    if-nez v4, :cond_4

    .line 93
    const-string v4, " [VoiceRecognition] NaviVoiceClient searchPoiNearby parameters is not empty"

    .line 95
    new-array v13, v5, [Ljava/lang/Object;

    .line 97
    invoke-static {v6, v4, v13}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    const-class v4, Lic0;

    .line 102
    invoke-static {v0, v4}, Lmw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 105
    move-result-object v0

    .line 106
    check-cast v0, Lic0;

    .line 108
    if-nez v0, :cond_2

    .line 110
    const-string v0, "searchPoiNearby searchPoiBean is null"

    .line 112
    new-array v3, v5, [Ljava/lang/Object;

    .line 114
    invoke-static {v12, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    new-array v0, v5, [Ljava/lang/Object;

    .line 119
    invoke-static {v6, v10, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    invoke-virtual {v1, v2, v8, v9}, Lt20;->z(IILjava/lang/String;)V

    .line 125
    return v7

    .line 126
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    const-string v8, "searchPoiNearby searchPoiBean "

    .line 133
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Lic0;->toString()Ljava/lang/String;

    .line 139
    move-result-object v8

    .line 140
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v4

    .line 147
    new-array v8, v5, [Ljava/lang/Object;

    .line 149
    invoke-static {v12, v4, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    new-array v4, v7, [Ljava/lang/Object;

    .line 154
    invoke-virtual {v0}, Lic0;->toString()Ljava/lang/String;

    .line 157
    move-result-object v8

    .line 158
    aput-object v8, v4, v5

    .line 160
    invoke-static {v6, v11, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v4, v0, Lic0;->n:Ljava/lang/String;

    .line 165
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_3

    .line 171
    const-string v4, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean nearname is not empty"

    .line 173
    new-array v8, v5, [Ljava/lang/Object;

    .line 175
    invoke-static {v6, v4, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    iget-object v4, v0, Lic0;->n:Ljava/lang/String;

    .line 180
    const-string v8, "\u56dbs"

    .line 182
    invoke-virtual {v4, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 185
    move-result v4

    .line 186
    if-eqz v4, :cond_3

    .line 188
    const-string v4, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean nearname contains \u56dbs"

    .line 190
    new-array v9, v5, [Ljava/lang/Object;

    .line 192
    invoke-static {v6, v4, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    iget-object v4, v0, Lic0;->n:Ljava/lang/String;

    .line 197
    const-string v9, "4S"

    .line 199
    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 202
    move-result-object v4

    .line 203
    iput-object v4, v0, Lic0;->n:Ljava/lang/String;

    .line 205
    :cond_3
    move-object v9, v0

    .line 206
    :cond_4
    if-nez v9, :cond_5

    .line 208
    const-string v0, "searchPoiBean == null"

    .line 210
    new-array v2, v5, [Ljava/lang/Object;

    .line 212
    invoke-static {v12, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    new-array v0, v5, [Ljava/lang/Object;

    .line 217
    invoke-static {v6, v10, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    return v7

    .line 221
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    const-string v4, "searchPoiNearby: "

    .line 228
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v9}, Lic0;->toString()Ljava/lang/String;

    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    move-result-object v0

    .line 242
    new-array v4, v5, [Ljava/lang/Object;

    .line 244
    invoke-static {v12, v0, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    new-array v0, v7, [Ljava/lang/Object;

    .line 249
    invoke-virtual {v9}, Lic0;->toString()Ljava/lang/String;

    .line 252
    move-result-object v4

    .line 253
    aput-object v4, v0, v5

    .line 255
    invoke-static {v6, v11, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object v0, v9, Lic0;->o:Ljava/lang/String;

    .line 260
    invoke-virtual {v1, v0}, Lt20;->u(Ljava/lang/String;)Z

    .line 263
    move-result v0

    .line 264
    const-string v4, " [VoiceRecognition] NaviVoiceClient searchPoiNearby result = {?}"

    .line 266
    const-string v8, " [VoiceRecognition] NaviVoiceClient searchPoiNearby result == null"

    .line 268
    const-string v10, "}"

    .line 270
    const-string v11, "{"

    .line 272
    const-string v13, "searchPoiNearby result:"

    .line 274
    const-string v14, "1"

    .line 276
    if-nez v0, :cond_a

    .line 278
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean.nearby == null"

    .line 280
    new-array v3, v5, [Ljava/lang/Object;

    .line 282
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 287
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    const-string v3, "searchPoiNearby nearname keyword:"

    .line 292
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v3, v9, Lic0;->n:Ljava/lang/String;

    .line 297
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    move-result-object v0

    .line 304
    new-array v3, v5, [Ljava/lang/Object;

    .line 306
    invoke-static {v12, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean.nearname = {?}"

    .line 311
    new-array v3, v7, [Ljava/lang/Object;

    .line 313
    iget-object v15, v9, Lic0;->n:Ljava/lang/String;

    .line 315
    aput-object v15, v3, v5

    .line 317
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    new-instance v0, Lcom/autonavi/iflytek/bean/ProviderPoi;

    .line 322
    invoke-direct {v0}, Lcom/autonavi/iflytek/bean/ProviderPoi;-><init>()V

    .line 325
    iget-object v3, v9, Lic0;->n:Ljava/lang/String;

    .line 327
    iput-object v3, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 329
    iput-object v14, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 331
    iget-object v3, v9, Lic0;->c:Ljava/lang/String;

    .line 333
    iput-object v3, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 335
    iget-object v3, v1, Lt20;->h:Li80;

    .line 337
    invoke-virtual {v3, v0}, Li80;->d(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;

    .line 340
    move-result-object v0

    .line 341
    if-eqz v0, :cond_9

    .line 343
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 346
    move-result v3

    .line 347
    if-ge v3, v7, :cond_6

    .line 349
    goto :goto_1

    .line 350
    :cond_6
    invoke-static {v0}, Lmw;->d(Ljava/util/List;)Ljava/lang/String;

    .line 353
    move-result-object v0

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object v3

    .line 369
    new-array v9, v5, [Ljava/lang/Object;

    .line 371
    invoke-static {v12, v3, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 377
    move-result v3

    .line 378
    if-eqz v3, :cond_8

    .line 380
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 383
    move-result v3

    .line 384
    if-nez v3, :cond_7

    .line 386
    goto :goto_0

    .line 387
    :cond_7
    new-array v3, v7, [Ljava/lang/Object;

    .line 389
    aput-object v0, v3, v5

    .line 391
    invoke-static {v6, v4, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    invoke-virtual {v1, v2, v5, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 397
    goto :goto_2

    .line 398
    :cond_8
    :goto_0
    new-array v0, v5, [Ljava/lang/Object;

    .line 400
    invoke-static {v6, v8, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 403
    const v0, 0x7f0d001e

    .line 406
    invoke-static {v0}, Lta0;->d(I)Ljava/lang/String;

    .line 409
    move-result-object v0

    .line 410
    const/4 v3, -0x4

    .line 411
    invoke-virtual {v1, v2, v3, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 414
    return v7

    .line 415
    :cond_9
    :goto_1
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby pois == null || pois.size() < 1"

    .line 417
    new-array v3, v5, [Ljava/lang/Object;

    .line 419
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    const v0, 0x7f0d001e

    .line 425
    invoke-static {v0}, Lta0;->d(I)Ljava/lang/String;

    .line 428
    move-result-object v0

    .line 429
    const/4 v3, -0x4

    .line 430
    invoke-virtual {v1, v2, v3, v0}, Lt20;->z(IILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    return v7

    .line 434
    :catch_0
    :goto_2
    const/4 v2, 0x1

    .line 435
    goto/16 :goto_5

    .line 437
    :cond_a
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 439
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    const-string v3, "searchPoiNearby nearby:"

    .line 444
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    iget-object v3, v9, Lic0;->o:Ljava/lang/String;

    .line 449
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    move-result-object v0

    .line 456
    new-array v3, v5, [Ljava/lang/Object;

    .line 458
    invoke-static {v12, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 461
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean.nearby = {?}"

    .line 463
    new-array v3, v7, [Ljava/lang/Object;

    .line 465
    iget-object v15, v9, Lic0;->o:Ljava/lang/String;

    .line 467
    aput-object v15, v3, v5

    .line 469
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    new-instance v0, Lcom/autonavi/iflytek/bean/ProviderPoi;

    .line 474
    invoke-direct {v0}, Lcom/autonavi/iflytek/bean/ProviderPoi;-><init>()V

    .line 477
    iget-object v3, v9, Lic0;->o:Ljava/lang/String;

    .line 479
    iput-object v3, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 481
    const-string v3, "0"

    .line 483
    iput-object v3, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 485
    iget-object v3, v9, Lic0;->c:Ljava/lang/String;

    .line 487
    iput-object v3, v0, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 489
    iget-object v3, v1, Lt20;->h:Li80;

    .line 491
    invoke-virtual {v3, v0}, Li80;->d(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;

    .line 494
    move-result-object v0

    .line 495
    if-eqz v0, :cond_f

    .line 497
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 500
    move-result v3

    .line 501
    if-lez v3, :cond_f

    .line 503
    const-string v3, " [VoiceRecognition] NaviVoiceClient searchPoiNearby pois != null && pois.size() > 0"

    .line 505
    new-array v15, v5, [Ljava/lang/Object;

    .line 507
    invoke-static {v6, v3, v15}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 513
    move-result-object v0

    .line 514
    check-cast v0, Lcom/autonavi/iflytek/bean/Poi;

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    .line 518
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 521
    const-string v15, "getName: "

    .line 523
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 529
    move-result-object v15

    .line 530
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string v15, " getLat: "

    .line 535
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 541
    move-result-object v15

    .line 542
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    const-string v15, " getLong: "

    .line 547
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 553
    move-result-object v15

    .line 554
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    move-result-object v3

    .line 561
    new-array v15, v5, [Ljava/lang/Object;

    .line 563
    invoke-static {v12, v3, v15}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    const-string v3, " [VoiceRecognition] NaviVoiceClient searchPoiNearby searchPoiBean.nearname = {?} getName = {?} getLatitude = {?} getLongitude = {?}"

    .line 568
    const/4 v15, 0x4

    .line 569
    new-array v15, v15, [Ljava/lang/Object;

    .line 571
    iget-object v7, v9, Lic0;->n:Ljava/lang/String;

    .line 573
    aput-object v7, v15, v5

    .line 575
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 578
    move-result-object v7

    .line 579
    const/16 v17, 0x1

    .line 581
    aput-object v7, v15, v17

    .line 583
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 586
    move-result-object v7

    .line 587
    const/16 v16, 0x2

    .line 589
    aput-object v7, v15, v16

    .line 591
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 594
    move-result-object v7

    .line 595
    const/16 v16, 0x3

    .line 597
    aput-object v7, v15, v16

    .line 599
    invoke-static {v6, v3, v15}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 602
    new-instance v3, Ljava/lang/StringBuilder;

    .line 604
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    const-string v7, "searchPoiNearby nearname around:"

    .line 609
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    iget-object v7, v9, Lic0;->n:Ljava/lang/String;

    .line 614
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 620
    move-result-object v3

    .line 621
    new-array v7, v5, [Ljava/lang/Object;

    .line 623
    invoke-static {v12, v3, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    new-instance v3, Lcom/autonavi/iflytek/bean/ProviderPoi;

    .line 628
    invoke-direct {v3}, Lcom/autonavi/iflytek/bean/ProviderPoi;-><init>()V

    .line 631
    iget-object v7, v9, Lic0;->n:Ljava/lang/String;

    .line 633
    iput-object v7, v3, Lcom/autonavi/iflytek/bean/ProviderPoi;->a:Ljava/lang/String;

    .line 635
    iput-object v14, v3, Lcom/autonavi/iflytek/bean/ProviderPoi;->e:Ljava/lang/String;

    .line 637
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 640
    move-result-object v7

    .line 641
    iput-object v7, v3, Lcom/autonavi/iflytek/bean/ProviderPoi;->i:Ljava/lang/String;

    .line 643
    invoke-virtual {v0}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 646
    move-result-object v0

    .line 647
    iput-object v0, v3, Lcom/autonavi/iflytek/bean/ProviderPoi;->j:Ljava/lang/String;

    .line 649
    iget-object v0, v9, Lic0;->c:Ljava/lang/String;

    .line 651
    iput-object v0, v3, Lcom/autonavi/iflytek/bean/ProviderPoi;->f:Ljava/lang/String;

    .line 653
    iget-object v0, v1, Lt20;->h:Li80;

    .line 655
    invoke-virtual {v0, v3}, Li80;->d(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;

    .line 658
    move-result-object v0

    .line 659
    if-eqz v0, :cond_e

    .line 661
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 664
    move-result v3

    .line 665
    const/4 v7, 0x1

    .line 666
    if-ge v3, v7, :cond_b

    .line 668
    goto :goto_4

    .line 669
    :cond_b
    invoke-static {v0}, Lmw;->d(Ljava/util/List;)Ljava/lang/String;

    .line 672
    move-result-object v0

    .line 673
    new-instance v3, Ljava/lang/StringBuilder;

    .line 675
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 687
    move-result-object v3

    .line 688
    new-array v7, v5, [Ljava/lang/Object;

    .line 690
    invoke-static {v12, v3, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 693
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 696
    move-result v3

    .line 697
    if-eqz v3, :cond_d

    .line 699
    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 702
    move-result v3

    .line 703
    if-nez v3, :cond_c

    .line 705
    goto :goto_3

    .line 706
    :cond_c
    const/4 v3, 0x1

    .line 707
    new-array v7, v3, [Ljava/lang/Object;

    .line 709
    aput-object v0, v7, v5

    .line 711
    invoke-static {v6, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 714
    invoke-virtual {v1, v2, v5, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 717
    goto/16 :goto_2

    .line 719
    :cond_d
    :goto_3
    new-array v0, v5, [Ljava/lang/Object;

    .line 721
    invoke-static {v6, v8, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 724
    const v0, 0x7f0d001e

    .line 727
    invoke-static {v0}, Lta0;->d(I)Ljava/lang/String;

    .line 730
    move-result-object v0

    .line 731
    const/4 v3, -0x4

    .line 732
    invoke-virtual {v1, v2, v3, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 735
    const/4 v2, 0x1

    .line 736
    return v2

    .line 737
    :cond_e
    :goto_4
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby resultPois == null || resultPois.size() < 1"

    .line 739
    new-array v3, v5, [Ljava/lang/Object;

    .line 741
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    const v0, 0x7f0d001e

    .line 747
    invoke-static {v0}, Lta0;->d(I)Ljava/lang/String;

    .line 750
    move-result-object v0

    .line 751
    const/4 v3, -0x4

    .line 752
    invoke-virtual {v1, v2, v3, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 755
    const/4 v2, 0x1

    .line 756
    return v2

    .line 757
    :cond_f
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby pois == null || pois.size() <= 0"

    .line 759
    new-array v3, v5, [Ljava/lang/Object;

    .line 761
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 764
    const v0, 0x7f0d001e

    .line 767
    invoke-static {v0}, Lta0;->d(I)Ljava/lang/String;

    .line 770
    move-result-object v0

    .line 771
    const/4 v3, -0x4

    .line 772
    invoke-virtual {v1, v2, v3, v0}, Lt20;->z(IILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    goto/16 :goto_2

    .line 777
    :catch_1
    move-exception v0

    .line 778
    const/4 v2, 0x1

    .line 779
    new-array v3, v2, [Ljava/lang/Object;

    .line 781
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 784
    move-result-object v0

    .line 785
    aput-object v0, v3, v5

    .line 787
    const-string v0, " [VoiceRecognition] NaviVoiceClient searchPoiNearby Exception = {?}"

    .line 789
    invoke-static {v6, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 792
    :goto_5
    return v2
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    move-object/from16 v3, p3

    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    const-string v5, "NaviVoice navigate parameters:"

    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v5, " route_type:"

    .line 24
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    const-string v5, " passPoi:"

    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v4

    .line 42
    const/4 v5, 0x0

    .line 43
    new-array v6, v5, [Ljava/lang/Object;

    .line 45
    const-string v7, "TAG_ADAPTER"

    .line 47
    invoke-static {v7, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const/4 v4, 0x3

    .line 51
    new-array v6, v4, [Ljava/lang/Object;

    .line 53
    aput-object v1, v6, v5

    .line 55
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object v8

    .line 59
    const/4 v9, 0x1

    .line 60
    aput-object v8, v6, v9

    .line 62
    const/4 v8, 0x2

    .line 63
    aput-object v3, v6, v8

    .line 65
    const-string v3, ""

    .line 67
    const-string v10, " [VoiceRecognition] NaviVoiceClient navigate parameters = {?} route_type = {?} passPoi = {?}"

    .line 69
    invoke-static {v3, v10, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    invoke-virtual {v0, v2}, Lt20;->k(I)I

    .line 75
    move-result v15

    .line 76
    invoke-static/range {p1 .. p1}, Lmw;->f(Ljava/lang/String;)Lcom/autonavi/iflytek/bean/Poi;

    .line 79
    move-result-object v1

    .line 80
    if-nez v1, :cond_0

    .line 82
    const-string v1, " [VoiceRecognition] NaviVoiceClient navigate poi == null"

    .line 84
    new-array v2, v5, [Ljava/lang/Object;

    .line 86
    invoke-static {v3, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return v5

    .line 90
    :cond_0
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 93
    move-result-object v13

    .line 94
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 97
    move-result-object v12

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    const-string v6, "NaviVoiceendLatitude: "

    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v6, " endLongitude:"

    .line 113
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v6, " endPoi.getName():"

    .line 121
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 127
    move-result-object v6

    .line 128
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object v2

    .line 138
    new-array v6, v5, [Ljava/lang/Object;

    .line 140
    invoke-static {v7, v2, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    const/4 v2, 0x4

    .line 144
    new-array v2, v2, [Ljava/lang/Object;

    .line 146
    aput-object v12, v2, v5

    .line 148
    aput-object v13, v2, v9

    .line 150
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 153
    move-result-object v5

    .line 154
    aput-object v5, v2, v8

    .line 156
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    move-result-object v5

    .line 160
    aput-object v5, v2, v4

    .line 162
    const-string v4, " [VoiceRecognition] NaviVoiceClient navigate endLatitude = {?} endLongitude = {?} endPoi.getName() = {?} routeNaviType = {?}"

    .line 164
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object v11, v0, Lt20;->a:Lv2;

    .line 169
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 172
    move-result-object v14

    .line 173
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->t()Ljava/lang/String;

    .line 176
    move-result-object v16

    .line 177
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->E()Ljava/lang/String;

    .line 180
    move-result-object v17

    .line 181
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->F()Ljava/lang/String;

    .line 184
    move-result-object v18

    .line 185
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->B()Ljava/lang/String;

    .line 188
    move-result-object v19

    .line 189
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->A()Ljava/lang/String;

    .line 192
    move-result-object v20

    .line 193
    invoke-virtual/range {v11 .. v20}, Lv2;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return v9
.end method

.method public i(Ljava/lang/String;II)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 3
    move-object/from16 v1, p1

    .line 5
    move/from16 v2, p2

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    const-string v4, "NaviVoice navigate parameters:"

    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    const-string v4, " route_type:"

    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v3

    .line 32
    const/4 v4, 0x0

    .line 33
    new-array v5, v4, [Ljava/lang/Object;

    .line 35
    const-string v6, "TAG_ADAPTER"

    .line 37
    invoke-static {v6, v3, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v3, 0x3

    .line 41
    new-array v5, v3, [Ljava/lang/Object;

    .line 43
    aput-object v1, v5, v4

    .line 45
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v7

    .line 49
    const/4 v8, 0x1

    .line 50
    aput-object v7, v5, v8

    .line 52
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    move-result-object v7

    .line 56
    const/4 v9, 0x2

    .line 57
    aput-object v7, v5, v9

    .line 59
    const-string v7, ""

    .line 61
    const-string v10, " [VoiceRecognition] NaviVoiceClient generalNavigate parameters = {?} route_type = {?} coord_type = {?}"

    .line 63
    invoke-static {v7, v10, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-virtual {v0, v2}, Lt20;->k(I)I

    .line 69
    move-result v15

    .line 70
    invoke-static/range {p1 .. p1}, Lmw;->f(Ljava/lang/String;)Lcom/autonavi/iflytek/bean/Poi;

    .line 73
    move-result-object v1

    .line 74
    if-nez v1, :cond_0

    .line 76
    const-string v1, " [VoiceRecognition] NaviVoiceClient generalNavigate poi == null"

    .line 78
    new-array v2, v4, [Ljava/lang/Object;

    .line 80
    invoke-static {v7, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return v4

    .line 84
    :cond_0
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->x()Ljava/lang/String;

    .line 87
    move-result-object v13

    .line 88
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->w()Ljava/lang/String;

    .line 91
    move-result-object v12

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    const-string v5, "NaviVoiceendLatitude: "

    .line 99
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    const-string v5, " endLongitude:"

    .line 107
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    const-string v5, " endPoi.getName():"

    .line 115
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 121
    move-result-object v5

    .line 122
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    move-result-object v2

    .line 132
    new-array v5, v4, [Ljava/lang/Object;

    .line 134
    invoke-static {v6, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    const/4 v2, 0x4

    .line 138
    new-array v2, v2, [Ljava/lang/Object;

    .line 140
    aput-object v12, v2, v4

    .line 142
    aput-object v13, v2, v8

    .line 144
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 147
    move-result-object v4

    .line 148
    aput-object v4, v2, v9

    .line 150
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    move-result-object v4

    .line 154
    aput-object v4, v2, v3

    .line 156
    const-string v3, " [VoiceRecognition] NaviVoiceClient generalNavigate endLatitude = {?} endLongitude = {?} getName = {?} routeNaviType = {?}"

    .line 158
    invoke-static {v7, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v11, v0, Lt20;->a:Lv2;

    .line 163
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 166
    move-result-object v14

    .line 167
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->t()Ljava/lang/String;

    .line 170
    move-result-object v16

    .line 171
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->E()Ljava/lang/String;

    .line 174
    move-result-object v17

    .line 175
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->F()Ljava/lang/String;

    .line 178
    move-result-object v18

    .line 179
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->B()Ljava/lang/String;

    .line 182
    move-result-object v19

    .line 183
    invoke-virtual {v1}, Lcom/autonavi/iflytek/bean/Poi;->A()Ljava/lang/String;

    .line 186
    move-result-object v20

    .line 187
    invoke-virtual/range {v11 .. v20}, Lv2;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return v8
.end method

.method public j()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, ""

    .line 6
    const-string v3, " [VoiceRecognition] NaviVoiceClient getRemainderDistanceInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 13
    iget-boolean v1, v1, Lpj0;->o:Z

    .line 15
    const/4 v3, 0x1

    .line 16
    if-ne v1, v3, :cond_0

    .line 18
    const-string v1, " [VoiceRecognition] NaviVoiceClient getRemainderDistanceInfo mVRFunctionSwitch.remainderDistanceInfo == true"

    .line 20
    new-array v0, v0, [Ljava/lang/Object;

    .line 22
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lt20;->a:Lv2;

    .line 27
    invoke-virtual {v0}, Lv2;->i()V

    .line 30
    :cond_0
    return-void
.end method

.method public final k(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const-string v2, ""

    .line 13
    const-string v4, " [VoiceRecognition] NaviVoiceClient getRouteNaviType route_type = {?}"

    .line 15
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    const/4 v1, 0x4

    .line 19
    const/4 v2, 0x3

    .line 20
    if-eq p1, v2, :cond_4

    .line 22
    if-eq p1, v1, :cond_3

    .line 24
    const/4 v0, 0x5

    .line 25
    if-eq p1, v0, :cond_2

    .line 27
    const/4 v0, 0x6

    .line 28
    if-eq p1, v0, :cond_1

    .line 30
    const/4 v0, 0x7

    .line 31
    if-eq p1, v0, :cond_0

    .line 33
    return v3

    .line 34
    :cond_0
    const/4 p1, 0x2

    .line 35
    return p1

    .line 36
    :cond_1
    return v2

    .line 37
    :cond_2
    const/16 p1, 0x14

    .line 39
    return p1

    .line 40
    :cond_3
    return v0

    .line 41
    :cond_4
    return v1
.end method

.method public final l(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, ""

    .line 13
    const-string v1, " [VoiceRecognition] NaviVoiceClient goCompany requestCode = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 20
    invoke-virtual {p1}, Lv2;->k()V

    .line 23
    return-void
.end method

.method public m(Ljava/lang/String;I)Z
    .locals 7

    .line 1
    invoke-super {p0, p1, p2}, Lh20;->m(Ljava/lang/String;I)Z

    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object p1, v1, v2

    .line 10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v3

    .line 14
    const/4 v4, 0x1

    .line 15
    aput-object v3, v1, v4

    .line 17
    const-string v3, ""

    .line 19
    const-string v5, " [VoiceRecognition] NaviVoiceClient searchPoiAlongRoute parameters = {?} requestCode = {?}"

    .line 21
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 26
    iget-boolean v1, v1, Lpj0;->e:Z

    .line 28
    if-nez v1, :cond_0

    .line 30
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoiAlongRoute ! mVRFunctionSwitch.aloneSearch"

    .line 32
    new-array p2, v2, [Ljava/lang/Object;

    .line 34
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return v2

    .line 38
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    const-string v5, "searchPoiAlongRoute parameters:"

    .line 45
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v5, " requestCode:"

    .line 53
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 63
    new-array v5, v2, [Ljava/lang/Object;

    .line 65
    const-string v6, "TAG_ADAPTER"

    .line 67
    invoke-static {v6, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 73
    move-result v1

    .line 74
    if-nez v1, :cond_1

    .line 76
    const-string v1, " [VoiceRecognition] NaviVoiceClient searchPoiAlongRoute parameters is not empty"

    .line 78
    new-array v5, v2, [Ljava/lang/Object;

    .line 80
    invoke-static {v3, v1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const-class v1, Lic0;

    .line 85
    invoke-static {p1, v1}, Lmw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lic0;

    .line 91
    iput-object p1, p0, Lt20;->g:Lic0;

    .line 93
    :cond_1
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 95
    if-eqz p1, :cond_2

    .line 97
    iget-object p1, p1, Lic0;->h:Ljava/lang/String;

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    move-object p1, v3

    .line 101
    :goto_0
    new-array v1, v4, [Ljava/lang/Object;

    .line 103
    aput-object p1, v1, v2

    .line 105
    const-string v5, " [VoiceRecognition] NaviVoiceClient searchPoiAlongRoute searchPoiBean.name = {?}"

    .line 107
    invoke-static {v3, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 116
    move-result v1

    .line 117
    const/4 v5, -0x1

    .line 118
    sparse-switch v1, :sswitch_data_0

    .line 121
    :goto_1
    const/4 v0, -0x1

    .line 122
    goto :goto_2

    .line 123
    :sswitch_0
    const-string v0, "\u7ef4\u4fee\u7ad9"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_3

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    const/4 v0, 0x5

    .line 133
    goto :goto_2

    .line 134
    :sswitch_1
    const-string v0, "\u52a0\u6cb9\u7ad9"

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p1

    .line 140
    if-nez p1, :cond_4

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    const/4 v0, 0x4

    .line 144
    goto :goto_2

    .line 145
    :sswitch_2
    const-string v0, "\u5145\u7535\u7ad9"

    .line 147
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 150
    move-result p1

    .line 151
    if-nez p1, :cond_5

    .line 153
    goto :goto_1

    .line 154
    :cond_5
    const/4 v0, 0x3

    .line 155
    goto :goto_2

    .line 156
    :sswitch_3
    const-string v1, "\u5145\u7535\u6869"

    .line 158
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    move-result p1

    .line 162
    if-nez p1, :cond_8

    .line 164
    goto :goto_1

    .line 165
    :sswitch_4
    const-string v0, "\u5395\u6240"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result p1

    .line 171
    if-nez p1, :cond_6

    .line 173
    goto :goto_1

    .line 174
    :cond_6
    const/4 v0, 0x1

    .line 175
    goto :goto_2

    .line 176
    :sswitch_5
    const-string v0, "atm"

    .line 178
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result p1

    .line 182
    if-nez p1, :cond_7

    .line 184
    goto :goto_1

    .line 185
    :cond_7
    const/4 v0, 0x0

    .line 186
    :cond_8
    :goto_2
    packed-switch v0, :pswitch_data_0

    .line 189
    const/4 p1, -0x4

    .line 190
    const-string v0, "\u6682\u4e0d\u652f\u6301\u7684\u6cbf\u9014\u641c\u7c7b\u578b"

    .line 192
    invoke-virtual {p0, p2, p1, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 195
    return v4

    .line 196
    :pswitch_0
    const-string p1, "3"

    .line 198
    goto :goto_3

    .line 199
    :pswitch_1
    const-string p1, "4"

    .line 201
    goto :goto_3

    .line 202
    :pswitch_2
    const-string p1, "5"

    .line 204
    goto :goto_3

    .line 205
    :pswitch_3
    const-string p1, "1"

    .line 207
    goto :goto_3

    .line 208
    :pswitch_4
    const-string p1, "2"

    .line 210
    :goto_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 213
    move-result p2

    .line 214
    if-eqz p2, :cond_9

    .line 216
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoiAlongRoute searchType is empty}"

    .line 218
    new-array p2, v2, [Ljava/lang/Object;

    .line 220
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    return v4

    .line 224
    :cond_9
    iget-object p2, p0, Lt20;->a:Lv2;

    .line 226
    invoke-static {}, Lrv;->H()Lrv;

    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lrv;->y()Landroid/app/Application;

    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {p2, v0, p1}, Lv2;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 237
    return v4

    .line 238
    nop

    .line 239
    :sswitch_data_0
    .sparse-switch
        0x17a9a -> :sswitch_5
        0xa814b -> :sswitch_4
        0x13fadd9 -> :sswitch_3
        0x13fc049 -> :sswitch_2
        0x143cfe0 -> :sswitch_1
        0x1e6ba9f -> :sswitch_0
    .end sparse-switch

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final n(I)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p1

    .line 9
    aput-object p1, v0, v1

    .line 11
    const-string p1, ""

    .line 13
    const-string v1, " [VoiceRecognition] NaviVoiceClient goHome requestCode = {?}"

    .line 15
    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    iget-object p1, p0, Lt20;->a:Lv2;

    .line 20
    invoke-virtual {p1}, Lv2;->l()V

    .line 23
    return-void
.end method

.method public final o(Landroid/content/Context;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "NaviVoice"

    .line 6
    const-string v3, " init(Context context)"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, " [VoiceRecognition] NaviVoiceClient init"

    .line 13
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    const-string v2, ""

    .line 17
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lu20;->a()Lu20;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lt20;->c:Lu20;

    .line 26
    invoke-static {}, Lrv;->H()Lrv;

    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Lt20$b;

    .line 32
    invoke-direct {v1, p0}, Lt20$b;-><init>(Lt20;)V

    .line 35
    invoke-virtual {v0, v1}, Lrv;->c0(Ls20;)V

    .line 38
    invoke-static {}, Lv2;->h()Lv2;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lt20;->a:Lv2;

    .line 44
    invoke-virtual {v0, p1}, Lv2;->s(Landroid/content/Context;)V

    .line 47
    invoke-static {}, Li80;->c()Li80;

    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lt20;->h:Li80;

    .line 53
    invoke-virtual {v0, p1}, Li80;->e(Landroid/content/Context;)V

    .line 56
    invoke-static {}, Lpj0;->a()Lpj0;

    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lt20;->d:Lpj0;

    .line 62
    return-void
.end method

.method public q(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, ""

    .line 9
    const-string v4, " [VoiceRecognition] NaviVoiceClient setPassPlace parameters = {?}"

    .line 11
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lt20;->d:Lpj0;

    .line 16
    iget-boolean v1, v1, Lpj0;->n:Z

    .line 18
    if-ne v1, v0, :cond_0

    .line 20
    const-string v1, " [VoiceRecognition] NaviVoiceClient setPassPlace mVRFunctionSwitch.setPassPlace == true"

    .line 22
    new-array v4, v2, [Ljava/lang/Object;

    .line 24
    invoke-static {v3, v1, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lt20;->a:Lv2;

    .line 29
    invoke-virtual {v1, p1}, Lv2;->z(Ljava/lang/String;)V

    .line 32
    const-string p1, " [VoiceRecognition] NaviVoiceClient setPassPlace return true"

    .line 34
    new-array v1, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v3, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return v0

    .line 40
    :cond_0
    const-string p1, " [VoiceRecognition] NaviVoiceClient setPassPlace return false"

    .line 42
    new-array v0, v2, [Ljava/lang/Object;

    .line 44
    invoke-static {v3, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return v2
.end method

.method public final r()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, ""

    .line 6
    const-string v3, " [VoiceRecognition] NaviVoiceClient isCityOrArea"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lt20;->g:Lic0;

    .line 13
    iget-object v1, v1, Lic0;->i:Ljava/lang/String;

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    iget-object v4, p0, Lt20;->g:Lic0;

    .line 22
    iget-object v4, v4, Lic0;->b:Ljava/lang/String;

    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v4, p0, Lt20;->g:Lic0;

    .line 29
    iget-object v4, v4, Lic0;->c:Ljava/lang/String;

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    iget-object v4, p0, Lt20;->g:Lic0;

    .line 36
    iget-object v4, v4, Lic0;->d:Ljava/lang/String;

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 45
    const/4 v4, 0x2

    .line 46
    new-array v4, v4, [Ljava/lang/Object;

    .line 48
    aput-object v1, v4, v0

    .line 50
    const/4 v5, 0x1

    .line 51
    aput-object v3, v4, v5

    .line 53
    const-string v6, " [VoiceRecognition] NaviVoiceClient isCityOrArea poiBean = {?} cityBean = {?}"

    .line 55
    invoke-static {v2, v6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    if-eqz v1, :cond_0

    .line 60
    if-eqz v3, :cond_0

    .line 62
    const-string v4, " [VoiceRecognition] NaviVoiceClient isCityOrArea poiBean != null && cityBean != null"

    .line 64
    new-array v6, v0, [Ljava/lang/Object;

    .line 66
    invoke-static {v2, v4, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    const-string v4, "\u5e02"

    .line 71
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    const-string v6, "\u533a"

    .line 77
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 80
    move-result-object v1

    .line 81
    const-string v7, "\u53bf"

    .line 83
    invoke-virtual {v1, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 86
    move-result-object v1

    .line 87
    const-string v8, "\u7701"

    .line 89
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3, v7, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_0

    .line 115
    const-string v1, " [VoiceRecognition] NaviVoiceClient isCityOrArea return true"

    .line 117
    new-array v0, v0, [Ljava/lang/Object;

    .line 119
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    return v5

    .line 123
    :cond_0
    const-string v1, " [VoiceRecognition] NaviVoiceClient isCityOrArea return false"

    .line 125
    new-array v3, v0, [Ljava/lang/Object;

    .line 127
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    return v0
.end method

.method public s(Ljava/lang/String;I)Z
    .locals 11

    .line 1
    invoke-super {p0, p1, p2}, Lh20;->s(Ljava/lang/String;I)Z

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    const-string v1, "searchPoi parameters: "

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, " requestCode: "

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    new-array v2, v1, [Ljava/lang/Object;

    .line 32
    const-string v3, "TAG_ADAPTER"

    .line 34
    invoke-static {v3, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    const/4 v0, 0x2

    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 40
    aput-object p1, v0, v1

    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    move-result-object v2

    .line 46
    const/4 v4, 0x1

    .line 47
    aput-object v2, v0, v4

    .line 49
    const-string v2, ""

    .line 51
    const-string v5, " [VoiceRecognition] NaviVoiceClient searchPoi parameters = {?} requestCode = {?}"

    .line 53
    invoke-static {v2, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    const/4 v0, 0x4

    .line 57
    if-ne p2, v0, :cond_0

    .line 59
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi requestCode == 4"

    .line 61
    new-array p2, v1, [Ljava/lang/Object;

    .line 63
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    return v1

    .line 67
    :cond_0
    invoke-static {}, La7;->c()La7;

    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, La7;->d()Z

    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_2

    .line 77
    invoke-static {}, La7;->c()La7;

    .line 80
    move-result-object v0

    .line 81
    invoke-static {}, Lrv;->H()Lrv;

    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v5}, Lrv;->y()Landroid/app/Application;

    .line 88
    move-result-object v5

    .line 89
    invoke-virtual {v0, v5}, La7;->h(Landroid/content/Context;)V

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 95
    move-result-wide v5

    .line 96
    :cond_1
    invoke-static {}, La7;->c()La7;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, La7;->d()Z

    .line 103
    move-result v0

    .line 104
    if-nez v0, :cond_2

    .line 106
    const-wide/16 v7, 0x64

    .line 108
    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    goto :goto_0

    .line 112
    :catch_0
    nop

    .line 113
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 116
    move-result-wide v7

    .line 117
    sub-long/2addr v7, v5

    .line 118
    const-wide/16 v9, 0x2710

    .line 120
    cmp-long v0, v7, v9

    .line 122
    if-ltz v0, :cond_1

    .line 124
    const-string p1, "init time out"

    .line 126
    new-array p2, v1, [Ljava/lang/Object;

    .line 128
    const-string v0, "NaviVoice"

    .line 130
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    return v1

    .line 134
    :cond_2
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lt20;->g:Lic0;

    .line 137
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    move-result v5

    .line 141
    if-nez v5, :cond_8

    .line 143
    const-string v5, " [VoiceRecognition] NaviVoiceClient searchPoi parameters is not empty"

    .line 145
    new-array v6, v1, [Ljava/lang/Object;

    .line 147
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    const-class v5, Lic0;

    .line 152
    invoke-static {p1, v5}, Lmw;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Lic0;

    .line 158
    iput-object p1, p0, Lt20;->g:Lic0;

    .line 160
    if-eqz p1, :cond_3

    .line 162
    new-array v5, v4, [Ljava/lang/Object;

    .line 164
    invoke-virtual {p1}, Lic0;->toString()Ljava/lang/String;

    .line 167
    move-result-object p1

    .line 168
    aput-object p1, v5, v1

    .line 170
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi searchPoiBean = {?}"

    .line 172
    invoke-static {v2, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 177
    invoke-virtual {p1}, Lic0;->toString()Ljava/lang/String;

    .line 180
    move-result-object p1

    .line 181
    new-array v5, v1, [Ljava/lang/Object;

    .line 183
    invoke-static {v3, p1, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_3
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 188
    if-nez p1, :cond_4

    .line 190
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi searchPoiBean == null"

    .line 192
    new-array v1, v1, [Ljava/lang/Object;

    .line 194
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 p1, -0x7

    .line 198
    invoke-virtual {p0, p2, p1, v0}, Lt20;->z(IILjava/lang/String;)V

    .line 201
    return v4

    .line 202
    :cond_4
    iget-object p1, p1, Lic0;->i:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_7

    .line 210
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi searchPoiBean.poi is not empty"

    .line 212
    new-array v0, v1, [Ljava/lang/Object;

    .line 214
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 219
    iget-object p1, p1, Lic0;->i:Ljava/lang/String;

    .line 221
    const-string v0, "\u56dbs"

    .line 223
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_5

    .line 229
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi searchPoiBean.poi contains \u56dbs"

    .line 231
    new-array v3, v1, [Ljava/lang/Object;

    .line 233
    invoke-static {v2, p1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 238
    iget-object v3, p1, Lic0;->i:Ljava/lang/String;

    .line 240
    const-string v5, "4S"

    .line 242
    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 245
    move-result-object v0

    .line 246
    iput-object v0, p1, Lic0;->i:Ljava/lang/String;

    .line 248
    goto :goto_1

    .line 249
    :cond_5
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 251
    iget-object p1, p1, Lic0;->i:Ljava/lang/String;

    .line 253
    const-string v0, "\u5bb6"

    .line 255
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result p1

    .line 259
    if-eqz p1, :cond_6

    .line 261
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi searchPoiBean.poi equals \u5bb6"

    .line 263
    new-array v0, v1, [Ljava/lang/Object;

    .line 265
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    invoke-virtual {p0, p2}, Lt20;->n(I)V

    .line 271
    return v4

    .line 272
    :cond_6
    iget-object p1, p0, Lt20;->g:Lic0;

    .line 274
    iget-object p1, p1, Lic0;->i:Ljava/lang/String;

    .line 276
    const-string v0, "\u516c\u53f8"

    .line 278
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    move-result p1

    .line 282
    if-eqz p1, :cond_7

    .line 284
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi searchPoiBean.poi equals \u516c\u53f8"

    .line 286
    new-array v0, v1, [Ljava/lang/Object;

    .line 288
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0, p2}, Lt20;->l(I)V

    .line 294
    return v4

    .line 295
    :cond_7
    :goto_1
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi before startSearchPoi"

    .line 297
    new-array v0, v1, [Ljava/lang/Object;

    .line 299
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object p1, p0, Lt20;->b:Landroid/os/Handler;

    .line 304
    new-instance v0, Lt20$d;

    .line 306
    invoke-direct {v0, p0, p2}, Lt20$d;-><init>(Lt20;I)V

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    return v4

    .line 313
    :cond_8
    const-string p1, " [VoiceRecognition] NaviVoiceClient searchPoi parameters is empty"

    .line 315
    new-array v0, v1, [Ljava/lang/Object;

    .line 317
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iget-object p1, p0, Lt20;->b:Landroid/os/Handler;

    .line 322
    new-instance v0, Lt20$c;

    .line 324
    invoke-direct {v0, p0, p2}, Lt20$c;-><init>(Lt20;I)V

    .line 327
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 330
    return v4
.end method

.method public t(I)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lh20;->t(I)V

    .line 4
    const/4 v0, 0x1

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 14
    const-string v1, ""

    .line 16
    const-string v3, " [VoiceRecognition] NaviVoiceClient onGetMapShareState requestCode = {?}"

    .line 18
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lt20;->d:Lpj0;

    .line 23
    iget-boolean v0, v0, Lpj0;->w:Z

    .line 25
    if-eqz v0, :cond_0

    .line 27
    const-string v0, " [VoiceRecognition] NaviVoiceClient onGetMapShareState mVRFunctionSwitch.shareByMap"

    .line 29
    new-array v2, v2, [Ljava/lang/Object;

    .line 31
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lt20;->a:Lv2;

    .line 36
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Lv2;->B(Ljava/lang/String;)V

    .line 43
    :cond_0
    return-void
.end method

.method public final u(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string v0, "null"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 11
    const-string v0, ""

    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method public v()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, ""

    .line 6
    const-string v2, " [VoiceRecognition] NaviVoiceClient showLocation"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lt20;->A()Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public w()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "TAG_ADAPTER"

    .line 6
    const-string v3, "NaviVoice getLastLocation"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const-string v1, " [VoiceRecognition] NaviVoiceClient getLocation"

    .line 13
    new-array v3, v0, [Ljava/lang/Object;

    .line 15
    const-string v4, ""

    .line 17
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v1, Lcom/autonavi/iflytek/bean/ProviderPoi;

    .line 22
    invoke-direct {v1}, Lcom/autonavi/iflytek/bean/ProviderPoi;-><init>()V

    .line 25
    iget-object v3, p0, Lt20;->h:Li80;

    .line 27
    invoke-virtual {v3, v1}, Li80;->a(Lcom/autonavi/iflytek/bean/ProviderPoi;)Ljava/util/ArrayList;

    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_1

    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/autonavi/iflytek/bean/Poi;

    .line 46
    invoke-virtual {v3}, Lcom/autonavi/iflytek/bean/Poi;->z()Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 50
    invoke-virtual {v3, v5}, Lcom/autonavi/iflytek/bean/Poi;->M(Ljava/lang/String;)V

    .line 53
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    const-string v6, "NaviVoicepois size"

    .line 60
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 66
    move-result v6

    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v5

    .line 74
    new-array v6, v0, [Ljava/lang/Object;

    .line 76
    invoke-static {v2, v5, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    const/4 v5, 0x1

    .line 80
    new-array v6, v5, [Ljava/lang/Object;

    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 85
    move-result v1

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    move-result-object v1

    .line 90
    aput-object v1, v6, v0

    .line 92
    const-string v1, " [VoiceRecognition] NaviVoiceClient getLocation  pois.size() = {?}"

    .line 94
    invoke-static {v4, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-static {v3}, Lmw;->c(Lcom/autonavi/iflytek/bean/Poi;)Ljava/lang/String;

    .line 100
    move-result-object v1

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    const-string v6, "NaviVoiceresult="

    .line 108
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 118
    new-array v6, v0, [Ljava/lang/Object;

    .line 120
    invoke-static {v2, v3, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    new-array v2, v5, [Ljava/lang/Object;

    .line 125
    aput-object v1, v2, v0

    .line 127
    const-string v0, " [VoiceRecognition] NaviVoiceClient getLocation  result = {?}"

    .line 129
    invoke-static {v4, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    return-object v1

    .line 133
    :cond_1
    :goto_0
    const-string v1, " [VoiceRecognition] NaviVoiceClient getLocation pois == null || pois.size() == 0"

    .line 135
    new-array v0, v0, [Ljava/lang/Object;

    .line 137
    invoke-static {v4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    const/4 v0, 0x0

    .line 141
    return-object v0
.end method

.method public x(Ljava/lang/String;)Z
    .locals 6

    .line 1
    const-string v0, "NaviVoice"

    .line 3
    invoke-super {p0, p1}, Lh20;->x(Ljava/lang/String;)Z

    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v2, v1, [Ljava/lang/Object;

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object p1, v2, v3

    .line 12
    const-string v4, ""

    .line 14
    const-string v5, " [VoiceRecognition] NaviVoiceClient shareByMap parameters = {?}"

    .line 16
    invoke-static {v4, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v2, p0, Lt20;->d:Lpj0;

    .line 21
    iget-boolean v2, v2, Lpj0;->w:Z

    .line 23
    if-nez v2, :cond_0

    .line 25
    const-string p1, " [VoiceRecognition] NaviVoiceClient shareByMap ! mVRFunctionSwitch.shareByMap"

    .line 27
    new-array v0, v3, [Ljava/lang/Object;

    .line 29
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return v3

    .line 33
    :cond_0
    :try_start_0
    invoke-static {p1}, Lmw;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_1

    .line 43
    const-string p1, "shareSafe tel == null"

    .line 45
    new-array v2, v3, [Ljava/lang/Object;

    .line 47
    invoke-static {v0, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    const-string p1, " [VoiceRecognition] AmapSchma shareSafe tel is empty"

    .line 52
    new-array v2, v3, [Ljava/lang/Object;

    .line 54
    invoke-static {v4, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    return v3

    .line 58
    :cond_1
    iget-object v0, p0, Lt20;->a:Lv2;

    .line 60
    invoke-virtual {v0, p1}, Lv2;->A(Ljava/lang/String;)V

    .line 63
    return v1

    .line 64
    :catch_0
    move-exception p1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v5, "shareSafe Exception:"

    .line 72
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v2

    .line 86
    new-array v5, v3, [Ljava/lang/Object;

    .line 88
    invoke-static {v0, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    new-array v0, v1, [Ljava/lang/Object;

    .line 93
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    aput-object p1, v0, v3

    .line 99
    const-string p1, " [VoiceRecognition] AmapSchma shareSafe Exception = {?}"

    .line 101
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return v3
.end method

.method public y(ILjava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1, p2}, Lt20;->z(IILjava/lang/String;)V

    .line 5
    return-void
.end method

.method public z(IILjava/lang/String;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "NaviVoice requestCode ="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "resultCode="

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "promp ="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v2, v1, [Ljava/lang/Object;

    .line 37
    const-string v3, ""

    .line 39
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x3

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v2

    .line 49
    aput-object v2, v0, v1

    .line 51
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object v2

    .line 55
    const/4 v4, 0x1

    .line 56
    aput-object v2, v0, v4

    .line 58
    const/4 v2, 0x2

    .line 59
    aput-object p3, v0, v2

    .line 61
    const-string v2, " [VoiceRecognition] NaviVoiceClient returnIfly requestCode = {?} resultCode = {?} promp ={?}"

    .line 63
    invoke-static {v3, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :try_start_0
    sget-object v0, Lcom/iflytek/navigationservice/NavigationService;->c:Lm20;

    .line 68
    invoke-interface {v0, p1, p2, p3}, Lm20;->M0(IILjava/lang/String;)V

    .line 71
    const-string p1, "NaviVoice notify Success"

    .line 73
    new-array p2, v1, [Ljava/lang/Object;

    .line 75
    invoke-static {p1, v3, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    const-string p1, " [VoiceRecognition] NaviVoiceClient returnIfly notify Success"

    .line 80
    new-array p2, v1, [Ljava/lang/Object;

    .line 82
    invoke-static {v3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    goto :goto_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    const-string p3, "NaviVoice notify fail"

    .line 94
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 100
    move-result-object p3

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    new-array p3, v1, [Ljava/lang/Object;

    .line 110
    invoke-static {p2, v3, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    new-array p2, v4, [Ljava/lang/Object;

    .line 115
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 118
    move-result-object p3

    .line 119
    aput-object p3, p2, v1

    .line 121
    const-string p3, " [VoiceRecognition] NaviVoiceClient returnIfly notify fail exception = {?}"

    .line 123
    invoke-static {v3, p3, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 129
    :goto_0
    return-void
.end method

.class public abstract Li6;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li6$b;,
        Li6$a;
    }
.end annotation


# static fields
.field public static A:I

.field public static B:J

.field public static C:J

.field public static D:J

.field public static E:J

.field public static F:J

.field public static G:J

.field public static H:J

.field public static I:J

.field public static J:J

.field public static K:J

.field public static L:I

.field public static M:Z

.field public static N:Z

.field public static O:I

.field public static P:Ljava/util/Map;

.field public static Q:J

.field public static R:J

.field public static S:Ljava/util/Map;

.field public static T:I

.field public static U:I

.field public static final a:Landroid/util/SparseArray;

.field public static b:Li6$b;

.field public static c:J

.field public static d:I

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:Z

.field public static n:Z

.field public static o:I

.field public static p:I

.field public static q:Z

.field public static r:I

.field public static s:I

.field public static t:I

.field public static u:I

.field public static v:Ljava/util/ArrayList;

.field public static w:Ljava/util/ArrayList;

.field public static x:Ljava/util/ArrayList;

.field public static y:I

.field public static z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 6
    sput-object v0, Li6;->a:Landroid/util/SparseArray;

    .line 8
    const-wide/16 v0, 0x0

    .line 10
    sput-wide v0, Li6;->c:J

    .line 12
    const/4 v2, 0x0

    .line 13
    sput v2, Li6;->d:I

    .line 15
    sput v2, Li6;->e:I

    .line 17
    sput v2, Li6;->f:I

    .line 19
    sput v2, Li6;->g:I

    .line 21
    const/4 v3, 0x1

    .line 22
    sput v3, Li6;->h:I

    .line 24
    const/4 v3, 0x2

    .line 25
    sput v3, Li6;->i:I

    .line 27
    const/4 v3, 0x3

    .line 28
    sput v3, Li6;->j:I

    .line 30
    const/4 v3, 0x4

    .line 31
    sput v3, Li6;->k:I

    .line 33
    const/4 v3, 0x5

    .line 34
    sput v3, Li6;->l:I

    .line 36
    sput-boolean v2, Li6;->m:Z

    .line 38
    sput-boolean v2, Li6;->n:Z

    .line 40
    sput v2, Li6;->o:I

    .line 42
    sput v2, Li6;->p:I

    .line 44
    sput-boolean v2, Li6;->q:Z

    .line 46
    sput v2, Li6;->r:I

    .line 48
    sput v2, Li6;->s:I

    .line 50
    sput v2, Li6;->t:I

    .line 52
    sput v2, Li6;->u:I

    .line 54
    new-instance v3, Ljava/util/ArrayList;

    .line 56
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 59
    sput-object v3, Li6;->v:Ljava/util/ArrayList;

    .line 61
    new-instance v3, Ljava/util/ArrayList;

    .line 63
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    sput-object v3, Li6;->w:Ljava/util/ArrayList;

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    .line 70
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 73
    sput-object v3, Li6;->x:Ljava/util/ArrayList;

    .line 75
    sput v2, Li6;->y:I

    .line 77
    sput v2, Li6;->z:I

    .line 79
    sput v2, Li6;->A:I

    .line 81
    sput-wide v0, Li6;->B:J

    .line 83
    sput-wide v0, Li6;->C:J

    .line 85
    sput-wide v0, Li6;->D:J

    .line 87
    sput-wide v0, Li6;->E:J

    .line 89
    sput-wide v0, Li6;->F:J

    .line 91
    sput-wide v0, Li6;->G:J

    .line 93
    sput-wide v0, Li6;->H:J

    .line 95
    sput-wide v0, Li6;->I:J

    .line 97
    sput-wide v0, Li6;->J:J

    .line 99
    sput-wide v0, Li6;->K:J

    .line 101
    sput v2, Li6;->L:I

    .line 103
    sput-boolean v2, Li6;->M:Z

    .line 105
    sput-boolean v2, Li6;->N:Z

    .line 107
    new-instance v0, Ljava/util/HashMap;

    .line 109
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 112
    sput-object v0, Li6;->P:Ljava/util/Map;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    .line 116
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 119
    sput-object v0, Li6;->S:Ljava/util/Map;

    .line 121
    sput v2, Li6;->T:I

    .line 123
    sput v2, Li6;->U:I

    .line 125
    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget v0, Li6;->p:I

    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 5
    sput v0, Li6;->p:I

    .line 7
    return-void
.end method

.method public static b(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)Z
    .locals 10

    .line 1
    const-string v0, "AudioLogSpy"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "textPlayEventTracking: playTrackingData is null and return false"

    .line 8
    new-array v2, v1, [Ljava/lang/Object;

    .line 10
    invoke-static {v0, p0, v2}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return v1

    .line 14
    :cond_0
    iget v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 16
    const v3, 0xbfb044f

    .line 19
    const-string v4, "="

    .line 21
    const-string v5, "textPlayEventTracking:playMessage.Exception="

    .line 23
    const/4 v6, 0x2

    .line 24
    const/4 v7, 0x1

    .line 25
    if-ne v2, v3, :cond_3

    .line 27
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 35
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 37
    const-string v3, "playCount"

    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_2

    .line 45
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 47
    const-string v3, "playCount="

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 52
    move-result v2

    .line 53
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    move-result-object v2

    .line 63
    array-length v3, v2

    .line 64
    if-ne v3, v6, :cond_1

    .line 66
    aget-object v2, v2, v7

    .line 68
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 71
    move-result v2

    .line 72
    sput v2, Li6;->f:I

    .line 74
    :cond_1
    const-string v2, "textPlayEventTracking:playMessage={?};mPlayIndex={?}"

    .line 76
    new-array v3, v6, [Ljava/lang/Object;

    .line 78
    aput-object p0, v3, v1

    .line 80
    sget p0, Li6;->f:I

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p0

    .line 86
    aput-object p0, v3, v7

    .line 88
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p0

    .line 93
    new-array v1, v1, [Ljava/lang/Object;

    .line 95
    invoke-static {v0, v5, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 98
    :cond_2
    :goto_0
    return v7

    .line 99
    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    .line 101
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    iget-object v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 106
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    const-string v3, ";playCount="

    .line 111
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 114
    sget v3, Li6;->f:I

    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 122
    move-result-object v2

    .line 123
    iput-object v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 125
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    .line 127
    const-string v3, "textPlayEventTracking playTrackingData:{?}"

    .line 129
    if-eqz v2, :cond_4

    .line 131
    new-array v2, v7, [Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->toString()Ljava/lang/String;

    .line 136
    move-result-object v8

    .line 137
    aput-object v8, v2, v1

    .line 139
    invoke-static {v0, v3, v2}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    goto :goto_1

    .line 143
    :cond_4
    new-array v2, v7, [Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->toString()Ljava/lang/String;

    .line 148
    move-result-object v8

    .line 149
    aput-object v8, v2, v1

    .line 151
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    :goto_1
    iget v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 156
    sparse-switch v2, :sswitch_data_0

    .line 159
    const v3, 0xbfb0443

    .line 162
    if-lt v2, v3, :cond_d

    .line 164
    const v3, 0xbfb044b

    .line 167
    if-gt v2, v3, :cond_d

    .line 169
    invoke-static {p0}, Li6;->r(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V

    .line 172
    sget-object v2, Li6;->S:Ljava/util/Map;

    .line 174
    iget v4, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 176
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v4

    .line 180
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    move-result-object v2

    .line 184
    check-cast v2, Lmg0;

    .line 186
    iget v4, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 188
    if-ne v4, v3, :cond_d

    .line 190
    sput-boolean v1, Li6;->q:Z

    .line 192
    sput-boolean v1, Li6;->m:Z

    .line 194
    if-eqz v2, :cond_b

    .line 196
    iget-boolean v3, v2, Lmg0;->a:Z

    .line 198
    if-eqz v3, :cond_b

    .line 200
    iget-object v3, v2, Lmg0;->c:Ljava/lang/String;

    .line 202
    if-eqz v3, :cond_b

    .line 204
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 207
    move-result v3

    .line 208
    const/4 v4, 0x6

    .line 209
    if-ge v3, v4, :cond_b

    .line 211
    sput-boolean v7, Li6;->q:Z

    .line 213
    goto/16 :goto_6

    .line 215
    :sswitch_0
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 217
    invoke-static {v7, p0}, Li6;->x(ZLjava/lang/String;)Z

    .line 220
    goto/16 :goto_9

    .line 222
    :sswitch_1
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 224
    invoke-static {v1, p0}, Li6;->x(ZLjava/lang/String;)Z

    .line 227
    goto/16 :goto_9

    .line 229
    :sswitch_2
    new-instance v0, Ljava/util/ArrayList;

    .line 231
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    invoke-static {v0, v1}, Li6;->v(Ljava/util/List;Z)Z

    .line 240
    invoke-static {}, Ls7;->k()Ls7;

    .line 243
    move-result-object p0

    .line 244
    invoke-virtual {p0, v1}, Ls7;->s(Z)Z

    .line 247
    goto/16 :goto_9

    .line 249
    :sswitch_3
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 254
    move-result v2

    .line 255
    if-nez v2, :cond_6

    .line 257
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 259
    const-string v3, "compoundSpeed"

    .line 261
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 264
    move-result v2

    .line 265
    if-eqz v2, :cond_6

    .line 267
    :try_start_1
    const-string v2, "textPlayEventTracking:compoundSpeed.playMessage={?}"

    .line 269
    new-array v8, v7, [Ljava/lang/Object;

    .line 271
    iget-object v9, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 273
    aput-object v9, v8, v1

    .line 275
    invoke-static {v0, v2, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 280
    const-string v2, ";"

    .line 282
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 285
    move-result-object p0

    .line 286
    if-eqz p0, :cond_6

    .line 288
    const/4 v2, 0x0

    .line 289
    :goto_2
    array-length v8, p0

    .line 290
    if-ge v2, v8, :cond_6

    .line 292
    aget-object v8, p0, v2

    .line 294
    invoke-virtual {v8, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 297
    move-result v8

    .line 298
    if-eqz v8, :cond_5

    .line 300
    aget-object p0, p0, v2

    .line 302
    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 305
    move-result-object p0

    .line 306
    array-length v2, p0

    .line 307
    if-ne v2, v6, :cond_6

    .line 309
    aget-object p0, p0, v7

    .line 311
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 314
    move-result p0

    .line 315
    invoke-static {p0}, Li6;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 318
    goto :goto_3

    .line 319
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 321
    goto :goto_2

    .line 322
    :catch_1
    move-exception p0

    .line 323
    new-array v2, v1, [Ljava/lang/Object;

    .line 325
    invoke-static {v0, v5, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 328
    :cond_6
    :goto_3
    sput-boolean v7, Li6;->m:Z

    .line 330
    new-array p0, v7, [Ljava/lang/Object;

    .line 332
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 335
    move-result-object v2

    .line 336
    aput-object v2, p0, v1

    .line 338
    const-string v1, "PLAY_TEXT_SPY_AL_NOTIFY_MIT_COMPOUND_END mIsCompoudEnd:{?}"

    .line 340
    invoke-static {v0, v1, p0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    goto/16 :goto_9

    .line 345
    :sswitch_4
    invoke-static {}, Ls7;->k()Ls7;

    .line 348
    move-result-object p0

    .line 349
    invoke-virtual {p0, v7}, Ls7;->s(Z)Z

    .line 352
    goto/16 :goto_9

    .line 354
    :sswitch_5
    invoke-static {p0}, Li6;->r(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V

    .line 357
    invoke-static {}, Lh6;->c()Lh6;

    .line 360
    move-result-object v0

    .line 361
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 363
    invoke-virtual {v0, p0}, Lh6;->f(Ljava/lang/String;)V

    .line 366
    goto/16 :goto_9

    .line 368
    :sswitch_6
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 370
    new-array v2, v7, [Ljava/lang/Object;

    .line 372
    aput-object p0, v2, v1

    .line 374
    const-string v3, "textPlayEventTracking: tipSoundPath={?}"

    .line 376
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    move-result v2

    .line 383
    if-nez v2, :cond_18

    .line 385
    const-string v2, "navi_warning"

    .line 387
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 390
    move-result p0

    .line 391
    if-eqz p0, :cond_18

    .line 393
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 396
    move-result-wide v2

    .line 397
    sput-wide v2, Li6;->Q:J

    .line 399
    new-array p0, v7, [Ljava/lang/Object;

    .line 401
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 404
    move-result-object v2

    .line 405
    aput-object v2, p0, v1

    .line 407
    const-string v1, "textPlayEventTracking: current tip is navi_warning, mNaviWarningTime={?}"

    .line 409
    invoke-static {v0, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 412
    goto/16 :goto_9

    .line 414
    :sswitch_7
    invoke-static {}, Ls7;->k()Ls7;

    .line 417
    move-result-object p0

    .line 418
    invoke-virtual {p0, v7}, Ls7;->r(Z)Z

    .line 421
    goto/16 :goto_9

    .line 423
    :sswitch_8
    sget-object v2, Li6;->P:Ljava/util/Map;

    .line 425
    sget v3, Li6;->O:I

    .line 427
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    move-result-object v3

    .line 431
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-result-object v2

    .line 435
    check-cast v2, Ljava/util/List;

    .line 437
    new-array v3, v6, [Ljava/lang/Object;

    .line 439
    sget v4, Li6;->O:I

    .line 441
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 444
    move-result-object v4

    .line 445
    aput-object v4, v3, v1

    .line 447
    aput-object v2, v3, v7

    .line 449
    const-string v1, "textPlayEventTracking: before sessionId={?}, data={?}"

    .line 451
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget v0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 456
    sput v0, Li6;->O:I

    .line 458
    invoke-static {p0}, Li6;->r(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V

    .line 461
    goto/16 :goto_9

    .line 463
    :sswitch_9
    invoke-static {}, Li6;->g()V

    .line 466
    invoke-static {}, Lo6;->j()Lo6;

    .line 469
    move-result-object v2

    .line 470
    invoke-virtual {v2}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 473
    move-result-object v2

    .line 474
    new-instance v3, Ljava/util/ArrayList;

    .line 476
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 479
    sget-object v4, Li6;->P:Ljava/util/Map;

    .line 481
    iget v5, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 483
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    move-result-object v5

    .line 487
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 492
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 495
    move-result v4

    .line 496
    if-nez v4, :cond_18

    .line 498
    iget-object v4, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 500
    const-string v5, "::"

    .line 502
    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 505
    move-result-object v4

    .line 506
    invoke-interface {v3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    if-eqz v4, :cond_18

    .line 511
    array-length v3, v4

    .line 512
    if-lez v3, :cond_18

    .line 514
    const/4 v3, 0x0

    .line 515
    :goto_4
    array-length v5, v4

    .line 516
    if-ge v3, v5, :cond_18

    .line 518
    aget-object v5, v4, v3

    .line 520
    if-nez v3, :cond_7

    .line 522
    iput-object v5, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->textplay:Ljava/lang/String;

    .line 524
    invoke-static {v5, p0}, Li6;->d(Ljava/lang/String;Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V

    .line 527
    goto :goto_5

    .line 528
    :cond_7
    if-ne v3, v7, :cond_8

    .line 530
    invoke-static {v5, v1}, Lah;->k(Ljava/lang/String;I)I

    .line 533
    move-result v8

    .line 534
    iput v8, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsVolumeIncrease:I

    .line 536
    goto :goto_5

    .line 537
    :cond_8
    if-ne v3, v6, :cond_9

    .line 539
    invoke-static {v5, v1}, Lah;->k(Ljava/lang/String;I)I

    .line 542
    move-result v8

    .line 543
    iput v8, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->resLoadType:I

    .line 545
    goto :goto_5

    .line 546
    :cond_9
    const/4 v8, 0x3

    .line 547
    if-ne v3, v8, :cond_a

    .line 549
    iput-object v5, v2, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->rolepath:Ljava/lang/String;

    .line 551
    :cond_a
    :goto_5
    new-array v8, v6, [Ljava/lang/Object;

    .line 553
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 556
    move-result-object v9

    .line 557
    aput-object v9, v8, v1

    .line 559
    aput-object v5, v8, v7

    .line 561
    const-string v5, "textPlayEventTracking: index={?} content={?}"

    .line 563
    invoke-static {v0, v5, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    add-int/lit8 v3, v3, 0x1

    .line 568
    goto :goto_4

    .line 569
    :cond_b
    :goto_6
    new-array v3, v6, [Ljava/lang/Object;

    .line 571
    sget-boolean v4, Li6;->q:Z

    .line 573
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 576
    move-result-object v4

    .line 577
    aput-object v4, v3, v1

    .line 579
    if-eqz v2, :cond_c

    .line 581
    iget-object v2, v2, Lmg0;->c:Ljava/lang/String;

    .line 583
    goto :goto_7

    .line 584
    :cond_c
    const-string v2, ""

    .line 586
    :goto_7
    aput-object v2, v3, v7

    .line 588
    const-string v2, "PLAY_TEXT_SPY_AL_START_FIRST_PCM mIsTurnScene:{?};mPlayText:{?}"

    .line 590
    invoke-static {v0, v2, v3}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    :cond_d
    iget v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 595
    const v3, 0xbfb044c

    .line 598
    if-ne v2, v3, :cond_e

    .line 600
    invoke-static {}, Ls7;->k()Ls7;

    .line 603
    move-result-object v2

    .line 604
    invoke-virtual {v2, v1}, Ls7;->r(Z)Z

    .line 607
    invoke-static {p0}, Li6;->i(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V

    .line 610
    :cond_e
    iget-boolean v2, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    .line 612
    if-eqz v2, :cond_f

    .line 614
    sget-object v2, Li6;->S:Ljava/util/Map;

    .line 616
    iget v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 618
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    move-result-object v3

    .line 622
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-wide/16 v2, 0x0

    .line 627
    sput-wide v2, Li6;->Q:J

    .line 629
    sput-wide v2, Li6;->R:J

    .line 631
    :cond_f
    sget-object v2, Li6;->P:Ljava/util/Map;

    .line 633
    iget v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 635
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    move-result-object v3

    .line 639
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    move-result-object v2

    .line 643
    check-cast v2, Ljava/util/List;

    .line 645
    if-nez v2, :cond_10

    .line 647
    new-array v2, v7, [Ljava/lang/Object;

    .line 649
    iget p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 651
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 654
    move-result-object p0

    .line 655
    aput-object p0, v2, v1

    .line 657
    const-string p0, "textPlayEventTracking: iSessionId {?} has null datalist"

    .line 659
    invoke-static {v0, p0, v2}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 662
    return v1

    .line 663
    :cond_10
    iget-boolean v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    .line 665
    if-eqz v3, :cond_13

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 670
    move-result-wide v3

    .line 671
    iput-wide v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->durtaion:J

    .line 673
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 676
    invoke-static {v2, v1}, Li6;->v(Ljava/util/List;Z)Z

    .line 679
    sget-object v0, Li6;->P:Ljava/util/Map;

    .line 681
    iget v1, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 683
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 686
    move-result-object v1

    .line 687
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    iget p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 692
    const v0, 0xbfb1f99

    .line 695
    if-eq p0, v0, :cond_12

    .line 697
    const v0, 0xbfb1f9a

    .line 700
    if-eq p0, v0, :cond_12

    .line 702
    const v0, 0xbfb1f9b

    .line 705
    if-eq p0, v0, :cond_12

    .line 707
    const v0, 0xbfb1f9c

    .line 710
    if-eq p0, v0, :cond_12

    .line 712
    const v0, 0xbfb1f9d

    .line 715
    if-ne p0, v0, :cond_11

    .line 717
    goto :goto_8

    .line 718
    :cond_11
    invoke-static {}, Ls7;->k()Ls7;

    .line 721
    move-result-object p0

    .line 722
    invoke-virtual {p0, v7}, Ls7;->r(Z)Z

    .line 725
    goto :goto_9

    .line 726
    :cond_12
    :goto_8
    invoke-static {}, Ls7;->k()Ls7;

    .line 729
    move-result-object p0

    .line 730
    invoke-virtual {p0, v7}, Ls7;->s(Z)Z

    .line 733
    goto :goto_9

    .line 734
    :cond_13
    iget-boolean v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isHappyEnd:Z

    .line 736
    if-eqz v3, :cond_17

    .line 738
    const-string v3, "textPlayEventTracking: current status is isHappyEnd and remove data"

    .line 740
    new-array v4, v1, [Ljava/lang/Object;

    .line 742
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 745
    sget-object v0, Li6;->P:Ljava/util/Map;

    .line 747
    iget v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 749
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 752
    move-result-object v3

    .line 753
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    move-result-object v0

    .line 757
    check-cast v0, Ljava/util/List;

    .line 759
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 762
    move-result-object v0

    .line 763
    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 766
    move-result v3

    .line 767
    if-eqz v3, :cond_15

    .line 769
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 772
    move-result-object v3

    .line 773
    check-cast v3, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;

    .line 775
    const v4, 0xbfb0ffd

    .line 778
    iget v3, v3, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 780
    if-ne v4, v3, :cond_14

    .line 782
    const/4 v1, 0x1

    .line 783
    :cond_15
    if-eqz v1, :cond_16

    .line 785
    invoke-static {v2, v7}, Li6;->v(Ljava/util/List;Z)Z

    .line 788
    :cond_16
    sget-object v0, Li6;->P:Ljava/util/Map;

    .line 790
    iget p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 792
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 795
    move-result-object p0

    .line 796
    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    goto :goto_9

    .line 800
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 803
    move-result-wide v0

    .line 804
    iput-wide v0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->durtaion:J

    .line 806
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 809
    :cond_18
    :goto_9
    return v7

    .line 810
    nop

    .line 811
    :sswitch_data_0
    .sparse-switch
        0x6052729 -> :sswitch_9
        0x6052b0f -> :sswitch_8
        0xbfb0440 -> :sswitch_7
        0xbfb0441 -> :sswitch_6
        0xbfb0442 -> :sswitch_7
        0xbfb044d -> :sswitch_5
        0xbfb044e -> :sswitch_4
        0xbfb0450 -> :sswitch_3
        0xbfb0ffd -> :sswitch_7
        0xbfb1f98 -> :sswitch_2
        0xbfb1f9e -> :sswitch_1
        0xbfb1f9f -> :sswitch_0
    .end sparse-switch
.end method

.method public static c(I)V
    .locals 8

    .line 1
    sget v0, Li6;->z:I

    .line 3
    const/4 v1, 0x2

    .line 4
    const-string v2, "AudioLogSpy"

    .line 6
    const/4 v3, 0x1

    .line 7
    const/4 v4, 0x0

    .line 8
    if-lez v0, :cond_4

    .line 10
    sget v0, Li6;->r:I

    .line 12
    if-lez v0, :cond_4

    .line 14
    sget v0, Li6;->y:I

    .line 16
    if-lez v0, :cond_4

    .line 18
    new-array v0, v3, [Ljava/lang/Object;

    .line 20
    sget-boolean v5, Li6;->n:Z

    .line 22
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object v5

    .line 26
    aput-object v5, v0, v4

    .line 28
    const-string v5, "compareCompoudSpeed isChunkBlock:{?}"

    .line 30
    invoke-static {v2, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    sget-boolean v0, Li6;->n:Z

    .line 35
    if-eqz v0, :cond_0

    .line 37
    sget v0, Li6;->T:I

    .line 39
    add-int/2addr v0, v3

    .line 40
    sput v0, Li6;->T:I

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sput v4, Li6;->T:I

    .line 45
    :goto_0
    const/4 v0, 0x6

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    sget v5, Li6;->T:I

    .line 50
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v0, v4

    .line 56
    sget v5, Li6;->s:I

    .line 58
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v5

    .line 62
    aput-object v5, v0, v3

    .line 64
    sget v5, Li6;->y:I

    .line 66
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v5

    .line 70
    aput-object v5, v0, v1

    .line 72
    sget v5, Li6;->t:I

    .line 74
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    move-result-object v5

    .line 78
    const/4 v6, 0x3

    .line 79
    aput-object v5, v0, v6

    .line 81
    sget v5, Li6;->r:I

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    move-result-object v5

    .line 87
    const/4 v7, 0x4

    .line 88
    aput-object v5, v0, v7

    .line 90
    const/4 v5, 0x5

    .line 91
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object v7

    .line 95
    aput-object v7, v0, v5

    .line 97
    const-string v5, "compareCompoudSpeed mContinuousBlockCount:{?};mTtsStandardCacheSize:{?};mTtsShakeVolatilityValue:{?};mTtsRegularCacheSize:{?};mCompoudSpeedOld:{?};speed:{?};"

    .line 99
    invoke-static {v2, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    sget v0, Li6;->T:I

    .line 104
    if-lt v0, v6, :cond_1

    .line 106
    sget v0, Li6;->s:I

    .line 108
    sget v5, Li6;->y:I

    .line 110
    add-int/2addr v0, v5

    .line 111
    sget v5, Li6;->t:I

    .line 113
    if-ge v0, v5, :cond_1

    .line 115
    sput v5, Li6;->s:I

    .line 117
    sput v4, Li6;->T:I

    .line 119
    sget v0, Li6;->U:I

    .line 121
    add-int/2addr v0, v3

    .line 122
    sput v0, Li6;->U:I

    .line 124
    goto :goto_1

    .line 125
    :cond_1
    sget v0, Li6;->r:I

    .line 127
    add-int/lit8 v5, v0, 0xa

    .line 129
    if-le p0, v5, :cond_2

    .line 131
    sget v0, Li6;->s:I

    .line 133
    sget v5, Li6;->y:I

    .line 135
    sub-int/2addr v0, v5

    .line 136
    sput v0, Li6;->s:I

    .line 138
    sput p0, Li6;->r:I

    .line 140
    goto :goto_1

    .line 141
    :cond_2
    add-int/lit8 v0, v0, -0xa

    .line 143
    if-ge p0, v0, :cond_3

    .line 145
    sget v0, Li6;->s:I

    .line 147
    sget v5, Li6;->y:I

    .line 149
    add-int/2addr v0, v5

    .line 150
    sput v0, Li6;->s:I

    .line 152
    sput p0, Li6;->r:I

    .line 154
    :cond_3
    :goto_1
    sget v0, Li6;->s:I

    .line 156
    if-gez v0, :cond_4

    .line 158
    sput v4, Li6;->s:I

    .line 160
    :cond_4
    sget v0, Li6;->r:I

    .line 162
    if-gtz v0, :cond_5

    .line 164
    sput p0, Li6;->r:I

    .line 166
    :cond_5
    new-array v0, v1, [Ljava/lang/Object;

    .line 168
    sget v1, Li6;->r:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 173
    move-result-object v1

    .line 174
    aput-object v1, v0, v4

    .line 176
    sget v1, Li6;->s:I

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    move-result-object v1

    .line 182
    aput-object v1, v0, v3

    .line 184
    const-string v1, "compareCompoudSpeed end mCompoudSpeedOld:{?};mTtsStandardCacheSize:{?}"

    .line 186
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    sget-object v0, Li6;->w:Ljava/util/ArrayList;

    .line 191
    sget v1, Li6;->s:I

    .line 193
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Li6;->x:Ljava/util/ArrayList;

    .line 202
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object p0

    .line 206
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    return-void
.end method

.method public static d(Ljava/lang/String;Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_2

    .line 8
    if-nez p1, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 14
    move-result-wide v2

    .line 15
    new-instance v0, Lmg0;

    .line 17
    invoke-direct {v0}, Lmg0;-><init>()V

    .line 20
    iget v4, p1, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 22
    iput v4, v0, Lmg0;->b:I

    .line 24
    iput-wide v2, v0, Lmg0;->n:J

    .line 26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 29
    move-result-wide v4

    .line 30
    iput-wide v4, v0, Lmg0;->m:J

    .line 32
    sget-wide v4, Li6;->Q:J

    .line 34
    sub-long/2addr v2, v4

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    .line 38
    move-result-wide v2

    .line 39
    const-wide/16 v4, 0x32

    .line 41
    cmp-long v6, v2, v4

    .line 43
    if-gtz v6, :cond_1

    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_1
    iput-boolean v1, v0, Lmg0;->a:Z

    .line 48
    iput-object p0, v0, Lmg0;->c:Ljava/lang/String;

    .line 50
    const/16 p0, 0x138f

    .line 52
    invoke-static {p0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    iput-object p0, v0, Lmg0;->B:Ljava/lang/String;

    .line 58
    sget-object p0, Li6;->S:Ljava/util/Map;

    .line 60
    iget p1, p1, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 62
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void

    .line 70
    :cond_2
    :goto_0
    const-string p0, "textPlayEventTracking-delay: text is null or textPlayTrackingData is null and return"

    .line 72
    new-array p1, v1, [Ljava/lang/Object;

    .line 74
    const-string v0, "AudioLogSpy"

    .line 76
    invoke-static {v0, p0, p1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    return-void
.end method

.method public static e()V
    .locals 2

    .line 1
    sget-boolean v0, Li6;->N:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 6
    sput v1, Li6;->L:I

    .line 8
    :cond_0
    sput-boolean v1, Li6;->M:Z

    .line 10
    sput-boolean v1, Li6;->N:Z

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    sput-wide v0, Li6;->c:J

    .line 16
    return-void
.end method

.method public static f()Li6$b;
    .locals 1

    .line 1
    sget-object v0, Li6;->b:Li6$b;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Li6$b;

    .line 7
    invoke-direct {v0}, Li6$b;-><init>()V

    .line 10
    sput-object v0, Li6;->b:Li6$b;

    .line 12
    :cond_0
    sget-object v0, Li6;->b:Li6$b;

    .line 14
    return-object v0
.end method

.method public static g()V
    .locals 3

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lzm;->P:Ljava/lang/String;

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 12
    sput v0, Li6;->y:I

    .line 14
    invoke-static {}, Lzm;->d()Lzm;

    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lzm;->O:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 23
    move-result v0

    .line 24
    sput v0, Li6;->z:I

    .line 26
    invoke-static {}, Lzm;->d()Lzm;

    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lzm;->N:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1, v2}, Lzm;->e(Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 36
    sput v0, Li6;->A:I

    .line 38
    return-void
.end method

.method public static h()I
    .locals 1

    .line 1
    sget v0, Li6;->O:I

    .line 3
    return v0
.end method

.method public static i(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 3
    const-string v2, "textPlayEventTracking-delay: {?}"

    .line 5
    const-string v3, "lat"

    .line 7
    const-string v4, "lon"

    .line 9
    const-string v5, "curSegRemainDist"

    .line 11
    const-string v6, "curSegIdx"

    .line 13
    const-wide/16 v7, 0x0

    .line 15
    const-string v9, "AudioLogSpy"

    .line 17
    const/4 v10, 0x0

    .line 18
    if-nez v1, :cond_0

    .line 20
    sput-wide v7, Li6;->R:J

    .line 22
    const-string v0, "textPlayEventTracking-delay: handleDelayTrackingData playTrackingData is null and return"

    .line 24
    new-array v1, v10, [Ljava/lang/Object;

    .line 26
    invoke-static {v9, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void

    .line 30
    :cond_0
    sget-object v0, Li6;->S:Ljava/util/Map;

    .line 32
    iget v11, v1, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 34
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    move-result-object v11

    .line 38
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    move-result-object v0

    .line 42
    move-object v11, v0

    .line 43
    check-cast v11, Lmg0;

    .line 45
    if-nez v11, :cond_1

    .line 47
    sput-wide v7, Li6;->R:J

    .line 49
    const-string v0, "textPlayEventTracking-delay: handleDelayTrackingData delayTrackingData is null and return"

    .line 51
    new-array v1, v10, [Ljava/lang/Object;

    .line 53
    invoke-static {v9, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    return-void

    .line 57
    :cond_1
    sget-wide v12, Li6;->R:J

    .line 59
    iput-wide v12, v11, Lmg0;->z:J

    .line 61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    move-result-wide v12

    .line 65
    iput-wide v12, v11, Lmg0;->y:J

    .line 67
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidDriveNavigation;->isInNavi()Z

    .line 70
    move-result v0

    .line 71
    const/4 v12, 0x1

    .line 72
    if-eqz v0, :cond_4

    .line 74
    iget-boolean v0, v11, Lmg0;->a:Z

    .line 76
    if-eqz v0, :cond_2

    .line 78
    sget v0, Li6;->d:I

    .line 80
    add-int/2addr v0, v12

    .line 81
    sput v0, Li6;->d:I

    .line 83
    const/4 v0, 0x1

    .line 84
    goto :goto_1

    .line 85
    :cond_2
    iget-object v0, v11, Lmg0;->A:Ljava/lang/String;

    .line 87
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    move-result v13

    .line 91
    if-nez v13, :cond_3

    .line 93
    :try_start_0
    new-instance v13, Lorg/json/JSONObject;

    .line 95
    invoke-direct {v13, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 98
    const-string v0, "ringType"

    .line 100
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 103
    const-string v0, "sceneType"

    .line 105
    invoke-virtual {v13, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    new-array v13, v12, [Ljava/lang/Object;

    .line 112
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 115
    move-result-object v0

    .line 116
    aput-object v0, v13, v10

    .line 118
    const-string v0, "textPlayEventTracking-delay: parse soundInfo exception is {?}"

    .line 120
    invoke-static {v9, v0, v13}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "textPlayEventTracking-delay: soundInfo is invalid"

    .line 126
    new-array v13, v10, [Ljava/lang/Object;

    .line 128
    invoke-static {v9, v0, v13}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :cond_4
    :goto_0
    const/4 v0, 0x0

    .line 132
    :goto_1
    if-eq v0, v12, :cond_6

    .line 134
    const/4 v13, 0x2

    .line 135
    if-ne v0, v13, :cond_5

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const-string v0, "textPlayEventTracking-delay: current playScene is not turn scene or camera scene"

    .line 140
    new-array v2, v10, [Ljava/lang/Object;

    .line 142
    invoke-static {v9, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    goto/16 :goto_3

    .line 147
    :cond_6
    :goto_2
    const/16 v13, 0x1390

    .line 149
    invoke-static {v13}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetStringValue(I)Ljava/lang/String;

    .line 152
    move-result-object v13

    .line 153
    iput-object v13, v11, Lmg0;->C:Ljava/lang/String;

    .line 155
    iget-object v13, v11, Lmg0;->B:Ljava/lang/String;

    .line 157
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    move-result v13

    .line 161
    if-nez v13, :cond_8

    .line 163
    iget-object v13, v11, Lmg0;->C:Ljava/lang/String;

    .line 165
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 168
    move-result v13

    .line 169
    if-nez v13, :cond_8

    .line 171
    :try_start_1
    new-instance v13, Lorg/json/JSONObject;

    .line 173
    iget-object v14, v11, Lmg0;->B:Ljava/lang/String;

    .line 175
    invoke-direct {v13, v14}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    new-instance v14, Lorg/json/JSONObject;

    .line 180
    iget-object v15, v11, Lmg0;->C:Ljava/lang/String;

    .line 182
    invoke-direct {v14, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 188
    move-result v15

    .line 189
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 192
    move-result v7

    .line 193
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 196
    move-result v8

    .line 197
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 200
    move-result v10

    .line 201
    const-string v12, "speed"

    .line 203
    move/from16 v16, v7

    .line 205
    move/from16 v17, v8

    .line 207
    invoke-virtual {v13, v12}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 210
    move-result-wide v7

    .line 211
    iput-wide v7, v11, Lmg0;->d:D

    .line 213
    invoke-virtual {v13, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 216
    move-result v7

    .line 217
    iput v7, v11, Lmg0;->e:I

    .line 219
    invoke-virtual {v13, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 222
    move-result v7

    .line 223
    iput v7, v11, Lmg0;->f:I

    .line 225
    invoke-virtual {v13, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 228
    move-result-wide v7

    .line 229
    iput-wide v7, v11, Lmg0;->i:D

    .line 231
    invoke-virtual {v13, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 234
    move-result-wide v7

    .line 235
    iput-wide v7, v11, Lmg0;->j:D

    .line 237
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 240
    move-result v5

    .line 241
    iput v5, v11, Lmg0;->g:I

    .line 243
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 246
    move-result v5

    .line 247
    iput v5, v11, Lmg0;->h:I

    .line 249
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 252
    move-result-wide v4

    .line 253
    iput-wide v4, v11, Lmg0;->k:D

    .line 255
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    .line 258
    move-result-wide v3

    .line 259
    iput-wide v3, v11, Lmg0;->l:D

    .line 261
    const/4 v3, 0x1

    .line 262
    new-array v4, v3, [Ljava/lang/Object;

    .line 264
    invoke-virtual {v11}, Lmg0;->toString()Ljava/lang/String;

    .line 267
    move-result-object v5

    .line 268
    const/4 v6, 0x0

    .line 269
    aput-object v5, v4, v6

    .line 271
    invoke-static {v9, v2, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    new-array v4, v3, [Ljava/lang/Object;

    .line 276
    invoke-virtual {v11}, Lmg0;->b()Ljava/lang/String;

    .line 279
    move-result-object v5

    .line 280
    aput-object v5, v4, v6

    .line 282
    invoke-static {v9, v2, v4}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    if-ne v0, v3, :cond_9

    .line 287
    move/from16 v0, v17

    .line 289
    if-ne v15, v0, :cond_7

    .line 291
    move/from16 v0, v16

    .line 293
    if-le v10, v0, :cond_9

    .line 295
    :cond_7
    const-string v0, "textPlayEventTracking-delay: current playScene is turn scene and delay"

    .line 297
    const/4 v2, 0x0

    .line 298
    new-array v3, v2, [Ljava/lang/Object;

    .line 300
    invoke-static {v9, v0, v3}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    sget v0, Li6;->e:I

    .line 305
    const/4 v2, 0x1

    .line 306
    add-int/2addr v0, v2

    .line 307
    sput v0, Li6;->e:I

    .line 309
    sget v2, Li6;->f:I

    .line 311
    iput v2, v11, Lmg0;->F:I

    .line 313
    iput v0, v11, Lmg0;->E:I

    .line 315
    sget v0, Li6;->d:I

    .line 317
    iput v0, v11, Lmg0;->D:I

    .line 319
    sget-wide v2, Li6;->E:J

    .line 321
    iput-wide v2, v11, Lmg0;->J:J

    .line 323
    sget-wide v2, Li6;->B:J

    .line 325
    iput-wide v2, v11, Lmg0;->G:J

    .line 327
    sget-wide v2, Li6;->C:J

    .line 329
    iput-wide v2, v11, Lmg0;->H:J

    .line 331
    sget-wide v2, Li6;->D:J

    .line 333
    iput-wide v2, v11, Lmg0;->I:J

    .line 335
    sget-wide v2, Li6;->F:J

    .line 337
    iput-wide v2, v11, Lmg0;->K:J

    .line 339
    sget-wide v4, Li6;->G:J

    .line 341
    sub-long/2addr v4, v2

    .line 342
    iput-wide v4, v11, Lmg0;->L:J

    .line 344
    sget-wide v2, Li6;->H:J

    .line 346
    iput-wide v2, v11, Lmg0;->M:J

    .line 348
    sget-wide v2, Li6;->I:J

    .line 350
    iput-wide v2, v11, Lmg0;->N:J

    .line 352
    sget-wide v2, Li6;->J:J

    .line 354
    iput-wide v2, v11, Lmg0;->O:J

    .line 356
    sget-wide v2, Li6;->K:J

    .line 358
    iput-wide v2, v11, Lmg0;->P:J

    .line 360
    invoke-static/range {p0 .. p0}, Li6;->u(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 363
    goto :goto_3

    .line 364
    :catch_1
    move-exception v0

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 370
    const-string v3, "textPlayEventTracking-delay: parse ttsInfo exception is {?}"

    .line 372
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 385
    move-result-object v0

    .line 386
    const/4 v2, 0x0

    .line 387
    new-array v2, v2, [Ljava/lang/Object;

    .line 389
    invoke-static {v9, v0, v2}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    goto :goto_3

    .line 393
    :cond_8
    const/4 v2, 0x0

    .line 394
    const/4 v3, 0x1

    .line 395
    new-array v3, v3, [Ljava/lang/Object;

    .line 397
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    move-result-object v0

    .line 401
    aput-object v0, v3, v2

    .line 403
    const-string v0, "textPlayEventTracking-delay: current playScene is {?} and ttsInfo is invalid"

    .line 405
    invoke-static {v9, v0, v3}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_9
    :goto_3
    sget-object v0, Li6;->S:Ljava/util/Map;

    .line 410
    iget v1, v1, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 412
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 415
    move-result-object v1

    .line 416
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-wide/16 v1, 0x0

    .line 421
    sput-wide v1, Li6;->Q:J

    .line 423
    sput-wide v1, Li6;->R:J

    .line 425
    return-void
.end method

.method public static j()Z
    .locals 1

    .line 1
    sget-boolean v0, Li6;->q:Z

    .line 3
    return v0
.end method

.method public static k(Li6$a;)V
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    iget-wide v0, p0, Li6$a;->c:J

    .line 6
    iget-wide v2, p0, Li6$a;->b:J

    .line 8
    cmp-long v4, v0, v2

    .line 10
    if-gez v4, :cond_1

    .line 12
    iget-wide v0, p0, Li6$a;->d:J

    .line 14
    const-wide/16 v4, 0x2

    .line 16
    mul-long v2, v2, v4

    .line 18
    cmp-long v4, v0, v2

    .line 20
    if-ltz v4, :cond_2

    .line 22
    :cond_1
    sget v0, Li6;->f:I

    .line 24
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object v1, p0, Li6$a;->e:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string v1, ",0"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    iget-object v1, p0, Li6$a;->e:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v1, ","

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    iget-object v2, p0, Li6$a;->e:Ljava/lang/String;

    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    sget v2, Li6;->u:I

    .line 84
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    iget-object v2, p0, Li6$a;->e:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    iget-object v1, p0, Li6$a;->e:Ljava/lang/String;

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget v1, Li6;->s:I

    .line 128
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 141
    invoke-static {p0}, Li6;->s(Li6$a;)V

    .line 144
    invoke-static {}, Lg6;->g()V

    .line 147
    const/4 p0, 0x1

    .line 148
    sput-boolean p0, Li6;->n:Z

    .line 150
    const/4 p0, 0x0

    .line 151
    sput p0, Li6;->o:I

    .line 153
    :cond_2
    return-void
.end method

.method public static l(Li6$a;)V
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Li6;->f:I

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    iget-object v1, p0, Li6$a;->e:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ",1"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    iget-object v1, p0, Li6$a;->e:Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ","

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    iget-object v2, p0, Li6$a;->e:Ljava/lang/String;

    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    sget v2, Li6;->u:I

    .line 66
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v0

    .line 77
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v2, p0, Li6$a;->e:Ljava/lang/String;

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v0

    .line 96
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    iget-object v1, p0, Li6$a;->e:Ljava/lang/String;

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget v1, Li6;->s:I

    .line 110
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 121
    iput-object v0, p0, Li6$a;->e:Ljava/lang/String;

    .line 123
    invoke-static {p0}, Li6;->s(Li6$a;)V

    .line 126
    invoke-static {}, Lg6;->g()V

    .line 129
    const/4 p0, 0x1

    .line 130
    sput-boolean p0, Li6;->n:Z

    .line 132
    const/4 p0, 0x0

    .line 133
    sput p0, Li6;->o:I

    .line 135
    return-void
.end method

.method public static m(II)V
    .locals 2

    .line 1
    if-lez p1, :cond_0

    .line 3
    mul-int/lit8 p1, p1, 0x2

    .line 5
    div-int/lit16 p1, p1, 0x3e8

    .line 7
    int-to-float p0, p0

    .line 8
    int-to-float p1, p1

    .line 9
    div-float/2addr p0, p1

    .line 10
    invoke-static {}, Li6;->f()Li6$b;

    .line 13
    move-result-object p1

    .line 14
    iget-wide v0, p1, Li6$b;->a:J

    .line 16
    long-to-float v0, v0

    .line 17
    add-float/2addr v0, p0

    .line 18
    float-to-long v0, v0

    .line 19
    iput-wide v0, p1, Li6$b;->a:J

    .line 21
    sget-wide v0, Li6;->R:J

    .line 23
    long-to-float p1, v0

    .line 24
    add-float/2addr p1, p0

    .line 25
    float-to-long p0, p1

    .line 26
    sput-wide p0, Li6;->R:J

    .line 28
    :cond_0
    return-void
.end method

.method public static n()V
    .locals 3

    .line 1
    invoke-static {}, Li6;->f()Li6$b;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    iput-wide v1, v0, Li6$b;->h:J

    .line 11
    return-void
.end method

.method public static o()V
    .locals 5

    .line 1
    invoke-static {}, Li6;->f()Li6$b;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    move-result-wide v1

    .line 9
    iget-wide v3, v0, Li6$b;->h:J

    .line 11
    sub-long/2addr v1, v3

    .line 12
    iput-wide v1, v0, Li6$b;->b:J

    .line 14
    invoke-static {}, Lo6;->j()Lo6;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 21
    move-result-object v1

    .line 22
    iget v2, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayAfterPlay:I

    .line 24
    iput v2, v0, Li6$b;->d:I

    .line 26
    iget v2, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayBeforePlay:I

    .line 28
    iput v2, v0, Li6$b;->c:I

    .line 30
    iget-boolean v2, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataAfterTts:Z

    .line 32
    iput v2, v0, Li6$b;->f:I

    .line 34
    iget-boolean v1, v1, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataBeforeTts:Z

    .line 36
    iput v1, v0, Li6$b;->e:I

    .line 38
    invoke-static {v0}, Li6;->w(Li6$b;)V

    .line 41
    const/4 v0, 0x0

    .line 42
    sput-object v0, Li6;->b:Li6$b;

    .line 44
    return-void
.end method

.method public static p()V
    .locals 2

    .line 1
    sget-boolean v0, Li6;->M:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Li6;->N:Z

    .line 8
    sget v1, Li6;->L:I

    .line 10
    add-int/2addr v1, v0

    .line 11
    sput v1, Li6;->L:I

    .line 13
    const/4 v0, 0x5

    .line 14
    if-ne v1, v0, :cond_0

    .line 16
    sget-object v1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    .line 18
    invoke-static {v0, v1}, Li6;->t(ILjava/lang/String;)V

    .line 21
    :cond_0
    return-void
.end method

.method public static q()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Li6;->M:Z

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    sput-wide v0, Li6;->c:J

    .line 8
    return-void
.end method

.method public static r(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AudioLogSpy"

    .line 4
    if-nez p0, :cond_0

    .line 6
    const-string p0, "textPlayEventTracking-delay: updateDelayTrackingData textPlayTrackingData is null and return"

    .line 8
    new-array v0, v0, [Ljava/lang/Object;

    .line 10
    invoke-static {v1, p0, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v2, Li6;->S:Ljava/util/Map;

    .line 16
    iget v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Lmg0;

    .line 28
    if-nez v2, :cond_1

    .line 30
    const-string p0, "textPlayEventTracking-delay: updateDelayTrackingData delayTrackingData is null and return"

    .line 32
    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-static {v1, p0, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void

    .line 38
    :cond_1
    iget v3, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 40
    const v4, 0x6052b0f

    .line 43
    if-eq v3, v4, :cond_3

    .line 45
    const v4, 0xbfb044d

    .line 48
    if-eq v3, v4, :cond_2

    .line 50
    packed-switch v3, :pswitch_data_0

    .line 53
    goto :goto_0

    .line 54
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 57
    move-result-wide v0

    .line 58
    iput-wide v0, v2, Lmg0;->x:J

    .line 60
    goto :goto_0

    .line 61
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 64
    move-result-wide v0

    .line 65
    iput-wide v0, v2, Lmg0;->w:J

    .line 67
    goto :goto_0

    .line 68
    :pswitch_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 71
    move-result-wide v0

    .line 72
    iput-wide v0, v2, Lmg0;->v:J

    .line 74
    goto :goto_0

    .line 75
    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 78
    move-result-wide v0

    .line 79
    iput-wide v0, v2, Lmg0;->u:J

    .line 81
    goto :goto_0

    .line 82
    :pswitch_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 85
    move-result-wide v0

    .line 86
    iput-wide v0, v2, Lmg0;->t:J

    .line 88
    goto :goto_0

    .line 89
    :pswitch_5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 92
    move-result-wide v0

    .line 93
    iput-wide v0, v2, Lmg0;->s:J

    .line 95
    goto :goto_0

    .line 96
    :pswitch_6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 99
    move-result-wide v0

    .line 100
    iput-wide v0, v2, Lmg0;->r:J

    .line 102
    goto :goto_0

    .line 103
    :pswitch_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 106
    move-result-wide v0

    .line 107
    iput-wide v0, v2, Lmg0;->q:J

    .line 109
    goto :goto_0

    .line 110
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 113
    move-result-wide v0

    .line 114
    iput-wide v0, v2, Lmg0;->p:J

    .line 116
    goto :goto_0

    .line 117
    :cond_2
    iget-object p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 119
    iput-object p0, v2, Lmg0;->A:Ljava/lang/String;

    .line 121
    const/4 v2, 0x1

    .line 122
    new-array v2, v2, [Ljava/lang/Object;

    .line 124
    aput-object p0, v2, v0

    .line 126
    const-string p0, "textPlayEventTracking-delay: soundInfo={?}"

    .line 128
    invoke-static {v1, p0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    goto :goto_0

    .line 132
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 135
    move-result-wide v0

    .line 136
    iput-wide v0, v2, Lmg0;->o:J

    .line 138
    :goto_0
    return-void

    .line 139
    :pswitch_data_0
    .packed-switch 0xbfb0443
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

.method public static s(Li6$a;)V
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x5

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget v2, p0, Li6$a;->a:I

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    iget-wide v4, p0, Li6$a;->b:J

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x1

    .line 22
    aput-object v2, v1, v4

    .line 24
    iget-wide v5, p0, Li6$a;->c:J

    .line 26
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object v2

    .line 30
    const/4 v5, 0x2

    .line 31
    aput-object v2, v1, v5

    .line 33
    iget-wide v6, p0, Li6$a;->d:J

    .line 35
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    move-result-object v2

    .line 39
    const/4 v6, 0x3

    .line 40
    aput-object v2, v1, v6

    .line 42
    const/4 v2, 0x4

    .line 43
    iget-object p0, p0, Li6$a;->e:Ljava/lang/String;

    .line 45
    aput-object p0, v1, v2

    .line 47
    const-string p0, "[100000144][5][%d][%d][%d][%d][%s]"

    .line 49
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 52
    move-result-object p0

    .line 53
    new-array v0, v5, [Ljava/lang/Object;

    .line 55
    const v1, 0x5f5e190

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v2

    .line 62
    aput-object v2, v0, v3

    .line 64
    aput-object p0, v0, v4

    .line 66
    const-string v2, "AudioLogSpy"

    .line 68
    const-string v5, "logID:{?}, LogData:{?}"

    .line 70
    invoke-static {v2, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-boolean v0, Li;->a:Z

    .line 75
    if-eqz v0, :cond_0

    .line 77
    new-array v0, v4, [Ljava/lang/Object;

    .line 79
    aput-object p0, v0, v3

    .line 81
    const-string p0, "uploadPlayEventTracking test model not need upload ftLogData:{?}"

    .line 83
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    const-string v0, "AUTO_AL"

    .line 89
    const/16 v2, 0x3c

    .line 91
    invoke-static {v0, v1, p0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 94
    :goto_0
    return-void
.end method

.method public static t(ILjava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Li6;->a:Landroid/util/SparseArray;

    .line 3
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    .line 9
    const/16 v2, 0x63

    .line 11
    const/4 v3, 0x1

    .line 12
    if-eqz v1, :cond_2

    .line 14
    if-ne v2, p0, :cond_0

    .line 16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 19
    move-result v4

    .line 20
    if-lez v4, :cond_0

    .line 22
    return-void

    .line 23
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result v4

    .line 27
    const/4 v5, 0x5

    .line 28
    if-lt v4, v5, :cond_1

    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 34
    move-result v1

    .line 35
    add-int/2addr v1, v3

    .line 36
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v1

    .line 45
    :goto_0
    const/4 v4, 0x3

    .line 46
    const/4 v5, 0x2

    .line 47
    const/4 v6, 0x0

    .line 48
    if-ne p0, v2, :cond_3

    .line 50
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 52
    new-array v2, v4, [Ljava/lang/Object;

    .line 54
    invoke-static {}, Lcom/autonavi/amapauto/jni/AndroidAudioControl;->getStreamType()I

    .line 57
    move-result v7

    .line 58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v7

    .line 62
    aput-object v7, v2, v6

    .line 64
    invoke-static {}, Lo6;->j()Lo6;

    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v7}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 71
    move-result-object v7

    .line 72
    iget-boolean v7, v7, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 74
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 77
    move-result-object v7

    .line 78
    aput-object v7, v2, v3

    .line 80
    invoke-static {}, Lo6;->j()Lo6;

    .line 83
    move-result-object v7

    .line 84
    invoke-virtual {v7}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 87
    move-result-object v7

    .line 88
    iget-boolean v7, v7, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 90
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 93
    move-result-object v7

    .line 94
    aput-object v7, v2, v5

    .line 96
    const-string v7, "streamType:%d isUserHighVersionAudioApi:%b isUseAudioTrack:%b"

    .line 98
    invoke-static {p1, v7, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    :cond_3
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    new-array v4, v4, [Ljava/lang/Object;

    .line 106
    const v7, 0x5f5e133

    .line 109
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    move-result-object v8

    .line 113
    aput-object v8, v4, v6

    .line 115
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object v8

    .line 119
    aput-object v8, v4, v3

    .line 121
    aput-object p1, v4, v5

    .line 123
    const-string p1, "[%s][2][%d][%s]"

    .line 125
    invoke-static {v2, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    move-result-object p1

    .line 129
    new-array v2, v5, [Ljava/lang/Object;

    .line 131
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    move-result-object v4

    .line 135
    aput-object v4, v2, v6

    .line 137
    aput-object p1, v2, v3

    .line 139
    const-string v3, "AudioLogSpy"

    .line 141
    const-string v4, "uploadAudioSilent logID:{?} LogData:{?}"

    .line 143
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 149
    sget-boolean p0, Li;->a:Z

    .line 151
    if-eqz p0, :cond_4

    .line 153
    const-string p0, "uploadAudioSilent test model not need upload"

    .line 155
    new-array p1, v6, [Ljava/lang/Object;

    .line 157
    invoke-static {v3, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    goto :goto_1

    .line 161
    :cond_4
    const-string p0, "uploadAudioSilent GLogSpy.collectDataEx upload"

    .line 163
    new-array v0, v6, [Ljava/lang/Object;

    .line 165
    invoke-static {v3, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    const-string p0, "AUTO_BASE"

    .line 170
    const/16 v0, 0x32

    .line 172
    invoke-static {p0, v7, p1, v0}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 175
    :goto_1
    return-void
.end method

.method public static u(Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;)V
    .locals 15

    .line 1
    const-string v0, "UTF-8"

    .line 3
    const-string v1, "AudioLogSpy"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 8
    const-string p0, "textPlayEventTracking-delay: uploadDelayPlayData playTrackingData is null and return"

    .line 10
    new-array v0, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, p0, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v3, Li6;->S:Ljava/util/Map;

    .line 18
    iget p0, p0, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 20
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Lmg0;

    .line 30
    if-nez p0, :cond_1

    .line 32
    const-string p0, "textPlayEventTracking-delay: uploadDelayPlayData delayTrackingData is null and return"

    .line 34
    new-array v0, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v1, p0, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    return-void

    .line 40
    :cond_1
    invoke-static {}, Lo6;->j()Lo6;

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {p0}, Lmg0;->a()Ljava/lang/String;

    .line 51
    move-result-object v4

    .line 52
    iget-object v5, p0, Lmg0;->B:Ljava/lang/String;

    .line 54
    iget-object v6, p0, Lmg0;->C:Ljava/lang/String;

    .line 56
    const/4 v7, 0x2

    .line 57
    const/4 v8, 0x1

    .line 58
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 61
    move-result-object v9

    .line 62
    invoke-static {v9, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 65
    move-result-object v9

    .line 66
    const-string v10, "textPlayEventTracking-delay: diffTime before={?} base64content={?}"

    .line 68
    new-array v11, v7, [Ljava/lang/Object;

    .line 70
    aput-object v4, v11, v2

    .line 72
    aput-object v9, v11, v8

    .line 74
    invoke-static {v1, v10, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 77
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 80
    move-result-object v4

    .line 81
    invoke-static {v4, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 84
    move-result-object v4

    .line 85
    const-string v10, "textPlayEventTracking-delay: startTTSInfo before={?} after={?}"

    .line 87
    new-array v11, v7, [Ljava/lang/Object;

    .line 89
    aput-object v5, v11, v2

    .line 91
    aput-object v4, v11, v8

    .line 93
    invoke-static {v1, v10, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 99
    move-result-object v0

    .line 100
    invoke-static {v0, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    const-string v5, "textPlayEventTracking-delay: endTTSInfo before={?} after={?}"

    .line 106
    new-array v10, v7, [Ljava/lang/Object;

    .line 108
    aput-object v6, v10, v2

    .line 110
    aput-object v0, v10, v8

    .line 112
    invoke-static {v1, v5, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    move-object v6, v0

    .line 116
    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    .line 118
    move-object v5, v4

    .line 119
    goto :goto_0

    .line 120
    :catch_1
    move-exception v0

    .line 121
    :goto_0
    move-object v4, v9

    .line 122
    goto :goto_1

    .line 123
    :catch_2
    move-exception v0

    .line 124
    :goto_1
    new-array v9, v8, [Ljava/lang/Object;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    move-result-object v0

    .line 130
    aput-object v0, v9, v2

    .line 132
    const-string v0, "textPlayEventTracking-delay: Base64 exception={?}"

    .line 134
    invoke-static {v1, v0, v9}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    move-object v9, v4

    .line 138
    move-object v4, v5

    .line 139
    :goto_2
    :try_start_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 141
    const-string v5, "[100000163][29][%d][%s][%d][%d][%d][%d][%d][%f][%d][%d][%d][%d][%f][%f][%f][%f][%d][%d][%d][%d][%d][%d][%d][%d][%d][%f][%s][%s][%s]"

    .line 143
    const/16 v10, 0x1d

    .line 145
    new-array v10, v10, [Ljava/lang/Object;

    .line 147
    iget v11, p0, Lmg0;->b:I

    .line 149
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    move-result-object v11

    .line 153
    aput-object v11, v10, v2

    .line 155
    iget-object v11, p0, Lmg0;->c:Ljava/lang/String;

    .line 157
    aput-object v11, v10, v8

    .line 159
    sget-wide v11, Li6;->Q:J

    .line 161
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 164
    move-result-object v11

    .line 165
    aput-object v11, v10, v7

    .line 167
    iget-wide v11, p0, Lmg0;->m:J

    .line 169
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 172
    move-result-object v11

    .line 173
    const/4 v12, 0x3

    .line 174
    aput-object v11, v10, v12

    .line 176
    iget-wide v11, p0, Lmg0;->n:J

    .line 178
    sget-wide v13, Li6;->Q:J

    .line 180
    sub-long/2addr v11, v13

    .line 181
    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    .line 184
    move-result-wide v11

    .line 185
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    move-result-object v11

    .line 189
    const/4 v12, 0x4

    .line 190
    aput-object v11, v10, v12

    .line 192
    iget-wide v11, p0, Lmg0;->o:J

    .line 194
    iget-wide v13, p0, Lmg0;->n:J

    .line 196
    sub-long/2addr v11, v13

    .line 197
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 200
    move-result-object v11

    .line 201
    const/4 v12, 0x5

    .line 202
    aput-object v11, v10, v12

    .line 204
    iget-wide v11, p0, Lmg0;->y:J

    .line 206
    iget-wide v13, p0, Lmg0;->p:J

    .line 208
    sub-long/2addr v11, v13

    .line 209
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 212
    move-result-object v11

    .line 213
    const/4 v12, 0x6

    .line 214
    aput-object v11, v10, v12

    .line 216
    iget-wide v11, p0, Lmg0;->d:D

    .line 218
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 221
    move-result-object v11

    .line 222
    const/4 v12, 0x7

    .line 223
    aput-object v11, v10, v12

    .line 225
    iget v11, p0, Lmg0;->e:I

    .line 227
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 230
    move-result-object v11

    .line 231
    const/16 v12, 0x8

    .line 233
    aput-object v11, v10, v12

    .line 235
    iget v11, p0, Lmg0;->f:I

    .line 237
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    move-result-object v11

    .line 241
    const/16 v12, 0x9

    .line 243
    aput-object v11, v10, v12

    .line 245
    iget v11, p0, Lmg0;->g:I

    .line 247
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    move-result-object v11

    .line 251
    const/16 v12, 0xa

    .line 253
    aput-object v11, v10, v12

    .line 255
    iget v11, p0, Lmg0;->h:I

    .line 257
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    move-result-object v11

    .line 261
    const/16 v12, 0xb

    .line 263
    aput-object v11, v10, v12

    .line 265
    iget-wide v11, p0, Lmg0;->i:D

    .line 267
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 270
    move-result-object v11

    .line 271
    const/16 v12, 0xc

    .line 273
    aput-object v11, v10, v12

    .line 275
    iget-wide v11, p0, Lmg0;->j:D

    .line 277
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 280
    move-result-object v11

    .line 281
    const/16 v12, 0xd

    .line 283
    aput-object v11, v10, v12

    .line 285
    iget-wide v11, p0, Lmg0;->k:D

    .line 287
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 290
    move-result-object v11

    .line 291
    const/16 v12, 0xe

    .line 293
    aput-object v11, v10, v12

    .line 295
    iget-wide v11, p0, Lmg0;->l:D

    .line 297
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 300
    move-result-object p0

    .line 301
    const/16 v11, 0xf

    .line 303
    aput-object p0, v10, v11

    .line 305
    iget p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayAfterPlay:I

    .line 307
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    move-result-object p0

    .line 311
    const/16 v11, 0x10

    .line 313
    aput-object p0, v10, v11

    .line 315
    iget p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayBeforePlay:I

    .line 317
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 320
    move-result-object p0

    .line 321
    const/16 v11, 0x11

    .line 323
    aput-object p0, v10, v11

    .line 325
    iget-boolean p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataAfterTts:Z

    .line 327
    if-eqz p0, :cond_2

    .line 329
    const/4 p0, 0x1

    .line 330
    goto :goto_3

    .line 331
    :cond_2
    const/4 p0, 0x0

    .line 332
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 335
    move-result-object p0

    .line 336
    const/16 v11, 0x12

    .line 338
    aput-object p0, v10, v11

    .line 340
    iget-boolean p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataBeforeTts:Z

    .line 342
    if-eqz p0, :cond_3

    .line 344
    const/4 p0, 0x1

    .line 345
    goto :goto_4

    .line 346
    :cond_3
    const/4 p0, 0x0

    .line 347
    :goto_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    move-result-object p0

    .line 351
    const/16 v11, 0x13

    .line 353
    aput-object p0, v10, v11

    .line 355
    iget-boolean p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 357
    if-eqz p0, :cond_4

    .line 359
    const/4 p0, 0x1

    .line 360
    goto :goto_5

    .line 361
    :cond_4
    const/4 p0, 0x0

    .line 362
    :goto_5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 365
    move-result-object p0

    .line 366
    const/16 v11, 0x14

    .line 368
    aput-object p0, v10, v11

    .line 370
    iget p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioTrackBuffersize:I

    .line 372
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    move-result-object p0

    .line 376
    const/16 v11, 0x15

    .line 378
    aput-object p0, v10, v11

    .line 380
    iget-boolean p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 382
    if-eqz p0, :cond_5

    .line 384
    const/4 p0, 0x1

    .line 385
    goto :goto_6

    .line 386
    :cond_5
    const/4 p0, 0x0

    .line 387
    :goto_6
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 390
    move-result-object p0

    .line 391
    const/16 v11, 0x16

    .line 393
    aput-object p0, v10, v11

    .line 395
    iget-boolean p0, v3, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 397
    if-eqz p0, :cond_6

    .line 399
    const/4 p0, 0x1

    .line 400
    goto :goto_7

    .line 401
    :cond_6
    const/4 p0, 0x0

    .line 402
    :goto_7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 405
    move-result-object p0

    .line 406
    const/16 v3, 0x17

    .line 408
    aput-object p0, v10, v3

    .line 410
    invoke-static {}, Lzm;->d()Lzm;

    .line 413
    move-result-object p0

    .line 414
    sget-object v3, Lzm;->J:Ljava/lang/String;

    .line 416
    invoke-virtual {p0, v3, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 419
    move-result p0

    .line 420
    if-eqz p0, :cond_7

    .line 422
    const/4 p0, 0x1

    .line 423
    goto :goto_8

    .line 424
    :cond_7
    const/4 p0, 0x0

    .line 425
    :goto_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 428
    move-result-object p0

    .line 429
    const/16 v3, 0x18

    .line 431
    aput-object p0, v10, v3

    .line 433
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 435
    int-to-double v11, p0

    .line 436
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 439
    move-result-object p0

    .line 440
    const/16 v3, 0x19

    .line 442
    aput-object p0, v10, v3

    .line 444
    const/16 p0, 0x1a

    .line 446
    aput-object v9, v10, p0

    .line 448
    const/16 p0, 0x1b

    .line 450
    aput-object v4, v10, p0

    .line 452
    const/16 p0, 0x1c

    .line 454
    aput-object v6, v10, p0

    .line 456
    invoke-static {v0, v5, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 459
    move-result-object p0

    .line 460
    sget-boolean v0, Li;->a:Z

    .line 462
    if-eqz v0, :cond_8

    .line 464
    const-string v0, "uploadPlayEventTracking-delay: uploadDelayPlayData test model not need upload ftLogData:{?}"

    .line 466
    new-array v3, v8, [Ljava/lang/Object;

    .line 468
    aput-object p0, v3, v2

    .line 470
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    goto :goto_9

    .line 474
    :cond_8
    const-string v0, "AUTO_AL"

    .line 476
    const/16 v3, 0x64

    .line 478
    const v4, 0x5f5e1a3

    .line 481
    invoke-static {v0, v4, p0, v3}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 484
    const-string v0, "textPlayEventTracking-delay: uploadDelayPlayData logID={?}, LogData={?}"

    .line 486
    new-array v3, v7, [Ljava/lang/Object;

    .line 488
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 491
    move-result-object v4

    .line 492
    aput-object v4, v3, v2

    .line 494
    aput-object p0, v3, v8

    .line 496
    invoke-static {v1, v0, v3}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 499
    goto :goto_9

    .line 500
    :catch_3
    move-exception p0

    .line 501
    new-array v0, v8, [Ljava/lang/Object;

    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 506
    move-result-object p0

    .line 507
    aput-object p0, v0, v2

    .line 509
    const-string p0, "textPlayEventTracking-delay: uploadDelayPlayData exception={?}"

    .line 511
    invoke-static {v1, p0, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :goto_9
    return-void
.end method

.method public static v(Ljava/util/List;Z)Z
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 3
    const/4 v2, 0x1

    .line 4
    new-array v0, v2, [Ljava/lang/Object;

    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v1, v0, v3

    .line 9
    const-string v4, "AudioLogSpy"

    .line 11
    const-string v5, "textPlayEventTracking: nodeList={?}"

    .line 13
    invoke-static {v4, v5, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    if-eqz v1, :cond_18

    .line 18
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 21
    move-result v0

    .line 22
    if-gtz v0, :cond_0

    .line 24
    goto/16 :goto_14

    .line 26
    :cond_0
    invoke-static {}, Lo6;->j()Lo6;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lo6;->h()Lcom/autonavi/amapauto/jni/config/AudioConfigData;

    .line 33
    move-result-object v5

    .line 34
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    .line 36
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 39
    const/4 v6, -0x1

    .line 40
    const-string v7, "none"

    .line 42
    const-string v8, "default"

    .line 44
    const-string v9, ""

    .line 46
    move-object v10, v9

    .line 47
    const/4 v11, 0x0

    .line 48
    const/4 v12, 0x0

    .line 49
    move-object v9, v8

    .line 50
    move-object v8, v7

    .line 51
    const/4 v7, -0x1

    .line 52
    :goto_0
    :try_start_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 55
    move-result v13

    .line 56
    if-ge v11, v13, :cond_8

    .line 58
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v13

    .line 62
    check-cast v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;

    .line 64
    iget v15, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 66
    const v14, 0x6052729

    .line 69
    if-ne v15, v14, :cond_6

    .line 71
    iget-object v14, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 73
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    move-result v14

    .line 77
    if-nez v14, :cond_6

    .line 79
    iget-object v14, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 81
    const-string v15, "::"

    .line 83
    invoke-virtual {v14, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 86
    move-result-object v14

    .line 87
    if-eqz v14, :cond_6

    .line 89
    array-length v15, v14

    .line 90
    if-lez v15, :cond_6

    .line 92
    const/4 v15, 0x0

    .line 93
    :goto_1
    array-length v3, v14

    .line 94
    if-ge v15, v3, :cond_5

    .line 96
    aget-object v3, v14, v15

    .line 98
    if-nez v15, :cond_1

    .line 100
    move-object v8, v3

    .line 101
    goto :goto_2

    .line 102
    :cond_1
    if-ne v15, v2, :cond_2

    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-static {v3, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 108
    move-result v3

    .line 109
    move v6, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    const/4 v1, 0x2

    .line 112
    const/4 v2, 0x0

    .line 113
    if-ne v15, v1, :cond_3

    .line 115
    invoke-static {v3, v2}, Lah;->k(Ljava/lang/String;I)I

    .line 118
    move-result v1

    .line 119
    move v7, v1

    .line 120
    goto :goto_2

    .line 121
    :cond_3
    const/4 v1, 0x3

    .line 122
    if-ne v15, v1, :cond_4

    .line 124
    move-object v9, v3

    .line 125
    :cond_4
    :goto_2
    add-int/lit8 v15, v15, 0x1

    .line 127
    move-object/from16 v1, p0

    .line 129
    const/4 v2, 0x1

    .line 130
    goto :goto_1

    .line 131
    :cond_5
    const-string v1, "textPlayEventTracking: uploadPlayEventTracking playText={?} ttsVolumeIncrease={?}, resLoadType={?}, rolePath={?}"

    .line 133
    const/4 v2, 0x4

    .line 134
    new-array v2, v2, [Ljava/lang/Object;

    .line 136
    const/4 v3, 0x0

    .line 137
    aput-object v8, v2, v3

    .line 139
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    move-result-object v3

    .line 143
    const/4 v14, 0x1

    .line 144
    aput-object v3, v2, v14

    .line 146
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v3

    .line 150
    const/4 v14, 0x2

    .line 151
    aput-object v3, v2, v14

    .line 153
    const/4 v3, 0x3

    .line 154
    aput-object v9, v2, v3

    .line 156
    invoke-static {v4, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    :cond_6
    iget-boolean v1, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->isAbEnd:Z

    .line 161
    if-eqz v1, :cond_7

    .line 163
    iget v12, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 165
    iget-object v1, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 167
    move-object v10, v1

    .line 168
    :cond_7
    new-instance v1, Lorg/json/JSONObject;

    .line 170
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 173
    const-string v2, "index"

    .line 175
    iget v3, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->ePlaynode:I

    .line 177
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 180
    const-string v2, "duration"

    .line 182
    iget-wide v14, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->durtaion:J

    .line 184
    invoke-virtual {v1, v2, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 187
    const-string v2, "sessionId"

    .line 189
    iget v3, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->iSessionId:I

    .line 191
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 194
    const-string v2, "message"

    .line 196
    iget-object v3, v13, Lcom/autonavi/amapauto/jni/config/TextPlayTrackingData;->strMessage:Ljava/lang/String;

    .line 198
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 204
    add-int/lit8 v11, v11, 0x1

    .line 206
    move-object/from16 v1, p0

    .line 208
    const/4 v2, 0x1

    .line 209
    const/4 v3, 0x0

    .line 210
    goto/16 :goto_0

    .line 212
    :cond_8
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 215
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :try_start_2
    const-string v0, "UTF-8"

    .line 218
    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 221
    move-result-object v0

    .line 222
    const/4 v2, 0x2

    .line 223
    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 226
    move-result-object v0

    .line 227
    const-string v3, "textPlayEventTracking:Base64 before:{?} base64content:{?}"

    .line 229
    new-array v11, v2, [Ljava/lang/Object;

    .line 231
    const/4 v2, 0x0

    .line 232
    aput-object v1, v11, v2

    .line 234
    const/4 v2, 0x1

    .line 235
    aput-object v0, v11, v2

    .line 237
    invoke-static {v4, v3, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 240
    move-object v1, v0

    .line 241
    goto :goto_3

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_3
    const-string v2, "textPlayEventTracking:Base64 exception={?}"

    .line 245
    const/4 v3, 0x1

    .line 246
    new-array v11, v3, [Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 251
    move-result-object v0

    .line 252
    const/4 v3, 0x0

    .line 253
    aput-object v0, v11, v3

    .line 255
    invoke-static {v4, v2, v11}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    :goto_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 260
    const-string v2, "[100000162][35][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%d][%f][%f][%f][%f][%s][%s][%d][%d][%d][%d][%d][%s][%s][%s][%s][%f][%s][%s][%s]"

    .line 262
    const/16 v3, 0x23

    .line 264
    new-array v3, v3, [Ljava/lang/Object;

    .line 266
    iget v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayAfterPlay:I

    .line 268
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 271
    move-result-object v11

    .line 272
    const/4 v13, 0x0

    .line 273
    aput-object v11, v3, v13

    .line 275
    iget v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->ttsDelayBeforePlay:I

    .line 277
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 280
    move-result-object v11

    .line 281
    const/4 v13, 0x1

    .line 282
    aput-object v11, v3, v13

    .line 284
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataAfterTts:Z

    .line 286
    if-eqz v11, :cond_9

    .line 288
    const/4 v11, 0x1

    .line 289
    goto :goto_4

    .line 290
    :cond_9
    const/4 v11, 0x0

    .line 291
    :goto_4
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 294
    move-result-object v11

    .line 295
    const/4 v13, 0x2

    .line 296
    aput-object v11, v3, v13

    .line 298
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedWriteEmptyAudioDataBeforeTts:Z

    .line 300
    if-eqz v11, :cond_a

    .line 302
    const/4 v11, 0x1

    .line 303
    goto :goto_5

    .line 304
    :cond_a
    const/4 v11, 0x0

    .line 305
    :goto_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    move-result-object v11

    .line 309
    const/4 v13, 0x3

    .line 310
    aput-object v11, v3, v13

    .line 312
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isVolumeZeroNeedPauseBackgroundNoises:Z

    .line 314
    if-eqz v11, :cond_b

    .line 316
    const/4 v11, 0x1

    .line 317
    goto :goto_6

    .line 318
    :cond_b
    const/4 v11, 0x0

    .line 319
    :goto_6
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    move-result-object v11

    .line 323
    const/4 v13, 0x4

    .line 324
    aput-object v11, v3, v13

    .line 326
    invoke-virtual {v5}, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->getStreamType()I

    .line 329
    move-result v11

    .line 330
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 333
    move-result-object v11

    .line 334
    const/4 v13, 0x5

    .line 335
    aput-object v11, v3, v13

    .line 337
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedContinueTtsAfterFocusLoss:Z

    .line 339
    if-eqz v11, :cond_c

    .line 341
    const/4 v11, 0x1

    .line 342
    goto :goto_7

    .line 343
    :cond_c
    const/4 v11, 0x0

    .line 344
    :goto_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    move-result-object v11

    .line 348
    const/4 v13, 0x6

    .line 349
    aput-object v11, v3, v13

    .line 351
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isAudioStreamCustomSync:Z

    .line 353
    if-eqz v11, :cond_d

    .line 355
    const/4 v11, 0x1

    .line 356
    goto :goto_8

    .line 357
    :cond_d
    const/4 v11, 0x0

    .line 358
    :goto_8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 361
    move-result-object v11

    .line 362
    const/4 v13, 0x7

    .line 363
    aput-object v11, v3, v13

    .line 365
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedAudioRequestFocus:Z

    .line 367
    if-eqz v11, :cond_e

    .line 369
    const/4 v11, 0x1

    .line 370
    goto :goto_9

    .line 371
    :cond_e
    const/4 v11, 0x0

    .line 372
    :goto_9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 375
    move-result-object v11

    .line 376
    const/16 v13, 0x8

    .line 378
    aput-object v11, v3, v13

    .line 380
    iget v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioMode:I

    .line 382
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 385
    move-result-object v11

    .line 386
    const/16 v13, 0x9

    .line 388
    aput-object v11, v3, v13

    .line 390
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWarningSoundNeedRequestFocus:Z

    .line 392
    if-eqz v11, :cond_f

    .line 394
    const/4 v11, 0x1

    .line 395
    goto :goto_a

    .line 396
    :cond_f
    const/4 v11, 0x0

    .line 397
    :goto_a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 400
    move-result-object v11

    .line 401
    const/16 v13, 0xa

    .line 403
    aput-object v11, v3, v13

    .line 405
    iget v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->audioTrackBuffersize:I

    .line 407
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 410
    move-result-object v11

    .line 411
    const/16 v13, 0xb

    .line 413
    aput-object v11, v3, v13

    .line 415
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUserHighVersionAudioApi:Z

    .line 417
    if-eqz v11, :cond_10

    .line 419
    const/4 v11, 0x1

    .line 420
    goto :goto_b

    .line 421
    :cond_10
    const/4 v11, 0x0

    .line 422
    :goto_b
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 425
    move-result-object v11

    .line 426
    const/16 v13, 0xc

    .line 428
    aput-object v11, v3, v13

    .line 430
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isUseAudioTrack:Z

    .line 432
    if-eqz v11, :cond_11

    .line 434
    const/4 v11, 0x1

    .line 435
    goto :goto_c

    .line 436
    :cond_11
    const/4 v11, 0x0

    .line 437
    :goto_c
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 440
    move-result-object v11

    .line 441
    const/16 v13, 0xd

    .line 443
    aput-object v11, v3, v13

    .line 445
    iget-boolean v11, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isPlayWithoutFocusSucced:Z

    .line 447
    if-eqz v11, :cond_12

    .line 449
    const/4 v11, 0x1

    .line 450
    goto :goto_d

    .line 451
    :cond_12
    const/4 v11, 0x0

    .line 452
    :goto_d
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 455
    move-result-object v11

    .line 456
    const/16 v13, 0xe

    .line 458
    aput-object v11, v3, v13

    .line 460
    invoke-static {}, Lzm;->d()Lzm;

    .line 463
    move-result-object v11

    .line 464
    sget-object v13, Lzm;->J:Ljava/lang/String;

    .line 466
    const/4 v14, 0x0

    .line 467
    invoke-virtual {v11, v13, v14}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 470
    move-result v11

    .line 471
    if-eqz v11, :cond_13

    .line 473
    const/4 v11, 0x1

    .line 474
    goto :goto_e

    .line 475
    :cond_13
    const/4 v11, 0x0

    .line 476
    :goto_e
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 479
    move-result-object v11

    .line 480
    const/16 v13, 0xf

    .line 482
    aput-object v11, v3, v13

    .line 484
    invoke-static {}, Lrv;->H()Lrv;

    .line 487
    move-result-object v11

    .line 488
    invoke-virtual {v11}, Lrv;->z()Landroid/content/Context;

    .line 491
    move-result-object v11

    .line 492
    invoke-static {v11}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 495
    move-result-object v11

    .line 496
    invoke-virtual {v11}, Lsi;->x()I

    .line 499
    move-result v11

    .line 500
    int-to-float v11, v11

    .line 501
    float-to-double v13, v11

    .line 502
    const-wide v15, 0x412e848000000000L    # 1000000.0

    .line 507
    div-double/2addr v13, v15

    .line 508
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 511
    move-result-object v11

    .line 512
    const/16 v13, 0x10

    .line 514
    aput-object v11, v3, v13

    .line 516
    invoke-static {}, Lrv;->H()Lrv;

    .line 519
    move-result-object v11

    .line 520
    invoke-virtual {v11}, Lrv;->z()Landroid/content/Context;

    .line 523
    move-result-object v11

    .line 524
    invoke-static {v11}, Lsi;->u(Landroid/content/Context;)Lsi;

    .line 527
    move-result-object v11

    .line 528
    invoke-virtual {v11}, Lsi;->w()I

    .line 531
    move-result v11

    .line 532
    int-to-float v11, v11

    .line 533
    float-to-double v13, v11

    .line 534
    div-double/2addr v13, v15

    .line 535
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 538
    move-result-object v11

    .line 539
    const/16 v13, 0x11

    .line 541
    aput-object v11, v3, v13

    .line 543
    const/4 v11, 0x0

    .line 544
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 547
    move-result-object v13

    .line 548
    const/16 v14, 0x12

    .line 550
    aput-object v13, v3, v14

    .line 552
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 555
    move-result-object v11

    .line 556
    const/16 v13, 0x13

    .line 558
    aput-object v11, v3, v13

    .line 560
    const/16 v11, 0x14

    .line 562
    aput-object v8, v3, v11

    .line 564
    const/16 v8, 0x15

    .line 566
    aput-object v9, v3, v8

    .line 568
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 571
    move-result-object v6

    .line 572
    const/16 v8, 0x16

    .line 574
    aput-object v6, v3, v8

    .line 576
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 579
    move-result-object v6

    .line 580
    const/16 v7, 0x17

    .line 582
    aput-object v6, v3, v7

    .line 584
    iget-boolean v6, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isAudioDataSameWithAmap:Z

    .line 586
    if-eqz v6, :cond_14

    .line 588
    const/4 v6, 0x1

    .line 589
    goto :goto_f

    .line 590
    :cond_14
    const/4 v6, 0x0

    .line 591
    :goto_f
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 594
    move-result-object v6

    .line 595
    const/16 v7, 0x18

    .line 597
    aput-object v6, v3, v7

    .line 599
    iget-boolean v5, v5, Lcom/autonavi/amapauto/jni/config/AudioConfigData;->isNeedStopAudioTrack:Z

    .line 601
    if-eqz v5, :cond_15

    .line 603
    const/4 v5, 0x1

    .line 604
    goto :goto_10

    .line 605
    :cond_15
    const/4 v5, 0x0

    .line 606
    :goto_10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 609
    move-result-object v5

    .line 610
    const/16 v6, 0x19

    .line 612
    aput-object v5, v3, v6

    .line 614
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    .line 617
    move-result v5

    .line 618
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 621
    move-result-object v5

    .line 622
    const/16 v6, 0x1a

    .line 624
    aput-object v5, v3, v6

    .line 626
    const/16 v5, 0x1b

    .line 628
    aput-object v1, v3, v5

    .line 630
    if-eqz p1, :cond_16

    .line 632
    const/4 v1, 0x1

    .line 633
    goto :goto_11

    .line 634
    :cond_16
    const/4 v1, 0x0

    .line 635
    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    move-result-object v1

    .line 639
    const/16 v5, 0x1c

    .line 641
    aput-object v1, v3, v5

    .line 643
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 646
    move-result-object v1

    .line 647
    const/16 v5, 0x1d

    .line 649
    aput-object v1, v3, v5

    .line 651
    const/16 v1, 0x1e

    .line 653
    aput-object v10, v3, v1

    .line 655
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 657
    int-to-float v1, v1

    .line 658
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 661
    move-result-object v1

    .line 662
    const/16 v5, 0x1f

    .line 664
    aput-object v1, v3, v5

    .line 666
    const-string v1, "arg1"

    .line 668
    const/16 v5, 0x20

    .line 670
    aput-object v1, v3, v5

    .line 672
    const-string v1, "arg2"

    .line 674
    const/16 v5, 0x21

    .line 676
    aput-object v1, v3, v5

    .line 678
    const-string v1, "arg3"

    .line 680
    const/16 v5, 0x22

    .line 682
    aput-object v1, v3, v5

    .line 684
    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 687
    move-result-object v0

    .line 688
    sget-boolean v1, Li;->a:Z

    .line 690
    if-eqz v1, :cond_17

    .line 692
    const-string v1, "uploadPlayEventTracking test model not need upload ftLogData:{?}"

    .line 694
    const/4 v2, 0x1

    .line 695
    new-array v3, v2, [Ljava/lang/Object;

    .line 697
    const/4 v2, 0x0

    .line 698
    aput-object v0, v3, v2

    .line 700
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 703
    goto :goto_12

    .line 704
    :cond_17
    const-string v1, "AUTO_AL"

    .line 706
    const/16 v2, 0x64

    .line 708
    const v3, 0x5f5e1a2

    .line 711
    invoke-static {v1, v3, v0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 714
    const-string v1, "upload LOG_ID_SILENT_ALL textPlayEventTracking: logID={?}, LogData={?}"

    .line 716
    const/4 v2, 0x2

    .line 717
    new-array v2, v2, [Ljava/lang/Object;

    .line 719
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 722
    move-result-object v3

    .line 723
    const/4 v5, 0x0

    .line 724
    aput-object v3, v2, v5

    .line 726
    const/4 v3, 0x1

    .line 727
    aput-object v0, v2, v3

    .line 729
    invoke-static {v4, v1, v2}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 732
    :goto_12
    const/4 v2, 0x1

    .line 733
    goto :goto_13

    .line 734
    :catch_1
    move-exception v0

    .line 735
    const/4 v1, 0x1

    .line 736
    new-array v1, v1, [Ljava/lang/Object;

    .line 738
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 741
    move-result-object v0

    .line 742
    const/4 v2, 0x0

    .line 743
    aput-object v0, v1, v2

    .line 745
    const-string v0, "textPlayEventTracking: exception={?}"

    .line 747
    invoke-static {v4, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 750
    :goto_13
    return v2

    .line 751
    :cond_18
    :goto_14
    const/4 v2, 0x0

    .line 752
    const-string v0, "textPlayEventTracking: uploadPlayEventTracking nodeList is null or length is 0"

    .line 754
    new-array v1, v2, [Ljava/lang/Object;

    .line 756
    invoke-static {v4, v0, v1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 759
    return v2
.end method

.method public static w(Li6$b;)V
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 3
    const/4 v1, 0x7

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 6
    iget-wide v2, p0, Li6$b;->a:J

    .line 8
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    iget-wide v4, p0, Li6$b;->b:J

    .line 17
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 20
    move-result-object v2

    .line 21
    const/4 v4, 0x1

    .line 22
    aput-object v2, v1, v4

    .line 24
    iget v2, p0, Li6$b;->c:I

    .line 26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v2

    .line 30
    const/4 v5, 0x2

    .line 31
    aput-object v2, v1, v5

    .line 33
    iget v2, p0, Li6$b;->d:I

    .line 35
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v2

    .line 39
    const/4 v6, 0x3

    .line 40
    aput-object v2, v1, v6

    .line 42
    iget v2, p0, Li6$b;->e:I

    .line 44
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v2

    .line 48
    const/4 v6, 0x4

    .line 49
    aput-object v2, v1, v6

    .line 51
    iget v2, p0, Li6$b;->f:I

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v2

    .line 57
    const/4 v6, 0x5

    .line 58
    aput-object v2, v1, v6

    .line 60
    const/4 v2, 0x6

    .line 61
    iget-object p0, p0, Li6$b;->g:Ljava/lang/String;

    .line 63
    aput-object p0, v1, v2

    .line 65
    const-string p0, "[100000049][7][%d][%d][%d][%d][%d][%d][%s]"

    .line 67
    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    new-array v0, v5, [Ljava/lang/Object;

    .line 73
    const v1, 0x5f5e131

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object v2

    .line 80
    aput-object v2, v0, v3

    .line 82
    aput-object p0, v0, v4

    .line 84
    const-string v2, "AudioLogSpy"

    .line 86
    const-string v3, "uploadTTSPlayTimesLog logID:{?} LogData:{?}"

    .line 88
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    const-string v0, "AUTO_BASE"

    .line 93
    const/16 v2, 0xa

    .line 95
    invoke-static {v0, v1, p0, v2}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 98
    return-void
.end method

.method public static x(ZLjava/lang/String;)Z
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object p1, v1, v2

    .line 14
    const-string v4, "AudioLogSpy"

    .line 16
    const-string v5, "uploadTtsEngineEventTracking: isMit={?};rolePath={?}"

    .line 18
    invoke-static {v4, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 23
    const-string v5, "[100000172][5][%d][%s][%s][%s][%s]"

    .line 25
    const/4 v6, 0x5

    .line 26
    new-array v6, v6, [Ljava/lang/Object;

    .line 28
    if-eqz p0, :cond_0

    .line 30
    const/4 p0, 0x1

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 p0, 0x0

    .line 33
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    move-result-object p0

    .line 37
    aput-object p0, v6, v3

    .line 39
    aput-object p1, v6, v2

    .line 41
    const-string p0, "arg1"

    .line 43
    aput-object p0, v6, v0

    .line 45
    const-string p0, "arg2"

    .line 47
    const/4 p1, 0x3

    .line 48
    aput-object p0, v6, p1

    .line 50
    const-string p0, "arg3"

    .line 52
    const/4 p1, 0x4

    .line 53
    aput-object p0, v6, p1

    .line 55
    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 58
    move-result-object p0

    .line 59
    sget-boolean p1, Li;->a:Z

    .line 61
    if-eqz p1, :cond_1

    .line 63
    const-string p1, "uploadTtsEngineEventTracking test ftLogData:{?}"

    .line 65
    new-array v0, v2, [Ljava/lang/Object;

    .line 67
    aput-object p0, v0, v3

    .line 69
    invoke-static {v4, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    const-string p1, "AUTO_AL"

    .line 75
    const/16 v1, 0x64

    .line 77
    const v5, 0x5f5e1ac

    .line 80
    invoke-static {p1, v5, p0, v1}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 83
    const-string p1, "uploadTtsEngineEventTracking: logID={?}, LogData={?}"

    .line 85
    new-array v0, v0, [Ljava/lang/Object;

    .line 87
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v1

    .line 91
    aput-object v1, v0, v3

    .line 93
    aput-object p0, v0, v2

    .line 95
    invoke-static {v4, p1, v0}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 99
    :catch_0
    move-exception p0

    .line 100
    new-array p1, v2, [Ljava/lang/Object;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 105
    move-result-object p0

    .line 106
    aput-object p0, p1, v3

    .line 108
    const-string p0, "uploadTtsEngineEventTracking: exception={?}"

    .line 110
    invoke-static {v4, p0, p1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    :goto_1
    return v2
.end method

.method public static y(II)Z
    .locals 12

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v2

    .line 15
    const/4 v4, 0x1

    .line 16
    aput-object v2, v1, v4

    .line 18
    const-string v2, "AudioLogSpy"

    .line 20
    const-string v5, "uploadTtsEngineTtsCountTracking: auto_status={?};tts_count={?}"

    .line 22
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    const-string v1, ""

    .line 27
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 29
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 32
    const-string v6, "delayTurnCount"

    .line 34
    sget v7, Li6;->e:I

    .line 36
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v6, "allTurnCount"

    .line 41
    sget v7, Li6;->d:I

    .line 43
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v6, "playShakeIndex"

    .line 48
    sget v7, Li6;->p:I

    .line 50
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    invoke-static {}, Lh6;->c()Lh6;

    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lh6;->b()Lh6$b;

    .line 60
    move-result-object v6

    .line 61
    const-string v7, "distDelayCount"

    .line 63
    iget v8, v6, Lh6$b;->p:I

    .line 65
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    const-string v7, "distPlayCount"

    .line 70
    iget v8, v6, Lh6$b;->o:I

    .line 72
    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string v7, "distDelayReportId"

    .line 77
    iget v6, v6, Lh6$b;->n:I

    .line 79
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 82
    const-string v6, "ttsShakeDelay"

    .line 84
    sget v7, Li6;->A:I

    .line 86
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string v6, "ttsShakeState"

    .line 91
    sget v7, Li6;->z:I

    .line 93
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    const-string v6, "ttsShakeVolatilityValue"

    .line 98
    sget v7, Li6;->y:I

    .line 100
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    const-string v6, "ttsRegularCacheSize"

    .line 105
    sget v7, Li6;->t:I

    .line 107
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v6, "continuousBlockResetCount"

    .line 112
    sget v7, Li6;->U:I

    .line 114
    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    .line 119
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    sget-object v7, Li6;->v:Ljava/util/ArrayList;

    .line 124
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 127
    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 128
    const-string v8, "|"

    .line 130
    if-lez v7, :cond_1

    .line 132
    :try_start_1
    sget-object v7, Li6;->v:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 137
    move-result-object v7

    .line 138
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 141
    move-result v9

    .line 142
    if-eqz v9, :cond_0

    .line 144
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 147
    move-result-object v9

    .line 148
    check-cast v9, Ljava/lang/Long;

    .line 150
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    .line 153
    move-result-wide v9

    .line 154
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    goto :goto_0

    .line 161
    :cond_0
    sget-object v7, Li6;->v:Ljava/util/ArrayList;

    .line 163
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 166
    :cond_1
    const-string v7, "compoudTimeStr"

    .line 168
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    sget-object v7, Li6;->x:Ljava/util/ArrayList;

    .line 182
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 185
    move-result v7

    .line 186
    if-lez v7, :cond_3

    .line 188
    sget-object v7, Li6;->x:Ljava/util/ArrayList;

    .line 190
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 193
    move-result-object v7

    .line 194
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 197
    move-result v9

    .line 198
    if-eqz v9, :cond_2

    .line 200
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 203
    move-result-object v9

    .line 204
    check-cast v9, Ljava/lang/Integer;

    .line 206
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 209
    move-result v9

    .line 210
    int-to-long v9, v9

    .line 211
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    goto :goto_1

    .line 218
    :cond_2
    sget-object v7, Li6;->x:Ljava/util/ArrayList;

    .line 220
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 223
    :cond_3
    const-string v7, "compoudSpeedStr"

    .line 225
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    new-instance v6, Ljava/lang/StringBuilder;

    .line 234
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 237
    sget-object v7, Li6;->w:Ljava/util/ArrayList;

    .line 239
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 242
    move-result v7

    .line 243
    if-lez v7, :cond_5

    .line 245
    sget-object v7, Li6;->w:Ljava/util/ArrayList;

    .line 247
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 250
    move-result-object v7

    .line 251
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    move-result v9

    .line 255
    if-eqz v9, :cond_4

    .line 257
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    move-result-object v9

    .line 261
    check-cast v9, Ljava/lang/Integer;

    .line 263
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    .line 266
    move-result v9

    .line 267
    int-to-long v9, v9

    .line 268
    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    goto :goto_2

    .line 275
    :cond_4
    sget-object v7, Li6;->w:Ljava/util/ArrayList;

    .line 277
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 280
    :cond_5
    const-string v7, "ttsStandardCacheSizeStr"

    .line 282
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    move-result-object v6

    .line 286
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 292
    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 293
    :try_start_2
    const-string v6, "UTF-8"

    .line 295
    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 298
    move-result-object v6

    .line 299
    invoke-static {v6, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 302
    move-result-object v6

    .line 303
    const-string v7, "uploadTtsEngineTtsCountTracking: delay before={?},base64content={?}"

    .line 305
    new-array v8, v0, [Ljava/lang/Object;

    .line 307
    aput-object v5, v8, v3

    .line 309
    aput-object v6, v8, v4

    .line 311
    invoke-static {v2, v7, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    goto :goto_4

    .line 315
    :catch_0
    move-exception v6

    .line 316
    move-object v11, v6

    .line 317
    move-object v6, v5

    .line 318
    move-object v5, v11

    .line 319
    goto :goto_3

    .line 320
    :catch_1
    move-exception v5

    .line 321
    move-object v6, v1

    .line 322
    :goto_3
    new-array v7, v4, [Ljava/lang/Object;

    .line 324
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 327
    move-result-object v5

    .line 328
    aput-object v5, v7, v3

    .line 330
    const-string v5, "uploadTtsEngineTtsCountTracking getDelayInfo exception is {?}"

    .line 332
    invoke-static {v2, v5, v7}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :goto_4
    :try_start_3
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 337
    const-string v7, "[100000179][4][%d][%d][%s][%s]"

    .line 339
    const/4 v8, 0x4

    .line 340
    new-array v8, v8, [Ljava/lang/Object;

    .line 342
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 345
    move-result-object p0

    .line 346
    aput-object p0, v8, v3

    .line 348
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 351
    move-result-object p0

    .line 352
    aput-object p0, v8, v4

    .line 354
    aput-object v6, v8, v0

    .line 356
    const/4 p0, 0x3

    .line 357
    aput-object v1, v8, p0

    .line 359
    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 362
    move-result-object p0

    .line 363
    sget-boolean p1, Li;->a:Z

    .line 365
    if-eqz p1, :cond_6

    .line 367
    const-string p1, "uploadTtsEngineTtsCountTracking test ftLogData:{?}"

    .line 369
    new-array v0, v4, [Ljava/lang/Object;

    .line 371
    aput-object p0, v0, v3

    .line 373
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 376
    goto :goto_5

    .line 377
    :cond_6
    const-string p1, "AUTO_AL"

    .line 379
    const v1, 0x5f5e1b3

    .line 382
    const/16 v5, 0x64

    .line 384
    invoke-static {p1, v1, p0, v5}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 387
    const-string p1, "uploadTtsEngineTtsCountTracking: logID={?}, LogData={?}"

    .line 389
    new-array v0, v0, [Ljava/lang/Object;

    .line 391
    const v1, 0x5f5e1ac

    .line 394
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 397
    move-result-object v1

    .line 398
    aput-object v1, v0, v3

    .line 400
    aput-object p0, v0, v4

    .line 402
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 405
    goto :goto_5

    .line 406
    :catch_2
    move-exception p0

    .line 407
    new-array p1, v4, [Ljava/lang/Object;

    .line 409
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 412
    move-result-object p0

    .line 413
    aput-object p0, p1, v3

    .line 415
    const-string p0, "uploadTtsEngineTtsCountTracking: exception={?}"

    .line 417
    invoke-static {v2, p0, p1}, Lza;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :goto_5
    return v4
.end method

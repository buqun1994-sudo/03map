.class public Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    const-string v0, "AutoWidgetReceiver"

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->a:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    invoke-static {}, Lim0;->a()V

    .line 4
    invoke-static {}, Lnb;->j()Lnb;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lnb;->t()Z

    .line 11
    move-result v0

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v2, "dealAudioSwitch before switch isMuted="

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    const/4 v2, 0x0

    .line 30
    new-array v3, v2, [Ljava/lang/Object;

    .line 32
    const-string v4, "AutoWidgetReceiver"

    .line 34
    invoke-static {v4, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    xor-int/lit8 v0, v0, 0x1

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    const-string v3, "dealAudioSwitch after switch isMuted="

    .line 46
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 56
    new-array v2, v2, [Ljava/lang/Object;

    .line 58
    invoke-static {v4, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    invoke-static {}, Lnb;->j()Lnb;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Lnb;->N(Z)V

    .line 68
    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lnb;->j()Lnb;

    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lnb;->O()V

    .line 77
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 79
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_AUDIO_UI_SWITCH"

    .line 81
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lrv;->H()Lrv;

    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 97
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public final b(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 11

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    move-result v0

    .line 15
    const/16 v1, 0x8

    .line 17
    const/4 v2, 0x7

    .line 18
    const/4 v3, 0x6

    .line 19
    const/4 v4, 0x5

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x3

    .line 22
    const/4 v7, 0x2

    .line 23
    const/4 v8, 0x1

    .line 24
    const/4 v9, 0x0

    .line 25
    const/4 v10, -0x1

    .line 26
    sparse-switch v0, :sswitch_data_0

    .line 29
    goto/16 :goto_0

    .line 31
    :sswitch_0
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_AUDIO_LOGIC_SWITCH"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 39
    goto/16 :goto_0

    .line 41
    :cond_1
    const/16 v10, 0x9

    .line 43
    goto/16 :goto_0

    .line 45
    :sswitch_1
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_SET_DESTINATION"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_2

    .line 53
    goto/16 :goto_0

    .line 55
    :cond_2
    const/16 v10, 0x8

    .line 57
    goto/16 :goto_0

    .line 59
    :sswitch_2
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_GO_HOME_OR_COMPANY"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_3

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v10, 0x7

    .line 69
    goto :goto_0

    .line 70
    :sswitch_3
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_PARK"

    .line 72
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_4

    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const/4 v10, 0x6

    .line 80
    goto :goto_0

    .line 81
    :sswitch_4
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_ZOOM_OUT"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_5

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    const/4 v10, 0x5

    .line 91
    goto :goto_0

    .line 92
    :sswitch_5
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_MAIN_MAP"

    .line 94
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p1

    .line 98
    if-nez p1, :cond_6

    .line 100
    goto :goto_0

    .line 101
    :cond_6
    const/4 v10, 0x4

    .line 102
    goto :goto_0

    .line 103
    :sswitch_6
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_GO_HOME"

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result p1

    .line 109
    if-nez p1, :cond_7

    .line 111
    goto :goto_0

    .line 112
    :cond_7
    const/4 v10, 0x3

    .line 113
    goto :goto_0

    .line 114
    :sswitch_7
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_ZOOM_IN"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_8

    .line 122
    goto :goto_0

    .line 123
    :cond_8
    const/4 v10, 0x2

    .line 124
    goto :goto_0

    .line 125
    :sswitch_8
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_GO_COMPANY"

    .line 127
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    move-result p1

    .line 131
    if-nez p1, :cond_9

    .line 133
    goto :goto_0

    .line 134
    :cond_9
    const/4 v10, 0x1

    .line 135
    goto :goto_0

    .line 136
    :sswitch_9
    const-string v0, "com.autonavi.amapauto.AUTO_WIDGET_ADD_OIL"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    move-result p1

    .line 142
    if-nez p1, :cond_a

    .line 144
    goto :goto_0

    .line 145
    :cond_a
    const/4 v10, 0x0

    .line 146
    :goto_0
    const-string p1, "AutoWidgetReceiver"

    .line 148
    packed-switch v10, :pswitch_data_0

    .line 151
    const-string v0, "default"

    .line 153
    new-array v1, v9, [Ljava/lang/Object;

    .line 155
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    invoke-virtual {p0, p2, v3}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 161
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->h()V

    .line 164
    goto/16 :goto_2

    .line 166
    :pswitch_0
    const-string v0, "AUTO_WIDGET_AUDIO_LOGIC_SWITCH"

    .line 168
    new-array v1, v9, [Ljava/lang/Object;

    .line 170
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    invoke-virtual {p0, p2, v2}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 176
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->a()V

    .line 179
    goto/16 :goto_2

    .line 181
    :pswitch_1
    const-string v0, "AUTO_WIDGET_SET_DESTINATION_ACTION"

    .line 183
    new-array v1, v9, [Ljava/lang/Object;

    .line 185
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    invoke-virtual {p0, p2, v9}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 191
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->i()V

    .line 194
    goto/16 :goto_2

    .line 196
    :pswitch_2
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->g(Landroid/content/Context;Landroid/content/Intent;)V

    .line 201
    goto/16 :goto_2

    .line 203
    :pswitch_3
    const-string v0, "AUTO_WIDGET_PARK_ACTION"

    .line 205
    new-array v1, v9, [Ljava/lang/Object;

    .line 207
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-virtual {p0, p2, v8}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 213
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 215
    invoke-static {p1}, Lim0;->f(Landroid/content/Context;)V

    .line 218
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 220
    const-string v1, "\u505c\u8f66\u573a"

    .line 222
    const-wide/16 v2, 0x0

    .line 224
    const-wide/16 v4, 0x0

    .line 226
    const/4 v6, 0x0

    .line 227
    invoke-static/range {v0 .. v6}, Lv2;->j(Landroid/content/Context;Ljava/lang/String;DDI)V

    .line 230
    goto/16 :goto_2

    .line 232
    :pswitch_4
    const-string v0, "zoom_out"

    .line 234
    new-array v1, v9, [Ljava/lang/Object;

    .line 236
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    const/16 p1, 0xa

    .line 241
    invoke-virtual {p0, p2, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 244
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->d()V

    .line 247
    goto/16 :goto_2

    .line 249
    :pswitch_5
    const-string v0, "AUTO_WIDGET_ENTER_MAIN_MAP_ACTION"

    .line 251
    new-array v2, v9, [Ljava/lang/Object;

    .line 253
    invoke-static {p1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    invoke-static {}, Lnb;->j()Lnb;

    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lnb;->p()Z

    .line 263
    move-result p1

    .line 264
    invoke-static {}, Lnb;->j()Lnb;

    .line 267
    move-result-object v0

    .line 268
    invoke-virtual {v0}, Lnb;->r()Z

    .line 271
    move-result v0

    .line 272
    if-eqz p1, :cond_b

    .line 274
    const/16 v1, 0xc

    .line 276
    goto :goto_1

    .line 277
    :cond_b
    if-eqz v0, :cond_c

    .line 279
    goto :goto_1

    .line 280
    :cond_c
    const/4 v1, 0x5

    .line 281
    :goto_1
    invoke-virtual {p0, p2, v1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 284
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->h()V

    .line 287
    goto :goto_2

    .line 288
    :pswitch_6
    const-string v0, "go_home"

    .line 290
    new-array v1, v9, [Ljava/lang/Object;

    .line 292
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    invoke-virtual {p0, p2, v6}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 298
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 300
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->f(Landroid/content/Context;)V

    .line 303
    goto :goto_2

    .line 304
    :pswitch_7
    const-string v0, "zoom_in"

    .line 306
    new-array v1, v9, [Ljava/lang/Object;

    .line 308
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    const/16 p1, 0xb

    .line 313
    invoke-virtual {p0, p2, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 316
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->c()V

    .line 319
    goto :goto_2

    .line 320
    :pswitch_8
    const-string v0, "go_company"

    .line 322
    new-array v1, v9, [Ljava/lang/Object;

    .line 324
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    invoke-virtual {p0, p2, v5}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 330
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 332
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->e(Landroid/content/Context;)V

    .line 335
    goto :goto_2

    .line 336
    :pswitch_9
    const-string v0, "AUTO_WIDGET_ADD_OIL_ACTION"

    .line 338
    new-array v1, v9, [Ljava/lang/Object;

    .line 340
    invoke-static {p1, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-virtual {p0, p2, v7}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 346
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 348
    invoke-static {p1}, Lim0;->e(Landroid/content/Context;)V

    .line 351
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 353
    const-string v1, "\u52a0\u6cb9\u7ad9"

    .line 355
    const-wide/16 v2, 0x0

    .line 357
    const-wide/16 v4, 0x0

    .line 359
    const/4 v6, 0x0

    .line 360
    invoke-static/range {v0 .. v6}, Lv2;->j(Landroid/content/Context;Ljava/lang/String;DDI)V

    .line 363
    :goto_2
    return-void

    .line 364
    nop

    .line 365
    :sswitch_data_0
    .sparse-switch
        -0x7efed50f -> :sswitch_9
        -0x54a60317 -> :sswitch_8
        -0x412aacf2 -> :sswitch_7
        -0x2d621c2d -> :sswitch_6
        -0x196064a7 -> :sswitch_5
        0x1bd52665 -> :sswitch_4
        0x40606f0d -> :sswitch_3
        0x47c7c5ed -> :sswitch_2
        0x6563cc6e -> :sswitch_1
        0x67cf0721 -> :sswitch_0
    .end sparse-switch

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
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

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lim0;->k(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->zoomIn()V

    .line 9
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lim0;->l(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lcom/autonavi/amapauto/widget/jni/AndroidWidgetMap;->zoomOut()V

    .line 9
    return-void
.end method

.method public final e(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetReceiver"

    .line 6
    const-string v2, "goCompany"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p1}, Lim0;->c(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lv2;->o(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public final f(Landroid/content/Context;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "AutoWidgetReceiver"

    .line 6
    const-string v2, "goHome"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p1}, Lim0;->d(Landroid/content/Context;)V

    .line 14
    invoke-static {p1}, Lv2;->p(Landroid/content/Context;)V

    .line 17
    return-void
.end method

.method public final g(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-static {}, Lem0;->d()Lem0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lem0;->c()I

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, p2, v0}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->e(Landroid/content/Context;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->f(Landroid/content/Context;)V

    .line 26
    const/4 p1, 0x3

    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->k(Landroid/content/Intent;I)V

    .line 30
    :goto_0
    return-void
.end method

.method public final h()V
    .locals 2

    .line 1
    invoke-static {}, Lnb;->j()Lnb;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lnb;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    const/4 v0, 0x2

    .line 12
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 14
    invoke-static {v0, v1}, Lim0;->i(ILandroid/content/Context;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lnb;->j()Lnb;

    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lnb;->p()Z

    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 28
    const/4 v0, 0x1

    .line 29
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 31
    invoke-static {v0, v1}, Lim0;->i(ILandroid/content/Context;)V

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 38
    invoke-static {v0, v1}, Lim0;->i(ILandroid/content/Context;)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 43
    invoke-static {v0}, Lv2;->m(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 3
    invoke-static {v0}, Lim0;->g(Landroid/content/Context;)V

    .line 6
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lv2;->n(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public final j(II)V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object p1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v2

    .line 13
    aput-object p1, v0, v1

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p2

    .line 20
    aput-object p2, v0, p1

    .line 22
    const/4 p1, 0x2

    .line 23
    aput-object v2, v0, p1

    .line 25
    const/4 p1, 0x3

    .line 26
    aput-object v2, v0, p1

    .line 28
    const/4 p1, 0x4

    .line 29
    aput-object v2, v0, p1

    .line 31
    const-string p1, "[100000262][5][%d][%d][%d][%d][%d]"

    .line 33
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    move-result-object p1

    .line 37
    const p2, 0x5f5e206

    .line 40
    const/16 v0, 0xa

    .line 42
    const-string v1, "AUTO_BASE"

    .line 44
    invoke-static {v1, p2, p1, v0}, Len;->c(Ljava/lang/String;ILjava/lang/String;I)V

    .line 47
    return-void
.end method

.method public final k(Landroid/content/Intent;I)V
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 3
    const-string v0, "type"

    .line 5
    const/4 v1, -0x1

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 9
    move-result p1

    .line 10
    const/4 v0, 0x1

    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 18
    aput-object v3, v0, v2

    .line 20
    const-string v2, "AutoWidgetReceiver"

    .line 22
    const-string v3, "type={?}"

    .line 24
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    if-eq p1, v1, :cond_0

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->j(II)V

    .line 32
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "AutoWidgetReceiver"

    .line 4
    if-eqz p1, :cond_1

    .line 6
    if-nez p2, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b:Landroid/content/Context;

    .line 11
    const-string p1, "AutoWidgetReceiver onReceive"

    .line 13
    new-array v2, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {v1, p1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 18
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v3, "AutoWidgetReceiver action "

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    new-array v0, v0, [Ljava/lang/Object;

    .line 41
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/autonavi/amapauto/widget/framework/AutoWidgetReceiver;->b(Ljava/lang/String;Landroid/content/Intent;)V

    .line 47
    return-void

    .line 48
    :cond_1
    :goto_0
    const-string p1, "[onReceive] context == null ||intent == null"

    .line 50
    new-array p2, v0, [Ljava/lang/Object;

    .line 52
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return-void
.end method

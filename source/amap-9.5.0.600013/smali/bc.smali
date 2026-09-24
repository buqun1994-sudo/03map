.class public Lbc;
.super Ldi;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BaseAssembleDelegateImpl"


# instance fields
.field private mDynamicReceiverReceiver:Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

.field protected mMainActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ldi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public abandomFocus(I)V
    .locals 3

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$b;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Lnl0$b;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    const/4 v0, 0x0

    .line 31
    new-array v0, v0, [Ljava/lang/Object;

    .line 33
    const-string v1, "BaseAssembleDelegateImpl"

    .line 35
    const-string v2, "Exception:"

    .line 37
    invoke-static {v1, v2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1}, Ldi;->abandomFocus(I)V

    .line 44
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;-><init>()V

    .line 6
    iput-object v0, p0, Lbc;->mDynamicReceiverReceiver:Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

    .line 8
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    const/4 v1, 0x1

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    const/4 v2, 0x0

    .line 17
    aput-object v0, v1, v2

    .line 19
    const-string v0, "BaseAssembleDelegateImpl"

    .line 21
    const-string v2, "ocuur an excepton!"

    .line 23
    invoke-static {v0, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :goto_0
    return-void
.end method

.method public cleanup()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbc;->isNeedDynamicBroadcasting()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lbc;->mDynamicReceiverReceiver:Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/autonavi/amapauto/business/receiver/DynamicReceiverReceiver;->a()V

    .line 14
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lpi;->r()Z

    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 24
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lpi;->w()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception v0

    .line 33
    const/4 v1, 0x0

    .line 34
    new-array v1, v1, [Ljava/lang/Object;

    .line 36
    const-string v2, "BaseAssembleDelegateImpl"

    .line 38
    const-string v3, "Exception:"

    .line 40
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 44
    return v0
.end method

.method public getBooleanValue(I)Z
    .locals 6

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 11
    const/16 v0, 0x2711

    .line 13
    const-string v1, "Exception:"

    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "BaseAssembleDelegateImpl"

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq p1, v0, :cond_3

    .line 21
    const/16 v0, 0x2712

    .line 23
    if-eq p1, v0, :cond_2

    .line 25
    const/16 v0, 0x2718

    .line 27
    if-eq p1, v0, :cond_1

    .line 29
    const/16 v0, 0x271d

    .line 31
    if-eq p1, v0, :cond_0

    .line 33
    goto/16 :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0, v4, v4}, Lpi;->k(II)Lfq;

    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Llf$b;

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    aput-object v0, v2, v4

    .line 49
    const-string v5, "IOpenSystemLauncherFunc = {?}"

    .line 51
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    if-eqz v0, :cond_4

    .line 56
    :try_start_0
    invoke-interface {v0}, Llf$b;->d()Z

    .line 59
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return p1

    .line 61
    :catch_0
    move-exception p1

    .line 62
    new-array v0, v4, [Ljava/lang/Object;

    .line 64
    invoke-static {v3, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 67
    return v4

    .line 68
    :cond_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 71
    move-result-object v0

    .line 72
    const/4 v2, 0x4

    .line 73
    invoke-virtual {v0, v2, v4}, Lpi;->k(II)Lfq;

    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lhj0$a;

    .line 79
    if-eqz v0, :cond_4

    .line 81
    const-string v2, "showCarEnterpriseLogin"

    .line 83
    new-array v5, v4, [Ljava/lang/Object;

    .line 85
    invoke-static {v3, v2, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :try_start_1
    invoke-interface {v0}, Lhj0$a;->k()Z

    .line 91
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    return p1

    .line 93
    :catch_1
    move-exception v0

    .line 94
    new-array v2, v4, [Ljava/lang/Object;

    .line 96
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 99
    goto :goto_0

    .line 100
    :cond_2
    invoke-static {}, Lpi;->n()Lpi;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0, v2, v2}, Lpi;->k(II)Lfq;

    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Loz$a;

    .line 110
    new-array v2, v2, [Ljava/lang/Object;

    .line 112
    aput-object v0, v2, v4

    .line 114
    const-string v5, "IDysmorphismAdapterFunc = {?}"

    .line 116
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    if-eqz v0, :cond_4

    .line 121
    :try_start_2
    invoke-interface {v0}, Loz$a;->o()Z

    .line 124
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 125
    return p1

    .line 126
    :catch_2
    move-exception v0

    .line 127
    new-array v2, v4, [Ljava/lang/Object;

    .line 129
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 132
    goto :goto_0

    .line 133
    :cond_3
    invoke-static {}, Lpi;->n()Lpi;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0, v2, v4}, Lpi;->k(II)Lfq;

    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Loz$c;

    .line 143
    new-array v2, v2, [Ljava/lang/Object;

    .line 145
    aput-object v0, v2, v4

    .line 147
    const-string v5, "showNetworkSettingFunc = {?}"

    .line 149
    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    if-eqz v0, :cond_4

    .line 154
    :try_start_3
    invoke-interface {v0}, Loz$c;->i()Z

    .line 157
    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 158
    return p1

    .line 159
    :catch_3
    move-exception p1

    .line 160
    new-array v0, v4, [Ljava/lang/Object;

    .line 162
    invoke-static {v3, v1, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 165
    return v4

    .line 166
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Ldi;->getBooleanValue(I)Z

    .line 169
    move-result p1

    .line 170
    return p1
.end method

.method public getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$a;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lnl0$a;->getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Ldi;->getCustomAudioAttribute(ILandroid/media/AudioAttributes;)Landroid/media/AudioAttributes;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getDynamicReceiverActionList()Ljava/util/List;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getIntValue(I)I
    .locals 6

    .line 1
    const/16 v0, 0x271c

    .line 3
    const/4 v1, -0x1

    .line 4
    const-string v2, "BaseAssembleDelegateImpl"

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eq p1, v0, :cond_2

    .line 9
    const/16 v0, 0x7537

    .line 11
    const-string v4, "Exception:"

    .line 13
    if-eq p1, v0, :cond_1

    .line 15
    const/16 v0, 0x7552

    .line 17
    if-eq p1, v0, :cond_0

    .line 19
    packed-switch p1, :pswitch_data_0

    .line 22
    goto/16 :goto_0

    .line 24
    :pswitch_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lpi;->r()Z

    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_3

    .line 34
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lpi;->j()Lm1;

    .line 41
    move-result-object p1

    .line 42
    const/4 v0, 0x3

    .line 43
    invoke-virtual {p1, v0, v3}, Ldc;->b(II)I

    .line 46
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    return p1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    new-array v0, v3, [Ljava/lang/Object;

    .line 51
    invoke-static {v2, v4, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 54
    return v1

    .line 55
    :pswitch_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lpi;->r()Z

    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 65
    :try_start_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lpi;->j()Lm1;

    .line 72
    move-result-object p1

    .line 73
    const/4 v0, 0x2

    .line 74
    invoke-virtual {p1, v0, v3}, Ldc;->b(II)I

    .line 77
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 78
    return p1

    .line 79
    :catch_1
    move-exception p1

    .line 80
    new-array v0, v3, [Ljava/lang/Object;

    .line 82
    invoke-static {v2, v4, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 85
    return v1

    .line 86
    :pswitch_2
    invoke-static {}, Lpi;->n()Lpi;

    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lpi;->r()Z

    .line 93
    move-result v0

    .line 94
    if-eqz v0, :cond_3

    .line 96
    :try_start_2
    invoke-static {}, Lpi;->n()Lpi;

    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {p1}, Lpi;->j()Lm1;

    .line 103
    move-result-object p1

    .line 104
    const/4 v0, 0x1

    .line 105
    invoke-virtual {p1, v0, v3}, Ldc;->b(II)I

    .line 108
    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 109
    return p1

    .line 110
    :catch_2
    move-exception p1

    .line 111
    new-array v0, v3, [Ljava/lang/Object;

    .line 113
    invoke-static {v2, v4, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 116
    return v1

    .line 117
    :pswitch_3
    invoke-static {}, Lpi;->n()Lpi;

    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lpi;->r()Z

    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_3

    .line 127
    :try_start_3
    invoke-static {}, Lpi;->n()Lpi;

    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lpi;->j()Lm1;

    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1, v3, v3}, Ldc;->b(II)I

    .line 138
    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 139
    return p1

    .line 140
    :catch_3
    move-exception p1

    .line 141
    new-array v0, v3, [Ljava/lang/Object;

    .line 143
    invoke-static {v2, v4, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 146
    return v1

    .line 147
    :cond_0
    return v3

    .line 148
    :cond_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lpi;->r()Z

    .line 155
    move-result v0

    .line 156
    if-eqz v0, :cond_3

    .line 158
    invoke-static {}, Lpi;->n()Lpi;

    .line 161
    move-result-object v0

    .line 162
    const/4 v1, 0x5

    .line 163
    const/4 v5, 0x4

    .line 164
    invoke-virtual {v0, v1, v5}, Lpi;->k(II)Lfq;

    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lnl0$c;

    .line 170
    if-eqz v0, :cond_3

    .line 172
    :try_start_4
    invoke-interface {v0}, Lnl0$c;->getAudioStreamType()I

    .line 175
    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 176
    return p1

    .line 177
    :catch_4
    move-exception v0

    .line 178
    new-array v1, v3, [Ljava/lang/Object;

    .line 180
    invoke-static {v2, v4, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 183
    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Lpi;->n()Lpi;

    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lpi;->r()Z

    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_3

    .line 194
    invoke-static {}, Lpi;->n()Lpi;

    .line 197
    move-result-object v0

    .line 198
    const/4 v4, 0x7

    .line 199
    invoke-virtual {v0, v4, v3}, Lpi;->k(II)Lfq;

    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Ldk0$c;

    .line 205
    if-eqz v0, :cond_3

    .line 207
    :try_start_5
    invoke-interface {v0}, Ldk0$c;->h()I

    .line 210
    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 211
    return p1

    .line 212
    :catch_5
    move-exception p1

    .line 213
    const-string v0, "getHeadLampStatus exception:"

    .line 215
    new-array v3, v3, [Ljava/lang/Object;

    .line 217
    invoke-static {v2, v0, p1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 220
    return v1

    .line 221
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Ldi;->getIntValue(I)I

    .line 224
    move-result p1

    .line 225
    return p1

    .line 226
    nop

    .line 227
    :pswitch_data_0
    .packed-switch 0x7531
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLocationInfo(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lqy$b;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Lqy$b;->c(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Ldi;->getLocationInfo(Landroid/location/Location;)Lcom/autonavi/amapauto/location/model/LocDrPos;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    const/4 v2, 0x5

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lqy$a;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Lqy$a;->getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;

    .line 28
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Ldi;->getMapMatchFeedbackInfo(Lcom/autonavi/amapauto/location/model/LocMMFeedbackInfo;)Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "BaseAssembleDelegateImpl"

    .line 6
    const-string v3, "getMountAngleInfo"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lpi;->r()Z

    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 21
    invoke-static {}, Lpi;->n()Lpi;

    .line 24
    move-result-object v1

    .line 25
    const/4 v3, 0x6

    .line 26
    const/4 v4, 0x3

    .line 27
    invoke-virtual {v1, v3, v4}, Lpi;->k(II)Lfq;

    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Lqy$c;

    .line 33
    if-eqz v1, :cond_0

    .line 35
    :try_start_0
    invoke-interface {v1}, Lqy$c;->getMountAngleInfo()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 38
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    return-object v0

    .line 40
    :catch_0
    move-exception v1

    .line 41
    const-string v3, "Exception:"

    .line 43
    new-array v0, v0, [Ljava/lang/Object;

    .line 45
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lbc;->getMountAngleInfoFromNvwa()Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public getMountAngleInfoFromNvwa()Lcom/autonavi/amapauto/location/model/LocMountAngle;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "BaseAssembleDelegateImpl"

    .line 6
    const-string v3, "getMountAngleInfoFromNvwa"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lzm;->d()Lzm;

    .line 14
    move-result-object v1

    .line 15
    const-string v3, "Loc_MountAngleInfo"

    .line 17
    const-string v4, ""

    .line 19
    invoke-virtual {v1, v3, v4}, Lzm;->i(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    const/4 v3, 0x1

    .line 24
    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    aput-object v1, v4, v0

    .line 28
    const-string v5, "getMountAngleInfoFromNvwa :{?}"

    .line 30
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-static {}, Lib;->i()Z

    .line 36
    move-result v4

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v4, :cond_0

    .line 40
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 43
    move-result v4

    .line 44
    if-nez v4, :cond_0

    .line 46
    const-string v4, "-1"

    .line 48
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v4

    .line 52
    if-nez v4, :cond_0

    .line 54
    const-string v4, ","

    .line 56
    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    array-length v4, v1

    .line 61
    const/4 v6, 0x3

    .line 62
    if-ne v4, v6, :cond_0

    .line 64
    new-instance v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;

    .line 66
    invoke-direct {v4}, Lcom/autonavi/amapauto/location/model/LocMountAngle;-><init>()V

    .line 69
    iput-boolean v3, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->isValid:Z

    .line 71
    :try_start_0
    aget-object v7, v1, v0

    .line 73
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 76
    move-result-object v7

    .line 77
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 80
    move-result-wide v7

    .line 81
    iput-wide v7, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 83
    aget-object v7, v1, v3

    .line 85
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 88
    move-result-object v7

    .line 89
    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 92
    move-result-wide v7

    .line 93
    iput-wide v7, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 95
    const/4 v7, 0x2

    .line 96
    aget-object v1, v1, v7

    .line 98
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 105
    move-result-wide v8

    .line 106
    iput-wide v8, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 108
    const-string v1, "getMountAngleInfoFromNvwa locMountAngle : yaw:{?}, pitch:{?}, roll:{?}"

    .line 110
    new-array v6, v6, [Ljava/lang/Object;

    .line 112
    iget-wide v8, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->yaw:D

    .line 114
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 117
    move-result-object v8

    .line 118
    aput-object v8, v6, v0

    .line 120
    iget-wide v8, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->pitch:D

    .line 122
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 125
    move-result-object v8

    .line 126
    aput-object v8, v6, v3

    .line 128
    iget-wide v8, v4, Lcom/autonavi/amapauto/location/model/LocMountAngle;->roll:D

    .line 130
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 133
    move-result-object v3

    .line 134
    aput-object v3, v6, v7

    .line 136
    invoke-static {v2, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    move-object v5, v4

    .line 140
    goto :goto_0

    .line 141
    :catch_0
    move-exception v1

    .line 142
    const-string v3, "getMountAngleInfoFromNvwa ocuur a Exception!"

    .line 144
    new-array v0, v0, [Ljava/lang/Object;

    .line 146
    invoke-static {v2, v3, v1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 149
    :cond_0
    :goto_0
    return-object v5
.end method

.method public getSNRForShow(IF)I
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lqy$d;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lqy$d;->getSNRForShow(IF)I

    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Ldi;->getSNRForShow(IF)I

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public getSatellitePrnForShow(I)I
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lqy$e;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Lqy$e;->getSatellitePrnForShow(I)I

    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0, p1}, Ldi;->getSatellitePrnForShow(I)I

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x6

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lqy$f;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1}, Lqy$f;->getSatelliteType(I)I

    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "Exception:"

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    const-string v3, "BaseAssembleDelegateImpl"

    .line 37
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    invoke-super {p0, p1}, Ldi;->getSatelliteType(I)I

    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public getSystemMaxVolume()I
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$e;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Lnl0$e;->getSystemMaxVolume()I

    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    const/4 v1, -0x1

    .line 30
    if-eq v0, v1, :cond_0

    .line 32
    return v0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const/4 v1, 0x0

    .line 35
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    const-string v2, "BaseAssembleDelegateImpl"

    .line 39
    const-string v3, "Exception:"

    .line 41
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    invoke-super {p0}, Ldi;->getSystemMaxVolume()I

    .line 47
    move-result v0

    .line 48
    return v0
.end method

.method public getSystemUiLightFlag(IIZ)I
    .locals 3

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Loz$d;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Loz$d;->e(IIZ)I

    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception p1

    .line 31
    const/4 p2, 0x0

    .line 32
    new-array p2, p2, [Ljava/lang/Object;

    .line 34
    const-string p3, "BaseAssembleDelegateImpl"

    .line 36
    const-string v0, "Exception:"

    .line 38
    invoke-static {p3, v0, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    const/4 p1, -0x1

    .line 42
    return p1
.end method

.method public getSystemVolume()I
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$e;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Lnl0$e;->getSystemVolume()I

    .line 28
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0}, Ldi;->getSystemVolume()I

    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public getUsbUpdataPath()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2, v1}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Llf$d;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0}, Llf$d;->l()Ljava/util/List;

    .line 28
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return-object v0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v1, "Exception:"

    .line 33
    new-array v2, v2, [Ljava/lang/Object;

    .line 35
    const-string v3, "BaseAssembleDelegateImpl"

    .line 37
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :cond_0
    invoke-super {p0}, Ldi;->getUsbUpdataPath()Ljava/util/List;

    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public getWavPlayer()Lzt;
    .locals 5

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$d;

    .line 23
    const/4 v1, 0x1

    .line 24
    new-array v1, v1, [Ljava/lang/Object;

    .line 26
    aput-object v0, v1, v2

    .line 28
    const-string v3, "BaseAssembleDelegateImpl"

    .line 30
    const-string v4, "getWavPlayer={?}"

    .line 32
    invoke-static {v3, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {v0}, Lnl0$d;->getWavPlayer()Lzt;

    .line 40
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    return-object v0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string v1, "Exception:"

    .line 45
    new-array v2, v2, [Ljava/lang/Object;

    .line 47
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 50
    :cond_0
    invoke-super {p0}, Ldi;->getWavPlayer()Lzt;

    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method public isNeedDynamicBroadcasting()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAmapAutoState(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    const/16 v0, 0x276

    .line 5
    invoke-static {v0}, Lib;->u(I)Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lmv;->k()Lmv;

    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lmv;->l(Landroid/content/Context;)Z

    .line 26
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lpi;->r()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lpi;->n()Lpi;

    .line 39
    move-result-object v0

    .line 40
    const/4 v1, 0x3

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-virtual {v0, v2, v1}, Lpi;->k(II)Lfq;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Llf$a;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    :try_start_0
    invoke-interface {v0, p1}, Llf$a;->f(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    const-string v0, "Exception:"

    .line 57
    new-array v1, v2, [Ljava/lang/Object;

    .line 59
    const-string v2, "BaseAssembleDelegateImpl"

    .line 61
    invoke-static {v2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 64
    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityLifecycleChanged(Landroid/app/Activity;I)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2}, Ldi;->onActivityLifecycleChanged(Landroid/app/Activity;I)V

    .line 4
    instance-of v0, p1, Lzr;

    .line 6
    const/4 v1, 0x0

    .line 7
    const-string v2, "BaseAssembleDelegateImpl"

    .line 9
    if-eqz v0, :cond_2

    .line 11
    const/4 v0, 0x1

    .line 12
    if-ne p2, v0, :cond_0

    .line 14
    iput-object p1, p0, Lbc;->mMainActivity:Landroid/app/Activity;

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v3, 0x6

    .line 18
    if-ne p2, v3, :cond_1

    .line 20
    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Lbc;->mMainActivity:Landroid/app/Activity;

    .line 23
    :cond_1
    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 25
    iget-object v3, p0, Lbc;->mMainActivity:Landroid/app/Activity;

    .line 27
    aput-object v3, v0, v1

    .line 29
    const-string v3, "mMainActivity = {?}"

    .line 31
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    :cond_2
    invoke-static {}, Lpi;->n()Lpi;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lpi;->r()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 44
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v0, p1, p2}, Lpi;->v(Landroid/app/Activity;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception p1

    .line 53
    const-string p2, "Exception:"

    .line 55
    new-array v0, v1, [Ljava/lang/Object;

    .line 57
    invoke-static {v2, p2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public onWindowFocusChanged(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Ldi;->onWindowFocusChanged(Landroid/app/Activity;Z)V

    .line 4
    invoke-static {}, Lpi;->n()Lpi;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lpi;->r()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1, p2}, Lpi;->y(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const/4 p2, 0x0

    .line 24
    new-array p2, p2, [Ljava/lang/Object;

    .line 26
    const-string v0, "BaseAssembleDelegateImpl"

    .line 28
    const-string v1, "Exception:"

    .line 30
    invoke-static {v0, v1, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    :cond_0
    :goto_0
    return-void
.end method

.method public requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 4

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$b;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lnl0$b;->requestFocus(II)I

    .line 28
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    return p1

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const/4 v1, 0x0

    .line 32
    new-array v1, v1, [Ljava/lang/Object;

    .line 34
    const-string v2, "BaseAssembleDelegateImpl"

    .line 36
    const-string v3, "Exception:"

    .line 38
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ldi;->requestFocus(IIILandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method public sendBroadcast(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ldi;->sendBroadcast(Landroid/content/Intent;)V

    .line 4
    const-string v0, "KEY_TYPE"

    .line 6
    const/4 v1, -0x1

    .line 7
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    const/16 v2, 0x2723

    .line 13
    if-ne v0, v2, :cond_0

    .line 15
    const-string v0, "EXTRA_STATE"

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_0

    .line 23
    invoke-virtual {p0, v0}, Lbc;->notifyAmapAutoState(I)V

    .line 26
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lpi;->r()Z

    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 36
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lpi;->B(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    const/4 v0, 0x0

    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 48
    const-string v1, "BaseAssembleDelegateImpl"

    .line 50
    const-string v2, "Exception:"

    .line 52
    invoke-static {v1, v2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public setSystemUiLightMode(IZ)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lbc;->mMainActivity:Landroid/app/Activity;

    .line 3
    const-string v1, "BaseAssembleDelegateImpl"

    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 8
    const-string p1, "setSystemUiLightMode, mMainActivity = null"

    .line 10
    new-array p2, v2, [Ljava/lang/Object;

    .line 12
    invoke-static {v1, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    return v2

    .line 16
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 19
    move-result-object v8

    .line 20
    invoke-virtual {v8}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 27
    move-result v0

    .line 28
    invoke-virtual {p0, v0, p1, p2}, Lbc;->getSystemUiLightFlag(IIZ)I

    .line 31
    move-result v7

    .line 32
    if-gez v7, :cond_1

    .line 34
    return v2

    .line 35
    :cond_1
    const/4 v3, 0x2

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    aput-object v0, v3, v2

    .line 44
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    const/4 v2, 0x1

    .line 49
    aput-object v0, v3, v2

    .line 51
    const-string v0, "setSystemUiLightMode crnFlag = 0x{?}, newFlag = 0x{?}"

    .line 53
    invoke-static {v1, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lbc$a;

    .line 58
    move-object v3, v0

    .line 59
    move-object v4, p0

    .line 60
    move v5, p1

    .line 61
    move v6, p2

    .line 62
    invoke-direct/range {v3 .. v8}, Lbc$a;-><init>(Lbc;IZILandroid/view/Window;)V

    .line 65
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 68
    return v2
.end method

.method public setSystemVolume(II)V
    .locals 3

    .line 1
    invoke-static {}, Lpi;->n()Lpi;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lpi;->r()Z

    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lpi;->n()Lpi;

    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    const/4 v2, 0x3

    .line 17
    invoke-virtual {v0, v1, v2}, Lpi;->k(II)Lfq;

    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lnl0$e;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    :try_start_0
    invoke-interface {v0, p1, p2}, Lnl0$e;->setSystemVolume(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    const/4 p2, 0x0

    .line 31
    new-array p2, p2, [Ljava/lang/Object;

    .line 33
    const-string v0, "BaseAssembleDelegateImpl"

    .line 35
    const-string v1, "Exception:"

    .line 37
    invoke-static {v0, v1, p1, p2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-super {p0, p1, p2}, Ldi;->setSystemVolume(II)V

    .line 44
    return-void
.end method

.method public startup()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lbc;->isNeedDynamicBroadcasting()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lbc;->b()V

    .line 10
    :cond_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lpi;->r()Z

    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 20
    :try_start_0
    invoke-static {}, Lpi;->n()Lpi;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lpi;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const/4 v1, 0x0

    .line 30
    new-array v1, v1, [Ljava/lang/Object;

    .line 32
    const-string v2, "BaseAssembleDelegateImpl"

    .line 34
    const-string v3, "Exception:"

    .line 36
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 40
    return v0
.end method

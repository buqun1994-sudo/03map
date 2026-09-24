.class public Lpd0$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpd0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lpd0;


# direct methods
.method public constructor <init>(Lpd0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 8
    packed-switch v0, :pswitch_data_1

    .line 11
    goto/16 :goto_0

    .line 13
    :pswitch_0
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    new-array v0, v1, [Ljava/lang/Object;

    .line 19
    iget-object v1, p0, Lpd0$b;->a:Lpd0;

    .line 21
    invoke-static {v1}, Lpd0;->f(Lpd0;)Z

    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    move-result-object v1

    .line 29
    aput-object v1, v0, v2

    .line 31
    const-string v1, "disconnect with wifi down mIsConnect = {?}"

    .line 33
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 38
    invoke-static {p1}, Lpd0;->c(Lpd0;)Landroid/os/Handler;

    .line 41
    move-result-object p1

    .line 42
    const/16 v0, 0xcb

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 47
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 49
    invoke-static {p1}, Lpd0;->l(Lpd0;)V

    .line 52
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 54
    invoke-static {p1, v2}, Lpd0;->g(Lpd0;Z)Z

    .line 57
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 59
    invoke-static {p1}, Lpd0;->i(Lpd0;)Leg;

    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_1

    .line 65
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 67
    invoke-static {p1}, Lpd0;->i(Lpd0;)Leg;

    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Leg;->a()V

    .line 74
    goto/16 :goto_0

    .line 76
    :pswitch_1
    iget-object v0, p0, Lpd0$b;->a:Lpd0;

    .line 78
    invoke-static {v0, v1}, Lpd0;->g(Lpd0;Z)Z

    .line 81
    iget-object v0, p0, Lpd0$b;->a:Lpd0;

    .line 83
    invoke-static {v0}, Lpd0;->i(Lpd0;)Leg;

    .line 86
    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lpd0$b;->a:Lpd0;

    .line 91
    invoke-static {v0}, Lpd0;->i(Lpd0;)Leg;

    .line 94
    move-result-object v0

    .line 95
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 97
    check-cast p1, Loj;

    .line 99
    invoke-interface {v0, p1}, Leg;->b(Loj;)V

    .line 102
    :cond_0
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 104
    invoke-static {p1}, Lpd0;->j(Lpd0;)Lbd0;

    .line 107
    move-result-object p1

    .line 108
    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 112
    invoke-static {p1}, Lpd0;->j(Lpd0;)Lbd0;

    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lbd0;->l()V

    .line 119
    goto/16 :goto_0

    .line 121
    :pswitch_2
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 123
    invoke-static {p1}, Lpd0;->i(Lpd0;)Leg;

    .line 126
    move-result-object p1

    .line 127
    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 131
    invoke-static {p1}, Lpd0;->i(Lpd0;)Leg;

    .line 134
    move-result-object p1

    .line 135
    iget-object v0, p0, Lpd0$b;->a:Lpd0;

    .line 137
    invoke-static {v0}, Lpd0;->a(Lpd0;)Ljava/util/List;

    .line 140
    move-result-object v0

    .line 141
    invoke-interface {p1, v0}, Leg;->c(Ljava/util/List;)V

    .line 144
    goto/16 :goto_0

    .line 146
    :pswitch_3
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 149
    move-result-object p1

    .line 150
    new-array v0, v1, [Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lpd0$b;->a:Lpd0;

    .line 154
    invoke-static {v1}, Lpd0;->f(Lpd0;)Z

    .line 157
    move-result v1

    .line 158
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 161
    move-result-object v1

    .line 162
    aput-object v1, v0, v2

    .line 164
    const-string v1, "disconnect with server close mIsConnect = {?}"

    .line 166
    invoke-static {p1, v1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 171
    invoke-static {p1}, Lpd0;->c(Lpd0;)Landroid/os/Handler;

    .line 174
    move-result-object p1

    .line 175
    const/16 v0, 0xc8

    .line 177
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 182
    invoke-static {p1}, Lpd0;->l(Lpd0;)V

    .line 185
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 187
    invoke-static {p1, v2}, Lpd0;->g(Lpd0;Z)Z

    .line 190
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 192
    invoke-static {p1}, Lpd0;->i(Lpd0;)Leg;

    .line 195
    move-result-object p1

    .line 196
    if-eqz p1, :cond_1

    .line 198
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 200
    invoke-static {p1}, Lpd0;->i(Lpd0;)Leg;

    .line 203
    move-result-object p1

    .line 204
    invoke-interface {p1}, Leg;->a()V

    .line 207
    goto/16 :goto_0

    .line 209
    :pswitch_4
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    const-string v0, "MSG_CLIENT_STATE_DISCONNECT-----> "

    .line 215
    new-array v1, v2, [Ljava/lang/Object;

    .line 217
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 222
    invoke-static {p1, v2}, Lpd0;->g(Lpd0;Z)Z

    .line 225
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 228
    move-result-object p1

    .line 229
    const-string v0, "MSG_CLIENT_STATE_DISCONNECT-----> removeMessages"

    .line 231
    new-array v1, v2, [Ljava/lang/Object;

    .line 233
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 238
    invoke-static {p1}, Lpd0;->c(Lpd0;)Landroid/os/Handler;

    .line 241
    move-result-object p1

    .line 242
    const/16 v0, 0x66

    .line 244
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    const-string v0, "MSG_CLIENT_STATE_DISCONNECT-----> quitMult "

    .line 253
    new-array v1, v2, [Ljava/lang/Object;

    .line 255
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 260
    invoke-static {p1}, Lpd0;->l(Lpd0;)V

    .line 263
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 266
    move-result-object p1

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    const-string v1, "MSG_CLIENT_STATE_DISCONNECT-----> mDiscoverHostListener--> "

    .line 274
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget-object v1, p0, Lpd0$b;->a:Lpd0;

    .line 279
    invoke-static {v1}, Lpd0;->e(Lpd0;)Ldg;

    .line 282
    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    move-result-object v0

    .line 290
    new-array v1, v2, [Ljava/lang/Object;

    .line 292
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 297
    invoke-static {p1}, Lpd0;->e(Lpd0;)Ldg;

    .line 300
    invoke-static {}, Lpd0;->k()Ljava/lang/String;

    .line 303
    move-result-object p1

    .line 304
    const-string v0, "MSG_CLIENT_STATE_DISCONNECT-----> notify UI --> end"

    .line 306
    new-array v1, v2, [Ljava/lang/Object;

    .line 308
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    goto :goto_0

    .line 312
    :pswitch_5
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 314
    invoke-static {p1, v1}, Lpd0;->g(Lpd0;Z)Z

    .line 317
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 319
    invoke-static {p1}, Lpd0;->e(Lpd0;)Ldg;

    .line 322
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 324
    invoke-static {p1}, Lpd0;->h(Lpd0;)Lt90;

    .line 327
    goto :goto_0

    .line 328
    :pswitch_6
    iget-object p1, p0, Lpd0$b;->a:Lpd0;

    .line 330
    invoke-static {p1}, Lpd0;->e(Lpd0;)Ldg;

    .line 333
    :cond_1
    :goto_0
    return-void

    .line 334
    nop

    .line 335
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 345
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

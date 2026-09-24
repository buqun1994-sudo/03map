.class public Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;


# direct methods
.method public constructor <init>(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 3
    iget-object v1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 5
    invoke-static {v1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lir;

    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 13
    invoke-static {v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lir;

    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0, p1}, Lir;->k(Landroid/os/Message;)I

    .line 20
    move-result v0

    .line 21
    :cond_0
    const/16 v1, 0x13

    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v3, 0x0

    .line 25
    packed-switch v0, :pswitch_data_0

    .line 28
    :pswitch_0
    goto/16 :goto_0

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 32
    invoke-static {p1, v2}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->J(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)V

    .line 35
    goto/16 :goto_0

    .line 37
    :pswitch_2
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 39
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->s(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z

    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 45
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 47
    invoke-static {p1, v3}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->t(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)Z

    .line 50
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 52
    invoke-static {p1, v3}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->J(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)V

    .line 55
    :cond_1
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 57
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->u(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z

    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_4

    .line 63
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 65
    invoke-static {p1, v3}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->v(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)Z

    .line 68
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 70
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->K(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)V

    .line 73
    goto/16 :goto_0

    .line 75
    :pswitch_3
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 77
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->q(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lir;

    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    const-string v2, "mInitAppReceiver: "

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 93
    invoke-static {v2}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->D(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z

    .line 96
    move-result v2

    .line 97
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v0

    .line 104
    new-array v2, v3, [Ljava/lang/Object;

    .line 106
    const-string v3, "Eaglet"

    .line 108
    invoke-interface {p1, v3, v0, v2}, Lir;->logD(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 113
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->D(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Z

    .line 116
    move-result p1

    .line 117
    if-eqz p1, :cond_2

    .line 119
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 121
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->K(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)V

    .line 124
    goto/16 :goto_0

    .line 126
    :cond_2
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 129
    move-result-object p1

    .line 130
    const-wide/16 v0, 0x1f4

    .line 132
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 135
    goto/16 :goto_0

    .line 137
    :pswitch_4
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 139
    invoke-static {v0, v2}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->F(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)Z

    .line 142
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 144
    invoke-static {v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->H(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lhr;

    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 152
    invoke-static {v0}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->H(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lhr;

    .line 155
    move-result-object v0

    .line 156
    invoke-interface {v0}, Lhr;->h()V

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 161
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->I(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 164
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 166
    invoke-static {p1, v2}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->J(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Z)V

    .line 169
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 172
    move-result-object p1

    .line 173
    const-wide/32 v0, 0x493e0

    .line 176
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 179
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 181
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->H(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lhr;

    .line 184
    move-result-object p1

    .line 185
    if-eqz p1, :cond_4

    .line 187
    iget-object p1, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 189
    invoke-static {p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->H(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;)Lhr;

    .line 192
    move-result-object p1

    .line 193
    invoke-interface {p1}, Lhr;->i()V

    .line 196
    goto :goto_0

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 199
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->B(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 202
    goto :goto_0

    .line 203
    :pswitch_6
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 205
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->r(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 208
    goto :goto_0

    .line 209
    :pswitch_7
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 211
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->N(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 214
    goto :goto_0

    .line 215
    :pswitch_8
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 217
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->M(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 220
    goto :goto_0

    .line 221
    :pswitch_9
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 223
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->L(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 226
    goto :goto_0

    .line 227
    :pswitch_a
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 229
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->G(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 232
    goto :goto_0

    .line 233
    :pswitch_b
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 235
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->E(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 238
    goto :goto_0

    .line 239
    :pswitch_c
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 241
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->C(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 244
    goto :goto_0

    .line 245
    :pswitch_d
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 247
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->A(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 250
    goto :goto_0

    .line 251
    :pswitch_e
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 253
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->z(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 256
    goto :goto_0

    .line 257
    :pswitch_f
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 259
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->y(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 262
    goto :goto_0

    .line 263
    :pswitch_10
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 265
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->x(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 268
    goto :goto_0

    .line 269
    :pswitch_11
    iget-object v0, p0, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor$b;->a:Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;

    .line 271
    invoke-static {v0, p1}, Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;->w(Lcom/autonavi/eaglet/uisurface/AutoEventProcessor;Landroid/os/Message;)V

    .line 274
    :cond_4
    :goto_0
    return-void

    .line 275
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

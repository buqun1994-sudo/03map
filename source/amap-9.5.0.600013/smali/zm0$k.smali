.class public Lzm0$k;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzm0;


# direct methods
.method public constructor <init>(Lzm0;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p1, Landroid/os/Message;->what:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "WifiDirectServerHelper"

    .line 15
    const-string v4, "handleMessage msg = {?}"

    .line 17
    invoke-static {v2, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 22
    invoke-static {v1}, Lzm0;->e(Lzm0;)Landroid/os/Handler;

    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 28
    return-void

    .line 29
    :cond_0
    :try_start_0
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 31
    invoke-static {v1}, Lzm0;->l(Lzm0;)V

    .line 34
    iget v1, p1, Landroid/os/Message;->what:I

    .line 36
    packed-switch v1, :pswitch_data_0

    .line 39
    const/4 p1, 0x2

    .line 40
    const/4 v0, 0x0

    .line 41
    packed-switch v1, :pswitch_data_1

    .line 44
    goto/16 :goto_1

    .line 46
    :pswitch_0
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 48
    invoke-static {v1}, Lzm0;->w(Lzm0;)Z

    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 54
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 56
    invoke-static {v1}, Lzm0;->y(Lzm0;)Z

    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 62
    :cond_1
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 64
    invoke-static {v1}, Lzm0;->z(Lzm0;)I

    .line 67
    move-result v1

    .line 68
    if-ne v1, p1, :cond_2

    .line 70
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 72
    invoke-static {p1}, Lzm0;->A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_3

    .line 78
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 80
    invoke-static {p1}, Lzm0;->A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 83
    move-result-object p1

    .line 84
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 86
    const/4 v1, 0x3

    .line 87
    if-ne p1, v1, :cond_3

    .line 89
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 91
    invoke-static {p1, v0}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 97
    invoke-static {p1, v0}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 100
    :cond_3
    :goto_0
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 102
    const/16 v0, 0x78

    .line 104
    invoke-static {p1, v0}, Lzm0;->D(Lzm0;I)V

    .line 107
    goto/16 :goto_1

    .line 109
    :pswitch_1
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 111
    invoke-static {v1, v3}, Lzm0;->v(Lzm0;Z)V

    .line 114
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 116
    invoke-static {v1}, Lzm0;->t(Lzm0;)I

    .line 119
    move-result v1

    .line 120
    if-ne v1, p1, :cond_4

    .line 122
    return-void

    .line 123
    :cond_4
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 125
    invoke-static {p1}, Lzm0;->w(Lzm0;)Z

    .line 128
    move-result p1

    .line 129
    if-eqz p1, :cond_5

    .line 131
    return-void

    .line 132
    :cond_5
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 134
    invoke-static {p1, v0}, Lzm0;->x(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 137
    goto/16 :goto_1

    .line 139
    :pswitch_2
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 141
    invoke-static {v1}, Lzm0;->m(Lzm0;)Ljava/lang/String;

    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_6

    .line 151
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 153
    const-string v3, ""

    .line 155
    invoke-static {v1, v3}, Lzm0;->s(Lzm0;Ljava/lang/String;)Ljava/lang/String;

    .line 158
    :cond_6
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 160
    invoke-static {v1}, Lzm0;->t(Lzm0;)I

    .line 163
    move-result v1

    .line 164
    if-ne v1, p1, :cond_7

    .line 166
    return-void

    .line 167
    :cond_7
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 169
    invoke-static {p1, v0}, Lzm0;->u(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 172
    goto :goto_1

    .line 173
    :pswitch_3
    iget-object v1, p0, Lzm0$k;->a:Lzm0;

    .line 175
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    check-cast p1, Lym0;

    .line 179
    invoke-static {v1, p1, v0}, Lzm0;->e0(Lzm0;Lym0;Z)V

    .line 182
    goto :goto_1

    .line 183
    :pswitch_4
    iget-object v0, p0, Lzm0$k;->a:Lzm0;

    .line 185
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 187
    check-cast p1, Lym0;

    .line 189
    invoke-static {v0, p1}, Lzm0;->d0(Lzm0;Lym0;)V

    .line 192
    goto :goto_1

    .line 193
    :pswitch_5
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 195
    invoke-static {p1}, Lzm0;->c0(Lzm0;)V

    .line 198
    goto :goto_1

    .line 199
    :pswitch_6
    iget-object v0, p0, Lzm0$k;->a:Lzm0;

    .line 201
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 203
    check-cast v1, Lym0;

    .line 205
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 207
    invoke-static {v0, v1, p1}, Lzm0;->b0(Lzm0;Lym0;I)V

    .line 210
    goto :goto_1

    .line 211
    :pswitch_7
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 213
    invoke-static {p1}, Lzm0;->a0(Lzm0;)V

    .line 216
    goto :goto_1

    .line 217
    :pswitch_8
    iget-object v0, p0, Lzm0$k;->a:Lzm0;

    .line 219
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 221
    invoke-static {v0, p1}, Lzm0;->Z(Lzm0;I)V

    .line 224
    goto :goto_1

    .line 225
    :pswitch_9
    iget-object p1, p0, Lzm0$k;->a:Lzm0;

    .line 227
    invoke-static {p1}, Lzm0;->Q(Lzm0;)V

    .line 230
    goto :goto_1

    .line 231
    :pswitch_a
    iget-object v0, p0, Lzm0$k;->a:Lzm0;

    .line 233
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 235
    invoke-static {v0, p1}, Lzm0;->C(Lzm0;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    goto :goto_1

    .line 239
    :catch_0
    move-exception p1

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    .line 242
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const-string v1, "handle message error, error info = "

    .line 247
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 253
    move-result-object p1

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    move-result-object p1

    .line 261
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 285
    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

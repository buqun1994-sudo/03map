.class public Lzm0$q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzm0$q;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lzm0$q;


# direct methods
.method public constructor <init>(Lzm0$q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const/4 v2, 0x0

    .line 5
    aput-object p1, v1, v2

    .line 7
    const-string v3, "WifiDirectServerHelper"

    .line 9
    const-string v4, "onGroupInfoAvailable WifiP2pGroup {?}"

    .line 11
    invoke-static {v3, v4, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    if-nez p1, :cond_0

    .line 16
    const-string p1, "onGroupInfoAvailable create Group error "

    .line 18
    new-array v0, v2, [Ljava/lang/Object;

    .line 20
    invoke-static {v3, p1, v0}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    return-void

    .line 24
    :cond_0
    const/4 v1, 0x2

    .line 25
    new-array v4, v1, [Ljava/lang/Object;

    .line 27
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 31
    aput-object v5, v4, v2

    .line 33
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 36
    move-result-object v5

    .line 37
    aput-object v5, v4, v0

    .line 39
    const-string v5, "onGroupInfoAvailable ssid = {?},pwd = {?}"

    .line 41
    invoke-static {v3, v5, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    new-array v4, v1, [Ljava/lang/Object;

    .line 46
    iget-object v5, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 48
    iget-object v5, v5, Lzm0$q;->a:Lzm0;

    .line 50
    invoke-static {v5}, Lzm0;->H(Lzm0;)Ljava/lang/String;

    .line 53
    move-result-object v5

    .line 54
    aput-object v5, v4, v2

    .line 56
    iget-object v5, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 58
    iget-object v5, v5, Lzm0$q;->a:Lzm0;

    .line 60
    invoke-static {v5}, Lzm0;->J(Lzm0;)Ljava/lang/String;

    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v4, v0

    .line 66
    const-string v5, "onGroupInfoAvailable last ssid = {?},pwd = {?}"

    .line 68
    invoke-static {v3, v5, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iget-object v4, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 73
    iget-object v4, v4, Lzm0$q;->a:Lzm0;

    .line 75
    invoke-static {v4}, Lzm0;->L(Lzm0;)Z

    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_4

    .line 81
    iget-object v1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 83
    iget-object v1, v1, Lzm0$q;->a:Lzm0;

    .line 85
    invoke-static {v1}, Lzm0;->H(Lzm0;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 97
    const/4 v3, 0x0

    .line 98
    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 102
    iget-object v1, v1, Lzm0$q;->a:Lzm0;

    .line 104
    invoke-static {v1}, Lzm0;->J(Lzm0;)Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_1

    .line 118
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 120
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 122
    invoke-static {p1, v2}, Lzm0;->M(Lzm0;Z)Z

    .line 125
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 127
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 129
    invoke-static {p1, v3}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 132
    return-void

    .line 133
    :cond_1
    iget-object v1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 135
    iget-object v1, v1, Lzm0$q;->a:Lzm0;

    .line 137
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 140
    move-result-object v4

    .line 141
    invoke-static {v1, v4}, Lzm0;->I(Lzm0;Ljava/lang/String;)Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 146
    iget-object v1, v1, Lzm0$q;->a:Lzm0;

    .line 148
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 151
    move-result-object p1

    .line 152
    invoke-static {v1, p1}, Lzm0;->K(Lzm0;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 157
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 159
    invoke-static {p1}, Lzm0;->A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 167
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 169
    invoke-static {p1}, Lzm0;->A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 172
    move-result-object p1

    .line 173
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_2

    .line 181
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 183
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 185
    invoke-static {p1}, Lzm0;->A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 188
    move-result-object p1

    .line 189
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 191
    iget-object v1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 193
    iget-object v1, v1, Lzm0$q;->a:Lzm0;

    .line 195
    invoke-static {v1}, Lzm0;->H(Lzm0;)Ljava/lang/String;

    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 202
    move-result p1

    .line 203
    if-eqz p1, :cond_2

    .line 205
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 207
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 209
    invoke-static {p1}, Lzm0;->A(Lzm0;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 212
    move-result-object p1

    .line 213
    iget-object p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 217
    iget-object v1, v1, Lzm0$q;->a:Lzm0;

    .line 219
    invoke-static {v1}, Lzm0;->J(Lzm0;)Ljava/lang/String;

    .line 222
    move-result-object v1

    .line 223
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 226
    move-result p1

    .line 227
    if-eqz p1, :cond_2

    .line 229
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 231
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 233
    invoke-static {p1, v2}, Lzm0;->M(Lzm0;Z)Z

    .line 236
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 238
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 240
    invoke-static {p1, v3}, Lzm0;->B(Lzm0;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 243
    return-void

    .line 244
    :cond_2
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 246
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 248
    invoke-static {p1}, Lzm0;->H(Lzm0;)Ljava/lang/String;

    .line 251
    move-result-object p1

    .line 252
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 255
    move-result p1

    .line 256
    const/16 v1, 0x14

    .line 258
    if-le p1, v1, :cond_3

    .line 260
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 262
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 264
    const-string v0, ""

    .line 266
    invoke-static {p1, v0}, Lzm0;->I(Lzm0;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 271
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 273
    invoke-static {p1, v0}, Lzm0;->K(Lzm0;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lxm0;->v()V

    .line 283
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 285
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 287
    new-instance v0, Lzm0$q$a$a;

    .line 289
    invoke-direct {v0, p0}, Lzm0$q$a$a;-><init>(Lzm0$q$a;)V

    .line 292
    invoke-static {p1, v2, v0}, Lzm0;->N(Lzm0;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 295
    goto :goto_0

    .line 296
    :cond_3
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 298
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 300
    new-instance v1, Lzm0$q$a$b;

    .line 302
    invoke-direct {v1, p0}, Lzm0$q$a$b;-><init>(Lzm0$q$a;)V

    .line 305
    invoke-static {p1, v0, v1}, Lzm0;->N(Lzm0;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 308
    goto :goto_0

    .line 309
    :cond_4
    iget-object v4, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 311
    iget-object v4, v4, Lzm0$q;->a:Lzm0;

    .line 313
    invoke-static {v4}, Lzm0;->z(Lzm0;)I

    .line 316
    move-result v4

    .line 317
    const/4 v5, 0x3

    .line 318
    if-ne v4, v5, :cond_6

    .line 320
    new-array v4, v0, [Ljava/lang/Object;

    .line 322
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    .line 325
    move-result-object v6

    .line 326
    aput-object v6, v4, v2

    .line 328
    const-string v2, "group.getClientList() = {?}"

    .line 330
    invoke-static {v3, v2, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 333
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    .line 336
    move-result-object p1

    .line 337
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 340
    move-result p1

    .line 341
    if-nez p1, :cond_5

    .line 343
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 345
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 347
    invoke-static {p1}, Lzm0;->t(Lzm0;)I

    .line 350
    move-result p1

    .line 351
    if-eq p1, v1, :cond_6

    .line 353
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 355
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 357
    invoke-static {p1, v0}, Lzm0;->O(Lzm0;Z)V

    .line 360
    goto :goto_0

    .line 361
    :cond_5
    iget-object p1, p0, Lzm0$q$a;->a:Lzm0$q;

    .line 363
    iget-object p1, p1, Lzm0$q;->a:Lzm0;

    .line 365
    invoke-static {p1, v5}, Lzm0;->P(Lzm0;I)V

    .line 368
    :cond_6
    :goto_0
    return-void
.end method

.class public Lcn0$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn0$e;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcn0$e;


# direct methods
.method public constructor <init>(Lcn0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6

    .line 1
    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    new-array v2, v1, [Ljava/lang/Object;

    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object p1, v2, v3

    .line 11
    const-string v4, "onGroupInfoAvailable WifiP2pGroup {?}"

    .line 13
    invoke-static {v0, v4, v2}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    if-nez p1, :cond_0

    .line 18
    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    const-string v0, "onGroupInfoAvailable create Group error "

    .line 24
    new-array v1, v3, [Ljava/lang/Object;

    .line 26
    invoke-static {p1, v0, v1}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return-void

    .line 30
    :cond_0
    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x2

    .line 35
    new-array v4, v2, [Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 40
    move-result-object v5

    .line 41
    aput-object v5, v4, v3

    .line 43
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 46
    move-result-object v5

    .line 47
    aput-object v5, v4, v1

    .line 49
    const-string v5, "onGroupInfoAvailable ssid = {?},pwd = {?}"

    .line 51
    invoke-static {v0, v5, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Lcn0;->a()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    new-array v4, v2, [Ljava/lang/Object;

    .line 60
    iget-object v5, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 62
    iget-object v5, v5, Lcn0$e;->a:Lcn0;

    .line 64
    invoke-static {v5}, Lcn0;->k(Lcn0;)Ljava/lang/String;

    .line 67
    move-result-object v5

    .line 68
    aput-object v5, v4, v3

    .line 70
    iget-object v3, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 72
    iget-object v3, v3, Lcn0$e;->a:Lcn0;

    .line 74
    invoke-static {v3}, Lcn0;->m(Lcn0;)Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    aput-object v3, v4, v1

    .line 80
    const-string v3, "onGroupInfoAvailable last ssid = {?},pwd = {?}"

    .line 82
    invoke-static {v0, v3, v4}, Ldz;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 87
    iget-object v0, v0, Lcn0$e;->a:Lcn0;

    .line 89
    invoke-static {v0}, Lcn0;->k(Lcn0;)Ljava/lang/String;

    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result v0

    .line 101
    const/4 v3, 0x6

    .line 102
    if-eqz v0, :cond_1

    .line 104
    iget-object v0, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 106
    iget-object v0, v0, Lcn0$e;->a:Lcn0;

    .line 108
    invoke-static {v0}, Lcn0;->m(Lcn0;)Ljava/lang/String;

    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_1

    .line 122
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 124
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 126
    const/4 v0, 0x3

    .line 127
    invoke-static {p1, v3, v0}, Lcn0;->p(Lcn0;II)V

    .line 130
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 133
    iget-object v0, v0, Lcn0$e;->a:Lcn0;

    .line 135
    invoke-static {v0}, Lcn0;->k(Lcn0;)Ljava/lang/String;

    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_3

    .line 145
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 147
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 149
    invoke-static {p1}, Lcn0;->q(Lcn0;)Z

    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_2

    .line 155
    invoke-static {}, Lxm0;->n()Lxm0;

    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Lxm0;->v()V

    .line 162
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 164
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 166
    const-string v0, ""

    .line 168
    invoke-static {p1, v0}, Lcn0;->l(Lcn0;Ljava/lang/String;)Ljava/lang/String;

    .line 171
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 173
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 175
    invoke-static {p1, v0}, Lcn0;->n(Lcn0;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 180
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 182
    invoke-static {p1, v1}, Lcn0;->r(Lcn0;Z)Z

    .line 185
    goto :goto_0

    .line 186
    :cond_2
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 188
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 190
    invoke-static {p1, v3, v2}, Lcn0;->p(Lcn0;II)V

    .line 193
    goto :goto_0

    .line 194
    :cond_3
    iget-object v0, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 196
    iget-object v0, v0, Lcn0$e;->a:Lcn0;

    .line 198
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    .line 201
    move-result-object v1

    .line 202
    invoke-static {v0, v1}, Lcn0;->l(Lcn0;Ljava/lang/String;)Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 207
    iget-object v0, v0, Lcn0$e;->a:Lcn0;

    .line 209
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    .line 212
    move-result-object p1

    .line 213
    invoke-static {v0, p1}, Lcn0;->n(Lcn0;Ljava/lang/String;)Ljava/lang/String;

    .line 216
    :goto_0
    iget-object p1, p0, Lcn0$e$a;->a:Lcn0$e;

    .line 218
    iget-object p1, p1, Lcn0$e;->a:Lcn0;

    .line 220
    invoke-static {p1}, Lcn0;->s(Lcn0;)V

    .line 223
    return-void
.end method

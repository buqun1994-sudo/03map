.class public Lrd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lrd;


# instance fields
.field public a:Leq;

.field public b:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrd;

    .line 3
    invoke-direct {v0}, Lrd;-><init>()V

    .line 6
    sput-object v0, Lrd;->c:Lrd;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lrd;->a:Leq;

    .line 7
    return-void
.end method

.method public static a()Lrd;
    .locals 1

    .line 1
    sget-object v0, Lrd;->c:Lrd;

    .line 3
    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/String;)Leq;
    .locals 9

    .line 1
    iput-object p1, p0, Lrd;->b:Ljava/lang/String;

    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object p1, v1, v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object p1

    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object p1, v1, v3

    .line 16
    const-string p1, "BusinessConfigManager"

    .line 18
    const-string v4, " initProjectInteractionImpl mInputChannelId = {?};PYTHON_CHANNEL_LABEL:{?}"

    .line 20
    invoke-static {p1, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-static {v2}, Lre;->b(I)V

    .line 26
    new-instance v1, Lm6;

    .line 28
    const-string v4, "/system/etc/AutoAdapterInfo"

    .line 30
    invoke-direct {v1, v4}, Lm6;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Lm6;->d()Ll6;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Ll6;->a()Ljava/lang/String;

    .line 42
    move-result-object v5

    .line 43
    iput-object v5, p0, Lrd;->b:Ljava/lang/String;

    .line 45
    :cond_0
    iget-object v5, p0, Lrd;->b:Ljava/lang/String;

    .line 47
    invoke-static {}, Lib;->h()Z

    .line 50
    move-result v6

    .line 51
    if-eqz v6, :cond_2

    .line 53
    invoke-static {}, Lzm;->d()Lzm;

    .line 56
    move-result-object v6

    .line 57
    invoke-virtual {v6}, Lzm;->c()Ljava/lang/String;

    .line 60
    move-result-object v6

    .line 61
    new-array v7, v3, [Ljava/lang/Object;

    .line 63
    aput-object v6, v7, v2

    .line 65
    const-string v8, "innerChannelId:{?}"

    .line 67
    invoke-static {p1, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    invoke-static {v6}, Lpi;->s(Ljava/lang/String;)Z

    .line 73
    move-result v7

    .line 74
    if-eqz v7, :cond_1

    .line 76
    new-array v7, v3, [Ljava/lang/Object;

    .line 78
    aput-object v6, v7, v2

    .line 80
    const-string v6, "isGuanWangChannel:{?}"

    .line 82
    invoke-static {p1, v6, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    invoke-static {}, Lpi;->n()Lpi;

    .line 88
    move-result-object v6

    .line 89
    invoke-static {}, Lrv;->H()Lrv;

    .line 92
    move-result-object v7

    .line 93
    invoke-virtual {v7}, Lrv;->z()Landroid/content/Context;

    .line 96
    move-result-object v7

    .line 97
    invoke-virtual {v6, v7, v2}, Lpi;->u(Landroid/content/Context;Z)Z

    .line 100
    goto :goto_0

    .line 101
    :cond_1
    invoke-static {}, Lpi;->n()Lpi;

    .line 104
    move-result-object v6

    .line 105
    invoke-static {}, Lrv;->H()Lrv;

    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {v7}, Lrv;->z()Landroid/content/Context;

    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7, v3}, Lpi;->u(Landroid/content/Context;Z)Z

    .line 116
    :goto_0
    new-instance v6, Lrd$a;

    .line 118
    invoke-direct {v6, p0}, Lrd$a;-><init>(Lrd;)V

    .line 121
    const-wide/16 v7, 0x7530

    .line 123
    invoke-static {v6, v7, v8}, Lbg0;->d(Ljava/lang/Runnable;J)V

    .line 126
    :cond_2
    const/4 v6, 0x0

    .line 127
    invoke-static {v5, v6}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 130
    move-result-object v7

    .line 131
    iput-object v7, p0, Lrd;->a:Leq;

    .line 133
    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    aput-object v5, v0, v2

    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 144
    move-result-object v2

    .line 145
    aput-object v2, v0, v3

    .line 147
    const-string v2, " initProjectInteractionImpl,instanceChannelId={?}, impl = {?}"

    .line 149
    invoke-static {p1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object p1, p0, Lrd;->a:Leq;

    .line 154
    instance-of v0, p1, Lgq;

    .line 156
    if-eqz v0, :cond_3

    .line 158
    check-cast p1, Lgq;

    .line 160
    invoke-interface {p1}, Lgq;->a()Ljava/lang/String;

    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result p1

    .line 168
    if-nez p1, :cond_3

    .line 170
    new-instance p1, Lm6;

    .line 172
    iget-object v0, p0, Lrd;->a:Leq;

    .line 174
    check-cast v0, Lgq;

    .line 176
    invoke-interface {v0}, Lgq;->a()Ljava/lang/String;

    .line 179
    move-result-object v0

    .line 180
    invoke-direct {p1, v0}, Lm6;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lm6;->d()Ll6;

    .line 186
    move-result-object v1

    .line 187
    if-eqz v1, :cond_3

    .line 189
    invoke-virtual {v1}, Ll6;->a()Ljava/lang/String;

    .line 192
    move-result-object p1

    .line 193
    iget-object v0, p0, Lrd;->b:Ljava/lang/String;

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 198
    move-result p1

    .line 199
    if-nez p1, :cond_3

    .line 201
    invoke-virtual {v1}, Ll6;->a()Ljava/lang/String;

    .line 204
    move-result-object p1

    .line 205
    iput-object p1, p0, Lrd;->b:Ljava/lang/String;

    .line 207
    invoke-static {p1, v6}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 210
    move-result-object p1

    .line 211
    iput-object p1, p0, Lrd;->a:Leq;

    .line 213
    :cond_3
    if-eqz v1, :cond_4

    .line 215
    iget-object p1, p0, Lrd;->a:Leq;

    .line 217
    instance-of v0, p1, Lac;

    .line 219
    if-eqz v0, :cond_4

    .line 221
    check-cast p1, Lac;

    .line 223
    invoke-virtual {p1, v1}, Lac;->c(Ll6;)V

    .line 226
    :cond_4
    invoke-static {}, Lse;->c()Lse;

    .line 229
    move-result-object p1

    .line 230
    iget-object v0, p0, Lrd;->a:Leq;

    .line 232
    invoke-virtual {p1, v0}, Lse;->f(Leq;)V

    .line 235
    iget-object p1, p0, Lrd;->a:Leq;

    .line 237
    return-object p1
.end method

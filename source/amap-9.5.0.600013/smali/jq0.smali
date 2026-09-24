.class public Ljq0;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq0$f;,
        Ljq0$e;,
        Ljq0$b;,
        Ljq0$a;,
        Ljq0$d;,
        Ljq0$c;
    }
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/List;

.field public d:Ljq0$e;

.field public e:Ljq0$c;

.field public f:Ljq0$a;

.field public g:Ljq0$b;

.field public h:Ljava/util/List;

.field public i:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Ljq0;->c:Ljava/util/List;

    .line 11
    const/4 v0, 0x0

    .line 12
    new-array v0, v0, [B

    .line 14
    iput-object v0, p0, Ljq0;->i:[B

    .line 16
    return-void
.end method


# virtual methods
.method public d(ILcq0;)Z
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_a

    .line 6
    const/16 v0, 0x12

    .line 8
    if-eq p1, v0, :cond_9

    .line 10
    const/16 v0, 0x1a

    .line 12
    if-eq p1, v0, :cond_7

    .line 14
    const/16 v0, 0x22

    .line 16
    if-eq p1, v0, :cond_6

    .line 18
    const/16 v0, 0x2a

    .line 20
    if-eq p1, v0, :cond_5

    .line 22
    const/16 v0, 0x32

    .line 24
    if-eq p1, v0, :cond_4

    .line 26
    const/16 v0, 0x3a

    .line 28
    if-eq p1, v0, :cond_3

    .line 30
    const/16 v0, 0x42

    .line 32
    if-eq p1, v0, :cond_1

    .line 34
    const/16 v0, 0x7a

    .line 36
    if-eq p1, v0, :cond_0

    .line 38
    invoke-virtual {p2, p1}, Lcq0;->p(I)Z

    .line 41
    return v1

    .line 42
    :cond_0
    invoke-virtual {p2}, Lcq0;->q()[B

    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Ljq0;->i:[B

    .line 48
    goto/16 :goto_0

    .line 50
    :cond_1
    iget-object p1, p0, Ljq0;->h:Ljava/util/List;

    .line 52
    if-nez p1, :cond_2

    .line 54
    new-instance p1, Ljava/util/ArrayList;

    .line 56
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 59
    iput-object p1, p0, Ljq0;->h:Ljava/util/List;

    .line 61
    :cond_2
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 64
    move-result p1

    .line 65
    iget-object v0, p0, Ljq0;->h:Ljava/util/List;

    .line 67
    new-instance v2, Ljq0$f;

    .line 69
    invoke-direct {v2}, Ljq0$f;-><init>()V

    .line 72
    invoke-virtual {v2, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 75
    move-result-object v2

    .line 76
    check-cast v2, Ljq0$f;

    .line 78
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 84
    goto/16 :goto_0

    .line 86
    :cond_3
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 89
    move-result p1

    .line 90
    new-instance v0, Ljq0$b;

    .line 92
    invoke-direct {v0}, Ljq0$b;-><init>()V

    .line 95
    invoke-virtual {v0, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Ljq0$b;

    .line 101
    iput-object v0, p0, Ljq0;->g:Ljq0$b;

    .line 103
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 110
    move-result p1

    .line 111
    new-instance v0, Ljq0$a;

    .line 113
    invoke-direct {v0}, Ljq0$a;-><init>()V

    .line 116
    invoke-virtual {v0, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 119
    move-result-object v0

    .line 120
    check-cast v0, Ljq0$a;

    .line 122
    iput-object v0, p0, Ljq0;->f:Ljq0$a;

    .line 124
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 127
    goto :goto_0

    .line 128
    :cond_5
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 131
    move-result p1

    .line 132
    new-instance v0, Ljq0$c;

    .line 134
    invoke-direct {v0}, Ljq0$c;-><init>()V

    .line 137
    invoke-virtual {v0, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Ljq0$c;

    .line 143
    iput-object v0, p0, Ljq0;->e:Ljq0$c;

    .line 145
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 148
    goto :goto_0

    .line 149
    :cond_6
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 152
    move-result p1

    .line 153
    new-instance v0, Ljq0$e;

    .line 155
    invoke-direct {v0}, Ljq0$e;-><init>()V

    .line 158
    invoke-virtual {v0, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Ljq0$e;

    .line 164
    iput-object v0, p0, Ljq0;->d:Ljq0$e;

    .line 166
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 169
    goto :goto_0

    .line 170
    :cond_7
    iget-object p1, p0, Ljq0;->c:Ljava/util/List;

    .line 172
    if-nez p1, :cond_8

    .line 174
    new-instance p1, Ljava/util/ArrayList;

    .line 176
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    iput-object p1, p0, Ljq0;->c:Ljava/util/List;

    .line 181
    :cond_8
    invoke-virtual {p0, p2}, Lxq0;->e(Lcq0;)I

    .line 184
    move-result p1

    .line 185
    iget-object v0, p0, Ljq0;->c:Ljava/util/List;

    .line 187
    new-instance v2, Ljq0$d;

    .line 189
    invoke-direct {v2}, Ljq0$d;-><init>()V

    .line 192
    invoke-virtual {v2, p2}, Lxq0;->a(Lcq0;)Lxq0;

    .line 195
    move-result-object v2

    .line 196
    check-cast v2, Ljq0$d;

    .line 198
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-virtual {p0, p2, p1}, Lxq0;->b(Lcq0;I)V

    .line 204
    goto :goto_0

    .line 205
    :cond_9
    invoke-virtual {p2}, Lcq0;->r()Ljava/lang/String;

    .line 208
    move-result-object p1

    .line 209
    iput-object p1, p0, Ljq0;->b:Ljava/lang/String;

    .line 211
    goto :goto_0

    .line 212
    :cond_a
    invoke-virtual {p2}, Lcq0;->u()I

    .line 215
    move-result p1

    .line 216
    iput p1, p0, Ljq0;->a:I

    .line 218
    :goto_0
    return v1
.end method

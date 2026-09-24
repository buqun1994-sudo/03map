.class public Lbr0$f;
.super Lzv0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbr0$f$b;,
        Lbr0$f$a;,
        Lbr0$f$c;,
        Lbr0$f$d;,
        Lbr0$f$e;
    }
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:Ljava/lang/String;

.field public e:Lbr0$f$e;

.field public f:Lbr0$f$d;

.field public g:Lbr0$f$c;

.field public h:Lbr0$f$a;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzv0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d(ILru0;)Z
    .locals 1

    .line 1
    const/16 v0, 0x8

    .line 3
    if-eq p1, v0, :cond_8

    .line 5
    const/16 v0, 0x10

    .line 7
    if-eq p1, v0, :cond_7

    .line 9
    const/16 v0, 0x18

    .line 11
    if-eq p1, v0, :cond_6

    .line 13
    const/16 v0, 0x22

    .line 15
    if-eq p1, v0, :cond_5

    .line 17
    const/16 v0, 0x2a

    .line 19
    if-eq p1, v0, :cond_4

    .line 21
    const/16 v0, 0x32

    .line 23
    if-eq p1, v0, :cond_3

    .line 25
    const/16 v0, 0x3a

    .line 27
    if-eq p1, v0, :cond_2

    .line 29
    const/16 v0, 0x42

    .line 31
    if-eq p1, v0, :cond_1

    .line 33
    const/16 v0, 0x48

    .line 35
    if-eq p1, v0, :cond_0

    .line 37
    const/4 p1, 0x0

    .line 38
    return p1

    .line 39
    :cond_0
    invoke-virtual {p2}, Lru0;->u()I

    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lbr0$f;->i:I

    .line 45
    goto/16 :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, p2}, Lzv0;->e(Lru0;)I

    .line 50
    move-result p1

    .line 51
    new-instance v0, Lbr0$f$a;

    .line 53
    invoke-direct {v0}, Lbr0$f$a;-><init>()V

    .line 56
    invoke-virtual {v0, p2}, Lzv0;->a(Lru0;)Lzv0;

    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Lbr0$f$a;

    .line 62
    iput-object v0, p0, Lbr0$f;->h:Lbr0$f$a;

    .line 64
    invoke-virtual {p0, p2, p1}, Lzv0;->b(Lru0;I)V

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0, p2}, Lzv0;->e(Lru0;)I

    .line 71
    move-result p1

    .line 72
    new-instance v0, Lbr0$f$c;

    .line 74
    invoke-direct {v0}, Lbr0$f$c;-><init>()V

    .line 77
    invoke-virtual {v0, p2}, Lzv0;->a(Lru0;)Lzv0;

    .line 80
    move-result-object v0

    .line 81
    check-cast v0, Lbr0$f$c;

    .line 83
    iput-object v0, p0, Lbr0$f;->g:Lbr0$f$c;

    .line 85
    invoke-virtual {p0, p2, p1}, Lzv0;->b(Lru0;I)V

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {p0, p2}, Lzv0;->e(Lru0;)I

    .line 92
    move-result p1

    .line 93
    new-instance v0, Lbr0$f$d;

    .line 95
    invoke-direct {v0}, Lbr0$f$d;-><init>()V

    .line 98
    invoke-virtual {v0, p2}, Lzv0;->a(Lru0;)Lzv0;

    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lbr0$f$d;

    .line 104
    iput-object v0, p0, Lbr0$f;->f:Lbr0$f$d;

    .line 106
    invoke-virtual {p0, p2, p1}, Lzv0;->b(Lru0;I)V

    .line 109
    goto :goto_0

    .line 110
    :cond_4
    invoke-virtual {p0, p2}, Lzv0;->e(Lru0;)I

    .line 113
    move-result p1

    .line 114
    new-instance v0, Lbr0$f$e;

    .line 116
    invoke-direct {v0}, Lbr0$f$e;-><init>()V

    .line 119
    invoke-virtual {v0, p2}, Lzv0;->a(Lru0;)Lzv0;

    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lbr0$f$e;

    .line 125
    iput-object v0, p0, Lbr0$f;->e:Lbr0$f$e;

    .line 127
    invoke-virtual {p0, p2, p1}, Lzv0;->b(Lru0;I)V

    .line 130
    goto :goto_0

    .line 131
    :cond_5
    invoke-virtual {p2}, Lru0;->r()Ljava/lang/String;

    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Lbr0$f;->d:Ljava/lang/String;

    .line 137
    goto :goto_0

    .line 138
    :cond_6
    invoke-virtual {p2}, Lru0;->y()D

    .line 141
    move-result-wide p1

    .line 142
    iput-wide p1, p0, Lbr0$f;->c:D

    .line 144
    goto :goto_0

    .line 145
    :cond_7
    invoke-virtual {p2}, Lru0;->y()D

    .line 148
    move-result-wide p1

    .line 149
    iput-wide p1, p0, Lbr0$f;->b:D

    .line 151
    goto :goto_0

    .line 152
    :cond_8
    invoke-virtual {p2}, Lru0;->y()D

    .line 155
    move-result-wide p1

    .line 156
    iput-wide p1, p0, Lbr0$f;->a:D

    .line 158
    :goto_0
    const/4 p1, 0x1

    .line 159
    return p1
.end method

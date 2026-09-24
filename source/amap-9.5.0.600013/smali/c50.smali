.class public abstract Lc50;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [Z

    .line 4
    sput-object v0, Lc50;->a:[Z

    .line 6
    return-void
.end method

.method public static a(Lmg;Lax;Llg;)V
    .locals 6

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p2, Llg;->n:I

    .line 4
    iput v0, p2, Llg;->o:I

    .line 6
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 8
    const/4 v1, 0x0

    .line 9
    aget-object v0, v0, v1

    .line 11
    sget-object v2, Llg$b;->b:Llg$b;

    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v2, :cond_0

    .line 16
    iget-object v0, p2, Llg;->S:[Llg$b;

    .line 18
    aget-object v0, v0, v1

    .line 20
    sget-object v1, Llg$b;->d:Llg$b;

    .line 22
    if-ne v0, v1, :cond_0

    .line 24
    iget-object v0, p2, Llg;->H:Lfg;

    .line 26
    iget v0, v0, Lfg;->g:I

    .line 28
    invoke-virtual {p0}, Llg;->R()I

    .line 31
    move-result v1

    .line 32
    iget-object v4, p2, Llg;->J:Lfg;

    .line 34
    iget v4, v4, Lfg;->g:I

    .line 36
    sub-int/2addr v1, v4

    .line 37
    iget-object v4, p2, Llg;->H:Lfg;

    .line 39
    invoke-virtual {p1, v4}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 42
    move-result-object v5

    .line 43
    iput-object v5, v4, Lfg;->i:Lle0;

    .line 45
    iget-object v4, p2, Llg;->J:Lfg;

    .line 47
    invoke-virtual {p1, v4}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 50
    move-result-object v5

    .line 51
    iput-object v5, v4, Lfg;->i:Lle0;

    .line 53
    iget-object v4, p2, Llg;->H:Lfg;

    .line 55
    iget-object v4, v4, Lfg;->i:Lle0;

    .line 57
    invoke-virtual {p1, v4, v0}, Lax;->f(Lle0;I)V

    .line 60
    iget-object v4, p2, Llg;->J:Lfg;

    .line 62
    iget-object v4, v4, Lfg;->i:Lle0;

    .line 64
    invoke-virtual {p1, v4, v1}, Lax;->f(Lle0;I)V

    .line 67
    iput v3, p2, Llg;->n:I

    .line 69
    invoke-virtual {p2, v0, v1}, Llg;->y0(II)V

    .line 72
    :cond_0
    iget-object v0, p0, Llg;->S:[Llg$b;

    .line 74
    const/4 v1, 0x1

    .line 75
    aget-object v0, v0, v1

    .line 77
    if-eq v0, v2, :cond_3

    .line 79
    iget-object v0, p2, Llg;->S:[Llg$b;

    .line 81
    aget-object v0, v0, v1

    .line 83
    sget-object v1, Llg$b;->d:Llg$b;

    .line 85
    if-ne v0, v1, :cond_3

    .line 87
    iget-object v0, p2, Llg;->I:Lfg;

    .line 89
    iget v0, v0, Lfg;->g:I

    .line 91
    invoke-virtual {p0}, Llg;->v()I

    .line 94
    move-result p0

    .line 95
    iget-object v1, p2, Llg;->K:Lfg;

    .line 97
    iget v1, v1, Lfg;->g:I

    .line 99
    sub-int/2addr p0, v1

    .line 100
    iget-object v1, p2, Llg;->I:Lfg;

    .line 102
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 105
    move-result-object v2

    .line 106
    iput-object v2, v1, Lfg;->i:Lle0;

    .line 108
    iget-object v1, p2, Llg;->K:Lfg;

    .line 110
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 113
    move-result-object v2

    .line 114
    iput-object v2, v1, Lfg;->i:Lle0;

    .line 116
    iget-object v1, p2, Llg;->I:Lfg;

    .line 118
    iget-object v1, v1, Lfg;->i:Lle0;

    .line 120
    invoke-virtual {p1, v1, v0}, Lax;->f(Lle0;I)V

    .line 123
    iget-object v1, p2, Llg;->K:Lfg;

    .line 125
    iget-object v1, v1, Lfg;->i:Lle0;

    .line 127
    invoke-virtual {p1, v1, p0}, Lax;->f(Lle0;I)V

    .line 130
    iget v1, p2, Llg;->e0:I

    .line 132
    if-gtz v1, :cond_1

    .line 134
    invoke-virtual {p2}, Llg;->Q()I

    .line 137
    move-result v1

    .line 138
    const/16 v2, 0x8

    .line 140
    if-ne v1, v2, :cond_2

    .line 142
    :cond_1
    iget-object v1, p2, Llg;->L:Lfg;

    .line 144
    invoke-virtual {p1, v1}, Lax;->q(Ljava/lang/Object;)Lle0;

    .line 147
    move-result-object v2

    .line 148
    iput-object v2, v1, Lfg;->i:Lle0;

    .line 150
    iget-object v1, p2, Llg;->L:Lfg;

    .line 152
    iget-object v1, v1, Lfg;->i:Lle0;

    .line 154
    iget v2, p2, Llg;->e0:I

    .line 156
    add-int/2addr v2, v0

    .line 157
    invoke-virtual {p1, v1, v2}, Lax;->f(Lle0;I)V

    .line 160
    :cond_2
    iput v3, p2, Llg;->o:I

    .line 162
    invoke-virtual {p2, v0, p0}, Llg;->O0(II)V

    .line 165
    :cond_3
    return-void
.end method

.method public static final b(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class public Lfp0$c;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:J

.field public b:[B

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:Ljava/lang/String;

.field public i:I

.field public j:I

.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public f(Lou0;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lfp0$c;->a:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-eqz v4, :cond_0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lou0;->d(IJ)V

    .line 13
    :cond_0
    iget-object v0, p0, Lfp0$c;->b:[B

    .line 15
    invoke-static {v0}, Lbp0;->g([B)Z

    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 21
    const/4 v0, 0x2

    .line 22
    iget-object v1, p0, Lfp0$c;->b:[B

    .line 24
    invoke-virtual {p1, v0, v1}, Lou0;->g(I[B)V

    .line 27
    :cond_1
    iget v0, p0, Lfp0$c;->c:I

    .line 29
    if-eqz v0, :cond_2

    .line 31
    const/4 v1, 0x3

    .line 32
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 35
    :cond_2
    iget v0, p0, Lfp0$c;->d:I

    .line 37
    if-eqz v0, :cond_3

    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 43
    :cond_3
    iget v0, p0, Lfp0$c;->e:I

    .line 45
    if-eqz v0, :cond_4

    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-virtual {p1, v1, v0}, Lou0;->u(II)V

    .line 51
    :cond_4
    iget v0, p0, Lfp0$c;->f:I

    .line 53
    if-eqz v0, :cond_5

    .line 55
    const/4 v1, 0x6

    .line 56
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 59
    :cond_5
    iget v0, p0, Lfp0$c;->g:I

    .line 61
    if-eqz v0, :cond_6

    .line 63
    const/4 v1, 0x7

    .line 64
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 67
    :cond_6
    iget-object v0, p0, Lfp0$c;->h:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Lbp0;->f(Ljava/lang/String;)Z

    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_7

    .line 75
    const/16 v0, 0x8

    .line 77
    iget-object v1, p0, Lfp0$c;->h:Ljava/lang/String;

    .line 79
    invoke-virtual {p1, v0, v1}, Lou0;->f(ILjava/lang/String;)V

    .line 82
    :cond_7
    iget v0, p0, Lfp0$c;->i:I

    .line 84
    if-eqz v0, :cond_8

    .line 86
    const/16 v1, 0x9

    .line 88
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 91
    :cond_8
    iget v0, p0, Lfp0$c;->j:I

    .line 93
    if-eqz v0, :cond_9

    .line 95
    const/16 v1, 0xa

    .line 97
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 100
    :cond_9
    iget v0, p0, Lfp0$c;->k:I

    .line 102
    if-eqz v0, :cond_a

    .line 104
    const/16 v1, 0xb

    .line 106
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 109
    :cond_a
    iget v0, p0, Lfp0$c;->l:I

    .line 111
    if-eqz v0, :cond_b

    .line 113
    const/16 v1, 0xc

    .line 115
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 118
    :cond_b
    return-void
.end method

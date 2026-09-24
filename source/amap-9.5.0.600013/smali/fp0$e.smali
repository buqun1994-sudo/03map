.class public Lfp0$e;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:Lfp0$d;

.field public k:I


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
    iget v0, p0, Lfp0$e;->a:I

    .line 3
    const v1, 0xffff

    .line 6
    const v2, 0x7fffffff

    .line 9
    if-eqz v0, :cond_1

    .line 11
    if-ne v0, v2, :cond_0

    .line 13
    const v0, 0xffff

    .line 16
    :cond_0
    const/4 v3, 0x1

    .line 17
    invoke-virtual {p1, v3, v0}, Lou0;->s(II)V

    .line 20
    :cond_1
    iget v0, p0, Lfp0$e;->b:I

    .line 22
    if-eqz v0, :cond_3

    .line 24
    if-ne v0, v2, :cond_2

    .line 26
    const v0, 0xffff

    .line 29
    :cond_2
    const/4 v3, 0x2

    .line 30
    invoke-virtual {p1, v3, v0}, Lou0;->s(II)V

    .line 33
    :cond_3
    iget v0, p0, Lfp0$e;->c:I

    .line 35
    if-eqz v0, :cond_5

    .line 37
    if-ne v0, v2, :cond_4

    .line 39
    goto :goto_0

    .line 40
    :cond_4
    move v1, v0

    .line 41
    :goto_0
    const/4 v0, 0x3

    .line 42
    invoke-virtual {p1, v0, v1}, Lou0;->s(II)V

    .line 45
    :cond_5
    iget-wide v0, p0, Lfp0$e;->d:J

    .line 47
    const-wide/16 v2, 0x0

    .line 49
    cmp-long v4, v0, v2

    .line 51
    if-eqz v4, :cond_6

    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-virtual {p1, v2, v0, v1}, Lou0;->d(IJ)V

    .line 57
    :cond_6
    iget v0, p0, Lfp0$e;->e:I

    .line 59
    if-eqz v0, :cond_7

    .line 61
    const/4 v1, 0x5

    .line 62
    invoke-virtual {p1, v1, v0}, Lou0;->u(II)V

    .line 65
    :cond_7
    iget v0, p0, Lfp0$e;->f:I

    .line 67
    if-eqz v0, :cond_8

    .line 69
    const/4 v1, 0x6

    .line 70
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 73
    :cond_8
    iget v0, p0, Lfp0$e;->g:I

    .line 75
    if-eqz v0, :cond_9

    .line 77
    const/4 v1, 0x7

    .line 78
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 81
    :cond_9
    iget v0, p0, Lfp0$e;->h:I

    .line 83
    if-eqz v0, :cond_a

    .line 85
    const/16 v1, 0x8

    .line 87
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 90
    :cond_a
    iget v0, p0, Lfp0$e;->i:I

    .line 92
    if-eqz v0, :cond_b

    .line 94
    const/16 v1, 0x9

    .line 96
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 99
    :cond_b
    iget-object v0, p0, Lfp0$e;->j:Lfp0$d;

    .line 101
    if-eqz v0, :cond_c

    .line 103
    const/16 v1, 0xa

    .line 105
    invoke-virtual {p1, v1, v0}, Lou0;->e(ILxq0;)V

    .line 108
    :cond_c
    iget v0, p0, Lfp0$e;->k:I

    .line 110
    if-eqz v0, :cond_d

    .line 112
    const/16 v1, 0xf

    .line 114
    invoke-virtual {p1, v1, v0}, Lou0;->s(II)V

    .line 117
    :cond_d
    return-void
.end method

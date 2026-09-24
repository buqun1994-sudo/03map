.class public abstract Lax0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:J

.field public e:B

.field public f:S

.field public g:S

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0xffff

    .line 7
    iput v0, p0, Lax0;->a:I

    .line 9
    iput v0, p0, Lax0;->b:I

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lax0;->c:I

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lax0;->d:J

    .line 18
    const/16 v1, 0x63

    .line 20
    iput-byte v1, p0, Lax0;->e:B

    .line 22
    iput-short v0, p0, Lax0;->f:S

    .line 24
    const/16 v0, 0x7fff

    .line 26
    iput-short v0, p0, Lax0;->g:S

    .line 28
    const v0, 0x7fffffff

    .line 31
    iput v0, p0, Lax0;->h:I

    .line 33
    iput v0, p0, Lax0;->i:I

    .line 35
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lax0;->e:B

    .line 3
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax0;->a:I

    .line 3
    return-void
.end method

.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lax0;->d:J

    .line 3
    return-void
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lax0;->a:I

    .line 3
    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax0;->b:I

    .line 3
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lax0;->b:I

    .line 3
    return v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax0;->c:I

    .line 3
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lax0;->c:I

    .line 3
    return v0
.end method

.method public i()B
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public i(I)V
    .locals 2

    .line 2
    sget-object v0, Luq0;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    :cond_0
    sget-object v0, Luq0;->b:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :cond_1
    int-to-short p1, p1

    .line 6
    iput-short p1, p0, Lax0;->f:S

    return-void
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lax0;->d:J

    .line 3
    return-wide v0
.end method

.method public k(I)V
    .locals 2

    .line 1
    sget-object v0, Luq0;->a:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v1

    .line 7
    if-le p1, v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    :cond_0
    sget-object v0, Luq0;->b:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v1

    .line 19
    if-ge p1, v1, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 25
    :cond_1
    int-to-short p1, p1

    .line 26
    iput-short p1, p0, Lax0;->g:S

    .line 28
    return-void
.end method

.method public l()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lax0;->e:B

    .line 3
    return v0
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax0;->h:I

    .line 3
    return-void
.end method

.method public n()I
    .locals 1

    .line 1
    iget-short v0, p0, Lax0;->f:S

    .line 3
    invoke-static {v0}, Lyw0;->a(S)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public o(I)V
    .locals 0

    .line 1
    iput p1, p0, Lax0;->i:I

    .line 3
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget-short v0, p0, Lax0;->g:S

    .line 3
    invoke-static {v0}, Lyw0;->a(S)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lax0;->h:I

    .line 3
    return v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lax0;->i:I

    .line 3
    return v0
.end method

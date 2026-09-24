.class public Lnp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:B

.field public h:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const v0, 0xffff

    .line 7
    iput v0, p0, Lnp0;->a:I

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lnp0;->b:I

    .line 12
    iput v0, p0, Lnp0;->c:I

    .line 14
    iput v0, p0, Lnp0;->d:I

    .line 16
    iput v0, p0, Lnp0;->e:I

    .line 18
    iput v0, p0, Lnp0;->f:I

    .line 20
    const/16 v1, 0x63

    .line 22
    iput-byte v1, p0, Lnp0;->g:B

    .line 24
    iput-short v0, p0, Lnp0;->h:S

    .line 26
    return-void
.end method


# virtual methods
.method public a(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lnp0;->g:B

    .line 3
    return-void
.end method

.method public b(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnp0;->a:I

    .line 3
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lnp0;->a:I

    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lnp0;->b:I

    .line 3
    return v0
.end method

.method public e(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnp0;->b:I

    .line 3
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lnp0;->c:I

    .line 3
    return v0
.end method

.method public g(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnp0;->c:I

    .line 3
    return-void
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lnp0;->d:I

    .line 3
    return v0
.end method

.method public i()B
    .locals 1

    .line 1
    const/4 v0, 0x2

    return v0
.end method

.method public i(I)V
    .locals 0

    .line 2
    iput p1, p0, Lnp0;->d:I

    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lnp0;->e:I

    .line 3
    return v0
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnp0;->e:I

    .line 3
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lnp0;->f:I

    .line 3
    return v0
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnp0;->f:I

    .line 3
    return-void
.end method

.method public n()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lnp0;->g:B

    .line 3
    return v0
.end method

.method public o(I)V
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
    iput-short p1, p0, Lnp0;->h:S

    .line 28
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget-short v0, p0, Lnp0;->h:S

    .line 3
    invoke-static {v0}, Lyw0;->a(S)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "CdmaCell{mcc="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lnp0;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", sid="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lnp0;->b:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", nid="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lnp0;->c:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", bid="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lnp0;->d:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", lon="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lnp0;->e:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v1, ", lat="

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v1, p0, Lnp0;->f:I

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v1, ", signal="

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-byte v1, p0, Lnp0;->g:B

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", cellAge="

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-short v1, p0, Lnp0;->h:S

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const/16 v1, 0x7d

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method

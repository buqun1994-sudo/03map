.class public Lmb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static m:I = 0xc

.field public static n:I = 0xffe3


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:[J

.field public k:[B

.field public l:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(JJII[B)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmb0;->a:Z

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lmb0;->b:I

    .line 4
    iput v0, p0, Lmb0;->d:I

    .line 5
    iput v0, p0, Lmb0;->e:I

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lmb0;->j:[J

    .line 7
    iput-object v1, p0, Lmb0;->k:[B

    .line 8
    iput-object v1, p0, Lmb0;->l:[B

    .line 9
    invoke-virtual {p0, p1, p2}, Lmb0;->s(J)I

    move-result p1

    add-int/2addr p1, v0

    .line 10
    invoke-virtual {p0, p3, p4}, Lmb0;->r(J)I

    move-result p2

    add-int/2addr p1, p2

    .line 11
    invoke-virtual {p0, p5}, Lmb0;->q(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p6}, Lmb0;->p(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 13
    invoke-virtual {p0, p7}, Lmb0;->o([B)I

    move-result p2

    add-int/2addr p1, p2

    if-eqz p1, :cond_0

    const-string p1, "RtpPkt() failed, check with checkPkt()"

    new-array p2, v0, [Ljava/lang/Object;

    const-string p3, "RTPSession"

    .line 14
    invoke-static {p3, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lmb0;->a:Z

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 4

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lmb0;->a:Z

    const/4 v1, 0x2

    .line 18
    iput v1, p0, Lmb0;->b:I

    .line 19
    iput v0, p0, Lmb0;->d:I

    .line 20
    iput v0, p0, Lmb0;->e:I

    const/4 v2, 0x0

    .line 21
    iput-object v2, p0, Lmb0;->j:[J

    .line 22
    iput-object v2, p0, Lmb0;->k:[B

    .line 23
    iput-object v2, p0, Lmb0;->l:[B

    const-string v2, "RTPSession"

    if-nez p1, :cond_0

    const-string p1, "RtpPkt(byte[]) Packet null"

    new-array p2, v0, [Ljava/lang/Object;

    .line 24
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_0
    sget v3, Lmb0;->m:I

    sub-int/2addr p2, v3

    const/4 v3, 0x1

    if-ltz p2, :cond_4

    .line 26
    iput-object p1, p0, Lmb0;->k:[B

    .line 27
    invoke-virtual {p0}, Lmb0;->u()V

    .line 28
    iget p1, p0, Lmb0;->b:I

    if-ne p1, v1, :cond_3

    .line 29
    invoke-virtual {p0}, Lmb0;->x()V

    .line 30
    invoke-virtual {p0}, Lmb0;->w()V

    const/4 p1, 0x4

    if-le p2, p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lmb0;->d()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "RtpPkt(byte[]) Packet remOct > 4 && getCsrcCount() > 0"

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p0}, Lmb0;->t()V

    .line 34
    iget-object v0, p0, Lmb0;->j:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    sub-int/2addr p2, v0

    :cond_1
    if-lez p2, :cond_2

    .line 35
    invoke-virtual {p0, p2}, Lmb0;->v(I)V

    .line 36
    :cond_2
    invoke-virtual {p0}, Lmb0;->a()I

    .line 37
    iput-boolean v3, p0, Lmb0;->a:Z

    goto :goto_0

    :cond_3
    const-string p1, "RtpPkt(byte[]) Packet is not version 2, giving up."

    new-array p2, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const-string p1, "RtpPkt(byte[]) Packet too small to be sliced"

    new-array p2, v0, [Ljava/lang/Object;

    .line 39
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    :goto_0
    iput-boolean v3, p0, Lmb0;->a:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public b()[B
    .locals 1

    .line 1
    iget-boolean v0, p0, Lmb0;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lmb0;->k:[B

    .line 7
    if-nez v0, :cond_1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lmb0;->z()V

    .line 12
    :cond_1
    iget-object v0, p0, Lmb0;->k:[B

    .line 14
    return-object v0
.end method

.method public c()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->j:[J

    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->j:[J

    .line 3
    if-eqz v0, :cond_0

    .line 5
    array-length v0, v0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmb0;->d()I

    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x4

    .line 7
    add-int/lit8 v0, v0, 0xc

    .line 9
    return v0
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->l:[B

    .line 3
    return-object v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lmb0;->l:[B

    .line 3
    if-eqz v0, :cond_0

    .line 5
    array-length v0, v0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lmb0;->f:I

    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lmb0;->g:I

    .line 3
    return v0
.end method

.method public j()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmb0;->i:J

    .line 3
    return-wide v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lmb0;->h:J

    .line 3
    return-wide v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget v0, p0, Lmb0;->e:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public m([J)I
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/16 v1, 0x10

    .line 4
    const/4 v2, 0x0

    .line 5
    if-gt v0, v1, :cond_0

    .line 7
    iput-object p1, p0, Lmb0;->j:[J

    .line 9
    return v2

    .line 10
    :cond_0
    const-string p1, "RtpPkt.setCsrcs: Cannot have more than 16 CSRCs"

    .line 12
    new-array v0, v2, [Ljava/lang/Object;

    .line 14
    const-string v1, "RTPSession"

    .line 16
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    const/4 p1, -0x1

    .line 20
    return p1
.end method

.method public n(Z)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmb0;->a:Z

    .line 4
    if-eqz p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lmb0;->e:I

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iput v0, p0, Lmb0;->e:I

    .line 12
    :goto_0
    return-void
.end method

.method public o([B)I
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    sget v1, Lmb0;->n:I

    .line 4
    add-int/lit8 v1, v1, -0xc

    .line 6
    const/4 v2, 0x0

    .line 7
    if-ge v0, v1, :cond_0

    .line 9
    iput-boolean v2, p0, Lmb0;->a:Z

    .line 11
    iput-object p1, p0, Lmb0;->l:[B

    .line 13
    return v2

    .line 14
    :cond_0
    const-string p1, "RtpPkt.setPayload: Cannot carry more than 1480 bytes for now."

    .line 16
    new-array v0, v2, [Ljava/lang/Object;

    .line 18
    const-string v1, "RTPSession"

    .line 20
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    const/4 p1, -0x1

    .line 24
    return p1
.end method

.method public p(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p1, 0x7f

    .line 3
    if-ne v0, p1, :cond_0

    .line 5
    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmb0;->a:Z

    .line 8
    iput v0, p0, Lmb0;->f:I

    .line 10
    return p1

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    return p1
.end method

.method public q(I)I
    .locals 2

    .line 1
    const/high16 v0, 0x10000

    .line 3
    const/4 v1, 0x0

    .line 4
    if-gt p1, v0, :cond_0

    .line 6
    if-ltz p1, :cond_0

    .line 8
    iput-boolean v1, p0, Lmb0;->a:Z

    .line 10
    iput p1, p0, Lmb0;->g:I

    .line 12
    return v1

    .line 13
    :cond_0
    const-string p1, "RtpPkt.setSeqNumber: invalid number"

    .line 15
    new-array v0, v1, [Ljava/lang/Object;

    .line 17
    const-string v1, "RTPSession"

    .line 19
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    const/4 p1, -0x1

    .line 23
    return p1
.end method

.method public r(J)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmb0;->a:Z

    .line 4
    iput-wide p1, p0, Lmb0;->i:J

    .line 6
    return v0
.end method

.method public s(J)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmb0;->a:Z

    .line 4
    iput-wide p1, p0, Lmb0;->h:J

    .line 6
    return v0
.end method

.method public final t()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lmb0;->j:[J

    .line 4
    array-length v1, v1

    .line 5
    if-ge v0, v1, :cond_0

    .line 7
    iget-object v1, p0, Lmb0;->k:[B

    .line 9
    mul-int/lit8 v2, v0, 0x4

    .line 11
    add-int/lit8 v2, v2, 0xc

    .line 13
    invoke-static {v1, v2}, Lve0;->b([BI)J

    .line 16
    move-result-wide v1

    .line 17
    iput-wide v1, p0, Lmb0;->i:J

    .line 19
    add-int/lit8 v0, v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lmb0;->k:[B

    .line 3
    const/4 v1, 0x0

    .line 4
    aget-byte v1, v0, v1

    .line 6
    and-int/lit16 v2, v1, 0xc0

    .line 8
    ushr-int/lit8 v2, v2, 0x6

    .line 10
    iput v2, p0, Lmb0;->b:I

    .line 12
    and-int/lit8 v2, v1, 0x20

    .line 14
    ushr-int/lit8 v2, v2, 0x5

    .line 16
    iput v2, p0, Lmb0;->c:I

    .line 18
    and-int/lit8 v2, v1, 0x10

    .line 20
    ushr-int/lit8 v2, v2, 0x4

    .line 22
    iput v2, p0, Lmb0;->d:I

    .line 24
    and-int/lit8 v1, v1, 0xf

    .line 26
    new-array v1, v1, [J

    .line 28
    iput-object v1, p0, Lmb0;->j:[J

    .line 30
    const/4 v1, 0x1

    .line 31
    aget-byte v1, v0, v1

    .line 33
    and-int/lit16 v2, v1, 0x80

    .line 35
    shr-int/lit8 v2, v2, 0x7

    .line 37
    iput v2, p0, Lmb0;->e:I

    .line 39
    and-int/lit8 v1, v1, 0x7f

    .line 41
    iput v1, p0, Lmb0;->f:I

    .line 43
    const/4 v1, 0x2

    .line 44
    invoke-static {v0, v1}, Lve0;->a([BI)I

    .line 47
    move-result v0

    .line 48
    iput v0, p0, Lmb0;->g:I

    .line 50
    return-void
.end method

.method public final v(I)V
    .locals 4

    .line 1
    new-array v0, p1, [B

    .line 3
    iput-object v0, p0, Lmb0;->l:[B

    .line 5
    invoke-virtual {p0}, Lmb0;->e()I

    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lmb0;->k:[B

    .line 11
    iget-object v2, p0, Lmb0;->l:[B

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v1, v0, v2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    return-void
.end method

.method public final w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmb0;->k:[B

    .line 3
    const/16 v1, 0x8

    .line 5
    invoke-static {v0, v1}, Lve0;->b([BI)J

    .line 8
    move-result-wide v0

    .line 9
    iput-wide v0, p0, Lmb0;->i:J

    .line 11
    return-void
.end method

.method public final x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmb0;->k:[B

    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-static {v0, v1}, Lve0;->b([BI)J

    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lmb0;->h:J

    .line 10
    return-void
.end method

.method public final y()V
    .locals 5

    .line 1
    iget v0, p0, Lmb0;->b:I

    .line 3
    shl-int/lit8 v0, v0, 0x6

    .line 5
    const/4 v1, 0x0

    .line 6
    or-int/2addr v0, v1

    .line 7
    int-to-byte v0, v0

    .line 8
    iget v2, p0, Lmb0;->c:I

    .line 10
    shl-int/lit8 v2, v2, 0x5

    .line 12
    or-int/2addr v0, v2

    .line 13
    int-to-byte v0, v0

    .line 14
    iget v2, p0, Lmb0;->d:I

    .line 16
    shl-int/lit8 v2, v2, 0x4

    .line 18
    or-int/2addr v0, v2

    .line 19
    int-to-byte v0, v0

    .line 20
    invoke-virtual {p0}, Lmb0;->d()I

    .line 23
    move-result v2

    .line 24
    or-int/2addr v0, v2

    .line 25
    int-to-byte v0, v0

    .line 26
    iget-object v2, p0, Lmb0;->k:[B

    .line 28
    aput-byte v0, v2, v1

    .line 30
    iget v0, p0, Lmb0;->e:I

    .line 32
    shl-int/lit8 v0, v0, 0x7

    .line 34
    or-int/2addr v0, v1

    .line 35
    int-to-byte v0, v0

    .line 36
    iget v3, p0, Lmb0;->f:I

    .line 38
    or-int/2addr v0, v3

    .line 39
    int-to-byte v0, v0

    .line 40
    const/4 v3, 0x1

    .line 41
    aput-byte v0, v2, v3

    .line 43
    iget v0, p0, Lmb0;->g:I

    .line 45
    invoke-static {v0}, Lve0;->c(I)[B

    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lmb0;->k:[B

    .line 51
    aget-byte v1, v0, v1

    .line 53
    const/4 v4, 0x2

    .line 54
    aput-byte v1, v2, v4

    .line 56
    const/4 v1, 0x3

    .line 57
    aget-byte v0, v0, v3

    .line 59
    aput-byte v0, v2, v1

    .line 61
    return-void
.end method

.method public final z()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lmb0;->g()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lmb0;->e()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lmb0;->d()I

    .line 12
    move-result v2

    .line 13
    add-int v3, v1, v0

    .line 15
    new-array v3, v3, [B

    .line 17
    iput-object v3, p0, Lmb0;->k:[B

    .line 19
    invoke-virtual {p0}, Lmb0;->y()V

    .line 22
    iget-wide v3, p0, Lmb0;->h:J

    .line 24
    invoke-static {v3, v4}, Lve0;->d(J)[B

    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    const/4 v6, 0x4

    .line 31
    if-ge v5, v6, :cond_0

    .line 33
    iget-object v6, p0, Lmb0;->k:[B

    .line 35
    add-int/lit8 v7, v5, 0x4

    .line 37
    aget-byte v8, v3, v5

    .line 39
    aput-byte v8, v6, v7

    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-wide v7, p0, Lmb0;->i:J

    .line 46
    invoke-static {v7, v8}, Lve0;->d(J)[B

    .line 49
    move-result-object v3

    .line 50
    iget-object v5, p0, Lmb0;->k:[B

    .line 52
    const/16 v7, 0x8

    .line 54
    invoke-static {v3, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    const/4 v3, 0x0

    .line 58
    :goto_1
    if-ge v3, v2, :cond_1

    .line 60
    iget-object v5, p0, Lmb0;->j:[J

    .line 62
    aget-wide v7, v5, v3

    .line 64
    invoke-static {v7, v8}, Lve0;->d(J)[B

    .line 67
    move-result-object v5

    .line 68
    iget-object v7, p0, Lmb0;->k:[B

    .line 70
    mul-int/lit8 v8, v3, 0x4

    .line 72
    add-int/lit8 v8, v8, 0xc

    .line 74
    invoke-static {v5, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_1
    iget-object v2, p0, Lmb0;->l:[B

    .line 82
    if-eqz v2, :cond_2

    .line 84
    iget-object v3, p0, Lmb0;->k:[B

    .line 86
    invoke-static {v2, v4, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    :cond_2
    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lmb0;->a:Z

    .line 92
    return-void
.end method

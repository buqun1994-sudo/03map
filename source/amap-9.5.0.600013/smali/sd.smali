.class public final Lsd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    if-ltz p1, :cond_0

    .line 6
    new-array p1, p1, [B

    .line 8
    iput-object p1, p0, Lsd;->a:[B

    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 13
    const-string v0, "Buffer capacity may not be negative"

    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    throw p1
.end method


# virtual methods
.method public a([BII)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    if-ltz p2, :cond_3

    .line 6
    array-length v0, p1

    .line 7
    if-gt p2, v0, :cond_3

    .line 9
    if-ltz p3, :cond_3

    .line 11
    add-int v0, p2, p3

    .line 13
    if-ltz v0, :cond_3

    .line 15
    array-length v1, p1

    .line 16
    if-gt v0, v1, :cond_3

    .line 18
    if-nez p3, :cond_1

    .line 20
    return-void

    .line 21
    :cond_1
    iget v0, p0, Lsd;->b:I

    .line 23
    add-int/2addr v0, p3

    .line 24
    iget-object v1, p0, Lsd;->a:[B

    .line 26
    array-length v1, v1

    .line 27
    if-le v0, v1, :cond_2

    .line 29
    invoke-virtual {p0, v0}, Lsd;->b(I)V

    .line 32
    :cond_2
    iget-object v1, p0, Lsd;->a:[B

    .line 34
    iget v2, p0, Lsd;->b:I

    .line 36
    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iput v0, p0, Lsd;->b:I

    .line 41
    return-void

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 44
    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 47
    throw p1
.end method

.method public final b(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsd;->a:[B

    .line 3
    array-length v0, v0

    .line 4
    shl-int/lit8 v0, v0, 0x1

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 9
    move-result p1

    .line 10
    new-array p1, p1, [B

    .line 12
    iget-object v0, p0, Lsd;->a:[B

    .line 14
    const/4 v1, 0x0

    .line 15
    iget v2, p0, Lsd;->b:I

    .line 17
    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iput-object p1, p0, Lsd;->a:[B

    .line 22
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lsd;->b:I

    .line 3
    return v0
.end method

.method public d()[B
    .locals 4

    .line 1
    iget v0, p0, Lsd;->b:I

    .line 3
    new-array v1, v0, [B

    .line 5
    if-lez v0, :cond_0

    .line 7
    iget-object v2, p0, Lsd;->a:[B

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    :cond_0
    return-object v1
.end method

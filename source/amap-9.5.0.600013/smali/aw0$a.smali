.class public Law0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Law0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Law0$a$a;
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Law0$a$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Law0$a;->a:I

    .line 7
    iput v0, p0, Law0$a;->b:I

    .line 9
    iput v0, p0, Law0$a;->c:I

    .line 11
    iput v0, p0, Law0$a;->d:I

    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Law0$a;->e:Law0$a$a;

    .line 16
    return-void
.end method

.method public static b(III)S
    .locals 0

    .line 1
    shl-int/lit8 p0, p0, 0xd

    add-int/lit8 p1, p1, 0x40

    shl-int/lit8 p1, p1, 0x6

    or-int/2addr p0, p1

    or-int/2addr p0, p2

    const p1, 0xffff

    and-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method public static g(Law0$a$a;)S
    .locals 2

    .line 1
    invoke-virtual {p0}, Law0$a$a;->a()I

    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Law0$a$a;->c()I

    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Law0$a$a;->e()I

    .line 12
    move-result p0

    .line 13
    invoke-static {v0, v1, p0}, Law0$a;->b(III)S

    .line 16
    move-result p0

    .line 17
    return p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a;->a:I

    .line 3
    return v0
.end method

.method public c(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x7

    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 14
    move-result-wide p1

    .line 15
    const-wide v0, 0x416312d000000000L    # 1.0E7

    .line 20
    mul-double p1, p1, v0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 25
    move-result-wide p1

    .line 26
    long-to-int p2, p1

    .line 27
    iput p2, p0, Law0$a;->b:I

    .line 29
    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    const v0, 0xffff

    .line 4
    if-ltz p1, :cond_0

    .line 6
    if-gt p1, v0, :cond_0

    .line 8
    iput p1, p0, Law0$a;->a:I

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-le p1, v0, :cond_1

    .line 13
    iput v0, p0, Law0$a;->a:I

    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public e(Law0$a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Law0$a;->e:Law0$a$a;

    .line 3
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a;->b:I

    .line 3
    return v0
.end method

.method public h(D)V
    .locals 2

    .line 1
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x7

    .line 6
    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, p2, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    .line 14
    move-result-wide p1

    .line 15
    const-wide v0, 0x416312d000000000L    # 1.0E7

    .line 20
    mul-double p1, p1, v0

    .line 22
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    .line 25
    move-result-wide p1

    .line 26
    long-to-int p2, p1

    .line 27
    iput p2, p0, Law0$a;->c:I

    .line 29
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    const v0, 0xffff

    .line 4
    if-ltz p1, :cond_0

    .line 6
    if-gt p1, v0, :cond_0

    .line 8
    iput p1, p0, Law0$a;->d:I

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-le p1, v0, :cond_1

    .line 13
    iput v0, p0, Law0$a;->d:I

    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a;->c:I

    .line 3
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a;->d:I

    .line 3
    return v0
.end method

.method public l()Law0$a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Law0$a;->e:Law0$a$a;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "HisLocCtx{deltaTime="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Law0$a;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", lon="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Law0$a;->b:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", lat="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Law0$a;->c:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", radius="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Law0$a;->d:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", type="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-object v1, p0, Law0$a;->e:Law0$a$a;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    const/16 v1, 0x7d

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

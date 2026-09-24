.class public Lrk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lrk;->a:I

    .line 3
    iput v0, p0, Lrk;->b:I

    .line 4
    iput v0, p0, Lrk;->c:I

    .line 5
    iput v0, p0, Lrk;->d:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lrk;->a:I

    .line 8
    iput v0, p0, Lrk;->b:I

    .line 9
    iput v0, p0, Lrk;->c:I

    .line 10
    iput v0, p0, Lrk;->d:I

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 11
    :cond_0
    iput p1, p0, Lrk;->a:I

    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 12
    :cond_1
    iput p2, p0, Lrk;->c:I

    if-gez p3, :cond_2

    const/4 p3, 0x0

    .line 13
    :cond_2
    iput p3, p0, Lrk;->b:I

    if-gez p4, :cond_3

    const/4 p4, 0x0

    .line 14
    :cond_3
    iput p4, p0, Lrk;->d:I

    return-void
.end method

.method public constructor <init>(Lrk;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lrk;->a:I

    .line 17
    iput v0, p0, Lrk;->b:I

    .line 18
    iput v0, p0, Lrk;->c:I

    .line 19
    iput v0, p0, Lrk;->d:I

    .line 20
    iget v0, p1, Lrk;->a:I

    iput v0, p0, Lrk;->a:I

    .line 21
    iget v0, p1, Lrk;->c:I

    iput v0, p0, Lrk;->c:I

    .line 22
    iget v0, p1, Lrk;->b:I

    iput v0, p0, Lrk;->b:I

    .line 23
    iget p1, p1, Lrk;->d:I

    iput p1, p0, Lrk;->d:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lrk;->d:I

    .line 3
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lrk;->a:I

    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lrk;->b:I

    .line 3
    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lrk;->c:I

    .line 3
    return v0
.end method

.method public e()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lrk;->f()Z

    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0}, Lrk;->g()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public f()Z
    .locals 1

    .line 1
    iget v0, p0, Lrk;->a:I

    .line 3
    if-gtz v0, :cond_1

    .line 5
    iget v0, p0, Lrk;->b:I

    .line 7
    if-lez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget v0, p0, Lrk;->c:I

    .line 3
    if-gtz v0, :cond_1

    .line 5
    iget v0, p0, Lrk;->d:I

    .line 7
    if-lez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 13
    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "DysmorphismInfo{dysmorphismLeft="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lrk;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", dysmorphismTop="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lrk;->c:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", dysmorphismRight="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lrk;->b:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", dysmorphismBottom="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lrk;->d:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const/16 v1, 0x7d

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method

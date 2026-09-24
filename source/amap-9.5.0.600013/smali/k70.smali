.class public Lk70;
.super Lb6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk70$b;
    }
.end annotation


# instance fields
.field public g:I

.field public h:[Lle0;

.field public i:[Lle0;

.field public j:I

.field public k:Lk70$b;

.field public l:Lud;


# direct methods
.method public constructor <init>(Lud;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lb6;-><init>(Lud;)V

    .line 4
    const/16 v0, 0x80

    .line 6
    iput v0, p0, Lk70;->g:I

    .line 8
    new-array v1, v0, [Lle0;

    .line 10
    iput-object v1, p0, Lk70;->h:[Lle0;

    .line 12
    new-array v0, v0, [Lle0;

    .line 14
    iput-object v0, p0, Lk70;->i:[Lle0;

    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lk70;->j:I

    .line 19
    new-instance v0, Lk70$b;

    .line 21
    invoke-direct {v0, p0, p0}, Lk70$b;-><init>(Lk70;Lk70;)V

    .line 24
    iput-object v0, p0, Lk70;->k:Lk70$b;

    .line 26
    iput-object p1, p0, Lk70;->l:Lud;

    .line 28
    return-void
.end method

.method public static synthetic E(Lk70;Lle0;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lk70;->G(Lle0;)V

    .line 4
    return-void
.end method


# virtual methods
.method public B(Lax;Lb6;Z)V
    .locals 5

    .line 1
    iget-object p1, p2, Lb6;->a:Lle0;

    .line 3
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object p3, p2, Lb6;->e:Lb6$a;

    .line 8
    invoke-interface {p3}, Lb6$a;->d()I

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    invoke-interface {p3, v1}, Lb6$a;->f(I)Lle0;

    .line 18
    move-result-object v2

    .line 19
    invoke-interface {p3, v1}, Lb6$a;->a(I)F

    .line 22
    move-result v3

    .line 23
    iget-object v4, p0, Lk70;->k:Lk70$b;

    .line 25
    invoke-virtual {v4, v2}, Lk70$b;->b(Lle0;)V

    .line 28
    iget-object v4, p0, Lk70;->k:Lk70$b;

    .line 30
    invoke-virtual {v4, p1, v3}, Lk70$b;->a(Lle0;F)Z

    .line 33
    move-result v4

    .line 34
    if-eqz v4, :cond_1

    .line 36
    invoke-virtual {p0, v2}, Lk70;->F(Lle0;)V

    .line 39
    :cond_1
    iget v2, p0, Lb6;->b:F

    .line 41
    iget v4, p2, Lb6;->b:F

    .line 43
    mul-float v4, v4, v3

    .line 45
    add-float/2addr v2, v4

    .line 46
    iput v2, p0, Lb6;->b:F

    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    invoke-virtual {p0, p1}, Lk70;->G(Lle0;)V

    .line 54
    return-void
.end method

.method public final F(Lle0;)V
    .locals 5

    .line 1
    iget v0, p0, Lk70;->j:I

    .line 3
    const/4 v1, 0x1

    .line 4
    add-int/2addr v0, v1

    .line 5
    iget-object v2, p0, Lk70;->h:[Lle0;

    .line 7
    array-length v3, v2

    .line 8
    if-le v0, v3, :cond_0

    .line 10
    array-length v0, v2

    .line 11
    mul-int/lit8 v0, v0, 0x2

    .line 13
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [Lle0;

    .line 19
    iput-object v0, p0, Lk70;->h:[Lle0;

    .line 21
    array-length v2, v0

    .line 22
    mul-int/lit8 v2, v2, 0x2

    .line 24
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 28
    check-cast v0, [Lle0;

    .line 30
    iput-object v0, p0, Lk70;->i:[Lle0;

    .line 32
    :cond_0
    iget-object v0, p0, Lk70;->h:[Lle0;

    .line 34
    iget v2, p0, Lk70;->j:I

    .line 36
    aput-object p1, v0, v2

    .line 38
    add-int/2addr v2, v1

    .line 39
    iput v2, p0, Lk70;->j:I

    .line 41
    if-le v2, v1, :cond_2

    .line 43
    sub-int/2addr v2, v1

    .line 44
    aget-object v0, v0, v2

    .line 46
    iget v0, v0, Lle0;->c:I

    .line 48
    iget v2, p1, Lle0;->c:I

    .line 50
    if-le v0, v2, :cond_2

    .line 52
    const/4 v0, 0x0

    .line 53
    const/4 v2, 0x0

    .line 54
    :goto_0
    iget v3, p0, Lk70;->j:I

    .line 56
    if-ge v2, v3, :cond_1

    .line 58
    iget-object v3, p0, Lk70;->i:[Lle0;

    .line 60
    iget-object v4, p0, Lk70;->h:[Lle0;

    .line 62
    aget-object v4, v4, v2

    .line 64
    aput-object v4, v3, v2

    .line 66
    add-int/lit8 v2, v2, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-object v2, p0, Lk70;->i:[Lle0;

    .line 71
    new-instance v4, Lk70$a;

    .line 73
    invoke-direct {v4, p0}, Lk70$a;-><init>(Lk70;)V

    .line 76
    invoke-static {v2, v0, v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 79
    :goto_1
    iget v2, p0, Lk70;->j:I

    .line 81
    if-ge v0, v2, :cond_2

    .line 83
    iget-object v2, p0, Lk70;->h:[Lle0;

    .line 85
    iget-object v3, p0, Lk70;->i:[Lle0;

    .line 87
    aget-object v3, v3, v0

    .line 89
    aput-object v3, v2, v0

    .line 91
    add-int/lit8 v0, v0, 0x1

    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iput-boolean v1, p1, Lle0;->a:Z

    .line 96
    invoke-virtual {p1, p0}, Lle0;->a(Lb6;)V

    .line 99
    return-void
.end method

.method public final G(Lle0;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lk70;->j:I

    .line 5
    if-ge v1, v2, :cond_2

    .line 7
    iget-object v2, p0, Lk70;->h:[Lle0;

    .line 9
    aget-object v2, v2, v1

    .line 11
    if-ne v2, p1, :cond_1

    .line 13
    :goto_1
    iget v2, p0, Lk70;->j:I

    .line 15
    add-int/lit8 v3, v2, -0x1

    .line 17
    if-ge v1, v3, :cond_0

    .line 19
    iget-object v2, p0, Lk70;->h:[Lle0;

    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 23
    aget-object v4, v2, v3

    .line 25
    aput-object v4, v2, v1

    .line 27
    move v1, v3

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 31
    iput v2, p0, Lk70;->j:I

    .line 33
    iput-boolean v0, p1, Lle0;->a:Z

    .line 35
    return-void

    .line 36
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-void
.end method

.method public b(Lle0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lk70;->k:Lk70$b;

    .line 3
    invoke-virtual {v0, p1}, Lk70$b;->b(Lle0;)V

    .line 6
    iget-object v0, p0, Lk70;->k:Lk70$b;

    .line 8
    invoke-virtual {v0}, Lk70$b;->e()V

    .line 11
    iget-object v0, p1, Lle0;->i:[F

    .line 13
    iget v1, p1, Lle0;->e:I

    .line 15
    const/high16 v2, 0x3f800000    # 1.0f

    .line 17
    aput v2, v0, v1

    .line 19
    invoke-virtual {p0, p1}, Lk70;->F(Lle0;)V

    .line 22
    return-void
.end method

.method public c(Lax;[Z)Lle0;
    .locals 4

    .line 1
    const/4 p1, -0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, -0x1

    .line 4
    :goto_0
    iget v2, p0, Lk70;->j:I

    .line 6
    if-ge v0, v2, :cond_3

    .line 8
    iget-object v2, p0, Lk70;->h:[Lle0;

    .line 10
    aget-object v2, v2, v0

    .line 12
    iget v3, v2, Lle0;->c:I

    .line 14
    aget-boolean v3, p2, v3

    .line 16
    if-eqz v3, :cond_0

    .line 18
    goto :goto_2

    .line 19
    :cond_0
    iget-object v3, p0, Lk70;->k:Lk70$b;

    .line 21
    invoke-virtual {v3, v2}, Lk70$b;->b(Lle0;)V

    .line 24
    if-ne v1, p1, :cond_1

    .line 26
    iget-object v2, p0, Lk70;->k:Lk70$b;

    .line 28
    invoke-virtual {v2}, Lk70$b;->c()Z

    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    iget-object v2, p0, Lk70;->k:Lk70$b;

    .line 37
    iget-object v3, p0, Lk70;->h:[Lle0;

    .line 39
    aget-object v3, v3, v1

    .line 41
    invoke-virtual {v2, v3}, Lk70$b;->d(Lle0;)Z

    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_2

    .line 47
    :goto_1
    move v1, v0

    .line 48
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-ne v1, p1, :cond_4

    .line 53
    const/4 p1, 0x0

    .line 54
    return-object p1

    .line 55
    :cond_4
    iget-object p1, p0, Lk70;->h:[Lle0;

    .line 57
    aget-object p1, p1, v1

    .line 59
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lk70;->j:I

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lb6;->b:F

    .line 7
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget v0, p0, Lk70;->j:I

    .line 3
    if-nez v0, :cond_0

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

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, ""

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, " goal -> ("

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lb6;->b:F

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ") : "

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    const/4 v1, 0x0

    .line 31
    :goto_0
    iget v2, p0, Lk70;->j:I

    .line 33
    if-ge v1, v2, :cond_0

    .line 35
    iget-object v2, p0, Lk70;->h:[Lle0;

    .line 37
    aget-object v2, v2, v1

    .line 39
    iget-object v3, p0, Lk70;->k:Lk70$b;

    .line 41
    invoke-virtual {v3, v2}, Lk70$b;->b(Lle0;)V

    .line 44
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v0, p0, Lk70;->k:Lk70$b;

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v0, " "

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    add-int/lit8 v1, v1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    return-object v0
.end method

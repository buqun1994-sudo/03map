.class public Lb6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lax$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb6$a;
    }
.end annotation


# instance fields
.field public a:Lle0;

.field public b:F

.field public c:Z

.field public d:Ljava/util/ArrayList;

.field public e:Lb6$a;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb6;->a:Lle0;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lb6;->b:F

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lb6;->c:Z

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb6;->d:Ljava/util/ArrayList;

    .line 6
    iput-boolean v0, p0, Lb6;->f:Z

    return-void
.end method

.method public constructor <init>(Lud;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lb6;->a:Lle0;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lb6;->b:F

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lb6;->c:Z

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lb6;->d:Ljava/util/ArrayList;

    .line 12
    iput-boolean v0, p0, Lb6;->f:Z

    .line 13
    new-instance v0, Lz5;

    invoke-direct {v0, p0, p1}, Lz5;-><init>(Lb6;Lud;)V

    iput-object v0, p0, Lb6;->e:Lb6$a;

    return-void
.end method


# virtual methods
.method public A(Lax;Lle0;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p2, Lle0;->g:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 8
    invoke-interface {v0, p2}, Lb6$a;->b(Lle0;)F

    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lb6;->b:F

    .line 14
    iget v2, p2, Lle0;->f:F

    .line 16
    mul-float v2, v2, v0

    .line 18
    add-float/2addr v1, v2

    .line 19
    iput v1, p0, Lb6;->b:F

    .line 21
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 23
    invoke-interface {v0, p2, p3}, Lb6$a;->e(Lle0;Z)F

    .line 26
    if-eqz p3, :cond_1

    .line 28
    invoke-virtual {p2, p0}, Lle0;->c(Lb6;)V

    .line 31
    :cond_1
    sget-boolean p2, Lax;->t:Z

    .line 33
    if-eqz p2, :cond_2

    .line 35
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 37
    invoke-interface {p2}, Lb6$a;->d()I

    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_2

    .line 43
    const/4 p2, 0x1

    .line 44
    iput-boolean p2, p0, Lb6;->f:Z

    .line 46
    iput-boolean p2, p1, Lax;->a:Z

    .line 48
    :cond_2
    return-void
.end method

.method public B(Lax;Lb6;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    invoke-interface {v0, p2, p3}, Lb6$a;->h(Lb6;Z)F

    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lb6;->b:F

    .line 9
    iget v2, p2, Lb6;->b:F

    .line 11
    mul-float v2, v2, v0

    .line 13
    add-float/2addr v1, v2

    .line 14
    iput v1, p0, Lb6;->b:F

    .line 16
    if-eqz p3, :cond_0

    .line 18
    iget-object p2, p2, Lb6;->a:Lle0;

    .line 20
    invoke-virtual {p2, p0}, Lle0;->c(Lb6;)V

    .line 23
    :cond_0
    sget-boolean p2, Lax;->t:Z

    .line 25
    if-eqz p2, :cond_1

    .line 27
    iget-object p2, p0, Lb6;->a:Lle0;

    .line 29
    if-eqz p2, :cond_1

    .line 31
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 33
    invoke-interface {p2}, Lb6$a;->d()I

    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_1

    .line 39
    const/4 p2, 0x1

    .line 40
    iput-boolean p2, p0, Lb6;->f:Z

    .line 42
    iput-boolean p2, p1, Lax;->a:Z

    .line 44
    :cond_1
    return-void
.end method

.method public C(Lax;Lle0;Z)V
    .locals 3

    .line 1
    iget-boolean v0, p2, Lle0;->n:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 8
    invoke-interface {v0, p2}, Lb6$a;->b(Lle0;)F

    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lb6;->b:F

    .line 14
    iget v2, p2, Lle0;->p:F

    .line 16
    mul-float v2, v2, v0

    .line 18
    add-float/2addr v1, v2

    .line 19
    iput v1, p0, Lb6;->b:F

    .line 21
    iget-object v1, p0, Lb6;->e:Lb6$a;

    .line 23
    invoke-interface {v1, p2, p3}, Lb6$a;->e(Lle0;Z)F

    .line 26
    if-eqz p3, :cond_1

    .line 28
    invoke-virtual {p2, p0}, Lle0;->c(Lb6;)V

    .line 31
    :cond_1
    iget-object v1, p0, Lb6;->e:Lb6$a;

    .line 33
    iget-object v2, p1, Lax;->n:Lud;

    .line 35
    iget-object v2, v2, Lud;->d:[Lle0;

    .line 37
    iget p2, p2, Lle0;->o:I

    .line 39
    aget-object p2, v2, p2

    .line 41
    invoke-interface {v1, p2, v0, p3}, Lb6$a;->g(Lle0;FZ)V

    .line 44
    sget-boolean p2, Lax;->t:Z

    .line 46
    if-eqz p2, :cond_2

    .line 48
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 50
    invoke-interface {p2}, Lb6$a;->d()I

    .line 53
    move-result p2

    .line 54
    if-nez p2, :cond_2

    .line 56
    const/4 p2, 0x1

    .line 57
    iput-boolean p2, p0, Lb6;->f:Z

    .line 59
    iput-boolean p2, p1, Lax;->a:Z

    .line 61
    :cond_2
    return-void
.end method

.method public D(Lax;)V
    .locals 8

    .line 1
    iget-object v0, p1, Lax;->g:[Lb6;

    .line 3
    array-length v0, v0

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    const/4 v2, 0x1

    .line 10
    if-nez v1, :cond_8

    .line 12
    iget-object v3, p0, Lb6;->e:Lb6$a;

    .line 14
    invoke-interface {v3}, Lb6$a;->d()I

    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x0

    .line 19
    :goto_1
    if-ge v4, v3, :cond_3

    .line 21
    iget-object v5, p0, Lb6;->e:Lb6$a;

    .line 23
    invoke-interface {v5, v4}, Lb6$a;->f(I)Lle0;

    .line 26
    move-result-object v5

    .line 27
    iget v6, v5, Lle0;->d:I

    .line 29
    const/4 v7, -0x1

    .line 30
    if-ne v6, v7, :cond_1

    .line 32
    iget-boolean v6, v5, Lle0;->g:Z

    .line 34
    if-nez v6, :cond_1

    .line 36
    iget-boolean v6, v5, Lle0;->n:Z

    .line 38
    if-eqz v6, :cond_2

    .line 40
    :cond_1
    iget-object v6, p0, Lb6;->d:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iget-object v3, p0, Lb6;->d:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 53
    move-result v3

    .line 54
    if-lez v3, :cond_7

    .line 56
    const/4 v4, 0x0

    .line 57
    :goto_2
    if-ge v4, v3, :cond_6

    .line 59
    iget-object v5, p0, Lb6;->d:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Lle0;

    .line 67
    iget-boolean v6, v5, Lle0;->g:Z

    .line 69
    if-eqz v6, :cond_4

    .line 71
    invoke-virtual {p0, p1, v5, v2}, Lb6;->A(Lax;Lle0;Z)V

    .line 74
    goto :goto_3

    .line 75
    :cond_4
    iget-boolean v6, v5, Lle0;->n:Z

    .line 77
    if-eqz v6, :cond_5

    .line 79
    invoke-virtual {p0, p1, v5, v2}, Lb6;->C(Lax;Lle0;Z)V

    .line 82
    goto :goto_3

    .line 83
    :cond_5
    iget-object v6, p1, Lax;->g:[Lb6;

    .line 85
    iget v5, v5, Lle0;->d:I

    .line 87
    aget-object v5, v6, v5

    .line 89
    invoke-virtual {p0, p1, v5, v2}, Lb6;->B(Lax;Lb6;Z)V

    .line 92
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    iget-object v2, p0, Lb6;->d:Ljava/util/ArrayList;

    .line 97
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 100
    goto :goto_0

    .line 101
    :cond_7
    const/4 v1, 0x1

    .line 102
    goto :goto_0

    .line 103
    :cond_8
    sget-boolean v0, Lax;->t:Z

    .line 105
    if-eqz v0, :cond_9

    .line 107
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 109
    if-eqz v0, :cond_9

    .line 111
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 113
    invoke-interface {v0}, Lb6$a;->d()I

    .line 116
    move-result v0

    .line 117
    if-nez v0, :cond_9

    .line 119
    iput-boolean v2, p0, Lb6;->f:Z

    .line 121
    iput-boolean v2, p1, Lax;->a:Z

    .line 123
    :cond_9
    return-void
.end method

.method public a(Lax$a;)V
    .locals 5

    .line 1
    instance-of v0, p1, Lb6;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    check-cast p1, Lb6;

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lb6;->a:Lle0;

    .line 10
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 12
    invoke-interface {v0}, Lb6$a;->clear()V

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    iget-object v1, p1, Lb6;->e:Lb6$a;

    .line 18
    invoke-interface {v1}, Lb6$a;->d()I

    .line 21
    move-result v1

    .line 22
    if-ge v0, v1, :cond_0

    .line 24
    iget-object v1, p1, Lb6;->e:Lb6$a;

    .line 26
    invoke-interface {v1, v0}, Lb6$a;->f(I)Lle0;

    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p1, Lb6;->e:Lb6$a;

    .line 32
    invoke-interface {v2, v0}, Lb6$a;->a(I)F

    .line 35
    move-result v2

    .line 36
    iget-object v3, p0, Lb6;->e:Lb6$a;

    .line 38
    const/4 v4, 0x1

    .line 39
    invoke-interface {v3, v1, v2, v4}, Lb6$a;->g(Lle0;FZ)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public b(Lle0;)V
    .locals 3

    .line 1
    iget v0, p1, Lle0;->e:I

    .line 3
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x2

    .line 10
    if-ne v0, v1, :cond_1

    .line 12
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_2

    .line 18
    const v2, 0x49742400    # 1000000.0f

    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_3

    .line 25
    const v2, 0x4e6e6b28    # 1.0E9f

    .line 28
    goto :goto_0

    .line 29
    :cond_3
    const/4 v1, 0x5

    .line 30
    if-ne v0, v1, :cond_4

    .line 32
    const v2, 0x5368d4a5    # 1.0E12f

    .line 35
    :cond_4
    :goto_0
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 37
    invoke-interface {v0, p1, v2}, Lb6$a;->j(Lle0;F)V

    .line 40
    return-void
.end method

.method public c(Lax;[Z)Lle0;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p2, p1}, Lb6;->w([ZLle0;)Lle0;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    invoke-interface {v0}, Lb6$a;->clear()V

    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lb6;->a:Lle0;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lb6;->b:F

    .line 12
    return-void
.end method

.method public d(Lax;I)Lb6;
    .locals 3

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    const-string v1, "ep"

    .line 5
    invoke-virtual {p1, p2, v1}, Lax;->o(ILjava/lang/String;)Lle0;

    .line 8
    move-result-object v1

    .line 9
    const/high16 v2, 0x3f800000    # 1.0f

    .line 11
    invoke-interface {v0, v1, v2}, Lb6$a;->j(Lle0;F)V

    .line 14
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 16
    const-string v1, "em"

    .line 18
    invoke-virtual {p1, p2, v1}, Lax;->o(ILjava/lang/String;)Lle0;

    .line 21
    move-result-object p1

    .line 22
    const/high16 p2, -0x40800000    # -1.0f

    .line 24
    invoke-interface {v0, p1, p2}, Lb6$a;->j(Lle0;F)V

    .line 27
    return-object p0
.end method

.method public e(Lle0;I)Lb6;
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    int-to-float p2, p2

    .line 4
    invoke-interface {v0, p1, p2}, Lb6$a;->j(Lle0;F)V

    .line 7
    return-object p0
.end method

.method public f(Lax;)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lb6;->g(Lax;)Lle0;

    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lb6;->x(Lle0;)V

    .line 13
    const/4 p1, 0x0

    .line 14
    :goto_0
    iget-object v1, p0, Lb6;->e:Lb6$a;

    .line 16
    invoke-interface {v1}, Lb6$a;->d()I

    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_1

    .line 22
    iput-boolean v0, p0, Lb6;->f:Z

    .line 24
    :cond_1
    return p1
.end method

.method public g(Lax;)Lle0;
    .locals 14

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    invoke-interface {v0}, Lb6$a;->d()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    move-object v3, v1

    .line 11
    const/4 v4, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x0

    .line 15
    const/4 v8, 0x0

    .line 16
    :goto_0
    if-ge v4, v0, :cond_6

    .line 18
    iget-object v9, p0, Lb6;->e:Lb6$a;

    .line 20
    invoke-interface {v9, v4}, Lb6$a;->a(I)F

    .line 23
    move-result v9

    .line 24
    iget-object v10, p0, Lb6;->e:Lb6$a;

    .line 26
    invoke-interface {v10, v4}, Lb6$a;->f(I)Lle0;

    .line 29
    move-result-object v10

    .line 30
    iget-object v11, v10, Lle0;->j:Lle0$a;

    .line 32
    sget-object v12, Lle0$a;->a:Lle0$a;

    .line 34
    const/4 v13, 0x1

    .line 35
    if-ne v11, v12, :cond_2

    .line 37
    if-nez v1, :cond_0

    .line 39
    invoke-virtual {p0, v10, p1}, Lb6;->u(Lle0;Lax;)Z

    .line 42
    move-result v1

    .line 43
    :goto_1
    move v5, v1

    .line 44
    move v7, v9

    .line 45
    move-object v1, v10

    .line 46
    goto :goto_3

    .line 47
    :cond_0
    cmpl-float v11, v7, v9

    .line 49
    if-lez v11, :cond_1

    .line 51
    invoke-virtual {p0, v10, p1}, Lb6;->u(Lle0;Lax;)Z

    .line 54
    move-result v1

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    if-nez v5, :cond_5

    .line 58
    invoke-virtual {p0, v10, p1}, Lb6;->u(Lle0;Lax;)Z

    .line 61
    move-result v11

    .line 62
    if-eqz v11, :cond_5

    .line 64
    move v7, v9

    .line 65
    move-object v1, v10

    .line 66
    const/4 v5, 0x1

    .line 67
    goto :goto_3

    .line 68
    :cond_2
    if-nez v1, :cond_5

    .line 70
    cmpg-float v11, v9, v2

    .line 72
    if-gez v11, :cond_5

    .line 74
    if-nez v3, :cond_3

    .line 76
    invoke-virtual {p0, v10, p1}, Lb6;->u(Lle0;Lax;)Z

    .line 79
    move-result v3

    .line 80
    :goto_2
    move v6, v3

    .line 81
    move v8, v9

    .line 82
    move-object v3, v10

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    cmpl-float v11, v8, v9

    .line 86
    if-lez v11, :cond_4

    .line 88
    invoke-virtual {p0, v10, p1}, Lb6;->u(Lle0;Lax;)Z

    .line 91
    move-result v3

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    if-nez v6, :cond_5

    .line 95
    invoke-virtual {p0, v10, p1}, Lb6;->u(Lle0;Lax;)Z

    .line 98
    move-result v11

    .line 99
    if-eqz v11, :cond_5

    .line 101
    move v8, v9

    .line 102
    move-object v3, v10

    .line 103
    const/4 v6, 0x1

    .line 104
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    .line 106
    goto :goto_0

    .line 107
    :cond_6
    if-eqz v1, :cond_7

    .line 109
    return-object v1

    .line 110
    :cond_7
    return-object v3
.end method

.method public getKey()Lle0;
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 3
    return-object v0
.end method

.method public h(Lle0;Lle0;IFLle0;Lle0;I)Lb6;
    .locals 5

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    if-ne p2, p5, :cond_0

    .line 5
    iget-object p3, p0, Lb6;->e:Lb6$a;

    .line 7
    invoke-interface {p3, p1, v0}, Lb6$a;->j(Lle0;F)V

    .line 10
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 12
    invoke-interface {p1, p6, v0}, Lb6$a;->j(Lle0;F)V

    .line 15
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 17
    const/high16 p3, -0x40000000    # -2.0f

    .line 19
    invoke-interface {p1, p2, p3}, Lb6$a;->j(Lle0;F)V

    .line 22
    return-object p0

    .line 23
    :cond_0
    const/high16 v1, 0x3f000000    # 0.5f

    .line 25
    const/high16 v2, -0x40800000    # -1.0f

    .line 27
    cmpl-float v1, p4, v1

    .line 29
    if-nez v1, :cond_2

    .line 31
    iget-object p4, p0, Lb6;->e:Lb6$a;

    .line 33
    invoke-interface {p4, p1, v0}, Lb6$a;->j(Lle0;F)V

    .line 36
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 38
    invoke-interface {p1, p2, v2}, Lb6$a;->j(Lle0;F)V

    .line 41
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 43
    invoke-interface {p1, p5, v2}, Lb6$a;->j(Lle0;F)V

    .line 46
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 48
    invoke-interface {p1, p6, v0}, Lb6$a;->j(Lle0;F)V

    .line 51
    if-gtz p3, :cond_1

    .line 53
    if-lez p7, :cond_6

    .line 55
    :cond_1
    neg-int p1, p3

    .line 56
    add-int/2addr p1, p7

    .line 57
    int-to-float p1, p1

    .line 58
    iput p1, p0, Lb6;->b:F

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    const/4 v1, 0x0

    .line 62
    cmpg-float v1, p4, v1

    .line 64
    if-gtz v1, :cond_3

    .line 66
    iget-object p4, p0, Lb6;->e:Lb6$a;

    .line 68
    invoke-interface {p4, p1, v2}, Lb6$a;->j(Lle0;F)V

    .line 71
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 73
    invoke-interface {p1, p2, v0}, Lb6$a;->j(Lle0;F)V

    .line 76
    int-to-float p1, p3

    .line 77
    iput p1, p0, Lb6;->b:F

    .line 79
    goto :goto_0

    .line 80
    :cond_3
    cmpl-float v1, p4, v0

    .line 82
    if-ltz v1, :cond_4

    .line 84
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 86
    invoke-interface {p1, p6, v2}, Lb6$a;->j(Lle0;F)V

    .line 89
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 91
    invoke-interface {p1, p5, v0}, Lb6$a;->j(Lle0;F)V

    .line 94
    neg-int p1, p7

    .line 95
    int-to-float p1, p1

    .line 96
    iput p1, p0, Lb6;->b:F

    .line 98
    goto :goto_0

    .line 99
    :cond_4
    iget-object v1, p0, Lb6;->e:Lb6$a;

    .line 101
    sub-float v3, v0, p4

    .line 103
    mul-float v4, v3, v0

    .line 105
    invoke-interface {v1, p1, v4}, Lb6$a;->j(Lle0;F)V

    .line 108
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 110
    mul-float v1, v3, v2

    .line 112
    invoke-interface {p1, p2, v1}, Lb6$a;->j(Lle0;F)V

    .line 115
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 117
    mul-float v2, v2, p4

    .line 119
    invoke-interface {p1, p5, v2}, Lb6$a;->j(Lle0;F)V

    .line 122
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 124
    mul-float v0, v0, p4

    .line 126
    invoke-interface {p1, p6, v0}, Lb6$a;->j(Lle0;F)V

    .line 129
    if-gtz p3, :cond_5

    .line 131
    if-lez p7, :cond_6

    .line 133
    :cond_5
    neg-int p1, p3

    .line 134
    int-to-float p1, p1

    .line 135
    mul-float p1, p1, v3

    .line 137
    int-to-float p2, p7

    .line 138
    mul-float p2, p2, p4

    .line 140
    add-float/2addr p1, p2

    .line 141
    iput p1, p0, Lb6;->b:F

    .line 143
    :cond_6
    :goto_0
    return-object p0
.end method

.method public i(Lle0;I)Lb6;
    .locals 0

    .line 1
    iput-object p1, p0, Lb6;->a:Lle0;

    .line 3
    int-to-float p2, p2

    .line 4
    iput p2, p1, Lle0;->f:F

    .line 6
    iput p2, p0, Lb6;->b:F

    .line 8
    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lb6;->f:Z

    .line 11
    return-object p0
.end method

.method public isEmpty()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lb6;->b:F

    .line 7
    const/4 v1, 0x0

    .line 8
    cmpl-float v0, v0, v1

    .line 10
    if-nez v0, :cond_0

    .line 12
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 14
    invoke-interface {v0}, Lb6$a;->d()I

    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method

.method public j(Lle0;Lle0;F)Lb6;
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    invoke-interface {v0, p1, v1}, Lb6$a;->j(Lle0;F)V

    .line 8
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 10
    invoke-interface {p1, p2, p3}, Lb6$a;->j(Lle0;F)V

    .line 13
    return-object p0
.end method

.method public k(Lle0;Lle0;Lle0;Lle0;F)Lb6;
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    invoke-interface {v0, p1, v1}, Lb6$a;->j(Lle0;F)V

    .line 8
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-interface {p1, p2, v0}, Lb6$a;->j(Lle0;F)V

    .line 15
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 17
    invoke-interface {p1, p3, p5}, Lb6$a;->j(Lle0;F)V

    .line 20
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 22
    neg-float p2, p5

    .line 23
    invoke-interface {p1, p4, p2}, Lb6$a;->j(Lle0;F)V

    .line 26
    return-object p0
.end method

.method public l(FFFLle0;Lle0;Lle0;Lle0;)Lb6;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb6;->b:F

    .line 4
    const/high16 v1, -0x40800000    # -1.0f

    .line 6
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    cmpl-float v3, p2, v0

    .line 10
    if-eqz v3, :cond_3

    .line 12
    cmpl-float v3, p1, p3

    .line 14
    if-nez v3, :cond_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    cmpl-float v3, p1, v0

    .line 19
    if-nez v3, :cond_1

    .line 21
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 23
    invoke-interface {p1, p4, v2}, Lb6$a;->j(Lle0;F)V

    .line 26
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 28
    invoke-interface {p1, p5, v1}, Lb6$a;->j(Lle0;F)V

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    cmpl-float v0, p3, v0

    .line 34
    if-nez v0, :cond_2

    .line 36
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 38
    invoke-interface {p1, p6, v2}, Lb6$a;->j(Lle0;F)V

    .line 41
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 43
    invoke-interface {p1, p7, v1}, Lb6$a;->j(Lle0;F)V

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    div-float/2addr p1, p2

    .line 48
    div-float/2addr p3, p2

    .line 49
    div-float/2addr p1, p3

    .line 50
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 52
    invoke-interface {p2, p4, v2}, Lb6$a;->j(Lle0;F)V

    .line 55
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 57
    invoke-interface {p2, p5, v1}, Lb6$a;->j(Lle0;F)V

    .line 60
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 62
    invoke-interface {p2, p7, p1}, Lb6$a;->j(Lle0;F)V

    .line 65
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 67
    neg-float p1, p1

    .line 68
    invoke-interface {p2, p6, p1}, Lb6$a;->j(Lle0;F)V

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    :goto_0
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 74
    invoke-interface {p1, p4, v2}, Lb6$a;->j(Lle0;F)V

    .line 77
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 79
    invoke-interface {p1, p5, v1}, Lb6$a;->j(Lle0;F)V

    .line 82
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 84
    invoke-interface {p1, p7, v2}, Lb6$a;->j(Lle0;F)V

    .line 87
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 89
    invoke-interface {p1, p6, v1}, Lb6$a;->j(Lle0;F)V

    .line 92
    :goto_1
    return-object p0
.end method

.method public m(Lle0;I)Lb6;
    .locals 1

    .line 1
    if-gez p2, :cond_0

    .line 3
    mul-int/lit8 p2, p2, -0x1

    .line 5
    int-to-float p2, p2

    .line 6
    iput p2, p0, Lb6;->b:F

    .line 8
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    invoke-interface {p2, p1, v0}, Lb6$a;->j(Lle0;F)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    int-to-float p2, p2

    .line 17
    iput p2, p0, Lb6;->b:F

    .line 19
    iget-object p2, p0, Lb6;->e:Lb6$a;

    .line 21
    const/high16 v0, -0x40800000    # -1.0f

    .line 23
    invoke-interface {p2, p1, v0}, Lb6$a;->j(Lle0;F)V

    .line 26
    :goto_0
    return-object p0
.end method

.method public n(Lle0;Lle0;I)Lb6;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_1

    .line 4
    if-gez p3, :cond_0

    .line 6
    mul-int/lit8 p3, p3, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p3, p3

    .line 10
    iput p3, p0, Lb6;->b:F

    .line 12
    :cond_1
    const/high16 p3, -0x40800000    # -1.0f

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 20
    invoke-interface {v0, p1, p3}, Lb6$a;->j(Lle0;F)V

    .line 23
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 25
    invoke-interface {p1, p2, v1}, Lb6$a;->j(Lle0;F)V

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 31
    invoke-interface {v0, p1, v1}, Lb6$a;->j(Lle0;F)V

    .line 34
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 36
    invoke-interface {p1, p2, p3}, Lb6$a;->j(Lle0;F)V

    .line 39
    :goto_0
    return-object p0
.end method

.method public o(Lle0;Lle0;Lle0;I)Lb6;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 4
    if-gez p4, :cond_0

    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lb6;->b:F

    .line 12
    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 20
    invoke-interface {v0, p1, p4}, Lb6$a;->j(Lle0;F)V

    .line 23
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 25
    invoke-interface {p1, p2, v1}, Lb6$a;->j(Lle0;F)V

    .line 28
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 30
    invoke-interface {p1, p3, v1}, Lb6$a;->j(Lle0;F)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 36
    invoke-interface {v0, p1, v1}, Lb6$a;->j(Lle0;F)V

    .line 39
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 41
    invoke-interface {p1, p2, p4}, Lb6$a;->j(Lle0;F)V

    .line 44
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 46
    invoke-interface {p1, p3, p4}, Lb6$a;->j(Lle0;F)V

    .line 49
    :goto_0
    return-object p0
.end method

.method public p(Lle0;Lle0;Lle0;I)Lb6;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p4, :cond_1

    .line 4
    if-gez p4, :cond_0

    .line 6
    mul-int/lit8 p4, p4, -0x1

    .line 8
    const/4 v0, 0x1

    .line 9
    :cond_0
    int-to-float p4, p4

    .line 10
    iput p4, p0, Lb6;->b:F

    .line 12
    :cond_1
    const/high16 p4, -0x40800000    # -1.0f

    .line 14
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    if-nez v0, :cond_2

    .line 18
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 20
    invoke-interface {v0, p1, p4}, Lb6$a;->j(Lle0;F)V

    .line 23
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 25
    invoke-interface {p1, p2, v1}, Lb6$a;->j(Lle0;F)V

    .line 28
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 30
    invoke-interface {p1, p3, p4}, Lb6$a;->j(Lle0;F)V

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 36
    invoke-interface {v0, p1, v1}, Lb6$a;->j(Lle0;F)V

    .line 39
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 41
    invoke-interface {p1, p2, p4}, Lb6$a;->j(Lle0;F)V

    .line 44
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 46
    invoke-interface {p1, p3, v1}, Lb6$a;->j(Lle0;F)V

    .line 49
    :goto_0
    return-object p0
.end method

.method public q(Lle0;Lle0;Lle0;Lle0;F)Lb6;
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    const/high16 v1, 0x3f000000    # 0.5f

    .line 5
    invoke-interface {v0, p3, v1}, Lb6$a;->j(Lle0;F)V

    .line 8
    iget-object p3, p0, Lb6;->e:Lb6$a;

    .line 10
    invoke-interface {p3, p4, v1}, Lb6$a;->j(Lle0;F)V

    .line 13
    iget-object p3, p0, Lb6;->e:Lb6$a;

    .line 15
    const/high16 p4, -0x41000000    # -0.5f

    .line 17
    invoke-interface {p3, p1, p4}, Lb6$a;->j(Lle0;F)V

    .line 20
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 22
    invoke-interface {p1, p2, p4}, Lb6$a;->j(Lle0;F)V

    .line 25
    neg-float p1, p5

    .line 26
    iput p1, p0, Lb6;->b:F

    .line 28
    return-object p0
.end method

.method public r()V
    .locals 2

    .line 1
    iget v0, p0, Lb6;->b:F

    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v1, v0, v1

    .line 6
    if-gez v1, :cond_0

    .line 8
    const/high16 v1, -0x40800000    # -1.0f

    .line 10
    mul-float v0, v0, v1

    .line 12
    iput v0, p0, Lb6;->b:F

    .line 14
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 16
    invoke-interface {v0}, Lb6$a;->k()V

    .line 19
    :cond_0
    return-void
.end method

.method public s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget-object v0, v0, Lle0;->j:Lle0$a;

    .line 7
    sget-object v1, Lle0$a;->a:Lle0$a;

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    iget v0, p0, Lb6;->b:F

    .line 13
    const/4 v1, 0x0

    .line 14
    cmpg-float v0, v0, v1

    .line 16
    if-ltz v0, :cond_1

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 v0, 0x0

    .line 21
    :goto_0
    return v0
.end method

.method public t(Lle0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    invoke-interface {v0, p1}, Lb6$a;->c(Lle0;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb6;->z()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final u(Lle0;Lax;)Z
    .locals 0

    .line 1
    iget p1, p1, Lle0;->m:I

    .line 3
    const/4 p2, 0x1

    .line 4
    if-gt p1, p2, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p2, 0x0

    .line 8
    :goto_0
    return p2
.end method

.method public v(Lle0;)Lle0;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lb6;->w([ZLle0;)Lle0;

    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public final w([ZLle0;)Lle0;
    .locals 9

    .line 1
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 3
    invoke-interface {v0}, Lb6$a;->d()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x0

    .line 11
    :goto_0
    if-ge v3, v0, :cond_3

    .line 13
    iget-object v5, p0, Lb6;->e:Lb6$a;

    .line 15
    invoke-interface {v5, v3}, Lb6$a;->a(I)F

    .line 18
    move-result v5

    .line 19
    cmpg-float v6, v5, v1

    .line 21
    if-gez v6, :cond_2

    .line 23
    iget-object v6, p0, Lb6;->e:Lb6$a;

    .line 25
    invoke-interface {v6, v3}, Lb6$a;->f(I)Lle0;

    .line 28
    move-result-object v6

    .line 29
    if-eqz p1, :cond_0

    .line 31
    iget v7, v6, Lle0;->c:I

    .line 33
    aget-boolean v7, p1, v7

    .line 35
    if-nez v7, :cond_2

    .line 37
    :cond_0
    if-eq v6, p2, :cond_2

    .line 39
    iget-object v7, v6, Lle0;->j:Lle0$a;

    .line 41
    sget-object v8, Lle0$a;->c:Lle0$a;

    .line 43
    if-eq v7, v8, :cond_1

    .line 45
    sget-object v8, Lle0$a;->d:Lle0$a;

    .line 47
    if-ne v7, v8, :cond_2

    .line 49
    :cond_1
    cmpg-float v7, v5, v4

    .line 51
    if-gez v7, :cond_2

    .line 53
    move v4, v5

    .line 54
    move-object v2, v6

    .line 55
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    return-object v2
.end method

.method public x(Lle0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v2, p0, Lb6;->e:Lb6$a;

    .line 9
    invoke-interface {v2, v0, v1}, Lb6$a;->j(Lle0;F)V

    .line 12
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 14
    const/4 v2, -0x1

    .line 15
    iput v2, v0, Lle0;->d:I

    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lb6;->a:Lle0;

    .line 20
    :cond_0
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 22
    const/4 v2, 0x1

    .line 23
    invoke-interface {v0, p1, v2}, Lb6$a;->e(Lle0;Z)F

    .line 26
    move-result v0

    .line 27
    mul-float v0, v0, v1

    .line 29
    iput-object p1, p0, Lb6;->a:Lle0;

    .line 31
    const/high16 p1, 0x3f800000    # 1.0f

    .line 33
    cmpl-float p1, v0, p1

    .line 35
    if-nez p1, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    iget p1, p0, Lb6;->b:F

    .line 40
    div-float/2addr p1, v0

    .line 41
    iput p1, p0, Lb6;->b:F

    .line 43
    iget-object p1, p0, Lb6;->e:Lb6$a;

    .line 45
    invoke-interface {p1, v0}, Lb6$a;->i(F)V

    .line 48
    return-void
.end method

.method public y()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb6;->a:Lle0;

    .line 4
    iget-object v0, p0, Lb6;->e:Lb6$a;

    .line 6
    invoke-interface {v0}, Lb6$a;->clear()V

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lb6;->b:F

    .line 12
    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lb6;->f:Z

    .line 15
    return-void
.end method

.method public z()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lb6;->a:Lle0;

    .line 3
    const-string v1, ""

    .line 5
    if-nez v0, :cond_0

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "0"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lb6;->a:Lle0;

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v0, " = "

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 59
    iget v1, p0, Lb6;->b:F

    .line 61
    const/4 v2, 0x0

    .line 62
    const/4 v3, 0x1

    .line 63
    const/4 v4, 0x0

    .line 64
    cmpl-float v1, v1, v4

    .line 66
    if-eqz v1, :cond_1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v0, p0, Lb6;->b:F

    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x1

    .line 86
    goto :goto_1

    .line 87
    :cond_1
    const/4 v1, 0x0

    .line 88
    :goto_1
    iget-object v5, p0, Lb6;->e:Lb6$a;

    .line 90
    invoke-interface {v5}, Lb6$a;->d()I

    .line 93
    move-result v5

    .line 94
    :goto_2
    if-ge v2, v5, :cond_8

    .line 96
    iget-object v6, p0, Lb6;->e:Lb6$a;

    .line 98
    invoke-interface {v6, v2}, Lb6$a;->f(I)Lle0;

    .line 101
    move-result-object v6

    .line 102
    if-nez v6, :cond_2

    .line 104
    goto/16 :goto_6

    .line 106
    :cond_2
    iget-object v7, p0, Lb6;->e:Lb6$a;

    .line 108
    invoke-interface {v7, v2}, Lb6$a;->a(I)F

    .line 111
    move-result v7

    .line 112
    cmpl-float v8, v7, v4

    .line 114
    if-nez v8, :cond_3

    .line 116
    goto/16 :goto_6

    .line 118
    :cond_3
    invoke-virtual {v6}, Lle0;->toString()Ljava/lang/String;

    .line 121
    move-result-object v6

    .line 122
    const/high16 v9, -0x40800000    # -1.0f

    .line 124
    if-nez v1, :cond_4

    .line 126
    cmpg-float v1, v7, v4

    .line 128
    if-gez v1, :cond_6

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    .line 132
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v0, "- "

    .line 140
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object v0

    .line 147
    goto :goto_3

    .line 148
    :cond_4
    if-lez v8, :cond_5

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    .line 152
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v0, " + "

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 167
    goto :goto_4

    .line 168
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    const-string v0, " - "

    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v0

    .line 185
    :goto_3
    mul-float v7, v7, v9

    .line 187
    :cond_6
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 189
    cmpl-float v1, v7, v1

    .line 191
    if-nez v1, :cond_7

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    .line 195
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 208
    goto :goto_5

    .line 209
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 220
    const-string v0, " "

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    move-result-object v0

    .line 232
    :goto_5
    const/4 v1, 0x1

    .line 233
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 235
    goto/16 :goto_2

    .line 237
    :cond_8
    if-nez v1, :cond_9

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    .line 241
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v0, "0.0"

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    move-result-object v0

    .line 256
    :cond_9
    return-object v0
.end method

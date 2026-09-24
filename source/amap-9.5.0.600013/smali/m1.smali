.class public Lm1;
.super Ldc;
.source "SourceFile"


# instance fields
.field public f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    const-string v0, "AdapterConfigGroup"

    .line 3
    invoke-direct {p0, v0}, Ldc;-><init>(Ljava/lang/String;)V

    .line 6
    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lm1;->f:I

    .line 9
    invoke-virtual {p0, p1, p2}, Ldc;->g(Ljava/lang/String;Z)Z

    .line 12
    return-void
.end method


# virtual methods
.method public f()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ldc;->c()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_7

    .line 11
    iget-object v0, p0, Ldc;->c:Ljava/lang/String;

    .line 13
    const-string v1, "\\|"

    .line 15
    const/4 v2, -0x1

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    array-length v4, v0

    .line 23
    if-ge v3, v4, :cond_7

    .line 25
    aget-object v4, v0, v3

    .line 27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 30
    move-result v4

    .line 31
    if-lez v4, :cond_6

    .line 33
    iget v4, p0, Lm1;->f:I

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    if-ne v4, v2, :cond_2

    .line 39
    aget-object v4, v0, v3

    .line 41
    const-string v7, "^"

    .line 43
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_0

    .line 49
    iput v6, p0, Lm1;->f:I

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    aget-object v4, v0, v3

    .line 54
    const-string v7, "="

    .line 56
    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_1

    .line 62
    iput v5, p0, Lm1;->f:I

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    iput v1, p0, Lm1;->f:I

    .line 67
    :cond_2
    :goto_1
    iget v4, p0, Lm1;->f:I

    .line 69
    if-ne v4, v6, :cond_5

    .line 71
    aget-object v4, v0, v3

    .line 73
    const-string v7, "\\^"

    .line 75
    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 78
    move-result-object v4

    .line 79
    array-length v7, v4

    .line 80
    const-string v8, "AdapterConfigGroup"

    .line 82
    if-eq v7, v5, :cond_3

    .line 84
    new-array v4, v5, [Ljava/lang/Object;

    .line 86
    aget-object v5, v0, v3

    .line 88
    aput-object v5, v4, v1

    .line 90
    iget-object v5, p0, Ldc;->c:Ljava/lang/String;

    .line 92
    aput-object v5, v4, v6

    .line 94
    const-string v5, "error key-value form:{?}, raw:{?}"

    .line 96
    invoke-static {v8, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    goto :goto_2

    .line 100
    :cond_3
    aget-object v7, v4, v1

    .line 102
    invoke-static {v7, v2}, Lu1;->h(Ljava/lang/String;I)I

    .line 105
    move-result v7

    .line 106
    if-gez v7, :cond_4

    .line 108
    new-array v4, v5, [Ljava/lang/Object;

    .line 110
    aget-object v5, v0, v3

    .line 112
    aput-object v5, v4, v1

    .line 114
    iget-object v5, p0, Ldc;->c:Ljava/lang/String;

    .line 116
    aput-object v5, v4, v6

    .line 118
    const-string v5, "key is not the integer:{?}, raw:{?}"

    .line 120
    invoke-static {v8, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    iget-object v5, p0, Ldc;->b:Landroid/util/SparseArray;

    .line 126
    aget-object v4, v4, v6

    .line 128
    invoke-static {v4}, Ldc;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    move-result-object v4

    .line 132
    invoke-virtual {v5, v7, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 135
    goto :goto_2

    .line 136
    :cond_5
    iget-object v4, p0, Ldc;->b:Landroid/util/SparseArray;

    .line 138
    aget-object v5, v0, v3

    .line 140
    invoke-static {v5}, Ldc;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    move-result-object v5

    .line 144
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 149
    goto :goto_0

    .line 150
    :cond_7
    return-void
.end method

.method public j(Ldc;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ldc;->a()Landroid/util/SparseArray;

    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 9
    move-result v1

    .line 10
    if-ge v0, v1, :cond_0

    .line 12
    invoke-virtual {p1}, Ldc;->a()Landroid/util/SparseArray;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Ldc;->a()Landroid/util/SparseArray;

    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 30
    invoke-virtual {p0, v1, v2}, Ldc;->i(ILjava/lang/String;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Ldc;->b:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 18
    move-result v2

    .line 19
    if-lez v2, :cond_0

    .line 21
    const-string v2, "|"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    iget-object v2, p0, Ldc;->b:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Ldc;->b:Landroid/util/SparseArray;

    .line 34
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "^"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

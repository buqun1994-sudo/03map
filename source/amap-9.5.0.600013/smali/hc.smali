.class public abstract Lhc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/util/SparseArray;

.field public c:Landroid/util/SparseIntArray;

.field public d:I

.field public e:Z

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p0}, Lhc;->g()Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lhc;->a:Ljava/lang/String;

    .line 10
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 15
    iput-object v0, p0, Lhc;->b:Landroid/util/SparseArray;

    .line 17
    new-instance v0, Landroid/util/SparseIntArray;

    .line 19
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 22
    iput-object v0, p0, Lhc;->c:Landroid/util/SparseIntArray;

    .line 24
    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lhc;->d:I

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lhc;->e:Z

    .line 30
    const-string v0, ""

    .line 32
    iput-object v0, p0, Lhc;->f:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method public a(I)Lfq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhc;->h()Z

    .line 4
    iget-object v0, p0, Lhc;->b:Landroid/util/SparseArray;

    .line 6
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lfq;

    .line 12
    return-object p1
.end method

.method public b()Landroid/util/SparseIntArray;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhc;->h()Z

    .line 4
    iget-object v0, p0, Lhc;->c:Landroid/util/SparseIntArray;

    .line 6
    return-object v0
.end method

.method public c()Landroid/util/SparseArray;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lhc;->h()Z

    .line 4
    iget-object v0, p0, Lhc;->b:Landroid/util/SparseArray;

    .line 6
    return-object v0
.end method

.method public abstract d()[[Lfq;
.end method

.method public abstract e()I
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhc;->f:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method public h()Z
    .locals 9

    .line 1
    iget-boolean v0, p0, Lhc;->e:Z

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 7
    :cond_0
    iput-boolean v1, p0, Lhc;->e:Z

    .line 9
    iget-object v0, p0, Lhc;->f:Ljava/lang/String;

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_8

    .line 17
    iget-object v0, p0, Lhc;->a:Ljava/lang/String;

    .line 19
    new-array v2, v1, [Ljava/lang/Object;

    .line 21
    iget-object v3, p0, Lhc;->f:Ljava/lang/String;

    .line 23
    const/4 v4, 0x0

    .line 24
    aput-object v3, v2, v4

    .line 26
    const-string v3, "inflate start, config={?}"

    .line 28
    invoke-static {v0, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object v0, p0, Lhc;->f:Ljava/lang/String;

    .line 33
    const-string v2, "\\|"

    .line 35
    const/4 v3, -0x1

    .line 36
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0}, Lhc;->d()[[Lfq;

    .line 43
    move-result-object v2

    .line 44
    array-length v5, v0

    .line 45
    array-length v6, v2

    .line 46
    const/4 v7, 0x2

    .line 47
    if-le v5, v6, :cond_1

    .line 49
    iget-object v3, p0, Lhc;->a:Ljava/lang/String;

    .line 51
    new-array v5, v7, [Ljava/lang/Object;

    .line 53
    array-length v0, v0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v0

    .line 58
    aput-object v0, v5, v4

    .line 60
    array-length v0, v2

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    move-result-object v0

    .line 65
    aput-object v0, v5, v1

    .line 67
    const-string v0, "inflate fail, splitFuncs.length:{?},  func.length={?}"

    .line 69
    invoke-static {v3, v0, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return v4

    .line 73
    :cond_1
    const/4 v2, 0x0

    .line 74
    :goto_0
    array-length v5, v0

    .line 75
    if-ge v2, v5, :cond_7

    .line 77
    aget-object v5, v0, v2

    .line 79
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 82
    move-result v5

    .line 83
    if-nez v5, :cond_6

    .line 85
    iget v5, p0, Lhc;->d:I

    .line 87
    if-ne v5, v3, :cond_2

    .line 89
    aget-object v5, v0, v2

    .line 91
    const-string v6, "^"

    .line 93
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 96
    move-result v5

    .line 97
    iput v5, p0, Lhc;->d:I

    .line 99
    :cond_2
    iget v5, p0, Lhc;->d:I

    .line 101
    if-nez v5, :cond_3

    .line 103
    aget-object v5, v0, v2

    .line 105
    invoke-static {v5, v3}, Lu1;->h(Ljava/lang/String;I)I

    .line 108
    move-result v5

    .line 109
    invoke-virtual {p0, v2, v5}, Lhc;->k(II)Z

    .line 112
    goto :goto_1

    .line 113
    :cond_3
    aget-object v5, v0, v2

    .line 115
    const-string v6, "\\^"

    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 120
    move-result-object v5

    .line 121
    array-length v6, v5

    .line 122
    if-eq v6, v7, :cond_4

    .line 124
    iget-object v5, p0, Lhc;->a:Ljava/lang/String;

    .line 126
    new-array v6, v7, [Ljava/lang/Object;

    .line 128
    aget-object v8, v0, v2

    .line 130
    aput-object v8, v6, v4

    .line 132
    iget-object v8, p0, Lhc;->f:Ljava/lang/String;

    .line 134
    aput-object v8, v6, v1

    .line 136
    const-string v8, "error key-value form:{?}, raw:{?}"

    .line 138
    invoke-static {v5, v8, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    aget-object v6, v5, v4

    .line 144
    invoke-static {v6, v3}, Lu1;->h(Ljava/lang/String;I)I

    .line 147
    move-result v6

    .line 148
    if-gez v6, :cond_5

    .line 150
    iget-object v5, p0, Lhc;->a:Ljava/lang/String;

    .line 152
    new-array v6, v7, [Ljava/lang/Object;

    .line 154
    aget-object v8, v0, v2

    .line 156
    aput-object v8, v6, v4

    .line 158
    iget-object v8, p0, Lhc;->f:Ljava/lang/String;

    .line 160
    aput-object v8, v6, v1

    .line 162
    const-string v8, "key is not the integer:{?}, raw:{?}"

    .line 164
    invoke-static {v5, v8, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    goto :goto_1

    .line 168
    :cond_5
    aget-object v5, v5, v1

    .line 170
    invoke-static {v5, v3}, Lu1;->h(Ljava/lang/String;I)I

    .line 173
    move-result v5

    .line 174
    invoke-virtual {p0, v6, v5}, Lhc;->k(II)Z

    .line 177
    :cond_6
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 179
    goto :goto_0

    .line 180
    :cond_7
    iget-object v0, p0, Lhc;->a:Ljava/lang/String;

    .line 182
    const-string v2, "inflate end"

    .line 184
    new-array v3, v4, [Ljava/lang/Object;

    .line 186
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    :cond_8
    return v1
.end method

.method public i(Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    iput-object p1, p0, Lhc;->f:Ljava/lang/String;

    .line 3
    if-eqz p2, :cond_0

    .line 5
    invoke-virtual {p0}, Lhc;->h()Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    const/4 p1, 0x1

    .line 11
    return p1
.end method

.method public j(Lhc;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p1, Lhc;->c:Landroid/util/SparseIntArray;

    .line 4
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p1, Lhc;->c:Landroid/util/SparseIntArray;

    .line 12
    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 15
    move-result v1

    .line 16
    iget-object v2, p1, Lhc;->c:Landroid/util/SparseIntArray;

    .line 18
    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 21
    move-result v2

    .line 22
    invoke-virtual {p0, v1, v2}, Lhc;->k(II)Z

    .line 25
    add-int/lit8 v0, v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method public final k(II)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lhc;->d()[[Lfq;

    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-le v1, p1, :cond_3

    .line 10
    if-gez p1, :cond_0

    .line 12
    goto :goto_1

    .line 13
    :cond_0
    aget-object v0, v0, p1

    .line 15
    array-length v1, v0

    .line 16
    const/4 v4, 0x2

    .line 17
    if-le v1, p2, :cond_2

    .line 19
    if-gez p2, :cond_1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    aget-object v0, v0, p2

    .line 24
    iget-object v1, p0, Lhc;->b:Landroid/util/SparseArray;

    .line 26
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lhc;->c:Landroid/util/SparseIntArray;

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 34
    iget-object v0, p0, Lhc;->a:Ljava/lang/String;

    .line 36
    new-array v1, v4, [Ljava/lang/Object;

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    move-result-object p1

    .line 42
    aput-object p1, v1, v3

    .line 44
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object p1

    .line 48
    aput-object p1, v1, v2

    .line 50
    const-string p1, "setAdapterFunc, position = {?}, funcIndex = {?}"

    .line 52
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    return v2

    .line 56
    :cond_2
    :goto_0
    iget-object v0, p0, Lhc;->a:Ljava/lang/String;

    .line 58
    new-array v1, v4, [Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p1

    .line 64
    aput-object p1, v1, v3

    .line 66
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 70
    aput-object p1, v1, v2

    .line 72
    const-string p1, "setAdapterFunc fail, funIndex = {?}, funcRepository[{?}] length = {?}"

    .line 74
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    return v3

    .line 78
    :cond_3
    :goto_1
    iget-object p2, p0, Lhc;->a:Ljava/lang/String;

    .line 80
    new-array v0, v2, [Ljava/lang/Object;

    .line 82
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    move-result-object p1

    .line 86
    aput-object p1, v0, v3

    .line 88
    const-string p1, "setAdapterFunc fail, position = {?}, funcRepository length = {?}"

    .line 90
    invoke-static {p2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    return v3
.end method

.method public l()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lhc;->c:Landroid/util/SparseIntArray;

    .line 9
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

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
    iget-object v2, p0, Lhc;->c:Landroid/util/SparseIntArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    .line 31
    move-result v2

    .line 32
    iget-object v3, p0, Lhc;->c:Landroid/util/SparseIntArray;

    .line 34
    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    .line 37
    move-result v3

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, "^"

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 56
    return-object v0
.end method

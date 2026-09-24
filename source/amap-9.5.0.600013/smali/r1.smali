.class public Lr1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lr1$b;
    }
.end annotation


# static fields
.field public static final d:I = 0x1

.field public static final e:I = 0x1

.field public static final f:I = 0x1


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Ljava/util/List;

.field public final c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1;->a:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lr1;->b:Ljava/util/List;

    const/4 v0, 0x0

    const/16 v1, 0xe

    .line 5
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lr1;->c:[I

    return-void
.end method

.method public synthetic constructor <init>(Lr1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr1;-><init>()V

    return-void
.end method

.method public static c()Lr1;
    .locals 1

    .line 1
    sget-object v0, Lr1$b;->a:Lr1;

    .line 3
    return-object v0
.end method

.method public static r(Ljava/util/List;)Loi;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "AdapterMatcher"

    .line 6
    const-string v3, "mergeAdapterItem start"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Loi;

    .line 13
    invoke-direct {v1}, Loi;-><init>()V

    .line 16
    iput v0, v1, Loi;->b:I

    .line 18
    new-instance v3, Lm1;

    .line 20
    const-string v4, ""

    .line 22
    invoke-direct {v3, v4, v0}, Lm1;-><init>(Ljava/lang/String;Z)V

    .line 25
    invoke-static {}, Loi;->a()Landroid/util/SparseArray;

    .line 28
    move-result-object v4

    .line 29
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object p0

    .line 33
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v5

    .line 37
    if-eqz v5, :cond_3

    .line 39
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v5

    .line 43
    check-cast v5, Landroid/util/Pair;

    .line 45
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 47
    check-cast v6, Loi;

    .line 49
    invoke-virtual {v6}, Loi;->b()Loi;

    .line 52
    iget-object v6, v1, Loi;->a:Ljava/lang/String;

    .line 54
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    move-result v6

    .line 58
    if-nez v6, :cond_1

    .line 60
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    iget-object v7, v1, Loi;->a:Ljava/lang/String;

    .line 67
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v7, "|"

    .line 72
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v6

    .line 79
    iput-object v6, v1, Loi;->a:Ljava/lang/String;

    .line 81
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 83
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    iget-object v7, v1, Loi;->a:Ljava/lang/String;

    .line 88
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 93
    check-cast v7, Loi;

    .line 95
    iget-object v7, v7, Loi;->a:Ljava/lang/String;

    .line 97
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object v6

    .line 104
    iput-object v6, v1, Loi;->a:Ljava/lang/String;

    .line 106
    iget-object v6, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 108
    move-object v7, v6

    .line 109
    check-cast v7, Loi;

    .line 111
    iget v7, v7, Loi;->c:I

    .line 113
    iput v7, v1, Loi;->c:I

    .line 115
    move-object v7, v6

    .line 116
    check-cast v7, Loi;

    .line 118
    iget-object v7, v7, Loi;->d:Lqi;

    .line 120
    iput-object v7, v1, Loi;->d:Lqi;

    .line 122
    move-object v7, v6

    .line 123
    check-cast v7, Loi;

    .line 125
    iget v7, v7, Loi;->c:I

    .line 127
    const/4 v8, 0x2

    .line 128
    if-ne v7, v8, :cond_2

    .line 130
    goto :goto_0

    .line 131
    :cond_2
    check-cast v6, Loi;

    .line 133
    iget-object v6, v6, Loi;->e:Lm1;

    .line 135
    invoke-virtual {v3, v6}, Lm1;->j(Ldc;)V

    .line 138
    const/4 v6, 0x0

    .line 139
    :goto_1
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 141
    check-cast v7, Loi;

    .line 143
    iget-object v7, v7, Loi;->f:Landroid/util/SparseArray;

    .line 145
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    .line 148
    move-result v7

    .line 149
    if-ge v6, v7, :cond_0

    .line 151
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 153
    check-cast v7, Loi;

    .line 155
    iget-object v7, v7, Loi;->f:Landroid/util/SparseArray;

    .line 157
    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->keyAt(I)I

    .line 160
    move-result v7

    .line 161
    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 163
    check-cast v8, Loi;

    .line 165
    iget-object v8, v8, Loi;->f:Landroid/util/SparseArray;

    .line 167
    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 170
    move-result-object v8

    .line 171
    check-cast v8, Lhc;

    .line 173
    invoke-virtual {v4, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 176
    move-result-object v7

    .line 177
    check-cast v7, Lhc;

    .line 179
    invoke-virtual {v7, v8}, Lhc;->j(Lhc;)V

    .line 182
    add-int/lit8 v6, v6, 0x1

    .line 184
    goto :goto_1

    .line 185
    :cond_3
    new-instance p0, Lm1;

    .line 187
    invoke-virtual {v3}, Lm1;->k()Ljava/lang/String;

    .line 190
    move-result-object v3

    .line 191
    invoke-direct {p0, v3, v0}, Lm1;-><init>(Ljava/lang/String;Z)V

    .line 194
    iput-object p0, v1, Loi;->e:Lm1;

    .line 196
    invoke-static {}, Loi;->a()Landroid/util/SparseArray;

    .line 199
    move-result-object p0

    .line 200
    iput-object p0, v1, Loi;->f:Landroid/util/SparseArray;

    .line 202
    const/4 p0, 0x0

    .line 203
    :goto_2
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 206
    move-result v3

    .line 207
    if-ge p0, v3, :cond_4

    .line 209
    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 212
    move-result v3

    .line 213
    invoke-virtual {v4, p0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 216
    move-result-object v5

    .line 217
    check-cast v5, Lhc;

    .line 219
    iget-object v6, v1, Loi;->f:Landroid/util/SparseArray;

    .line 221
    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 224
    move-result-object v3

    .line 225
    check-cast v3, Lhc;

    .line 227
    invoke-virtual {v5}, Lhc;->l()Ljava/lang/String;

    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v3, v5, v0}, Lhc;->i(Ljava/lang/String;Z)Z

    .line 234
    add-int/lit8 p0, p0, 0x1

    .line 236
    goto :goto_2

    .line 237
    :cond_4
    const-string p0, "mergeAdapterItem finish"

    .line 239
    new-array v0, v0, [Ljava/lang/Object;

    .line 241
    invoke-static {v2, p0, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    return-object v1
.end method


# virtual methods
.method public final a(Loi;)I
    .locals 10

    .line 1
    iget-object v0, p1, Loi;->d:Lqi;

    .line 3
    iget v1, p1, Loi;->c:I

    .line 5
    const-string v2, "AdapterMatcher"

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    const/4 v5, 0x2

    .line 10
    if-ne v1, v5, :cond_0

    .line 12
    new-array v1, v5, [Ljava/lang/Object;

    .line 14
    iget-object p1, p1, Loi;->a:Ljava/lang/String;

    .line 16
    aput-object p1, v1, v4

    .line 18
    invoke-virtual {v0}, Lqi;->c()Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    aput-object p1, v1, v3

    .line 24
    const-string p1, "calcAdapterScore,id:{?}, score:0, coverage, feature:{?}"

    .line 26
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    return v4

    .line 30
    :cond_0
    invoke-virtual {v0, v4}, Lqi;->b(I)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 34
    const/4 v6, 0x0

    .line 35
    const/4 v7, 0x0

    .line 36
    const/4 v8, 0x0

    .line 37
    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 40
    move-result v9

    .line 41
    if-ge v6, v9, :cond_1

    .line 43
    const-string v9, "{"

    .line 45
    invoke-virtual {v1, v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 48
    move-result v7

    .line 49
    if-ltz v7, :cond_1

    .line 51
    add-int/lit8 v8, v8, 0x1

    .line 53
    sget v9, Lr1;->d:I

    .line 55
    add-int/2addr v7, v9

    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    if-lez v8, :cond_2

    .line 61
    sub-int/2addr v8, v3

    .line 62
    mul-int/lit8 v8, v8, 0xa

    .line 64
    rsub-int/lit8 v1, v8, 0x46

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    const/16 v1, 0x5a

    .line 69
    :goto_1
    invoke-virtual {p0, v0}, Lr1;->f(Lqi;)Ljava/util/List;

    .line 72
    move-result-object v6

    .line 73
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 76
    move-result v6

    .line 77
    mul-int/lit8 v6, v6, 0xa

    .line 79
    add-int/2addr v1, v6

    .line 80
    const/4 v6, 0x3

    .line 81
    new-array v6, v6, [Ljava/lang/Object;

    .line 83
    iget-object p1, p1, Loi;->a:Ljava/lang/String;

    .line 85
    aput-object p1, v6, v4

    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object p1

    .line 91
    aput-object p1, v6, v3

    .line 93
    invoke-virtual {v0}, Lqi;->c()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 97
    aput-object p1, v6, v5

    .line 99
    const-string p1, "calcAdapterScore, id:{?}, score:{?}, feature:{?}"

    .line 101
    invoke-static {v2, p1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return v1
.end method

.method public final b(Loi;Loi;)Loi;
    .locals 6

    .line 1
    if-eqz p1, :cond_a

    .line 3
    if-nez p2, :cond_0

    .line 5
    goto/16 :goto_6

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    iget-object v3, p1, Loi;->d:Lqi;

    .line 12
    invoke-virtual {v3}, Lqi;->a()Landroid/util/SparseArray;

    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 19
    move-result v3

    .line 20
    if-ge v1, v3, :cond_2

    .line 22
    iget-object v3, p1, Loi;->d:Lqi;

    .line 24
    invoke-virtual {v3}, Lqi;->a()Landroid/util/SparseArray;

    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Ljava/lang/CharSequence;

    .line 34
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_1

    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 42
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    const/4 v3, 0x0

    .line 47
    :goto_1
    iget-object v4, p2, Loi;->d:Lqi;

    .line 49
    invoke-virtual {v4}, Lqi;->a()Landroid/util/SparseArray;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 56
    move-result v4

    .line 57
    if-ge v1, v4, :cond_4

    .line 59
    iget-object v4, p2, Loi;->d:Lqi;

    .line 61
    invoke-virtual {v4}, Lqi;->a()Landroid/util/SparseArray;

    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Ljava/lang/CharSequence;

    .line 71
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    move-result v4

    .line 75
    if-nez v4, :cond_3

    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 79
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 81
    goto :goto_1

    .line 82
    :cond_4
    if-eq v2, v3, :cond_6

    .line 84
    if-le v2, v3, :cond_5

    .line 86
    goto :goto_2

    .line 87
    :cond_5
    move-object p1, p2

    .line 88
    :goto_2
    return-object p1

    .line 89
    :cond_6
    iget-object v1, p1, Loi;->d:Lqi;

    .line 91
    invoke-virtual {v1, v0}, Lqi;->b(I)Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    const/4 v2, 0x0

    .line 96
    const/4 v3, 0x0

    .line 97
    :goto_3
    const-string v4, "{?}"

    .line 99
    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 102
    move-result v2

    .line 103
    const/4 v5, -0x1

    .line 104
    if-eq v2, v5, :cond_7

    .line 106
    add-int/lit8 v3, v3, 0x1

    .line 108
    add-int/lit8 v2, v2, 0x3

    .line 110
    goto :goto_3

    .line 111
    :cond_7
    iget-object v1, p2, Loi;->d:Lqi;

    .line 113
    invoke-virtual {v1, v0}, Lqi;->b(I)Ljava/lang/String;

    .line 116
    move-result-object v1

    .line 117
    const/4 v2, 0x0

    .line 118
    :goto_4
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 121
    move-result v0

    .line 122
    if-eq v0, v5, :cond_8

    .line 124
    add-int/lit8 v2, v2, 0x1

    .line 126
    add-int/lit8 v0, v0, 0x3

    .line 128
    goto :goto_4

    .line 129
    :cond_8
    if-gt v3, v2, :cond_9

    .line 131
    goto :goto_5

    .line 132
    :cond_9
    move-object p1, p2

    .line 133
    :goto_5
    return-object p1

    .line 134
    :cond_a
    :goto_6
    if-nez p1, :cond_b

    .line 136
    move-object p1, p2

    .line 137
    :cond_b
    return-object p1
.end method

.method public d()Lkv;
    .locals 4

    .line 1
    iget-object v0, p0, Lr1;->b:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lr1;->b:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lkv;

    .line 20
    iget-object v2, p0, Lr1;->b:Ljava/util/List;

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_1

    .line 29
    return-object v0

    .line 30
    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 32
    aput-object v0, v2, v1

    .line 34
    const-string v1, "AdapterMatcher"

    .line 36
    const-string v3, "adapterItem:{?}"

    .line 38
    invoke-static {v1, v3, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget-object v1, p0, Lr1;->b:Ljava/util/List;

    .line 43
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 46
    iget-object v1, p0, Lr1;->b:Ljava/util/List;

    .line 48
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    return-object v0
.end method

.method public e()Loi;
    .locals 11

    .line 1
    iget-object v0, p0, Lr1;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lr1;->a:Ljava/util/List;

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Loi;

    .line 20
    iget-object v2, p0, Lr1;->a:Ljava/util/List;

    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-ne v2, v3, :cond_1

    .line 29
    return-object v0

    .line 30
    :cond_1
    new-instance v0, Ljava/util/LinkedList;

    .line 32
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 35
    iget-object v2, p0, Lr1;->a:Ljava/util/List;

    .line 37
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v2

    .line 41
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    move-result v4

    .line 45
    const-string v5, "AdapterMatcher"

    .line 47
    if-eqz v4, :cond_5

    .line 49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Loi;

    .line 55
    invoke-virtual {p0, v4}, Lr1;->a(Loi;)I

    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x0

    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 63
    move-result v8

    .line 64
    if-ge v7, v8, :cond_4

    .line 66
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 69
    move-result-object v8

    .line 70
    check-cast v8, Landroid/util/Pair;

    .line 72
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 74
    check-cast v8, Ljava/lang/Integer;

    .line 76
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 79
    move-result v8

    .line 80
    if-ge v6, v8, :cond_2

    .line 82
    goto :goto_2

    .line 83
    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 86
    move-result-object v8

    .line 87
    check-cast v8, Landroid/util/Pair;

    .line 89
    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 91
    check-cast v8, Ljava/lang/Integer;

    .line 93
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 96
    move-result v8

    .line 97
    if-ne v6, v8, :cond_3

    .line 99
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    move-result-object v8

    .line 103
    check-cast v8, Landroid/util/Pair;

    .line 105
    iget-object v8, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 107
    check-cast v8, Loi;

    .line 109
    invoke-virtual {p0, v4, v8}, Lr1;->b(Loi;Loi;)Loi;

    .line 112
    move-result-object v8

    .line 113
    if-eq v8, v4, :cond_3

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    add-int/lit8 v7, v7, 0x1

    .line 118
    goto :goto_1

    .line 119
    :cond_4
    :goto_2
    const/4 v8, 0x3

    .line 120
    new-array v8, v8, [Ljava/lang/Object;

    .line 122
    iget-object v9, v4, Loi;->a:Ljava/lang/String;

    .line 124
    aput-object v9, v8, v1

    .line 126
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    move-result-object v9

    .line 130
    aput-object v9, v8, v3

    .line 132
    const/4 v9, 0x2

    .line 133
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    move-result-object v10

    .line 137
    aput-object v10, v8, v9

    .line 139
    const-string v9, "getMatchResult,id:{?}, score:{?}, insertIndex:{?}"

    .line 141
    invoke-static {v5, v9, v8}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v5, Landroid/util/Pair;

    .line 146
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    move-result-object v6

    .line 150
    invoke-direct {v5, v6, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 153
    invoke-interface {v0, v7, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 156
    goto :goto_0

    .line 157
    :cond_5
    invoke-static {}, Lzm;->d()Lzm;

    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {v2}, Lzm;->c()Ljava/lang/String;

    .line 164
    move-result-object v2

    .line 165
    invoke-static {v2}, Lpi;->s(Ljava/lang/String;)Z

    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_6

    .line 171
    invoke-static {v0}, Lr1;->r(Ljava/util/List;)Loi;

    .line 174
    move-result-object v0

    .line 175
    goto :goto_3

    .line 176
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 179
    move-result v2

    .line 180
    sub-int/2addr v2, v3

    .line 181
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroid/util/Pair;

    .line 187
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 189
    check-cast v0, Loi;

    .line 191
    :goto_3
    new-array v2, v3, [Ljava/lang/Object;

    .line 193
    aput-object v0, v2, v1

    .line 195
    const-string v1, "adapterItem:{?}"

    .line 197
    invoke-static {v5, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v1, p0, Lr1;->a:Ljava/util/List;

    .line 202
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 205
    iget-object v1, p0, Lr1;->a:Ljava/util/List;

    .line 207
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    return-object v0
.end method

.method public final f(Lqi;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lqi;->a()Landroid/util/SparseArray;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 17
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 23
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/CharSequence;

    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 35
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 38
    move-result v2

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

.method public final g(Lqi;)Ljava/util/List;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p1}, Lqi;->a()Landroid/util/SparseArray;

    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_1

    .line 17
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 20
    move-result v2

    .line 21
    invoke-virtual {p0, v2}, Lr1;->h(I)Z

    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 27
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ljava/lang/CharSequence;

    .line 33
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_0

    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    return-object v0
.end method

.method public final h(I)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lr1;->c:[I

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_1

    .line 8
    aget v4, v0, v3

    .line 10
    if-ne v4, p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 13
    return p1

    .line 14
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    return v2
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11

    .line 1
    const-string v0, "}"

    .line 3
    const-string v1, "AdapterMatcher"

    .line 5
    const-string v2, "{"

    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 11
    move-result v4

    .line 12
    invoke-virtual {p2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 15
    move-result v5

    .line 16
    if-ltz v4, :cond_9

    .line 18
    if-ltz v5, :cond_9

    .line 20
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v6

    .line 24
    const/4 v7, 0x0

    .line 25
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    move-result v8

    .line 29
    if-nez v8, :cond_1

    .line 31
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 34
    move-result v8

    .line 35
    if-eq v8, v7, :cond_0

    .line 37
    return v3

    .line 38
    :cond_0
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 41
    move-result v6

    .line 42
    add-int/2addr v7, v6

    .line 43
    :cond_1
    const/4 v6, 0x1

    .line 44
    const/4 v8, -0x1

    .line 45
    if-gt v5, v8, :cond_2

    .line 47
    return v6

    .line 48
    :cond_2
    sget v9, Lr1;->d:I

    .line 50
    add-int/2addr v4, v9

    .line 51
    invoke-virtual {p2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 54
    move-result-object v4

    .line 55
    add-int/2addr v5, v9

    .line 56
    invoke-virtual {p2, v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 59
    move-result v9

    .line 60
    if-le v9, v8, :cond_4

    .line 62
    if-ne v9, v5, :cond_3

    .line 64
    const-string v0, "isInexactMatched(). pattern with successive {} is not allowed"

    .line 66
    new-array v2, v3, [Ljava/lang/Object;

    .line 68
    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    return v3

    .line 72
    :cond_3
    invoke-virtual {p2, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 75
    move-result-object v8

    .line 76
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 79
    move-result v10

    .line 80
    if-gez v10, :cond_6

    .line 82
    return v3

    .line 83
    :cond_4
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 86
    move-result v8

    .line 87
    invoke-virtual {p2, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    move-result-object v8

    .line 91
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_5

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 100
    move-result v10

    .line 101
    goto :goto_1

    .line 102
    :cond_5
    invoke-virtual {p1, v8, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 105
    move-result v10

    .line 106
    if-gez v10, :cond_6

    .line 108
    return v3

    .line 109
    :cond_6
    :goto_1
    invoke-virtual {p1, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 112
    move-result-object v10

    .line 113
    invoke-virtual {p0, v4, v10}, Lr1;->p(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_7

    .line 119
    return v3

    .line 120
    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 123
    move-result v4

    .line 124
    add-int/2addr v7, v4

    .line 125
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    move-result v4

    .line 129
    if-eqz v4, :cond_8

    .line 131
    return v6

    .line 132
    :cond_8
    invoke-virtual {p2, v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 135
    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    move-object v6, v8

    .line 137
    move v4, v9

    .line 138
    goto :goto_0

    .line 139
    :cond_9
    return v3

    .line 140
    :catch_0
    move-exception v0

    .line 141
    const-string v2, "isInexactMatched(). "

    .line 143
    new-array v4, v3, [Ljava/lang/Object;

    .line 145
    invoke-static {v1, v2, v0, v4}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 150
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    const-string v2, "exc="

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v0, ",fp="

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string p1, ",fpPattern="

    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const/4 v4, 0x0

    .line 182
    const/4 v5, 0x1

    .line 183
    const/4 v6, 0x2

    .line 184
    const/4 v7, 0x2

    .line 185
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    move-result-object v9

    .line 189
    move-object v8, p3

    .line 190
    invoke-static/range {v4 .. v9}, Ll1;->a(IIIILjava/lang/String;Ljava/lang/String;)V

    .line 193
    return v3
.end method

.method public j(Lqi;Lqi;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lr1;->m(Lqi;Lqi;Ljava/lang/String;)Z

    .line 4
    move-result p3

    .line 5
    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p0, p1, p2}, Lr1;->q(Lqi;Lqi;)Z

    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public k(Lqi;Loi;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p2, Loi;->d:Lqi;

    .line 3
    invoke-virtual {p0, p1, v0, p3}, Lr1;->j(Lqi;Lqi;Ljava/lang/String;)Z

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    iget-object p1, p0, Lr1;->a:Ljava/util/List;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    const/4 p1, 0x2

    .line 15
    new-array p1, p1, [Ljava/lang/Object;

    .line 17
    iget-object p3, p2, Loi;->d:Lqi;

    .line 19
    invoke-virtual {p3}, Lqi;->c()Ljava/lang/String;

    .line 22
    move-result-object p3

    .line 23
    const/4 v0, 0x0

    .line 24
    aput-object p3, p1, v0

    .line 26
    const/4 p3, 0x1

    .line 27
    iget-object p2, p2, Loi;->a:Ljava/lang/String;

    .line 29
    aput-object p2, p1, p3

    .line 31
    const-string p2, "AdapterMatcher"

    .line 33
    const-string p3, "matchAdapterItem, add:{?}, id:{?}"

    .line 35
    invoke-static {p2, p3, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_0
    return-void
.end method

.method public l(Lqi;Lkv;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    iget v0, p2, Lkv;->b:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "AdapterMatcher"

    .line 7
    const/4 v4, 0x1

    .line 8
    if-ne v0, v4, :cond_0

    .line 10
    iget-object p1, p2, Lkv;->c:Ljava/lang/String;

    .line 12
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 18
    iget-object p1, p0, Lr1;->b:Ljava/util/List;

    .line 20
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    new-array p1, v2, [Ljava/lang/Object;

    .line 25
    iget-object p3, p2, Lkv;->c:Ljava/lang/String;

    .line 27
    aput-object p3, p1, v1

    .line 29
    iget-object p2, p2, Lkv;->a:Ljava/lang/String;

    .line 31
    aput-object p2, p1, v4

    .line 33
    const-string p2, "matchAdapterItem, diu:{?}, id:{?}"

    .line 35
    invoke-static {v3, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p4, p2, Lkv;->d:Lqi;

    .line 41
    invoke-virtual {p0, p1, p4, p3}, Lr1;->j(Lqi;Lqi;Ljava/lang/String;)Z

    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_1

    .line 47
    iget-object p1, p0, Lr1;->b:Ljava/util/List;

    .line 49
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-array p1, v2, [Ljava/lang/Object;

    .line 54
    iget-object p3, p2, Lkv;->d:Lqi;

    .line 56
    invoke-virtual {p3}, Lqi;->c()Ljava/lang/String;

    .line 59
    move-result-object p3

    .line 60
    aput-object p3, p1, v1

    .line 62
    iget-object p2, p2, Lkv;->a:Ljava/lang/String;

    .line 64
    aput-object p2, p1, v4

    .line 66
    const-string p2, "matchAdapterItem, add:{?}, id:{?}"

    .line 68
    invoke-static {v3, p2, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public final m(Lqi;Lqi;Ljava/lang/String;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lr1;->c:[I

    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 8
    aget v4, v0, v3

    .line 10
    invoke-virtual {p1, v4}, Lqi;->b(I)Ljava/lang/String;

    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {p2, v4}, Lqi;->b(I)Ljava/lang/String;

    .line 17
    move-result-object v4

    .line 18
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v6

    .line 22
    if-nez v6, :cond_1

    .line 24
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    move-result v6

    .line 28
    if-eqz v6, :cond_0

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v6

    .line 35
    if-nez v6, :cond_1

    .line 37
    invoke-virtual {p0, v5, v4, p3}, Lr1;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    move-result v4

    .line 41
    if-nez v4, :cond_1

    .line 43
    return v2

    .line 44
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 46
    goto :goto_0

    .line 47
    :cond_2
    const/4 p1, 0x1

    .line 48
    return p1
.end method

.method public final n(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    const-string v2, ";"

    .line 5
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 8
    move-result v2

    .line 9
    const/4 v3, -0x1

    .line 10
    if-le v2, v3, :cond_1

    .line 12
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 22
    return v0

    .line 23
    :cond_0
    sget v1, Lr1;->f:I

    .line 25
    add-int/2addr v1, v2

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 34
    move-result p1

    .line 35
    if-eqz p1, :cond_2

    .line 37
    return v0

    .line 38
    :cond_2
    const/4 p1, 0x1

    .line 39
    return p1
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const-string p1, ""

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    const-string v1, ";"

    .line 13
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 16
    move-result v1

    .line 17
    const/4 v2, -0x1

    .line 18
    if-le v1, v2, :cond_2

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_1

    .line 30
    return-object v0

    .line 31
    :cond_1
    sget v0, Lr1;->f:I

    .line 33
    add-int/2addr v0, v1

    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p2, p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_3

    .line 45
    return-object p1

    .line 46
    :cond_3
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method public final p(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9

    .line 1
    const-string v0, "?"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_6

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 20
    move-result v0

    .line 21
    const/4 v1, -0x1

    .line 22
    if-le v0, v1, :cond_1

    .line 24
    return v2

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    :cond_2
    const-string v5, "("

    .line 30
    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 33
    move-result v5

    .line 34
    const-string v6, ")"

    .line 36
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    .line 39
    move-result v6

    .line 40
    if-le v5, v1, :cond_3

    .line 42
    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 45
    move-result-object v7

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 50
    move-result-object v7

    .line 51
    :goto_0
    invoke-virtual {p0, v7, p2, v4}, Lr1;->o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 54
    move-result-object v8

    .line 55
    if-nez v8, :cond_4

    .line 57
    return v0

    .line 58
    :cond_4
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 61
    move-result v7

    .line 62
    add-int/2addr v3, v7

    .line 63
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 66
    move-result v7

    .line 67
    add-int/2addr v4, v7

    .line 68
    if-gt v3, v5, :cond_6

    .line 70
    sget v5, Lr1;->e:I

    .line 72
    add-int/2addr v3, v5

    .line 73
    invoke-virtual {p1, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    move-result-object v3

    .line 77
    invoke-virtual {p0, v3, p2, v4}, Lr1;->n(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 80
    move-result v3

    .line 81
    if-eqz v3, :cond_5

    .line 83
    add-int v3, v6, v5

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 88
    move-result v5

    .line 89
    if-ne v3, v5, :cond_2

    .line 91
    return v2

    .line 92
    :cond_5
    return v0

    .line 93
    :cond_6
    :goto_1
    return v2
.end method

.method public final q(Lqi;Lqi;)Z
    .locals 7

    .line 1
    invoke-virtual {p0, p2}, Lr1;->g(Lqi;)Ljava/util/List;

    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/Integer;

    .line 21
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result v2

    .line 25
    invoke-virtual {p2, v2}, Lqi;->b(I)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    const-string v3, "{"

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 34
    move-result v3

    .line 35
    const-string v4, "}"

    .line 37
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 40
    move-result v4

    .line 41
    const/4 v5, -0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    if-le v3, v5, :cond_1

    .line 45
    if-le v4, v5, :cond_1

    .line 47
    sget v5, Lr1;->d:I

    .line 49
    add-int/2addr v3, v5

    .line 50
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1, v1}, Lqi;->b(I)Ljava/lang/String;

    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {p0, v2, v1, v6}, Lr1;->o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 70
    move-result v1

    .line 71
    invoke-virtual {p1, v1}, Lqi;->b(I)Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0, v2, v1, v6}, Lr1;->o(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 78
    move-result-object v1

    .line 79
    :goto_0
    if-nez v1, :cond_0

    .line 81
    return v6

    .line 82
    :cond_2
    const/4 p1, 0x1

    .line 83
    return p1
.end method

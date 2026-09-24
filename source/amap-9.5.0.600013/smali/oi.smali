.class public Loi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:Lqi;

.field public e:Lm1;

.field public f:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Loi;->a:Ljava/lang/String;

    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Loi;->c:I

    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Loi;->b:I

    .line 14
    return-void
.end method

.method public static a()Landroid/util/SparseArray;
    .locals 6

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v1, v0, [Lhc;

    .line 5
    new-instance v2, Llf;

    .line 7
    invoke-direct {v2}, Llf;-><init>()V

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    new-instance v2, Loz;

    .line 15
    invoke-direct {v2}, Loz;-><init>()V

    .line 18
    const/4 v4, 0x1

    .line 19
    aput-object v2, v1, v4

    .line 21
    new-instance v2, Lzw;

    .line 23
    invoke-direct {v2}, Lzw;-><init>()V

    .line 26
    const/4 v4, 0x2

    .line 27
    aput-object v2, v1, v4

    .line 29
    new-instance v2, Lpo;

    .line 31
    invoke-direct {v2}, Lpo;-><init>()V

    .line 34
    const/4 v4, 0x3

    .line 35
    aput-object v2, v1, v4

    .line 37
    new-instance v2, Lhj0;

    .line 39
    invoke-direct {v2}, Lhj0;-><init>()V

    .line 42
    const/4 v4, 0x4

    .line 43
    aput-object v2, v1, v4

    .line 45
    new-instance v2, Lnl0;

    .line 47
    invoke-direct {v2}, Lnl0;-><init>()V

    .line 50
    const/4 v4, 0x5

    .line 51
    aput-object v2, v1, v4

    .line 53
    new-instance v2, Lqy;

    .line 55
    invoke-direct {v2}, Lqy;-><init>()V

    .line 58
    const/4 v4, 0x6

    .line 59
    aput-object v2, v1, v4

    .line 61
    new-instance v2, Ldk0;

    .line 63
    invoke-direct {v2}, Ldk0;-><init>()V

    .line 66
    const/4 v4, 0x7

    .line 67
    aput-object v2, v1, v4

    .line 69
    new-instance v2, Landroid/util/SparseArray;

    .line 71
    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 74
    :goto_0
    if-ge v3, v0, :cond_0

    .line 76
    aget-object v4, v1, v3

    .line 78
    invoke-virtual {v4}, Lhc;->e()I

    .line 81
    move-result v5

    .line 82
    invoke-virtual {v2, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    return-object v2
.end method


# virtual methods
.method public b()Loi;
    .locals 2

    .line 1
    iget-object v0, p0, Loi;->e:Lm1;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ldc;->e()Z

    .line 8
    :cond_0
    iget-object v0, p0, Loi;->f:Landroid/util/SparseArray;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Loi;->f:Landroid/util/SparseArray;

    .line 15
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 21
    iget-object v1, p0, Loi;->f:Landroid/util/SparseArray;

    .line 23
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lhc;

    .line 29
    invoke-virtual {v1}, Lhc;->h()Z

    .line 32
    add-int/lit8 v0, v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Loi;->f:Landroid/util/SparseArray;

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
    const-string v2, "#"

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    :cond_0
    iget-object v2, p0, Loi;->f:Landroid/util/SparseArray;

    .line 28
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lhc;

    .line 34
    invoke-virtual {v2}, Lhc;->f()Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    add-int/lit8 v1, v1, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    const-string v2, "DeviceAdapterItem{id=\'"

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v2, p0, Loi;->a:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const/16 v2, 0x27

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    const-string v2, ", type="

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v2, p0, Loi;->b:I

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v2, ", businessType="

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v2, p0, Loi;->c:I

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v2, ", featureGroup="

    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v2, p0, Loi;->d:Lqi;

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    const-string v2, ", configGroup="

    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    iget-object v2, p0, Loi;->e:Lm1;

    .line 101
    invoke-virtual {v2}, Ldc;->c()Ljava/lang/String;

    .line 104
    move-result-object v2

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v2, ", moduleFuncGroups="

    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const/16 v0, 0x7d

    .line 122
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    return-object v0
.end method

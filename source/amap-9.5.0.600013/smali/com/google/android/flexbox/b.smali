.class public Lcom/google/android/flexbox/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/flexbox/b$b;,
        Lcom/google/android/flexbox/b$c;
    }
.end annotation


# instance fields
.field public final a:Lfm;

.field public b:[Z

.field public c:[I

.field public d:[J

.field public e:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lfm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 6
    return-void
.end method


# virtual methods
.method public final A(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 5
    invoke-interface {p1}, Lfm;->getPaddingEnd()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 12
    invoke-interface {p1}, Lfm;->getPaddingBottom()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final B(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 5
    invoke-interface {p1}, Lfm;->getPaddingTop()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 12
    invoke-interface {p1}, Lfm;->getPaddingStart()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final C(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 5
    invoke-interface {p1}, Lfm;->getPaddingStart()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 12
    invoke-interface {p1}, Lfm;->getPaddingTop()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public final D(Landroid/view/View;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final E(Landroid/view/View;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final F(IILcom/google/android/flexbox/a;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    sub-int/2addr p2, v0

    .line 3
    if-ne p1, p2, :cond_0

    .line 5
    invoke-virtual {p3}, Lcom/google/android/flexbox/a;->b()I

    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public G(Landroid/util/SparseIntArray;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getFlexItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eq v1, v0, :cond_0

    .line 14
    return v2

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    :goto_0
    if-ge v3, v0, :cond_3

    .line 19
    iget-object v4, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 21
    invoke-interface {v4, v3}, Lfm;->a(I)Landroid/view/View;

    .line 24
    move-result-object v4

    .line 25
    if-nez v4, :cond_1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Lcom/google/android/flexbox/FlexItem;

    .line 34
    invoke-interface {v4}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    .line 37
    move-result v4

    .line 38
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->get(I)I

    .line 41
    move-result v5

    .line 42
    if-eq v4, v5, :cond_2

    .line 44
    return v2

    .line 45
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    return v1
.end method

.method public final H(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getFlexWrap()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 10
    return v1

    .line 11
    :cond_0
    invoke-interface {p6}, Lcom/google/android/flexbox/FlexItem;->j()Z

    .line 14
    move-result p6

    .line 15
    const/4 v0, 0x1

    .line 16
    if-eqz p6, :cond_1

    .line 18
    return v0

    .line 19
    :cond_1
    if-nez p2, :cond_2

    .line 21
    return v1

    .line 22
    :cond_2
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 24
    invoke-interface {p2}, Lfm;->getMaxLine()I

    .line 27
    move-result p2

    .line 28
    const/4 p6, -0x1

    .line 29
    if-eq p2, p6, :cond_3

    .line 31
    add-int/2addr p9, v0

    .line 32
    if-gt p2, p9, :cond_3

    .line 34
    return v1

    .line 35
    :cond_3
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 37
    invoke-interface {p2, p1, p7, p8}, Lfm;->b(Landroid/view/View;II)I

    .line 40
    move-result p1

    .line 41
    if-lez p1, :cond_4

    .line 43
    add-int/2addr p5, p1

    .line 44
    :cond_4
    add-int/2addr p4, p5

    .line 45
    if-ge p3, p4, :cond_5

    .line 47
    const/4 v1, 0x1

    .line 48
    :cond_5
    return v1
.end method

.method public I(Landroid/view/View;Lcom/google/android/flexbox/a;IIII)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 9
    invoke-interface {v1}, Lfm;->getAlignItems()I

    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 23
    move-result v1

    .line 24
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/a;->g:I

    .line 26
    const/4 v3, 0x2

    .line 27
    if-eqz v1, :cond_7

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eq v1, v4, :cond_5

    .line 32
    if-eq v1, v3, :cond_3

    .line 34
    const/4 v2, 0x3

    .line 35
    if-eq v1, v2, :cond_1

    .line 37
    const/4 p2, 0x4

    .line 38
    if-eq v1, p2, :cond_7

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_1
    iget-object v1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 44
    invoke-interface {v1}, Lfm;->getFlexWrap()I

    .line 47
    move-result v1

    .line 48
    if-eq v1, v3, :cond_2

    .line 50
    iget p2, p2, Lcom/google/android/flexbox/a;->l:I

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 55
    move-result v1

    .line 56
    sub-int/2addr p2, v1

    .line 57
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 64
    move-result p2

    .line 65
    add-int/2addr p4, p2

    .line 66
    add-int/2addr p6, p2

    .line 67
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 70
    goto/16 :goto_0

    .line 72
    :cond_2
    iget p2, p2, Lcom/google/android/flexbox/a;->l:I

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 77
    move-result v1

    .line 78
    sub-int/2addr p2, v1

    .line 79
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 82
    move-result v1

    .line 83
    add-int/2addr p2, v1

    .line 84
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 87
    move-result v0

    .line 88
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result p2

    .line 92
    sub-int/2addr p4, p2

    .line 93
    sub-int/2addr p6, p2

    .line 94
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 97
    goto/16 :goto_0

    .line 99
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 102
    move-result p2

    .line 103
    sub-int/2addr v2, p2

    .line 104
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 107
    move-result p2

    .line 108
    add-int/2addr v2, p2

    .line 109
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 112
    move-result p2

    .line 113
    sub-int/2addr v2, p2

    .line 114
    div-int/2addr v2, v3

    .line 115
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 117
    invoke-interface {p2}, Lfm;->getFlexWrap()I

    .line 120
    move-result p2

    .line 121
    if-eq p2, v3, :cond_4

    .line 123
    add-int/2addr p4, v2

    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 127
    move-result p2

    .line 128
    add-int/2addr p2, p4

    .line 129
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 132
    goto :goto_0

    .line 133
    :cond_4
    sub-int/2addr p4, v2

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 137
    move-result p2

    .line 138
    add-int/2addr p2, p4

    .line 139
    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 142
    goto :goto_0

    .line 143
    :cond_5
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 145
    invoke-interface {p2}, Lfm;->getFlexWrap()I

    .line 148
    move-result p2

    .line 149
    if-eq p2, v3, :cond_6

    .line 151
    add-int/2addr p4, v2

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 155
    move-result p2

    .line 156
    sub-int p2, p4, p2

    .line 158
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 161
    move-result p6

    .line 162
    sub-int/2addr p2, p6

    .line 163
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 166
    move-result p6

    .line 167
    sub-int/2addr p4, p6

    .line 168
    invoke-virtual {p1, p3, p2, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 171
    goto :goto_0

    .line 172
    :cond_6
    sub-int/2addr p4, v2

    .line 173
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 176
    move-result p2

    .line 177
    add-int/2addr p4, p2

    .line 178
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 181
    move-result p2

    .line 182
    add-int/2addr p4, p2

    .line 183
    sub-int/2addr p6, v2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 187
    move-result p2

    .line 188
    add-int/2addr p6, p2

    .line 189
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 192
    move-result p2

    .line 193
    add-int/2addr p6, p2

    .line 194
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 197
    goto :goto_0

    .line 198
    :cond_7
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 200
    invoke-interface {p2}, Lfm;->getFlexWrap()I

    .line 203
    move-result p2

    .line 204
    if-eq p2, v3, :cond_8

    .line 206
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 209
    move-result p2

    .line 210
    add-int/2addr p4, p2

    .line 211
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 214
    move-result p2

    .line 215
    add-int/2addr p6, p2

    .line 216
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 219
    goto :goto_0

    .line 220
    :cond_8
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 223
    move-result p2

    .line 224
    sub-int/2addr p4, p2

    .line 225
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 228
    move-result p2

    .line 229
    sub-int/2addr p6, p2

    .line 230
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 233
    :goto_0
    return-void
.end method

.method public J(Landroid/view/View;Lcom/google/android/flexbox/a;ZIIII)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    iget-object v1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 9
    invoke-interface {v1}, Lfm;->getAlignItems()I

    .line 12
    move-result v1

    .line 13
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 16
    move-result v2

    .line 17
    const/4 v3, -0x1

    .line 18
    if-eq v2, v3, :cond_0

    .line 20
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 23
    move-result v1

    .line 24
    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/a;->g:I

    .line 26
    if-eqz v1, :cond_5

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eq v1, v2, :cond_3

    .line 31
    const/4 v2, 0x2

    .line 32
    if-eq v1, v2, :cond_1

    .line 34
    const/4 p2, 0x3

    .line 35
    if-eq v1, p2, :cond_5

    .line 37
    const/4 p2, 0x4

    .line 38
    if-eq v1, p2, :cond_5

    .line 40
    goto/16 :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 51
    move-result v1

    .line 52
    sub-int/2addr p2, v1

    .line 53
    invoke-static {v0}, Lc00;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 56
    move-result v1

    .line 57
    add-int/2addr p2, v1

    .line 58
    invoke-static {v0}, Lc00;->a(Landroid/view/ViewGroup$MarginLayoutParams;)I

    .line 61
    move-result v0

    .line 62
    sub-int/2addr p2, v0

    .line 63
    div-int/2addr p2, v2

    .line 64
    if-nez p3, :cond_2

    .line 66
    add-int/2addr p4, p2

    .line 67
    add-int/2addr p6, p2

    .line 68
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    sub-int/2addr p4, p2

    .line 73
    sub-int/2addr p6, p2

    .line 74
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    if-nez p3, :cond_4

    .line 80
    add-int/2addr p4, p2

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 84
    move-result p3

    .line 85
    sub-int/2addr p4, p3

    .line 86
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 89
    move-result p3

    .line 90
    sub-int/2addr p4, p3

    .line 91
    add-int/2addr p6, p2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 95
    move-result p2

    .line 96
    sub-int/2addr p6, p2

    .line 97
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 100
    move-result p2

    .line 101
    sub-int/2addr p6, p2

    .line 102
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 105
    goto :goto_0

    .line 106
    :cond_4
    sub-int/2addr p4, p2

    .line 107
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 110
    move-result p3

    .line 111
    add-int/2addr p4, p3

    .line 112
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 115
    move-result p3

    .line 116
    add-int/2addr p4, p3

    .line 117
    sub-int/2addr p6, p2

    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 121
    move-result p2

    .line 122
    add-int/2addr p6, p2

    .line 123
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 126
    move-result p2

    .line 127
    add-int/2addr p6, p2

    .line 128
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 131
    goto :goto_0

    .line 132
    :cond_5
    if-nez p3, :cond_6

    .line 134
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 137
    move-result p2

    .line 138
    add-int/2addr p4, p2

    .line 139
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 142
    move-result p2

    .line 143
    add-int/2addr p6, p2

    .line 144
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 147
    goto :goto_0

    .line 148
    :cond_6
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 151
    move-result p2

    .line 152
    sub-int/2addr p4, p2

    .line 153
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 156
    move-result p2

    .line 157
    sub-int/2addr p6, p2

    .line 158
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 161
    :goto_0
    return-void
.end method

.method public K(II)J
    .locals 4

    .line 1
    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p1, p1

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final L(IILcom/google/android/flexbox/a;IIZ)V
    .locals 21

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v3, p3

    .line 5
    move/from16 v4, p4

    .line 7
    iget v0, v3, Lcom/google/android/flexbox/a;->e:I

    .line 9
    iget v1, v3, Lcom/google/android/flexbox/a;->k:F

    .line 11
    const/4 v2, 0x0

    .line 12
    cmpg-float v5, v1, v2

    .line 14
    if-lez v5, :cond_15

    .line 16
    if-le v4, v0, :cond_0

    .line 18
    goto/16 :goto_9

    .line 20
    :cond_0
    sub-int v5, v0, v4

    .line 22
    int-to-float v5, v5

    .line 23
    div-float/2addr v5, v1

    .line 24
    iget v1, v3, Lcom/google/android/flexbox/a;->f:I

    .line 26
    add-int v1, p5, v1

    .line 28
    iput v1, v3, Lcom/google/android/flexbox/a;->e:I

    .line 30
    if-nez p6, :cond_1

    .line 32
    const/high16 v1, -0x80000000

    .line 34
    iput v1, v3, Lcom/google/android/flexbox/a;->g:I

    .line 36
    :cond_1
    const/4 v1, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/a;->h:I

    .line 42
    if-ge v1, v10, :cond_14

    .line 44
    iget v10, v3, Lcom/google/android/flexbox/a;->o:I

    .line 46
    add-int/2addr v10, v1

    .line 47
    iget-object v11, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 49
    invoke-interface {v11, v10}, Lfm;->f(I)Landroid/view/View;

    .line 52
    move-result-object v11

    .line 53
    if-eqz v11, :cond_13

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v12

    .line 59
    const/16 v13, 0x8

    .line 61
    if-ne v12, v13, :cond_2

    .line 63
    goto/16 :goto_7

    .line 65
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 71
    iget-object v13, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 73
    invoke-interface {v13}, Lfm;->getFlexDirection()I

    .line 76
    move-result v13

    .line 77
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 79
    const/high16 v19, 0x3f800000    # 1.0f

    .line 81
    const/4 v14, 0x1

    .line 82
    if-eqz v13, :cond_b

    .line 84
    if-ne v13, v14, :cond_3

    .line 86
    goto/16 :goto_3

    .line 88
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 91
    move-result v13

    .line 92
    iget-object v15, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 94
    if-eqz v15, :cond_4

    .line 96
    aget-wide v14, v15, v10

    .line 98
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/b;->p(J)I

    .line 101
    move-result v13

    .line 102
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 105
    move-result v14

    .line 106
    iget-object v15, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 108
    if-eqz v15, :cond_5

    .line 110
    aget-wide v14, v15, v10

    .line 112
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/b;->q(J)I

    .line 115
    move-result v14

    .line 116
    :cond_5
    iget-object v15, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 118
    aget-boolean v15, v15, v10

    .line 120
    if-nez v15, :cond_a

    .line 122
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 125
    move-result v15

    .line 126
    cmpl-float v15, v15, v2

    .line 128
    if-lez v15, :cond_a

    .line 130
    int-to-float v13, v13

    .line 131
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 134
    move-result v14

    .line 135
    mul-float v14, v14, v5

    .line 137
    sub-float/2addr v13, v14

    .line 138
    iget v14, v3, Lcom/google/android/flexbox/a;->h:I

    .line 140
    const/4 v15, 0x1

    .line 141
    sub-int/2addr v14, v15

    .line 142
    if-ne v1, v14, :cond_6

    .line 144
    add-float/2addr v13, v9

    .line 145
    const/4 v9, 0x0

    .line 146
    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 149
    move-result v14

    .line 150
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 153
    move-result v2

    .line 154
    if-ge v14, v2, :cond_7

    .line 156
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 159
    move-result v14

    .line 160
    iget-object v2, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 162
    aput-boolean v15, v2, v10

    .line 164
    iget v2, v3, Lcom/google/android/flexbox/a;->k:F

    .line 166
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 169
    move-result v6

    .line 170
    sub-float/2addr v2, v6

    .line 171
    iput v2, v3, Lcom/google/android/flexbox/a;->k:F

    .line 173
    move v2, v0

    .line 174
    move v15, v1

    .line 175
    const/4 v6, 0x1

    .line 176
    goto :goto_1

    .line 177
    :cond_7
    int-to-float v2, v14

    .line 178
    sub-float/2addr v13, v2

    .line 179
    add-float/2addr v9, v13

    .line 180
    move v2, v0

    .line 181
    move v15, v1

    .line 182
    float-to-double v0, v9

    .line 183
    cmpl-double v13, v0, v17

    .line 185
    if-lez v13, :cond_8

    .line 187
    add-int/lit8 v14, v14, 0x1

    .line 189
    sub-float v9, v9, v19

    .line 191
    goto :goto_1

    .line 192
    :cond_8
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 194
    cmpg-double v13, v0, v16

    .line 196
    if-gez v13, :cond_9

    .line 198
    add-int/lit8 v14, v14, -0x1

    .line 200
    add-float v9, v9, v19

    .line 202
    :cond_9
    :goto_1
    iget v0, v3, Lcom/google/android/flexbox/a;->m:I

    .line 204
    move/from16 v1, p1

    .line 206
    invoke-virtual {v7, v1, v12, v0}, Lcom/google/android/flexbox/b;->s(ILcom/google/android/flexbox/FlexItem;I)I

    .line 209
    move-result v0

    .line 210
    const/high16 v13, 0x40000000    # 2.0f

    .line 212
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 215
    move-result v13

    .line 216
    invoke-virtual {v11, v0, v13}, Landroid/view/View;->measure(II)V

    .line 219
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 222
    move-result v14

    .line 223
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 226
    move-result v16

    .line 227
    invoke-virtual {v7, v10, v0, v13, v11}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 230
    iget-object v0, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 232
    invoke-interface {v0, v10, v11}, Lfm;->h(ILandroid/view/View;)V

    .line 235
    move/from16 v13, v16

    .line 237
    goto :goto_2

    .line 238
    :cond_a
    move v2, v0

    .line 239
    move v15, v1

    .line 240
    move/from16 v1, p1

    .line 242
    :goto_2
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 245
    move-result v0

    .line 246
    add-int/2addr v14, v0

    .line 247
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 250
    move-result v0

    .line 251
    add-int/2addr v14, v0

    .line 252
    iget-object v0, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 254
    invoke-interface {v0, v11}, Lfm;->j(Landroid/view/View;)I

    .line 257
    move-result v0

    .line 258
    add-int/2addr v14, v0

    .line 259
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 262
    move-result v0

    .line 263
    iget v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 265
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 268
    move-result v10

    .line 269
    add-int/2addr v13, v10

    .line 270
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 273
    move-result v10

    .line 274
    add-int/2addr v13, v10

    .line 275
    add-int/2addr v8, v13

    .line 276
    iput v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 278
    move/from16 v13, p2

    .line 280
    goto/16 :goto_6

    .line 282
    :cond_b
    :goto_3
    move v2, v0

    .line 283
    move v15, v1

    .line 284
    move/from16 v1, p1

    .line 286
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 289
    move-result v0

    .line 290
    iget-object v13, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 292
    if-eqz v13, :cond_c

    .line 294
    aget-wide v0, v13, v10

    .line 296
    invoke-virtual {v7, v0, v1}, Lcom/google/android/flexbox/b;->q(J)I

    .line 299
    move-result v0

    .line 300
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 303
    move-result v1

    .line 304
    iget-object v13, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 306
    move/from16 v20, v15

    .line 308
    if-eqz v13, :cond_d

    .line 310
    aget-wide v14, v13, v10

    .line 312
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/b;->p(J)I

    .line 315
    move-result v1

    .line 316
    :cond_d
    iget-object v13, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 318
    aget-boolean v13, v13, v10

    .line 320
    if-nez v13, :cond_12

    .line 322
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 325
    move-result v13

    .line 326
    const/4 v14, 0x0

    .line 327
    cmpl-float v13, v13, v14

    .line 329
    if-lez v13, :cond_12

    .line 331
    int-to-float v0, v0

    .line 332
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 335
    move-result v1

    .line 336
    mul-float v1, v1, v5

    .line 338
    sub-float/2addr v0, v1

    .line 339
    iget v1, v3, Lcom/google/android/flexbox/a;->h:I

    .line 341
    const/4 v13, 0x1

    .line 342
    sub-int/2addr v1, v13

    .line 343
    move/from16 v15, v20

    .line 345
    if-ne v15, v1, :cond_e

    .line 347
    add-float/2addr v0, v9

    .line 348
    const/4 v9, 0x0

    .line 349
    :cond_e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 352
    move-result v1

    .line 353
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 356
    move-result v14

    .line 357
    if-ge v1, v14, :cond_f

    .line 359
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 362
    move-result v1

    .line 363
    iget-object v0, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 365
    aput-boolean v13, v0, v10

    .line 367
    iget v0, v3, Lcom/google/android/flexbox/a;->k:F

    .line 369
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 372
    move-result v6

    .line 373
    sub-float/2addr v0, v6

    .line 374
    iput v0, v3, Lcom/google/android/flexbox/a;->k:F

    .line 376
    const/4 v6, 0x1

    .line 377
    goto :goto_4

    .line 378
    :cond_f
    int-to-float v13, v1

    .line 379
    sub-float/2addr v0, v13

    .line 380
    add-float/2addr v9, v0

    .line 381
    float-to-double v13, v9

    .line 382
    cmpl-double v0, v13, v17

    .line 384
    if-lez v0, :cond_10

    .line 386
    add-int/lit8 v1, v1, 0x1

    .line 388
    sub-float v9, v9, v19

    .line 390
    goto :goto_4

    .line 391
    :cond_10
    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    .line 393
    cmpg-double v0, v13, v16

    .line 395
    if-gez v0, :cond_11

    .line 397
    add-int/lit8 v1, v1, -0x1

    .line 399
    add-float v9, v9, v19

    .line 401
    :cond_11
    :goto_4
    iget v0, v3, Lcom/google/android/flexbox/a;->m:I

    .line 403
    move/from16 v13, p2

    .line 405
    invoke-virtual {v7, v13, v12, v0}, Lcom/google/android/flexbox/b;->r(ILcom/google/android/flexbox/FlexItem;I)I

    .line 408
    move-result v0

    .line 409
    const/high16 v14, 0x40000000    # 2.0f

    .line 411
    invoke-static {v1, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 414
    move-result v1

    .line 415
    invoke-virtual {v11, v1, v0}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 421
    move-result v14

    .line 422
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 425
    move-result v16

    .line 426
    invoke-virtual {v7, v10, v1, v0, v11}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 429
    iget-object v0, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 431
    invoke-interface {v0, v10, v11}, Lfm;->h(ILandroid/view/View;)V

    .line 434
    move v0, v14

    .line 435
    move/from16 v1, v16

    .line 437
    goto :goto_5

    .line 438
    :cond_12
    move/from16 v13, p2

    .line 440
    move/from16 v15, v20

    .line 442
    :goto_5
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 445
    move-result v10

    .line 446
    add-int/2addr v1, v10

    .line 447
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 450
    move-result v10

    .line 451
    add-int/2addr v1, v10

    .line 452
    iget-object v10, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 454
    invoke-interface {v10, v11}, Lfm;->j(Landroid/view/View;)I

    .line 457
    move-result v10

    .line 458
    add-int/2addr v1, v10

    .line 459
    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    .line 462
    move-result v1

    .line 463
    iget v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 465
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 468
    move-result v10

    .line 469
    add-int/2addr v0, v10

    .line 470
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 473
    move-result v10

    .line 474
    add-int/2addr v0, v10

    .line 475
    add-int/2addr v8, v0

    .line 476
    iput v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 478
    move v0, v1

    .line 479
    :goto_6
    iget v1, v3, Lcom/google/android/flexbox/a;->g:I

    .line 481
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 484
    move-result v1

    .line 485
    iput v1, v3, Lcom/google/android/flexbox/a;->g:I

    .line 487
    move v8, v0

    .line 488
    goto :goto_8

    .line 489
    :cond_13
    :goto_7
    move/from16 v13, p2

    .line 491
    move v2, v0

    .line 492
    move v15, v1

    .line 493
    :goto_8
    add-int/lit8 v1, v15, 0x1

    .line 495
    move v0, v2

    .line 496
    const/4 v2, 0x0

    .line 497
    goto/16 :goto_0

    .line 499
    :cond_14
    move/from16 v13, p2

    .line 501
    move v2, v0

    .line 502
    if-eqz v6, :cond_15

    .line 504
    iget v0, v3, Lcom/google/android/flexbox/a;->e:I

    .line 506
    if-eq v2, v0, :cond_15

    .line 508
    const/4 v6, 0x1

    .line 509
    move-object/from16 v0, p0

    .line 511
    move/from16 v1, p1

    .line 513
    move/from16 v2, p2

    .line 515
    move-object/from16 v3, p3

    .line 517
    move/from16 v4, p4

    .line 519
    move/from16 v5, p5

    .line 521
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/b;->L(IILcom/google/android/flexbox/a;IIZ)V

    .line 524
    :cond_15
    :goto_9
    return-void
.end method

.method public final M(ILjava/util/List;Landroid/util/SparseIntArray;)[I
    .locals 3

    .line 1
    invoke-static {p2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 4
    invoke-virtual {p3}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    new-array p1, p1, [I

    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p2

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 20
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/android/flexbox/b$c;

    .line 26
    iget v2, v1, Lcom/google/android/flexbox/b$c;->a:I

    .line 28
    aput v2, p1, v0

    .line 30
    iget v1, v1, Lcom/google/android/flexbox/b$c;->b:I

    .line 32
    invoke-virtual {p3, v2, v1}, Landroid/util/SparseIntArray;->append(II)V

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object p1
.end method

.method public final N(Landroid/view/View;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 19
    invoke-interface {v1, p1}, Lfm;->j(Landroid/view/View;)I

    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 27
    move-result v1

    .line 28
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p2

    .line 32
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 35
    move-result v0

    .line 36
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result p2

    .line 40
    iget-object v0, p0, Lcom/google/android/flexbox/b;->e:[J

    .line 42
    if-eqz v0, :cond_0

    .line 44
    aget-wide v1, v0, p3

    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/b;->p(J)I

    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 54
    move-result v0

    .line 55
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 57
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 71
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 73
    invoke-interface {p2, p3, p1}, Lfm;->h(ILandroid/view/View;)V

    .line 76
    return-void
.end method

.method public final O(Landroid/view/View;II)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 10
    move-result v1

    .line 11
    sub-int/2addr p2, v1

    .line 12
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 15
    move-result v1

    .line 16
    sub-int/2addr p2, v1

    .line 17
    iget-object v1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 19
    invoke-interface {v1, p1}, Lfm;->j(Landroid/view/View;)I

    .line 22
    move-result v1

    .line 23
    sub-int/2addr p2, v1

    .line 24
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 27
    move-result v1

    .line 28
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 31
    move-result p2

    .line 32
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 35
    move-result v0

    .line 36
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 39
    move-result p2

    .line 40
    iget-object v0, p0, Lcom/google/android/flexbox/b;->e:[J

    .line 42
    if-eqz v0, :cond_0

    .line 44
    aget-wide v1, v0, p3

    .line 46
    invoke-virtual {p0, v1, v2}, Lcom/google/android/flexbox/b;->q(J)I

    .line 49
    move-result v0

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 54
    move-result v0

    .line 55
    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    .line 57
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 60
    move-result v0

    .line 61
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 68
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 71
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 73
    invoke-interface {p2, p3, p1}, Lfm;->h(ILandroid/view/View;)V

    .line 76
    return-void
.end method

.method public P()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/b;->Q(I)V

    .line 5
    return-void
.end method

.method public Q(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 3
    move/from16 v1, p1

    .line 5
    iget-object v2, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 7
    invoke-interface {v2}, Lfm;->getFlexItemCount()I

    .line 10
    move-result v2

    .line 11
    if-lt v1, v2, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v2, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 16
    invoke-interface {v2}, Lfm;->getFlexDirection()I

    .line 19
    move-result v2

    .line 20
    iget-object v3, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 22
    invoke-interface {v3}, Lfm;->getAlignItems()I

    .line 25
    move-result v3

    .line 26
    const-string v4, "Invalid flex direction: "

    .line 28
    const/4 v7, 0x4

    .line 29
    const/4 v8, 0x1

    .line 30
    if-ne v3, v7, :cond_a

    .line 32
    iget-object v3, v0, Lcom/google/android/flexbox/b;->c:[I

    .line 34
    if-eqz v3, :cond_1

    .line 36
    aget v1, v3, v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-object v3, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 42
    invoke-interface {v3}, Lfm;->getFlexLinesInternal()Ljava/util/List;

    .line 45
    move-result-object v3

    .line 46
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    move-result v10

    .line 50
    :goto_1
    if-ge v1, v10, :cond_f

    .line 52
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    move-result-object v11

    .line 56
    check-cast v11, Lcom/google/android/flexbox/a;

    .line 58
    iget v12, v11, Lcom/google/android/flexbox/a;->h:I

    .line 60
    const/4 v13, 0x0

    .line 61
    :goto_2
    if-ge v13, v12, :cond_9

    .line 63
    iget v14, v11, Lcom/google/android/flexbox/a;->o:I

    .line 65
    add-int/2addr v14, v13

    .line 66
    iget-object v15, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 68
    invoke-interface {v15}, Lfm;->getFlexItemCount()I

    .line 71
    move-result v15

    .line 72
    if-lt v13, v15, :cond_2

    .line 74
    goto :goto_4

    .line 75
    :cond_2
    iget-object v15, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 77
    invoke-interface {v15, v14}, Lfm;->f(I)Landroid/view/View;

    .line 80
    move-result-object v15

    .line 81
    if-eqz v15, :cond_8

    .line 83
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    .line 86
    move-result v9

    .line 87
    const/16 v5, 0x8

    .line 89
    if-ne v9, v5, :cond_3

    .line 91
    goto :goto_4

    .line 92
    :cond_3
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 95
    move-result-object v5

    .line 96
    check-cast v5, Lcom/google/android/flexbox/FlexItem;

    .line 98
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 101
    move-result v9

    .line 102
    const/4 v6, -0x1

    .line 103
    if-eq v9, v6, :cond_4

    .line 105
    invoke-interface {v5}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 108
    move-result v5

    .line 109
    if-eq v5, v7, :cond_4

    .line 111
    goto :goto_4

    .line 112
    :cond_4
    if-eqz v2, :cond_7

    .line 114
    if-eq v2, v8, :cond_7

    .line 116
    const/4 v5, 0x2

    .line 117
    if-eq v2, v5, :cond_6

    .line 119
    const/4 v5, 0x3

    .line 120
    if-ne v2, v5, :cond_5

    .line 122
    goto :goto_3

    .line 123
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v2

    .line 140
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    throw v1

    .line 144
    :cond_6
    :goto_3
    iget v5, v11, Lcom/google/android/flexbox/a;->g:I

    .line 146
    invoke-virtual {v0, v15, v5, v14}, Lcom/google/android/flexbox/b;->N(Landroid/view/View;II)V

    .line 149
    goto :goto_4

    .line 150
    :cond_7
    iget v5, v11, Lcom/google/android/flexbox/a;->g:I

    .line 152
    invoke-virtual {v0, v15, v5, v14}, Lcom/google/android/flexbox/b;->O(Landroid/view/View;II)V

    .line 155
    :cond_8
    :goto_4
    add-int/lit8 v13, v13, 0x1

    .line 157
    goto :goto_2

    .line 158
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 160
    goto :goto_1

    .line 161
    :cond_a
    iget-object v1, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 163
    invoke-interface {v1}, Lfm;->getFlexLinesInternal()Ljava/util/List;

    .line 166
    move-result-object v1

    .line 167
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 170
    move-result-object v1

    .line 171
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v3

    .line 175
    if-eqz v3, :cond_f

    .line 177
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    move-result-object v3

    .line 181
    check-cast v3, Lcom/google/android/flexbox/a;

    .line 183
    iget-object v5, v3, Lcom/google/android/flexbox/a;->n:Ljava/util/List;

    .line 185
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    move-result-object v5

    .line 189
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_b

    .line 195
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    move-result-object v6

    .line 199
    check-cast v6, Ljava/lang/Integer;

    .line 201
    iget-object v7, v0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 203
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 206
    move-result v9

    .line 207
    invoke-interface {v7, v9}, Lfm;->f(I)Landroid/view/View;

    .line 210
    move-result-object v7

    .line 211
    if-eqz v2, :cond_e

    .line 213
    if-eq v2, v8, :cond_e

    .line 215
    const/4 v9, 0x2

    .line 216
    const/4 v10, 0x3

    .line 217
    if-eq v2, v9, :cond_d

    .line 219
    if-ne v2, v10, :cond_c

    .line 221
    goto :goto_6

    .line 222
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    .line 226
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    move-result-object v2

    .line 239
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 242
    throw v1

    .line 243
    :cond_d
    :goto_6
    iget v11, v3, Lcom/google/android/flexbox/a;->g:I

    .line 245
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 248
    move-result v6

    .line 249
    invoke-virtual {v0, v7, v11, v6}, Lcom/google/android/flexbox/b;->N(Landroid/view/View;II)V

    .line 252
    goto :goto_5

    .line 253
    :cond_e
    const/4 v9, 0x2

    .line 254
    const/4 v10, 0x3

    .line 255
    iget v11, v3, Lcom/google/android/flexbox/a;->g:I

    .line 257
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 260
    move-result v6

    .line 261
    invoke-virtual {v0, v7, v11, v6}, Lcom/google/android/flexbox/b;->O(Landroid/view/View;II)V

    .line 264
    goto :goto_5

    .line 265
    :cond_f
    return-void
.end method

.method public final R(IIILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->d:[J

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p2, p3}, Lcom/google/android/flexbox/b;->K(II)J

    .line 8
    move-result-wide p2

    .line 9
    aput-wide p2, v0, p1

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/google/android/flexbox/b;->e:[J

    .line 13
    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 18
    move-result p3

    .line 19
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 22
    move-result p4

    .line 23
    invoke-virtual {p0, p3, p4}, Lcom/google/android/flexbox/b;->K(II)J

    .line 26
    move-result-wide p3

    .line 27
    aput-wide p3, p2, p1

    .line 29
    :cond_1
    return-void
.end method

.method public final a(Ljava/util/List;Lcom/google/android/flexbox/a;II)V
    .locals 0

    .line 1
    iput p4, p2, Lcom/google/android/flexbox/a;->m:I

    .line 3
    iget-object p4, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 5
    invoke-interface {p4, p2}, Lfm;->e(Lcom/google/android/flexbox/a;)V

    .line 8
    iput p3, p2, Lcom/google/android/flexbox/a;->p:I

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    return-void
.end method

.method public b(Lcom/google/android/flexbox/b$b;IIIIILjava/util/List;)V
    .locals 31

    .line 1
    move-object/from16 v10, p0

    .line 3
    move-object/from16 v11, p1

    .line 5
    move/from16 v12, p2

    .line 7
    move/from16 v13, p3

    .line 9
    move/from16 v14, p6

    .line 11
    iget-object v0, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 13
    invoke-interface {v0}, Lfm;->i()Z

    .line 16
    move-result v15

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 20
    move-result v9

    .line 21
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 24
    move-result v8

    .line 25
    if-nez p7, :cond_0

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    move-object v7, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object/from16 v7, p7

    .line 36
    :goto_0
    iput-object v7, v11, Lcom/google/android/flexbox/b$b;->a:Ljava/util/List;

    .line 38
    const/4 v6, -0x1

    .line 39
    if-ne v14, v6, :cond_1

    .line 41
    const/4 v0, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    .line 44
    :goto_1
    invoke-virtual {v10, v15}, Lcom/google/android/flexbox/b;->C(Z)I

    .line 47
    move-result v1

    .line 48
    invoke-virtual {v10, v15}, Lcom/google/android/flexbox/b;->A(Z)I

    .line 51
    move-result v2

    .line 52
    invoke-virtual {v10, v15}, Lcom/google/android/flexbox/b;->B(Z)I

    .line 55
    move-result v16

    .line 56
    invoke-virtual {v10, v15}, Lcom/google/android/flexbox/b;->z(Z)I

    .line 59
    move-result v17

    .line 60
    new-instance v3, Lcom/google/android/flexbox/a;

    .line 62
    invoke-direct {v3}, Lcom/google/android/flexbox/a;-><init>()V

    .line 65
    move/from16 v6, p5

    .line 67
    iput v6, v3, Lcom/google/android/flexbox/a;->o:I

    .line 69
    add-int/2addr v2, v1

    .line 70
    iput v2, v3, Lcom/google/android/flexbox/a;->e:I

    .line 72
    iget-object v1, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 74
    invoke-interface {v1}, Lfm;->getFlexItemCount()I

    .line 77
    move-result v1

    .line 78
    const/high16 v18, -0x80000000

    .line 80
    move/from16 v19, v0

    .line 82
    const/4 v0, 0x0

    .line 83
    const/16 v20, 0x0

    .line 85
    const/16 v21, 0x0

    .line 87
    const/high16 v22, -0x80000000

    .line 89
    :goto_2
    if-ge v6, v1, :cond_17

    .line 91
    iget-object v4, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 93
    invoke-interface {v4, v6}, Lfm;->f(I)Landroid/view/View;

    .line 96
    move-result-object v4

    .line 97
    if-nez v4, :cond_2

    .line 99
    invoke-virtual {v10, v6, v1, v3}, Lcom/google/android/flexbox/b;->F(IILcom/google/android/flexbox/a;)Z

    .line 102
    move-result v4

    .line 103
    if-eqz v4, :cond_3

    .line 105
    invoke-virtual {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/b;->a(Ljava/util/List;Lcom/google/android/flexbox/a;II)V

    .line 108
    goto :goto_3

    .line 109
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 112
    move-result v5

    .line 113
    const/16 v11, 0x8

    .line 115
    if-ne v5, v11, :cond_4

    .line 117
    iget v4, v3, Lcom/google/android/flexbox/a;->i:I

    .line 119
    const/4 v5, 0x1

    .line 120
    add-int/2addr v4, v5

    .line 121
    iput v4, v3, Lcom/google/android/flexbox/a;->i:I

    .line 123
    iget v4, v3, Lcom/google/android/flexbox/a;->h:I

    .line 125
    add-int/2addr v4, v5

    .line 126
    iput v4, v3, Lcom/google/android/flexbox/a;->h:I

    .line 128
    invoke-virtual {v10, v6, v1, v3}, Lcom/google/android/flexbox/b;->F(IILcom/google/android/flexbox/a;)Z

    .line 131
    move-result v4

    .line 132
    if-eqz v4, :cond_3

    .line 134
    invoke-virtual {v10, v7, v3, v6, v0}, Lcom/google/android/flexbox/b;->a(Ljava/util/List;Lcom/google/android/flexbox/a;II)V

    .line 137
    :cond_3
    :goto_3
    move/from16 v12, p4

    .line 139
    move/from16 v24, v8

    .line 141
    move/from16 v26, v9

    .line 143
    move v4, v13

    .line 144
    move v9, v14

    .line 145
    const/4 v11, -0x1

    .line 146
    const/16 v27, 0x0

    .line 148
    move-object v14, v7

    .line 149
    move v7, v2

    .line 150
    move v2, v1

    .line 151
    const/4 v1, 0x1

    .line 152
    goto/16 :goto_d

    .line 154
    :cond_4
    instance-of v5, v4, Landroid/widget/CompoundButton;

    .line 156
    if-eqz v5, :cond_5

    .line 158
    move-object v5, v4

    .line 159
    check-cast v5, Landroid/widget/CompoundButton;

    .line 161
    invoke-virtual {v10, v5}, Lcom/google/android/flexbox/b;->n(Landroid/widget/CompoundButton;)V

    .line 164
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 167
    move-result-object v5

    .line 168
    move-object v11, v5

    .line 169
    check-cast v11, Lcom/google/android/flexbox/FlexItem;

    .line 171
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->e()I

    .line 174
    move-result v5

    .line 175
    move/from16 v25, v1

    .line 177
    const/4 v1, 0x4

    .line 178
    if-ne v5, v1, :cond_6

    .line 180
    iget-object v1, v3, Lcom/google/android/flexbox/a;->n:Ljava/util/List;

    .line 182
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v5

    .line 186
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    :cond_6
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->y(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 192
    move-result v1

    .line 193
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->d()F

    .line 196
    move-result v5

    .line 197
    const/high16 v26, -0x40800000    # -1.0f

    .line 199
    cmpl-float v5, v5, v26

    .line 201
    if-eqz v5, :cond_7

    .line 203
    const/high16 v5, 0x40000000    # 2.0f

    .line 205
    if-ne v9, v5, :cond_7

    .line 207
    int-to-float v1, v8

    .line 208
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->d()F

    .line 211
    move-result v5

    .line 212
    mul-float v1, v1, v5

    .line 214
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 217
    move-result v1

    .line 218
    :cond_7
    if-eqz v15, :cond_8

    .line 220
    iget-object v5, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 222
    const/4 v14, 0x1

    .line 223
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->w(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 226
    move-result v24

    .line 227
    add-int v24, v2, v24

    .line 229
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->u(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 232
    move-result v26

    .line 233
    add-int v14, v24, v26

    .line 235
    invoke-interface {v5, v12, v14, v1}, Lfm;->g(III)I

    .line 238
    move-result v1

    .line 239
    iget-object v5, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 241
    add-int v14, v16, v17

    .line 243
    move/from16 v24, v8

    .line 245
    const/4 v8, 0x1

    .line 246
    invoke-virtual {v10, v11, v8}, Lcom/google/android/flexbox/b;->v(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 249
    move-result v26

    .line 250
    add-int v14, v14, v26

    .line 252
    invoke-virtual {v10, v11, v8}, Lcom/google/android/flexbox/b;->t(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 255
    move-result v26

    .line 256
    add-int v14, v14, v26

    .line 258
    add-int/2addr v14, v0

    .line 259
    move/from16 v26, v9

    .line 261
    invoke-virtual {v10, v11, v8}, Lcom/google/android/flexbox/b;->x(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 264
    move-result v9

    .line 265
    invoke-interface {v5, v13, v14, v9}, Lfm;->c(III)I

    .line 268
    move-result v5

    .line 269
    invoke-virtual {v4, v1, v5}, Landroid/view/View;->measure(II)V

    .line 272
    invoke-virtual {v10, v6, v1, v5, v4}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 275
    move v9, v1

    .line 276
    const/4 v14, 0x0

    .line 277
    goto :goto_4

    .line 278
    :cond_8
    move/from16 v24, v8

    .line 280
    move/from16 v26, v9

    .line 282
    const/4 v8, 0x1

    .line 283
    iget-object v5, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 285
    add-int v9, v16, v17

    .line 287
    const/4 v14, 0x0

    .line 288
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->v(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 291
    move-result v23

    .line 292
    add-int v9, v9, v23

    .line 294
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->t(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 297
    move-result v23

    .line 298
    add-int v9, v9, v23

    .line 300
    add-int/2addr v9, v0

    .line 301
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->x(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 304
    move-result v8

    .line 305
    invoke-interface {v5, v13, v9, v8}, Lfm;->g(III)I

    .line 308
    move-result v5

    .line 309
    iget-object v8, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 311
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->w(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 314
    move-result v9

    .line 315
    add-int/2addr v9, v2

    .line 316
    invoke-virtual {v10, v11, v14}, Lcom/google/android/flexbox/b;->u(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 319
    move-result v23

    .line 320
    add-int v9, v9, v23

    .line 322
    invoke-interface {v8, v12, v9, v1}, Lfm;->c(III)I

    .line 325
    move-result v1

    .line 326
    invoke-virtual {v4, v5, v1}, Landroid/view/View;->measure(II)V

    .line 329
    invoke-virtual {v10, v6, v5, v1, v4}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 332
    move v9, v1

    .line 333
    :goto_4
    iget-object v1, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 335
    invoke-interface {v1, v6, v4}, Lfm;->h(ILandroid/view/View;)V

    .line 338
    invoke-virtual {v10, v4, v6}, Lcom/google/android/flexbox/b;->e(Landroid/view/View;I)V

    .line 341
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    .line 344
    move-result v1

    .line 345
    move/from16 v5, v20

    .line 347
    invoke-static {v5, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 350
    move-result v20

    .line 351
    iget v5, v3, Lcom/google/android/flexbox/a;->e:I

    .line 353
    invoke-virtual {v10, v4, v15}, Lcom/google/android/flexbox/b;->E(Landroid/view/View;Z)I

    .line 356
    move-result v1

    .line 357
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->w(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 360
    move-result v8

    .line 361
    add-int/2addr v1, v8

    .line 362
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->u(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 365
    move-result v8

    .line 366
    add-int/2addr v8, v1

    .line 367
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 370
    move-result v23

    .line 371
    move v1, v0

    .line 372
    move-object/from16 v0, p0

    .line 374
    move v12, v1

    .line 375
    move/from16 v14, v25

    .line 377
    move-object v1, v4

    .line 378
    move v14, v2

    .line 379
    move/from16 v2, v26

    .line 381
    move-object/from16 v28, v3

    .line 383
    move/from16 v3, v24

    .line 385
    move/from16 v29, v14

    .line 387
    const/16 v27, 0x0

    .line 389
    move-object v14, v4

    .line 390
    move v4, v5

    .line 391
    move v5, v8

    .line 392
    move v8, v6

    .line 393
    move-object/from16 p5, v14

    .line 395
    const/4 v14, -0x1

    .line 396
    move-object v6, v11

    .line 397
    move-object v14, v7

    .line 398
    move v7, v8

    .line 399
    move v13, v8

    .line 400
    move/from16 v8, v21

    .line 402
    move/from16 v30, v9

    .line 404
    move/from16 v9, v23

    .line 406
    invoke-virtual/range {v0 .. v9}, Lcom/google/android/flexbox/b;->H(Landroid/view/View;IIIILcom/google/android/flexbox/FlexItem;III)Z

    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_e

    .line 412
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/flexbox/a;->b()I

    .line 415
    move-result v0

    .line 416
    if-lez v0, :cond_a

    .line 418
    if-lez v13, :cond_9

    .line 420
    add-int/lit8 v4, v13, -0x1

    .line 422
    move-object/from16 v3, v28

    .line 424
    goto :goto_5

    .line 425
    :cond_9
    move-object/from16 v3, v28

    .line 427
    const/4 v4, 0x0

    .line 428
    :goto_5
    invoke-virtual {v10, v14, v3, v4, v12}, Lcom/google/android/flexbox/b;->a(Ljava/util/List;Lcom/google/android/flexbox/a;II)V

    .line 431
    iget v0, v3, Lcom/google/android/flexbox/a;->g:I

    .line 433
    add-int/2addr v0, v12

    .line 434
    goto :goto_6

    .line 435
    :cond_a
    move v0, v12

    .line 436
    :goto_6
    if-eqz v15, :cond_c

    .line 438
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->c()I

    .line 441
    move-result v1

    .line 442
    const/4 v2, -0x1

    .line 443
    if-ne v1, v2, :cond_b

    .line 445
    iget-object v1, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 447
    invoke-interface {v1}, Lfm;->getPaddingTop()I

    .line 450
    move-result v2

    .line 451
    iget-object v3, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 453
    invoke-interface {v3}, Lfm;->getPaddingBottom()I

    .line 456
    move-result v3

    .line 457
    add-int/2addr v2, v3

    .line 458
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 461
    move-result v3

    .line 462
    add-int/2addr v2, v3

    .line 463
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 466
    move-result v3

    .line 467
    add-int/2addr v2, v3

    .line 468
    add-int/2addr v2, v0

    .line 469
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->c()I

    .line 472
    move-result v3

    .line 473
    move/from16 v4, p3

    .line 475
    move v6, v13

    .line 476
    invoke-interface {v1, v4, v2, v3}, Lfm;->c(III)I

    .line 479
    move-result v1

    .line 480
    move-object/from16 v2, p5

    .line 482
    move/from16 v3, v30

    .line 484
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 487
    invoke-virtual {v10, v2, v6}, Lcom/google/android/flexbox/b;->e(Landroid/view/View;I)V

    .line 490
    goto :goto_7

    .line 491
    :cond_b
    move/from16 v4, p3

    .line 493
    move-object/from16 v2, p5

    .line 495
    move v6, v13

    .line 496
    goto :goto_7

    .line 497
    :cond_c
    move/from16 v4, p3

    .line 499
    move-object/from16 v2, p5

    .line 501
    move v6, v13

    .line 502
    move/from16 v3, v30

    .line 504
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->k()I

    .line 507
    move-result v1

    .line 508
    const/4 v5, -0x1

    .line 509
    if-ne v1, v5, :cond_d

    .line 511
    iget-object v1, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 513
    invoke-interface {v1}, Lfm;->getPaddingLeft()I

    .line 516
    move-result v5

    .line 517
    iget-object v7, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 519
    invoke-interface {v7}, Lfm;->getPaddingRight()I

    .line 522
    move-result v7

    .line 523
    add-int/2addr v5, v7

    .line 524
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 527
    move-result v7

    .line 528
    add-int/2addr v5, v7

    .line 529
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 532
    move-result v7

    .line 533
    add-int/2addr v5, v7

    .line 534
    add-int/2addr v5, v0

    .line 535
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->k()I

    .line 538
    move-result v7

    .line 539
    invoke-interface {v1, v4, v5, v7}, Lfm;->g(III)I

    .line 542
    move-result v1

    .line 543
    invoke-virtual {v2, v1, v3}, Landroid/view/View;->measure(II)V

    .line 546
    invoke-virtual {v10, v2, v6}, Lcom/google/android/flexbox/b;->e(Landroid/view/View;I)V

    .line 549
    :cond_d
    :goto_7
    new-instance v3, Lcom/google/android/flexbox/a;

    .line 551
    invoke-direct {v3}, Lcom/google/android/flexbox/a;-><init>()V

    .line 554
    const/4 v1, 0x1

    .line 555
    iput v1, v3, Lcom/google/android/flexbox/a;->h:I

    .line 557
    move/from16 v7, v29

    .line 559
    iput v7, v3, Lcom/google/android/flexbox/a;->e:I

    .line 561
    iput v6, v3, Lcom/google/android/flexbox/a;->o:I

    .line 563
    const/4 v5, 0x0

    .line 564
    const/high16 v8, -0x80000000

    .line 566
    goto :goto_8

    .line 567
    :cond_e
    move/from16 v4, p3

    .line 569
    move-object/from16 v2, p5

    .line 571
    move v6, v13

    .line 572
    move-object/from16 v3, v28

    .line 574
    move/from16 v7, v29

    .line 576
    const/4 v1, 0x1

    .line 577
    iget v0, v3, Lcom/google/android/flexbox/a;->h:I

    .line 579
    add-int/2addr v0, v1

    .line 580
    iput v0, v3, Lcom/google/android/flexbox/a;->h:I

    .line 582
    add-int/lit8 v0, v21, 0x1

    .line 584
    move v5, v0

    .line 585
    move v0, v12

    .line 586
    move/from16 v8, v22

    .line 588
    :goto_8
    iget-boolean v9, v3, Lcom/google/android/flexbox/a;->q:Z

    .line 590
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 593
    move-result v12

    .line 594
    const/4 v13, 0x0

    .line 595
    cmpl-float v12, v12, v13

    .line 597
    if-eqz v12, :cond_f

    .line 599
    const/4 v12, 0x1

    .line 600
    goto :goto_9

    .line 601
    :cond_f
    const/4 v12, 0x0

    .line 602
    :goto_9
    or-int/2addr v9, v12

    .line 603
    iput-boolean v9, v3, Lcom/google/android/flexbox/a;->q:Z

    .line 605
    iget-boolean v9, v3, Lcom/google/android/flexbox/a;->r:Z

    .line 607
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 610
    move-result v12

    .line 611
    cmpl-float v12, v12, v13

    .line 613
    if-eqz v12, :cond_10

    .line 615
    const/4 v12, 0x1

    .line 616
    goto :goto_a

    .line 617
    :cond_10
    const/4 v12, 0x0

    .line 618
    :goto_a
    or-int/2addr v9, v12

    .line 619
    iput-boolean v9, v3, Lcom/google/android/flexbox/a;->r:Z

    .line 621
    iget-object v9, v10, Lcom/google/android/flexbox/b;->c:[I

    .line 623
    if-eqz v9, :cond_11

    .line 625
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 628
    move-result v12

    .line 629
    aput v12, v9, v6

    .line 631
    :cond_11
    iget v9, v3, Lcom/google/android/flexbox/a;->e:I

    .line 633
    invoke-virtual {v10, v2, v15}, Lcom/google/android/flexbox/b;->E(Landroid/view/View;Z)I

    .line 636
    move-result v12

    .line 637
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->w(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 640
    move-result v13

    .line 641
    add-int/2addr v12, v13

    .line 642
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->u(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 645
    move-result v13

    .line 646
    add-int/2addr v12, v13

    .line 647
    add-int/2addr v9, v12

    .line 648
    iput v9, v3, Lcom/google/android/flexbox/a;->e:I

    .line 650
    iget v9, v3, Lcom/google/android/flexbox/a;->j:F

    .line 652
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 655
    move-result v12

    .line 656
    add-float/2addr v9, v12

    .line 657
    iput v9, v3, Lcom/google/android/flexbox/a;->j:F

    .line 659
    iget v9, v3, Lcom/google/android/flexbox/a;->k:F

    .line 661
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->f()F

    .line 664
    move-result v12

    .line 665
    add-float/2addr v9, v12

    .line 666
    iput v9, v3, Lcom/google/android/flexbox/a;->k:F

    .line 668
    iget-object v9, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 670
    invoke-interface {v9, v2, v6, v5, v3}, Lfm;->d(Landroid/view/View;IILcom/google/android/flexbox/a;)V

    .line 673
    invoke-virtual {v10, v2, v15}, Lcom/google/android/flexbox/b;->D(Landroid/view/View;Z)I

    .line 676
    move-result v9

    .line 677
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->v(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 680
    move-result v12

    .line 681
    add-int/2addr v9, v12

    .line 682
    invoke-virtual {v10, v11, v15}, Lcom/google/android/flexbox/b;->t(Lcom/google/android/flexbox/FlexItem;Z)I

    .line 685
    move-result v12

    .line 686
    add-int/2addr v9, v12

    .line 687
    iget-object v12, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 689
    invoke-interface {v12, v2}, Lfm;->j(Landroid/view/View;)I

    .line 692
    move-result v12

    .line 693
    add-int/2addr v9, v12

    .line 694
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 697
    move-result v8

    .line 698
    iget v9, v3, Lcom/google/android/flexbox/a;->g:I

    .line 700
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    .line 703
    move-result v9

    .line 704
    iput v9, v3, Lcom/google/android/flexbox/a;->g:I

    .line 706
    if-eqz v15, :cond_13

    .line 708
    iget-object v9, v10, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 710
    invoke-interface {v9}, Lfm;->getFlexWrap()I

    .line 713
    move-result v9

    .line 714
    const/4 v12, 0x2

    .line 715
    if-eq v9, v12, :cond_12

    .line 717
    iget v9, v3, Lcom/google/android/flexbox/a;->l:I

    .line 719
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    .line 722
    move-result v2

    .line 723
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 726
    move-result v11

    .line 727
    add-int/2addr v2, v11

    .line 728
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 731
    move-result v2

    .line 732
    iput v2, v3, Lcom/google/android/flexbox/a;->l:I

    .line 734
    goto :goto_b

    .line 735
    :cond_12
    iget v9, v3, Lcom/google/android/flexbox/a;->l:I

    .line 737
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 740
    move-result v12

    .line 741
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    .line 744
    move-result v2

    .line 745
    sub-int/2addr v12, v2

    .line 746
    invoke-interface {v11}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 749
    move-result v2

    .line 750
    add-int/2addr v12, v2

    .line 751
    invoke-static {v9, v12}, Ljava/lang/Math;->max(II)I

    .line 754
    move-result v2

    .line 755
    iput v2, v3, Lcom/google/android/flexbox/a;->l:I

    .line 757
    :cond_13
    :goto_b
    move/from16 v2, v25

    .line 759
    invoke-virtual {v10, v6, v2, v3}, Lcom/google/android/flexbox/b;->F(IILcom/google/android/flexbox/a;)Z

    .line 762
    move-result v9

    .line 763
    if-eqz v9, :cond_14

    .line 765
    invoke-virtual {v10, v14, v3, v6, v0}, Lcom/google/android/flexbox/b;->a(Ljava/util/List;Lcom/google/android/flexbox/a;II)V

    .line 768
    iget v9, v3, Lcom/google/android/flexbox/a;->g:I

    .line 770
    add-int/2addr v0, v9

    .line 771
    :cond_14
    move/from16 v9, p6

    .line 773
    const/4 v11, -0x1

    .line 774
    if-eq v9, v11, :cond_15

    .line 776
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 779
    move-result v12

    .line 780
    if-lez v12, :cond_15

    .line 782
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 785
    move-result v12

    .line 786
    sub-int/2addr v12, v1

    .line 787
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 790
    move-result-object v12

    .line 791
    check-cast v12, Lcom/google/android/flexbox/a;

    .line 793
    iget v12, v12, Lcom/google/android/flexbox/a;->p:I

    .line 795
    if-lt v12, v9, :cond_15

    .line 797
    if-lt v6, v9, :cond_15

    .line 799
    if-nez v19, :cond_15

    .line 801
    invoke-virtual {v3}, Lcom/google/android/flexbox/a;->a()I

    .line 804
    move-result v0

    .line 805
    neg-int v0, v0

    .line 806
    move/from16 v12, p4

    .line 808
    const/16 v19, 0x1

    .line 810
    goto :goto_c

    .line 811
    :cond_15
    move/from16 v12, p4

    .line 813
    :goto_c
    if-le v0, v12, :cond_16

    .line 815
    if-eqz v19, :cond_16

    .line 817
    move-object/from16 v0, p1

    .line 819
    move/from16 v5, v20

    .line 821
    goto :goto_e

    .line 822
    :cond_16
    move/from16 v21, v5

    .line 824
    move/from16 v22, v8

    .line 826
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 828
    move-object/from16 v11, p1

    .line 830
    move/from16 v12, p2

    .line 832
    move v1, v2

    .line 833
    move v13, v4

    .line 834
    move v2, v7

    .line 835
    move-object v7, v14

    .line 836
    move/from16 v8, v24

    .line 838
    move v14, v9

    .line 839
    move/from16 v9, v26

    .line 841
    goto/16 :goto_2

    .line 843
    :cond_17
    move/from16 v5, v20

    .line 845
    move-object/from16 v0, p1

    .line 847
    :goto_e
    iput v5, v0, Lcom/google/android/flexbox/b$b;->b:I

    .line 849
    return-void
.end method

.method public c(Lcom/google/android/flexbox/b$b;II)V
    .locals 8

    .line 1
    const v4, 0x7fffffff

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, -0x1

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p2

    .line 10
    move v3, p3

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/b;->b(Lcom/google/android/flexbox/b$b;IIIIILjava/util/List;)V

    .line 14
    return-void
.end method

.method public d(Lcom/google/android/flexbox/b$b;II)V
    .locals 8

    .line 1
    const v4, 0x7fffffff

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, -0x1

    .line 6
    const/4 v7, 0x0

    .line 7
    move-object v0, p0

    .line 8
    move-object v1, p1

    .line 9
    move v2, p3

    .line 10
    move v3, p2

    .line 11
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/flexbox/b;->b(Lcom/google/android/flexbox/b$b;IIIIILjava/util/List;)V

    .line 14
    return-void
.end method

.method public final e(Landroid/view/View;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    move-result v2

    .line 15
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 18
    move-result v3

    .line 19
    const/4 v4, 0x1

    .line 20
    if-ge v1, v3, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 25
    move-result v1

    .line 26
    :goto_0
    const/4 v3, 0x1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 31
    move-result v3

    .line 32
    if-le v1, v3, :cond_1

    .line 34
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v3, 0x0

    .line 40
    :goto_1
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 43
    move-result v5

    .line 44
    if-ge v2, v5, :cond_2

    .line 46
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 49
    move-result v2

    .line 50
    goto :goto_2

    .line 51
    :cond_2
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 54
    move-result v5

    .line 55
    if-le v2, v5, :cond_3

    .line 57
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 60
    move-result v2

    .line 61
    goto :goto_2

    .line 62
    :cond_3
    move v4, v3

    .line 63
    :goto_2
    if-eqz v4, :cond_4

    .line 65
    const/high16 v0, 0x40000000    # 2.0f

    .line 67
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 70
    move-result v1

    .line 71
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 74
    move-result v0

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 78
    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 83
    invoke-interface {v0, p2, p1}, Lfm;->h(ILandroid/view/View;)V

    .line 86
    :cond_4
    return-void
.end method

.method public final f(Ljava/util/List;II)Ljava/util/List;
    .locals 3

    .line 1
    sub-int/2addr p2, p3

    .line 2
    div-int/lit8 p2, p2, 0x2

    .line 4
    new-instance p3, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v0, Lcom/google/android/flexbox/a;

    .line 11
    invoke-direct {v0}, Lcom/google/android/flexbox/a;-><init>()V

    .line 14
    iput p2, v0, Lcom/google/android/flexbox/a;->g:I

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    move-result p2

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p2, :cond_2

    .line 23
    if-nez v1, :cond_0

    .line 25
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 28
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/google/android/flexbox/a;

    .line 34
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 40
    move-result v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 43
    if-ne v1, v2, :cond_1

    .line 45
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    return-object p3
.end method

.method public final g(I)Ljava/util/List;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    if-ge v1, p1, :cond_0

    .line 9
    iget-object v2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 11
    invoke-interface {v2, v1}, Lfm;->a(I)Landroid/view/View;

    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/google/android/flexbox/FlexItem;

    .line 21
    new-instance v3, Lcom/google/android/flexbox/b$c;

    .line 23
    const/4 v4, 0x0

    .line 24
    invoke-direct {v3, v4}, Lcom/google/android/flexbox/b$c;-><init>(Lcom/google/android/flexbox/b$a;)V

    .line 27
    invoke-interface {v2}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    .line 30
    move-result v2

    .line 31
    iput v2, v3, Lcom/google/android/flexbox/b$c;->b:I

    .line 33
    iput v1, v3, Lcom/google/android/flexbox/b$c;->a:I

    .line 35
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v1, v1, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-object v0
.end method

.method public h(Landroid/util/SparseIntArray;)[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getFlexItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/b;->g(I)Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/flexbox/b;->M(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public i(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Landroid/util/SparseIntArray;)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getFlexItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/b;->g(I)Ljava/util/List;

    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Lcom/google/android/flexbox/b$c;

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-direct {v2, v3}, Lcom/google/android/flexbox/b$c;-><init>(Lcom/google/android/flexbox/b$a;)V

    .line 17
    const/4 v3, 0x1

    .line 18
    if-eqz p1, :cond_0

    .line 20
    instance-of p1, p3, Lcom/google/android/flexbox/FlexItem;

    .line 22
    if-eqz p1, :cond_0

    .line 24
    check-cast p3, Lcom/google/android/flexbox/FlexItem;

    .line 26
    invoke-interface {p3}, Lcom/google/android/flexbox/FlexItem;->getOrder()I

    .line 29
    move-result p1

    .line 30
    iput p1, v2, Lcom/google/android/flexbox/b$c;->b:I

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput v3, v2, Lcom/google/android/flexbox/b$c;->b:I

    .line 35
    :goto_0
    const/4 p1, -0x1

    .line 36
    if-eq p2, p1, :cond_3

    .line 38
    if-ne p2, v0, :cond_1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 43
    invoke-interface {p1}, Lfm;->getFlexItemCount()I

    .line 46
    move-result p1

    .line 47
    if-ge p2, p1, :cond_2

    .line 49
    iput p2, v2, Lcom/google/android/flexbox/b$c;->a:I

    .line 51
    :goto_1
    if-ge p2, v0, :cond_4

    .line 53
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/google/android/flexbox/b$c;

    .line 59
    iget p3, p1, Lcom/google/android/flexbox/b$c;->a:I

    .line 61
    add-int/2addr p3, v3

    .line 62
    iput p3, p1, Lcom/google/android/flexbox/b$c;->a:I

    .line 64
    add-int/lit8 p2, p2, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iput v0, v2, Lcom/google/android/flexbox/b$c;->a:I

    .line 69
    goto :goto_3

    .line 70
    :cond_3
    :goto_2
    iput v0, v2, Lcom/google/android/flexbox/b$c;->a:I

    .line 72
    :cond_4
    :goto_3
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/2addr v0, v3

    .line 76
    invoke-virtual {p0, v0, v1, p4}, Lcom/google/android/flexbox/b;->M(ILjava/util/List;Landroid/util/SparseIntArray;)[I

    .line 79
    move-result-object p1

    .line 80
    return-object p1
.end method

.method public j(III)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getFlexDirection()I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    const/4 v2, 0x2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 12
    if-eq v0, v3, :cond_2

    .line 14
    if-eq v0, v2, :cond_1

    .line 16
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string p3, "Invalid flex direction: "

    .line 28
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 38
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 41
    throw p1

    .line 42
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 45
    move-result p2

    .line 46
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 49
    move-result p1

    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 54
    move-result p1

    .line 55
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 58
    move-result p2

    .line 59
    move v11, p2

    .line 60
    move p2, p1

    .line 61
    move p1, v11

    .line 62
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 64
    invoke-interface {v0}, Lfm;->getFlexLinesInternal()Ljava/util/List;

    .line 67
    move-result-object v0

    .line 68
    const/high16 v4, 0x40000000    # 2.0f

    .line 70
    if-ne p2, v4, :cond_15

    .line 72
    iget-object p2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 74
    invoke-interface {p2}, Lfm;->getSumOfCrossSize()I

    .line 77
    move-result p2

    .line 78
    add-int/2addr p2, p3

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 82
    move-result v4

    .line 83
    const/4 v5, 0x0

    .line 84
    if-ne v4, v3, :cond_3

    .line 86
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object p2

    .line 90
    check-cast p2, Lcom/google/android/flexbox/a;

    .line 92
    sub-int/2addr p1, p3

    .line 93
    iput p1, p2, Lcom/google/android/flexbox/a;->g:I

    .line 95
    goto/16 :goto_8

    .line 97
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 100
    move-result p3

    .line 101
    if-lt p3, v2, :cond_15

    .line 103
    iget-object p3, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 105
    invoke-interface {p3}, Lfm;->getAlignContent()I

    .line 108
    move-result p3

    .line 109
    if-eq p3, v3, :cond_14

    .line 111
    if-eq p3, v2, :cond_13

    .line 113
    const/high16 v4, -0x40800000    # -1.0f

    .line 115
    const/4 v6, 0x0

    .line 116
    const/high16 v7, 0x3f800000    # 1.0f

    .line 118
    if-eq p3, v1, :cond_c

    .line 120
    const/4 v1, 0x4

    .line 121
    if-eq p3, v1, :cond_9

    .line 123
    const/4 v1, 0x5

    .line 124
    if-eq p3, v1, :cond_4

    .line 126
    goto/16 :goto_8

    .line 128
    :cond_4
    if-lt p2, p1, :cond_5

    .line 130
    goto/16 :goto_8

    .line 132
    :cond_5
    sub-int/2addr p1, p2

    .line 133
    int-to-float p1, p1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 137
    move-result p2

    .line 138
    int-to-float p2, p2

    .line 139
    div-float/2addr p1, p2

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 143
    move-result p2

    .line 144
    const/4 p3, 0x0

    .line 145
    :goto_2
    if-ge v5, p2, :cond_15

    .line 147
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 150
    move-result-object v1

    .line 151
    check-cast v1, Lcom/google/android/flexbox/a;

    .line 153
    iget v2, v1, Lcom/google/android/flexbox/a;->g:I

    .line 155
    int-to-float v2, v2

    .line 156
    add-float/2addr v2, p1

    .line 157
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 160
    move-result v8

    .line 161
    sub-int/2addr v8, v3

    .line 162
    if-ne v5, v8, :cond_6

    .line 164
    add-float/2addr v2, p3

    .line 165
    const/4 p3, 0x0

    .line 166
    :cond_6
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 169
    move-result v8

    .line 170
    int-to-float v9, v8

    .line 171
    sub-float/2addr v2, v9

    .line 172
    add-float/2addr p3, v2

    .line 173
    cmpl-float v2, p3, v7

    .line 175
    if-lez v2, :cond_7

    .line 177
    add-int/lit8 v8, v8, 0x1

    .line 179
    sub-float/2addr p3, v7

    .line 180
    goto :goto_3

    .line 181
    :cond_7
    cmpg-float v2, p3, v4

    .line 183
    if-gez v2, :cond_8

    .line 185
    add-int/lit8 v8, v8, -0x1

    .line 187
    add-float/2addr p3, v7

    .line 188
    :cond_8
    :goto_3
    iput v8, v1, Lcom/google/android/flexbox/a;->g:I

    .line 190
    add-int/lit8 v5, v5, 0x1

    .line 192
    goto :goto_2

    .line 193
    :cond_9
    if-lt p2, p1, :cond_a

    .line 195
    iget-object p3, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 197
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/flexbox/b;->f(Ljava/util/List;II)Ljava/util/List;

    .line 200
    move-result-object p1

    .line 201
    invoke-interface {p3, p1}, Lfm;->setFlexLines(Ljava/util/List;)V

    .line 204
    goto/16 :goto_8

    .line 206
    :cond_a
    sub-int/2addr p1, p2

    .line 207
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 210
    move-result p2

    .line 211
    mul-int/lit8 p2, p2, 0x2

    .line 213
    div-int/2addr p1, p2

    .line 214
    new-instance p2, Ljava/util/ArrayList;

    .line 216
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 219
    new-instance p3, Lcom/google/android/flexbox/a;

    .line 221
    invoke-direct {p3}, Lcom/google/android/flexbox/a;-><init>()V

    .line 224
    iput p1, p3, Lcom/google/android/flexbox/a;->g:I

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object p1

    .line 230
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result v0

    .line 234
    if-eqz v0, :cond_b

    .line 236
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object v0

    .line 240
    check-cast v0, Lcom/google/android/flexbox/a;

    .line 242
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    goto :goto_4

    .line 252
    :cond_b
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 254
    invoke-interface {p1, p2}, Lfm;->setFlexLines(Ljava/util/List;)V

    .line 257
    goto/16 :goto_8

    .line 259
    :cond_c
    if-lt p2, p1, :cond_d

    .line 261
    goto/16 :goto_8

    .line 263
    :cond_d
    sub-int/2addr p1, p2

    .line 264
    int-to-float p1, p1

    .line 265
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 268
    move-result p2

    .line 269
    sub-int/2addr p2, v3

    .line 270
    int-to-float p2, p2

    .line 271
    div-float/2addr p1, p2

    .line 272
    new-instance p2, Ljava/util/ArrayList;

    .line 274
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 277
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 280
    move-result p3

    .line 281
    const/4 v1, 0x0

    .line 282
    :goto_5
    if-ge v5, p3, :cond_12

    .line 284
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 287
    move-result-object v8

    .line 288
    check-cast v8, Lcom/google/android/flexbox/a;

    .line 290
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 296
    move-result v8

    .line 297
    sub-int/2addr v8, v3

    .line 298
    if-eq v5, v8, :cond_11

    .line 300
    new-instance v8, Lcom/google/android/flexbox/a;

    .line 302
    invoke-direct {v8}, Lcom/google/android/flexbox/a;-><init>()V

    .line 305
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 308
    move-result v9

    .line 309
    sub-int/2addr v9, v2

    .line 310
    if-ne v5, v9, :cond_e

    .line 312
    add-float/2addr v1, p1

    .line 313
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 316
    move-result v1

    .line 317
    iput v1, v8, Lcom/google/android/flexbox/a;->g:I

    .line 319
    const/4 v1, 0x0

    .line 320
    goto :goto_6

    .line 321
    :cond_e
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    .line 324
    move-result v9

    .line 325
    iput v9, v8, Lcom/google/android/flexbox/a;->g:I

    .line 327
    :goto_6
    iget v9, v8, Lcom/google/android/flexbox/a;->g:I

    .line 329
    int-to-float v10, v9

    .line 330
    sub-float v10, p1, v10

    .line 332
    add-float/2addr v1, v10

    .line 333
    cmpl-float v10, v1, v7

    .line 335
    if-lez v10, :cond_f

    .line 337
    add-int/lit8 v9, v9, 0x1

    .line 339
    iput v9, v8, Lcom/google/android/flexbox/a;->g:I

    .line 341
    sub-float/2addr v1, v7

    .line 342
    goto :goto_7

    .line 343
    :cond_f
    cmpg-float v10, v1, v4

    .line 345
    if-gez v10, :cond_10

    .line 347
    add-int/lit8 v9, v9, -0x1

    .line 349
    iput v9, v8, Lcom/google/android/flexbox/a;->g:I

    .line 351
    add-float/2addr v1, v7

    .line 352
    :cond_10
    :goto_7
    invoke-interface {p2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_11
    add-int/lit8 v5, v5, 0x1

    .line 357
    goto :goto_5

    .line 358
    :cond_12
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 360
    invoke-interface {p1, p2}, Lfm;->setFlexLines(Ljava/util/List;)V

    .line 363
    goto :goto_8

    .line 364
    :cond_13
    iget-object p3, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 366
    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/flexbox/b;->f(Ljava/util/List;II)Ljava/util/List;

    .line 369
    move-result-object p1

    .line 370
    invoke-interface {p3, p1}, Lfm;->setFlexLines(Ljava/util/List;)V

    .line 373
    goto :goto_8

    .line 374
    :cond_14
    sub-int/2addr p1, p2

    .line 375
    new-instance p2, Lcom/google/android/flexbox/a;

    .line 377
    invoke-direct {p2}, Lcom/google/android/flexbox/a;-><init>()V

    .line 380
    iput p1, p2, Lcom/google/android/flexbox/a;->g:I

    .line 382
    invoke-interface {v0, v5, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 385
    :cond_15
    :goto_8
    return-void
.end method

.method public k(II)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/flexbox/b;->l(III)V

    .line 5
    return-void
.end method

.method public l(III)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getFlexItemCount()I

    .line 6
    move-result v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/google/android/flexbox/b;->m(I)V

    .line 10
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 12
    invoke-interface {v0}, Lfm;->getFlexItemCount()I

    .line 15
    move-result v0

    .line 16
    if-lt p3, v0, :cond_0

    .line 18
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 21
    invoke-interface {v0}, Lfm;->getFlexDirection()I

    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 27
    invoke-interface {v1}, Lfm;->getFlexDirection()I

    .line 30
    move-result v1

    .line 31
    const/high16 v2, 0x40000000    # 2.0f

    .line 33
    if-eqz v1, :cond_4

    .line 35
    const/4 v3, 0x1

    .line 36
    if-eq v1, v3, :cond_4

    .line 38
    const/4 v3, 0x2

    .line 39
    if-eq v1, v3, :cond_2

    .line 41
    const/4 v3, 0x3

    .line 42
    if-ne v1, v3, :cond_1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 49
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    const-string p3, "Invalid flex direction: "

    .line 54
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    throw p1

    .line 68
    :cond_2
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 71
    move-result v0

    .line 72
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 75
    move-result v1

    .line 76
    if-ne v0, v2, :cond_3

    .line 78
    goto :goto_1

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 81
    invoke-interface {v0}, Lfm;->getLargestMainSize()I

    .line 84
    move-result v1

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 87
    invoke-interface {v0}, Lfm;->getPaddingTop()I

    .line 90
    move-result v0

    .line 91
    iget-object v2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 93
    invoke-interface {v2}, Lfm;->getPaddingBottom()I

    .line 96
    move-result v2

    .line 97
    goto :goto_3

    .line 98
    :cond_4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 101
    move-result v0

    .line 102
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 105
    move-result v1

    .line 106
    iget-object v3, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 108
    invoke-interface {v3}, Lfm;->getLargestMainSize()I

    .line 111
    move-result v3

    .line 112
    if-ne v0, v2, :cond_5

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 118
    move-result v0

    .line 119
    move v1, v0

    .line 120
    :goto_2
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 122
    invoke-interface {v0}, Lfm;->getPaddingLeft()I

    .line 125
    move-result v0

    .line 126
    iget-object v2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 128
    invoke-interface {v2}, Lfm;->getPaddingRight()I

    .line 131
    move-result v2

    .line 132
    :goto_3
    add-int/2addr v0, v2

    .line 133
    iget-object v2, p0, Lcom/google/android/flexbox/b;->c:[I

    .line 135
    if-eqz v2, :cond_6

    .line 137
    aget p3, v2, p3

    .line 139
    goto :goto_4

    .line 140
    :cond_6
    const/4 p3, 0x0

    .line 141
    :goto_4
    iget-object v2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 143
    invoke-interface {v2}, Lfm;->getFlexLinesInternal()Ljava/util/List;

    .line 146
    move-result-object v9

    .line 147
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 150
    move-result v10

    .line 151
    :goto_5
    if-ge p3, v10, :cond_9

    .line 153
    invoke-interface {v9, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object v2

    .line 157
    move-object v5, v2

    .line 158
    check-cast v5, Lcom/google/android/flexbox/a;

    .line 160
    iget v2, v5, Lcom/google/android/flexbox/a;->e:I

    .line 162
    if-ge v2, v1, :cond_7

    .line 164
    iget-boolean v3, v5, Lcom/google/android/flexbox/a;->q:Z

    .line 166
    if-eqz v3, :cond_7

    .line 168
    const/4 v8, 0x0

    .line 169
    move-object v2, p0

    .line 170
    move v3, p1

    .line 171
    move v4, p2

    .line 172
    move v6, v1

    .line 173
    move v7, v0

    .line 174
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/b;->o(IILcom/google/android/flexbox/a;IIZ)V

    .line 177
    goto :goto_6

    .line 178
    :cond_7
    if-le v2, v1, :cond_8

    .line 180
    iget-boolean v2, v5, Lcom/google/android/flexbox/a;->r:Z

    .line 182
    if-eqz v2, :cond_8

    .line 184
    const/4 v8, 0x0

    .line 185
    move-object v2, p0

    .line 186
    move v3, p1

    .line 187
    move v4, p2

    .line 188
    move v6, v1

    .line 189
    move v7, v0

    .line 190
    invoke-virtual/range {v2 .. v8}, Lcom/google/android/flexbox/b;->L(IILcom/google/android/flexbox/a;IIZ)V

    .line 193
    :cond_8
    :goto_6
    add-int/lit8 p3, p3, 0x1

    .line 195
    goto :goto_5

    .line 196
    :cond_9
    return-void
.end method

.method public final m(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->b:[Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/16 v0, 0xa

    .line 7
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    move-result p1

    .line 11
    new-array p1, p1, [Z

    .line 13
    iput-object p1, p0, Lcom/google/android/flexbox/b;->b:[Z

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    array-length v1, v0

    .line 17
    if-ge v1, p1, :cond_1

    .line 19
    array-length v0, v0

    .line 20
    mul-int/lit8 v0, v0, 0x2

    .line 22
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    move-result p1

    .line 26
    new-array p1, p1, [Z

    .line 28
    iput-object p1, p0, Lcom/google/android/flexbox/b;->b:[Z

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x0

    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([ZZ)V

    .line 35
    :goto_0
    return-void
.end method

.method public final n(Landroid/widget/CompoundButton;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexItem;

    .line 7
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 10
    move-result v1

    .line 11
    invoke-interface {v0}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 14
    move-result v2

    .line 15
    invoke-static {p1}, Lxf;->a(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p1

    .line 19
    const/4 v3, 0x0

    .line 20
    if-nez p1, :cond_0

    .line 22
    const/4 v4, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 27
    move-result v4

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 34
    move-result v3

    .line 35
    :goto_1
    const/4 p1, -0x1

    .line 36
    if-ne v1, p1, :cond_2

    .line 38
    move v1, v4

    .line 39
    :cond_2
    invoke-interface {v0, v1}, Lcom/google/android/flexbox/FlexItem;->m(I)V

    .line 42
    if-ne v2, p1, :cond_3

    .line 44
    move v2, v3

    .line 45
    :cond_3
    invoke-interface {v0, v2}, Lcom/google/android/flexbox/FlexItem;->a(I)V

    .line 48
    return-void
.end method

.method public final o(IILcom/google/android/flexbox/a;IIZ)V
    .locals 22

    .line 1
    move-object/from16 v7, p0

    .line 3
    move-object/from16 v3, p3

    .line 5
    move/from16 v4, p4

    .line 7
    iget v0, v3, Lcom/google/android/flexbox/a;->j:F

    .line 9
    const/4 v1, 0x0

    .line 10
    cmpg-float v2, v0, v1

    .line 12
    if-lez v2, :cond_15

    .line 14
    iget v2, v3, Lcom/google/android/flexbox/a;->e:I

    .line 16
    if-ge v4, v2, :cond_0

    .line 18
    goto/16 :goto_b

    .line 20
    :cond_0
    sub-int v5, v4, v2

    .line 22
    int-to-float v5, v5

    .line 23
    div-float/2addr v5, v0

    .line 24
    iget v0, v3, Lcom/google/android/flexbox/a;->f:I

    .line 26
    add-int v0, p5, v0

    .line 28
    iput v0, v3, Lcom/google/android/flexbox/a;->e:I

    .line 30
    if-nez p6, :cond_1

    .line 32
    const/high16 v0, -0x80000000

    .line 34
    iput v0, v3, Lcom/google/android/flexbox/a;->g:I

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    const/4 v8, 0x0

    .line 39
    const/4 v9, 0x0

    .line 40
    :goto_0
    iget v10, v3, Lcom/google/android/flexbox/a;->h:I

    .line 42
    if-ge v0, v10, :cond_14

    .line 44
    iget v10, v3, Lcom/google/android/flexbox/a;->o:I

    .line 46
    add-int/2addr v10, v0

    .line 47
    iget-object v11, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 49
    invoke-interface {v11, v10}, Lfm;->f(I)Landroid/view/View;

    .line 52
    move-result-object v11

    .line 53
    if-eqz v11, :cond_13

    .line 55
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    .line 58
    move-result v12

    .line 59
    const/16 v13, 0x8

    .line 61
    if-ne v12, v13, :cond_2

    .line 63
    goto/16 :goto_9

    .line 65
    :cond_2
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v12

    .line 69
    check-cast v12, Lcom/google/android/flexbox/FlexItem;

    .line 71
    iget-object v13, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 73
    invoke-interface {v13}, Lfm;->getFlexDirection()I

    .line 76
    move-result v13

    .line 77
    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    .line 79
    const/4 v14, 0x1

    .line 80
    if-eqz v13, :cond_b

    .line 82
    if-ne v13, v14, :cond_3

    .line 84
    goto/16 :goto_4

    .line 86
    :cond_3
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 89
    move-result v13

    .line 90
    iget-object v15, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 92
    if-eqz v15, :cond_4

    .line 94
    aget-wide v14, v15, v10

    .line 96
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/b;->p(J)I

    .line 99
    move-result v13

    .line 100
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 103
    move-result v14

    .line 104
    iget-object v15, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 106
    if-eqz v15, :cond_5

    .line 108
    aget-wide v14, v15, v10

    .line 110
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/b;->q(J)I

    .line 113
    move-result v14

    .line 114
    :cond_5
    iget-object v15, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 116
    aget-boolean v15, v15, v10

    .line 118
    if-nez v15, :cond_a

    .line 120
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 123
    move-result v15

    .line 124
    cmpl-float v15, v15, v1

    .line 126
    if-lez v15, :cond_a

    .line 128
    int-to-float v13, v13

    .line 129
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 132
    move-result v14

    .line 133
    mul-float v14, v14, v5

    .line 135
    add-float/2addr v13, v14

    .line 136
    iget v14, v3, Lcom/google/android/flexbox/a;->h:I

    .line 138
    const/4 v15, 0x1

    .line 139
    sub-int/2addr v14, v15

    .line 140
    if-ne v0, v14, :cond_6

    .line 142
    add-float/2addr v13, v9

    .line 143
    const/4 v9, 0x0

    .line 144
    :cond_6
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    .line 147
    move-result v14

    .line 148
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 151
    move-result v1

    .line 152
    if-le v14, v1, :cond_7

    .line 154
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 157
    move-result v14

    .line 158
    iget-object v1, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 160
    aput-boolean v15, v1, v10

    .line 162
    iget v1, v3, Lcom/google/android/flexbox/a;->j:F

    .line 164
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 167
    move-result v6

    .line 168
    sub-float/2addr v1, v6

    .line 169
    iput v1, v3, Lcom/google/android/flexbox/a;->j:F

    .line 171
    move v15, v2

    .line 172
    const/4 v6, 0x1

    .line 173
    goto :goto_2

    .line 174
    :cond_7
    int-to-float v1, v14

    .line 175
    sub-float/2addr v13, v1

    .line 176
    add-float/2addr v9, v13

    .line 177
    move v15, v2

    .line 178
    float-to-double v1, v9

    .line 179
    cmpl-double v13, v1, v17

    .line 181
    if-lez v13, :cond_8

    .line 183
    add-int/lit8 v14, v14, 0x1

    .line 185
    sub-double v1, v1, v17

    .line 187
    :goto_1
    double-to-float v1, v1

    .line 188
    move v9, v1

    .line 189
    goto :goto_2

    .line 190
    :cond_8
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 192
    cmpg-double v13, v1, v19

    .line 194
    if-gez v13, :cond_9

    .line 196
    add-int/lit8 v14, v14, -0x1

    .line 198
    add-double v1, v1, v17

    .line 200
    goto :goto_1

    .line 201
    :cond_9
    :goto_2
    iget v1, v3, Lcom/google/android/flexbox/a;->m:I

    .line 203
    move/from16 v2, p1

    .line 205
    invoke-virtual {v7, v2, v12, v1}, Lcom/google/android/flexbox/b;->s(ILcom/google/android/flexbox/FlexItem;I)I

    .line 208
    move-result v1

    .line 209
    const/high16 v13, 0x40000000    # 2.0f

    .line 211
    invoke-static {v14, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 214
    move-result v13

    .line 215
    invoke-virtual {v11, v1, v13}, Landroid/view/View;->measure(II)V

    .line 218
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 221
    move-result v14

    .line 222
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 225
    move-result v16

    .line 226
    invoke-virtual {v7, v10, v1, v13, v11}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 229
    iget-object v1, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 231
    invoke-interface {v1, v10, v11}, Lfm;->h(ILandroid/view/View;)V

    .line 234
    move/from16 v13, v16

    .line 236
    goto :goto_3

    .line 237
    :cond_a
    move v15, v2

    .line 238
    move/from16 v2, p1

    .line 240
    :goto_3
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 243
    move-result v1

    .line 244
    add-int/2addr v14, v1

    .line 245
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 248
    move-result v1

    .line 249
    add-int/2addr v14, v1

    .line 250
    iget-object v1, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 252
    invoke-interface {v1, v11}, Lfm;->j(Landroid/view/View;)I

    .line 255
    move-result v1

    .line 256
    add-int/2addr v14, v1

    .line 257
    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    .line 260
    move-result v1

    .line 261
    iget v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 263
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 266
    move-result v10

    .line 267
    add-int/2addr v13, v10

    .line 268
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 271
    move-result v10

    .line 272
    add-int/2addr v13, v10

    .line 273
    add-int/2addr v8, v13

    .line 274
    iput v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 276
    move/from16 v13, p2

    .line 278
    move/from16 v21, v15

    .line 280
    goto/16 :goto_8

    .line 282
    :cond_b
    :goto_4
    move v15, v2

    .line 283
    move/from16 v2, p1

    .line 285
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 288
    move-result v1

    .line 289
    iget-object v13, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 291
    if-eqz v13, :cond_c

    .line 293
    aget-wide v1, v13, v10

    .line 295
    invoke-virtual {v7, v1, v2}, Lcom/google/android/flexbox/b;->q(J)I

    .line 298
    move-result v1

    .line 299
    :cond_c
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 302
    move-result v2

    .line 303
    iget-object v13, v7, Lcom/google/android/flexbox/b;->e:[J

    .line 305
    move/from16 v21, v15

    .line 307
    if-eqz v13, :cond_d

    .line 309
    aget-wide v14, v13, v10

    .line 311
    invoke-virtual {v7, v14, v15}, Lcom/google/android/flexbox/b;->p(J)I

    .line 314
    move-result v2

    .line 315
    :cond_d
    iget-object v13, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 317
    aget-boolean v13, v13, v10

    .line 319
    if-nez v13, :cond_12

    .line 321
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 324
    move-result v13

    .line 325
    const/4 v14, 0x0

    .line 326
    cmpl-float v13, v13, v14

    .line 328
    if-lez v13, :cond_12

    .line 330
    int-to-float v1, v1

    .line 331
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 334
    move-result v2

    .line 335
    mul-float v2, v2, v5

    .line 337
    add-float/2addr v1, v2

    .line 338
    iget v2, v3, Lcom/google/android/flexbox/a;->h:I

    .line 340
    const/4 v13, 0x1

    .line 341
    sub-int/2addr v2, v13

    .line 342
    if-ne v0, v2, :cond_e

    .line 344
    add-float/2addr v1, v9

    .line 345
    const/4 v9, 0x0

    .line 346
    :cond_e
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 349
    move-result v2

    .line 350
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 353
    move-result v15

    .line 354
    if-le v2, v15, :cond_f

    .line 356
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 359
    move-result v2

    .line 360
    iget-object v1, v7, Lcom/google/android/flexbox/b;->b:[Z

    .line 362
    aput-boolean v13, v1, v10

    .line 364
    iget v1, v3, Lcom/google/android/flexbox/a;->j:F

    .line 366
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->b()F

    .line 369
    move-result v6

    .line 370
    sub-float/2addr v1, v6

    .line 371
    iput v1, v3, Lcom/google/android/flexbox/a;->j:F

    .line 373
    const/4 v6, 0x1

    .line 374
    goto :goto_6

    .line 375
    :cond_f
    int-to-float v13, v2

    .line 376
    sub-float/2addr v1, v13

    .line 377
    add-float/2addr v9, v1

    .line 378
    float-to-double v14, v9

    .line 379
    cmpl-double v1, v14, v17

    .line 381
    if-lez v1, :cond_10

    .line 383
    add-int/lit8 v2, v2, 0x1

    .line 385
    sub-double v14, v14, v17

    .line 387
    :goto_5
    double-to-float v1, v14

    .line 388
    move v9, v1

    .line 389
    goto :goto_6

    .line 390
    :cond_10
    const-wide/high16 v19, -0x4010000000000000L    # -1.0

    .line 392
    cmpg-double v1, v14, v19

    .line 394
    if-gez v1, :cond_11

    .line 396
    add-int/lit8 v2, v2, -0x1

    .line 398
    add-double v14, v14, v17

    .line 400
    goto :goto_5

    .line 401
    :cond_11
    :goto_6
    iget v1, v3, Lcom/google/android/flexbox/a;->m:I

    .line 403
    move/from16 v13, p2

    .line 405
    invoke-virtual {v7, v13, v12, v1}, Lcom/google/android/flexbox/b;->r(ILcom/google/android/flexbox/FlexItem;I)I

    .line 408
    move-result v1

    .line 409
    const/high16 v14, 0x40000000    # 2.0f

    .line 411
    invoke-static {v2, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 414
    move-result v2

    .line 415
    invoke-virtual {v11, v2, v1}, Landroid/view/View;->measure(II)V

    .line 418
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    .line 421
    move-result v14

    .line 422
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    .line 425
    move-result v15

    .line 426
    invoke-virtual {v7, v10, v2, v1, v11}, Lcom/google/android/flexbox/b;->R(IIILandroid/view/View;)V

    .line 429
    iget-object v1, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 431
    invoke-interface {v1, v10, v11}, Lfm;->h(ILandroid/view/View;)V

    .line 434
    move v1, v14

    .line 435
    move v2, v15

    .line 436
    goto :goto_7

    .line 437
    :cond_12
    move/from16 v13, p2

    .line 439
    :goto_7
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 442
    move-result v10

    .line 443
    add-int/2addr v2, v10

    .line 444
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 447
    move-result v10

    .line 448
    add-int/2addr v2, v10

    .line 449
    iget-object v10, v7, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 451
    invoke-interface {v10, v11}, Lfm;->j(Landroid/view/View;)I

    .line 454
    move-result v10

    .line 455
    add-int/2addr v2, v10

    .line 456
    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    .line 459
    move-result v2

    .line 460
    iget v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 462
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 465
    move-result v10

    .line 466
    add-int/2addr v1, v10

    .line 467
    invoke-interface {v12}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 470
    move-result v10

    .line 471
    add-int/2addr v1, v10

    .line 472
    add-int/2addr v8, v1

    .line 473
    iput v8, v3, Lcom/google/android/flexbox/a;->e:I

    .line 475
    move v1, v2

    .line 476
    :goto_8
    iget v2, v3, Lcom/google/android/flexbox/a;->g:I

    .line 478
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 481
    move-result v2

    .line 482
    iput v2, v3, Lcom/google/android/flexbox/a;->g:I

    .line 484
    move v8, v1

    .line 485
    goto :goto_a

    .line 486
    :cond_13
    :goto_9
    move/from16 v13, p2

    .line 488
    move/from16 v21, v2

    .line 490
    :goto_a
    add-int/lit8 v0, v0, 0x1

    .line 492
    move/from16 v2, v21

    .line 494
    const/4 v1, 0x0

    .line 495
    goto/16 :goto_0

    .line 497
    :cond_14
    move/from16 v13, p2

    .line 499
    move/from16 v21, v2

    .line 501
    if-eqz v6, :cond_15

    .line 503
    iget v0, v3, Lcom/google/android/flexbox/a;->e:I

    .line 505
    move/from16 v1, v21

    .line 507
    if-eq v1, v0, :cond_15

    .line 509
    const/4 v6, 0x1

    .line 510
    move-object/from16 v0, p0

    .line 512
    move/from16 v1, p1

    .line 514
    move/from16 v2, p2

    .line 516
    move-object/from16 v3, p3

    .line 518
    move/from16 v4, p4

    .line 520
    move/from16 v5, p5

    .line 522
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/flexbox/b;->o(IILcom/google/android/flexbox/a;IIZ)V

    .line 525
    :cond_15
    :goto_b
    return-void
.end method

.method public p(J)I
    .locals 1

    .line 1
    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p2, p1

    return p2
.end method

.method public q(J)I
    .locals 0

    .line 1
    long-to-int p2, p1

    return p2
.end method

.method public final r(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getPaddingTop()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 9
    invoke-interface {v2}, Lfm;->getPaddingBottom()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v1, v2

    .line 24
    add-int/2addr v1, p3

    .line 25
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->c()I

    .line 28
    move-result p3

    .line 29
    invoke-interface {v0, p1, v1, p3}, Lfm;->c(III)I

    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p3

    .line 37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 40
    move-result v0

    .line 41
    if-le p3, v0, :cond_0

    .line 43
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->l()I

    .line 46
    move-result p2

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 59
    move-result v0

    .line 60
    if-ge p3, v0, :cond_1

    .line 62
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->h()I

    .line 65
    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 69
    move-result p1

    .line 70
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p1

    .line 74
    :cond_1
    :goto_0
    return p1
.end method

.method public final s(ILcom/google/android/flexbox/FlexItem;I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 3
    invoke-interface {v0}, Lfm;->getPaddingLeft()I

    .line 6
    move-result v1

    .line 7
    iget-object v2, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 9
    invoke-interface {v2}, Lfm;->getPaddingRight()I

    .line 12
    move-result v2

    .line 13
    add-int/2addr v1, v2

    .line 14
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 17
    move-result v2

    .line 18
    add-int/2addr v1, v2

    .line 19
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 22
    move-result v2

    .line 23
    add-int/2addr v1, v2

    .line 24
    add-int/2addr v1, p3

    .line 25
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->k()I

    .line 28
    move-result p3

    .line 29
    invoke-interface {v0, p1, v1, p3}, Lfm;->g(III)I

    .line 32
    move-result p1

    .line 33
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    move-result p3

    .line 37
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 40
    move-result v0

    .line 41
    if-le p3, v0, :cond_0

    .line 43
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->p()I

    .line 46
    move-result p2

    .line 47
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 50
    move-result p1

    .line 51
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    move-result p1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 59
    move-result v0

    .line 60
    if-ge p3, v0, :cond_1

    .line 62
    invoke-interface {p2}, Lcom/google/android/flexbox/FlexItem;->i()I

    .line 65
    move-result p2

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 69
    move-result p1

    .line 70
    invoke-static {p2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 73
    move-result p1

    .line 74
    :cond_1
    :goto_0
    return p1
.end method

.method public final t(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final u(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->g()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->n()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final v(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final w(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->o()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->q()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final x(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->c()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->k()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final y(Lcom/google/android/flexbox/FlexItem;Z)I
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->k()I

    .line 6
    move-result p1

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-interface {p1}, Lcom/google/android/flexbox/FlexItem;->c()I

    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method public final z(Z)I
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 5
    invoke-interface {p1}, Lfm;->getPaddingBottom()I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/google/android/flexbox/b;->a:Lfm;

    .line 12
    invoke-interface {p1}, Lfm;->getPaddingEnd()I

    .line 15
    move-result p1

    .line 16
    return p1
.end method

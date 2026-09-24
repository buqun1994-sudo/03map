.class public Lkc$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx40;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkc;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lkc;


# direct methods
.method public constructor <init>(Lkc;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkc$d;->a:Lkc;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Lfn0;)Lfn0;
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p2}, Lfn0;->j()I

    .line 7
    move-result v2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    move-result-object v2

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object v2, v1, v3

    .line 15
    invoke-virtual {p2}, Lfn0;->l()I

    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    move-result-object v2

    .line 23
    const/4 v4, 0x1

    .line 24
    aput-object v2, v1, v4

    .line 26
    invoke-virtual {p2}, Lfn0;->k()I

    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v2

    .line 34
    const/4 v5, 0x2

    .line 35
    aput-object v2, v1, v5

    .line 37
    invoke-virtual {p2}, Lfn0;->i()I

    .line 40
    move-result v2

    .line 41
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object v2

    .line 45
    const/4 v6, 0x3

    .line 46
    aput-object v2, v1, v6

    .line 48
    const-string v2, "Activity"

    .line 50
    const-string v7, "mMapView onApplyWindowInsets surfaceChanged left:{?},top:{?},right:{?},bottom:{?}"

    .line 52
    invoke-static {v2, v7, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-virtual {p2}, Lfn0;->j()I

    .line 58
    move-result v1

    .line 59
    invoke-static {p1}, Lzk0;->m(Landroid/view/View;)Lfn0;

    .line 62
    move-result-object v7

    .line 63
    invoke-static {}, Lfn0$m;->b()I

    .line 66
    move-result v8

    .line 67
    invoke-virtual {v7, v8}, Lfn0;->g(I)Lzu;

    .line 70
    move-result-object v7

    .line 71
    iget v7, v7, Lzu;->a:I

    .line 73
    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    .line 76
    move-result v1

    .line 77
    invoke-virtual {p2}, Lfn0;->l()I

    .line 80
    move-result v7

    .line 81
    invoke-static {p1}, Lzk0;->m(Landroid/view/View;)Lfn0;

    .line 84
    move-result-object v8

    .line 85
    invoke-static {}, Lfn0$m;->b()I

    .line 88
    move-result v9

    .line 89
    invoke-virtual {v8, v9}, Lfn0;->g(I)Lzu;

    .line 92
    move-result-object v8

    .line 93
    iget v8, v8, Lzu;->b:I

    .line 95
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    .line 98
    move-result v7

    .line 99
    invoke-virtual {p2}, Lfn0;->k()I

    .line 102
    move-result v8

    .line 103
    invoke-static {p1}, Lzk0;->m(Landroid/view/View;)Lfn0;

    .line 106
    move-result-object v9

    .line 107
    invoke-static {}, Lfn0$m;->b()I

    .line 110
    move-result v10

    .line 111
    invoke-virtual {v9, v10}, Lfn0;->g(I)Lzu;

    .line 114
    move-result-object v9

    .line 115
    iget v9, v9, Lzu;->c:I

    .line 117
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    .line 120
    move-result v8

    .line 121
    invoke-virtual {p2}, Lfn0;->i()I

    .line 124
    move-result v9

    .line 125
    invoke-static {p1}, Lzk0;->m(Landroid/view/View;)Lfn0;

    .line 128
    move-result-object p1

    .line 129
    invoke-static {}, Lfn0$m;->b()I

    .line 132
    move-result v10

    .line 133
    invoke-virtual {p1, v10}, Lfn0;->g(I)Lzu;

    .line 136
    move-result-object p1

    .line 137
    iget p1, p1, Lzu;->d:I

    .line 139
    invoke-static {v9, p1}, Ljava/lang/Math;->max(II)I

    .line 142
    move-result p1

    .line 143
    invoke-static {}, Lsu;->n()Ltu;

    .line 146
    move-result-object v9

    .line 147
    invoke-virtual {v9, v7}, Ltu;->v(I)V

    .line 150
    invoke-static {}, Lsu;->n()Ltu;

    .line 153
    move-result-object v9

    .line 154
    invoke-virtual {v9, p1}, Ltu;->j(I)V

    .line 157
    iget-object v9, p0, Lkc$d;->a:Lkc;

    .line 159
    invoke-static {v9}, Lkc;->p(Lkc;)Landroid/view/SurfaceView;

    .line 162
    move-result-object v9

    .line 163
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 166
    move-result-object v9

    .line 167
    check-cast v9, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 169
    iput v1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 171
    iput v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 173
    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 175
    new-array v0, v0, [Ljava/lang/Object;

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    move-result-object v10

    .line 181
    aput-object v10, v0, v3

    .line 183
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 186
    move-result-object v3

    .line 187
    aput-object v3, v0, v4

    .line 189
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    move-result-object v3

    .line 193
    aput-object v3, v0, v5

    .line 195
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 198
    move-result-object v3

    .line 199
    aput-object v3, v0, v6

    .line 201
    const-string v3, "onApplyWindowInsets surfaceChanged final left:{?},top:{?},right:{?},bottom:{?}"

    .line 203
    invoke-static {v2, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    if-lez p1, :cond_0

    .line 208
    iput p1, v9, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 210
    :cond_0
    iget-object v0, p0, Lkc$d;->a:Lkc;

    .line 212
    invoke-static {v0}, Lkc;->p(Lkc;)Landroid/view/SurfaceView;

    .line 215
    move-result-object v0

    .line 216
    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    iget-object v0, p0, Lkc$d;->a:Lkc;

    .line 221
    invoke-static {v0}, Lkc;->q(Lkc;)Lcom/autonavi/amapauto/MapSurfaceView;

    .line 224
    move-result-object v0

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 228
    move-result-object v0

    .line 229
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 231
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 233
    iput v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 235
    iput v8, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 237
    if-lez p1, :cond_1

    .line 239
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 241
    :cond_1
    iget-object p1, p0, Lkc$d;->a:Lkc;

    .line 243
    invoke-static {p1}, Lkc;->q(Lkc;)Lcom/autonavi/amapauto/MapSurfaceView;

    .line 246
    move-result-object p1

    .line 247
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    return-object p2
.end method

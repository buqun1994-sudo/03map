.class public abstract Lgm0;
.super Lcom/autonavi/skin/view/SkinImageView;
.source "SourceFile"


# static fields
.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# instance fields
.field public c:Ljava/util/List;

.field public d:I

.field public e:I

.field public f:F

.field public g:I

.field public h:I

.field public i:I

.field public j:Landroid/view/View;

.field public k:Z

.field public l:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    sget v0, Ln80;->l:I

    .line 3
    invoke-static {v0}, Lta0;->a(I)I

    .line 6
    move-result v0

    .line 7
    sput v0, Lgm0;->m:I

    .line 9
    sget v0, Ln80;->f:I

    .line 11
    invoke-static {v0}, Lta0;->a(I)I

    .line 14
    move-result v0

    .line 15
    sput v0, Lgm0;->n:I

    .line 17
    sget v0, Ln80;->d:I

    .line 19
    invoke-static {v0}, Lta0;->a(I)I

    .line 22
    move-result v0

    .line 23
    sput v0, Lgm0;->o:I

    .line 25
    sget v0, Ln80;->h:I

    .line 27
    invoke-static {v0}, Lta0;->a(I)I

    .line 30
    move-result v0

    .line 31
    sput v0, Lgm0;->p:I

    .line 33
    sget v0, Ln80;->a:I

    .line 35
    invoke-static {v0}, Lta0;->a(I)I

    .line 38
    move-result v1

    .line 39
    sput v1, Lgm0;->q:I

    .line 41
    invoke-static {v0}, Lta0;->a(I)I

    .line 44
    move-result v0

    .line 45
    sput v0, Lgm0;->r:I

    .line 47
    sget v0, Ln80;->b:I

    .line 49
    invoke-static {v0}, Lta0;->a(I)I

    .line 52
    move-result v0

    .line 53
    sput v0, Lgm0;->s:I

    .line 55
    sget v0, Ln80;->i:I

    .line 57
    invoke-static {v0}, Lta0;->a(I)I

    .line 60
    move-result v0

    .line 61
    sput v0, Lgm0;->t:I

    .line 63
    sget v0, Ln80;->p:I

    .line 65
    invoke-static {v0}, Lta0;->a(I)I

    .line 68
    move-result v0

    .line 69
    sput v0, Lgm0;->u:I

    .line 71
    sget v0, Ln80;->r:I

    .line 73
    invoke-static {v0}, Lta0;->a(I)I

    .line 76
    move-result v0

    .line 77
    sput v0, Lgm0;->v:I

    .line 79
    sget v0, Ln80;->o:I

    .line 81
    invoke-static {v0}, Lta0;->a(I)I

    .line 84
    move-result v1

    .line 85
    sput v1, Lgm0;->w:I

    .line 87
    invoke-static {v0}, Lta0;->a(I)I

    .line 90
    move-result v0

    .line 91
    sput v0, Lgm0;->x:I

    .line 93
    sget v0, Ln80;->k:I

    .line 95
    invoke-static {v0}, Lta0;->a(I)I

    .line 98
    move-result v1

    .line 99
    sput v1, Lgm0;->y:I

    .line 101
    invoke-static {v0}, Lta0;->a(I)I

    .line 104
    move-result v0

    .line 105
    sput v0, Lgm0;->z:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/autonavi/skin/view/SkinImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lgm0;->c:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public final e(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    sget p1, Lgm0;->n:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lgm0;->m:I

    .line 14
    :goto_0
    return p1

    .line 15
    :cond_1
    invoke-static {}, Lrv;->H()Lrv;

    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lpa;->n(Landroid/content/Context;)Z

    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_3

    .line 29
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 31
    if-eqz p1, :cond_2

    .line 33
    sget p1, Lgm0;->p:I

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sget p1, Lgm0;->o:I

    .line 38
    :goto_1
    return p1

    .line 39
    :cond_3
    if-eqz p1, :cond_f

    .line 41
    const/4 v0, 0x1

    .line 42
    if-eq p1, v0, :cond_d

    .line 44
    const/4 v0, 0x2

    .line 45
    if-eq p1, v0, :cond_b

    .line 47
    const/4 v0, 0x3

    .line 48
    if-eq p1, v0, :cond_9

    .line 50
    const/4 v0, 0x4

    .line 51
    if-eq p1, v0, :cond_7

    .line 53
    const/4 v0, 0x5

    .line 54
    if-eq p1, v0, :cond_5

    .line 56
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 58
    if-eqz p1, :cond_4

    .line 60
    sget p1, Lgm0;->n:I

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    sget p1, Lgm0;->m:I

    .line 65
    :goto_2
    return p1

    .line 66
    :cond_5
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 68
    if-eqz p1, :cond_6

    .line 70
    sget p1, Lgm0;->r:I

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    sget p1, Lgm0;->q:I

    .line 75
    :goto_3
    return p1

    .line 76
    :cond_7
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 78
    if-eqz p1, :cond_8

    .line 80
    sget p1, Lgm0;->z:I

    .line 82
    goto :goto_4

    .line 83
    :cond_8
    sget p1, Lgm0;->y:I

    .line 85
    :goto_4
    return p1

    .line 86
    :cond_9
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 88
    if-eqz p1, :cond_a

    .line 90
    sget p1, Lgm0;->x:I

    .line 92
    goto :goto_5

    .line 93
    :cond_a
    sget p1, Lgm0;->w:I

    .line 95
    :goto_5
    return p1

    .line 96
    :cond_b
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 98
    if-eqz p1, :cond_c

    .line 100
    sget p1, Lgm0;->v:I

    .line 102
    goto :goto_6

    .line 103
    :cond_c
    sget p1, Lgm0;->u:I

    .line 105
    :goto_6
    return p1

    .line 106
    :cond_d
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 108
    if-eqz p1, :cond_e

    .line 110
    sget p1, Lgm0;->t:I

    .line 112
    goto :goto_7

    .line 113
    :cond_e
    sget p1, Lgm0;->s:I

    .line 115
    :goto_7
    return p1

    .line 116
    :cond_f
    iget-boolean p1, p0, Lgm0;->k:Z

    .line 118
    if-eqz p1, :cond_10

    .line 120
    sget p1, Lgm0;->p:I

    .line 122
    goto :goto_8

    .line 123
    :cond_10
    sget p1, Lgm0;->o:I

    .line 125
    :goto_8
    return p1
.end method

.method public final f(I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lgm0;->l:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    iput-object v0, p0, Lgm0;->l:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lgm0;->l:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lgm0;->l:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lgm0;->l:Landroid/graphics/Paint;

    .line 30
    return-object p1
.end method

.method public g()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
.end method

.method public getCursorWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lgm0;->g:I

    .line 3
    return v0
.end method

.method public h(II)V
    .locals 2

    .line 1
    iget p1, p0, Lgm0;->f:F

    .line 3
    float-to-int p1, p1

    .line 4
    iget-object p2, p0, Lgm0;->j:Landroid/view/View;

    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 9
    move-result-object p2

    .line 10
    check-cast p2, Lig$b;

    .line 12
    int-to-float p1, p1

    .line 13
    invoke-static {}, Lrv;->H()Lrv;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 25
    sget v1, Lq80;->b:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 30
    move-result v0

    .line 31
    sub-float/2addr p1, v0

    .line 32
    float-to-int p1, p1

    .line 33
    iget v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 39
    iget-object p1, p0, Lgm0;->j:Landroid/view/View;

    .line 41
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method

.method public i(Ljava/util/List;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgm0;->c:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lgm0;->c:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_0
    iput p2, p0, Lgm0;->d:I

    .line 15
    iput p3, p0, Lgm0;->e:I

    .line 17
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p1}, Lcom/autonavi/skin/view/SkinImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v2

    .line 14
    iget v3, v0, Lgm0;->g:I

    .line 16
    const/4 v4, 0x2

    .line 17
    div-int/2addr v3, v4

    .line 18
    sub-int v3, v1, v3

    .line 20
    iget-object v5, v0, Lgm0;->c:Ljava/util/List;

    .line 22
    if-eqz v5, :cond_6

    .line 24
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 27
    move-result v5

    .line 28
    if-nez v5, :cond_0

    .line 30
    goto/16 :goto_2

    .line 32
    :cond_0
    iget-object v5, v0, Lgm0;->c:Ljava/util/List;

    .line 34
    if-eqz v5, :cond_6

    .line 36
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 39
    move-result v5

    .line 40
    int-to-float v3, v3

    .line 41
    const/high16 v6, 0x3f800000    # 1.0f

    .line 43
    mul-float v3, v3, v6

    .line 45
    iget v7, v0, Lgm0;->d:I

    .line 47
    int-to-float v7, v7

    .line 48
    mul-float v7, v7, v6

    .line 50
    div-float/2addr v3, v7

    .line 51
    const/4 v6, 0x1

    .line 52
    sub-int/2addr v5, v6

    .line 53
    const/4 v8, 0x0

    .line 54
    :goto_0
    const-string v10, "WidgetHorizionalTmcBarView"

    .line 56
    if-ltz v5, :cond_4

    .line 58
    iget-object v11, v0, Lgm0;->c:Ljava/util/List;

    .line 60
    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v11

    .line 64
    check-cast v11, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 66
    iget v12, v11, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 68
    int-to-float v12, v12

    .line 69
    mul-float v12, v12, v3

    .line 71
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    .line 74
    move-result v12

    .line 75
    int-to-float v12, v12

    .line 76
    iget v13, v0, Lgm0;->f:F

    .line 78
    const v14, 0x4991a2b0    # 1193046.0f

    .line 81
    cmpl-float v13, v13, v14

    .line 83
    if-nez v13, :cond_1

    .line 85
    int-to-float v13, v1

    .line 86
    iput v13, v0, Lgm0;->f:F

    .line 88
    :cond_1
    sub-int v13, v1, v8

    .line 90
    int-to-float v15, v13

    .line 91
    sub-float v14, v15, v12

    .line 93
    float-to-int v14, v14

    .line 94
    int-to-float v9, v14

    .line 95
    iget v4, v0, Lgm0;->f:F

    .line 97
    const-string v7, " \u7ed8\u5236\u8def\u51b5 letf :{?} right:{?} mCursorPos:{?} status:{?}"

    .line 99
    cmpl-float v16, v9, v4

    .line 101
    if-ltz v16, :cond_2

    .line 103
    const/16 v16, 0x0

    .line 105
    int-to-float v4, v2

    .line 106
    iget v6, v11, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 108
    invoke-virtual {v0, v6}, Lgm0;->e(I)I

    .line 111
    move-result v6

    .line 112
    invoke-virtual {v0, v6}, Lgm0;->f(I)Landroid/graphics/Paint;

    .line 115
    move-result-object v19

    .line 116
    move v6, v14

    .line 117
    move-object/from16 v14, p1

    .line 119
    move/from16 v17, v15

    .line 121
    move v15, v9

    .line 122
    move/from16 v18, v4

    .line 124
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 127
    const/4 v4, 0x4

    .line 128
    new-array v4, v4, [Ljava/lang/Object;

    .line 130
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v6

    .line 134
    const/4 v9, 0x0

    .line 135
    aput-object v6, v4, v9

    .line 137
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    move-result-object v6

    .line 141
    const/4 v9, 0x1

    .line 142
    aput-object v6, v4, v9

    .line 144
    iget v6, v0, Lgm0;->f:F

    .line 146
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v6

    .line 150
    const/4 v9, 0x2

    .line 151
    aput-object v6, v4, v9

    .line 153
    iget v6, v11, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 155
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    move-result-object v6

    .line 159
    const/4 v9, 0x3

    .line 160
    aput-object v6, v4, v9

    .line 162
    invoke-static {v10, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    goto :goto_1

    .line 166
    :cond_2
    move/from16 v17, v15

    .line 168
    cmpl-float v6, v17, v4

    .line 170
    if-lez v6, :cond_3

    .line 172
    const/16 v16, 0x0

    .line 174
    int-to-float v6, v2

    .line 175
    iget v9, v11, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 177
    invoke-virtual {v0, v9}, Lgm0;->e(I)I

    .line 180
    move-result v9

    .line 181
    invoke-virtual {v0, v9}, Lgm0;->f(I)Landroid/graphics/Paint;

    .line 184
    move-result-object v19

    .line 185
    move-object/from16 v14, p1

    .line 187
    move v15, v4

    .line 188
    move/from16 v18, v6

    .line 190
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 193
    const/4 v4, 0x4

    .line 194
    new-array v4, v4, [Ljava/lang/Object;

    .line 196
    iget v6, v0, Lgm0;->f:F

    .line 198
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 201
    move-result-object v6

    .line 202
    const/4 v9, 0x0

    .line 203
    aput-object v6, v4, v9

    .line 205
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    move-result-object v6

    .line 209
    const/4 v9, 0x1

    .line 210
    aput-object v6, v4, v9

    .line 212
    iget v6, v0, Lgm0;->f:F

    .line 214
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 217
    move-result-object v6

    .line 218
    const/4 v9, 0x2

    .line 219
    aput-object v6, v4, v9

    .line 221
    iget v6, v11, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 223
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    move-result-object v6

    .line 227
    const/4 v9, 0x3

    .line 228
    aput-object v6, v4, v9

    .line 230
    invoke-static {v10, v7, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    :cond_3
    :goto_1
    int-to-float v4, v8

    .line 234
    add-float/2addr v4, v12

    .line 235
    float-to-int v8, v4

    .line 236
    add-int/lit8 v5, v5, -0x1

    .line 238
    const/4 v4, 0x2

    .line 239
    const/4 v6, 0x1

    .line 240
    goto/16 :goto_0

    .line 242
    :cond_4
    int-to-float v1, v1

    .line 243
    iget v6, v0, Lgm0;->f:F

    .line 245
    cmpl-float v1, v1, v6

    .line 247
    if-ltz v1, :cond_5

    .line 249
    const/4 v4, 0x0

    .line 250
    const/4 v5, 0x0

    .line 251
    int-to-float v7, v2

    .line 252
    const/16 v1, 0xa

    .line 254
    invoke-virtual {v0, v1}, Lgm0;->e(I)I

    .line 257
    move-result v2

    .line 258
    invoke-virtual {v0, v2}, Lgm0;->f(I)Landroid/graphics/Paint;

    .line 261
    move-result-object v8

    .line 262
    move-object/from16 v3, p1

    .line 264
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 267
    const/4 v2, 0x3

    .line 268
    new-array v2, v2, [Ljava/lang/Object;

    .line 270
    const/4 v3, 0x0

    .line 271
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 274
    move-result-object v4

    .line 275
    aput-object v4, v2, v3

    .line 277
    iget v3, v0, Lgm0;->f:F

    .line 279
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 282
    move-result-object v3

    .line 283
    const/4 v4, 0x1

    .line 284
    aput-object v3, v2, v4

    .line 286
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 289
    move-result-object v1

    .line 290
    const/4 v3, 0x2

    .line 291
    aput-object v1, v2, v3

    .line 293
    const-string v1, " \u8d70\u8fc7\u7684\u8def\u7f6e\u7070 left :{?} right:{?}  status:{?}"

    .line 295
    invoke-static {v10, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 298
    :cond_5
    iget v1, v0, Lgm0;->i:I

    .line 300
    iget v2, v0, Lgm0;->g:I

    .line 302
    invoke-virtual {v0, v1, v2}, Lgm0;->h(II)V

    .line 305
    :cond_6
    :goto_2
    return-void
.end method

.method public setCursorPos(F)V
    .locals 0

    .line 1
    iput p1, p0, Lgm0;->f:F

    .line 3
    return-void
.end method

.method public setCursorWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgm0;->g:I

    .line 3
    return-void
.end method

.method public setNightMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lgm0;->k:Z

    .line 3
    invoke-virtual {p0}, Lgm0;->g()V

    .line 6
    return-void
.end method

.method public setTmcViewLength(I)V
    .locals 0

    .line 1
    iput p1, p0, Lgm0;->h:I

    .line 3
    return-void
.end method

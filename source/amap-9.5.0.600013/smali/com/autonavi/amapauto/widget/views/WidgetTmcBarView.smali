.class public Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:F

.field public d:Z

.field public e:Landroid/graphics/Paint;


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
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->f:I

    .line 9
    sget v0, Ln80;->f:I

    .line 11
    invoke-static {v0}, Lta0;->a(I)I

    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->g:I

    .line 17
    sget v0, Ln80;->d:I

    .line 19
    invoke-static {v0}, Lta0;->a(I)I

    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->h:I

    .line 25
    sget v0, Ln80;->h:I

    .line 27
    invoke-static {v0}, Lta0;->a(I)I

    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->i:I

    .line 33
    sget v0, Ln80;->a:I

    .line 35
    invoke-static {v0}, Lta0;->a(I)I

    .line 38
    move-result v1

    .line 39
    sput v1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->j:I

    .line 41
    invoke-static {v0}, Lta0;->a(I)I

    .line 44
    move-result v0

    .line 45
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->k:I

    .line 47
    sget v0, Ln80;->b:I

    .line 49
    invoke-static {v0}, Lta0;->a(I)I

    .line 52
    move-result v0

    .line 53
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->l:I

    .line 55
    sget v0, Ln80;->i:I

    .line 57
    invoke-static {v0}, Lta0;->a(I)I

    .line 60
    move-result v0

    .line 61
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->m:I

    .line 63
    sget v0, Ln80;->p:I

    .line 65
    invoke-static {v0}, Lta0;->a(I)I

    .line 68
    move-result v0

    .line 69
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->n:I

    .line 71
    sget v0, Ln80;->r:I

    .line 73
    invoke-static {v0}, Lta0;->a(I)I

    .line 76
    move-result v0

    .line 77
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->o:I

    .line 79
    sget v0, Ln80;->o:I

    .line 81
    invoke-static {v0}, Lta0;->a(I)I

    .line 84
    move-result v1

    .line 85
    sput v1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->p:I

    .line 87
    invoke-static {v0}, Lta0;->a(I)I

    .line 90
    move-result v0

    .line 91
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->q:I

    .line 93
    sget v0, Ln80;->k:I

    .line 95
    invoke-static {v0}, Lta0;->a(I)I

    .line 98
    move-result v1

    .line 99
    sput v1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->r:I

    .line 101
    invoke-static {v0}, Lta0;->a(I)I

    .line 104
    move-result v0

    .line 105
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->s:I

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 11
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 3
    if-ne p1, v0, :cond_1

    .line 5
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 7
    if-eqz p1, :cond_0

    .line 9
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->g:I

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->f:I

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
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 31
    if-eqz p1, :cond_2

    .line 33
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->i:I

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->h:I

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
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 58
    if-eqz p1, :cond_4

    .line 60
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->g:I

    .line 62
    goto :goto_2

    .line 63
    :cond_4
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->f:I

    .line 65
    :goto_2
    return p1

    .line 66
    :cond_5
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 68
    if-eqz p1, :cond_6

    .line 70
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->k:I

    .line 72
    goto :goto_3

    .line 73
    :cond_6
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->j:I

    .line 75
    :goto_3
    return p1

    .line 76
    :cond_7
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 78
    if-eqz p1, :cond_8

    .line 80
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->s:I

    .line 82
    goto :goto_4

    .line 83
    :cond_8
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->r:I

    .line 85
    :goto_4
    return p1

    .line 86
    :cond_9
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 88
    if-eqz p1, :cond_a

    .line 90
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->q:I

    .line 92
    goto :goto_5

    .line 93
    :cond_a
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->p:I

    .line 95
    :goto_5
    return p1

    .line 96
    :cond_b
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 98
    if-eqz p1, :cond_c

    .line 100
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->o:I

    .line 102
    goto :goto_6

    .line 103
    :cond_c
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->n:I

    .line 105
    :goto_6
    return p1

    .line 106
    :cond_d
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 108
    if-eqz p1, :cond_e

    .line 110
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->m:I

    .line 112
    goto :goto_7

    .line 113
    :cond_e
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->l:I

    .line 115
    :goto_7
    return p1

    .line 116
    :cond_f
    iget-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 118
    if-eqz p1, :cond_10

    .line 120
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->i:I

    .line 122
    goto :goto_8

    .line 123
    :cond_10
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->h:I

    .line 125
    :goto_8
    return p1
.end method

.method public final b(I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->e:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->e:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->e:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->e:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->e:Landroid/graphics/Paint;

    .line 30
    return-object p1
.end method

.method public c()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
.end method

.method public d(Ljava/util/List;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_0
    iput p2, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->b:I

    .line 15
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 3
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 9
    move-result v1

    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 13
    move-result v2

    .line 14
    iget-object v3, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 16
    if-eqz v3, :cond_3

    .line 18
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_0
    iget-object v3, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 28
    if-eqz v3, :cond_3

    .line 30
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 33
    move-result v3

    .line 34
    int-to-float v10, v2

    .line 35
    const/high16 v4, 0x3f800000    # 1.0f

    .line 37
    mul-float v5, v10, v4

    .line 39
    iget v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->b:I

    .line 41
    int-to-float v6, v6

    .line 42
    mul-float v6, v6, v4

    .line 44
    div-float/2addr v5, v6

    .line 45
    const/4 v11, 0x1

    .line 46
    sub-int/2addr v3, v11

    .line 47
    const/4 v12, 0x0

    .line 48
    const/4 v13, 0x0

    .line 49
    :goto_0
    const/4 v15, 0x2

    .line 50
    const-string v9, "WidgetTmcBarView"

    .line 52
    if-ltz v3, :cond_1

    .line 54
    iget-object v4, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 56
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 62
    iget v6, v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 64
    int-to-float v6, v6

    .line 65
    mul-float v6, v6, v5

    .line 67
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    .line 70
    move-result v6

    .line 71
    int-to-float v6, v6

    .line 72
    int-to-float v7, v13

    .line 73
    add-float/2addr v7, v6

    .line 74
    float-to-int v13, v7

    .line 75
    const/16 v17, 0x0

    .line 77
    int-to-float v7, v13

    .line 78
    sub-float v6, v7, v6

    .line 80
    int-to-float v8, v1

    .line 81
    iget v14, v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 83
    invoke-virtual {v0, v14}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a(I)I

    .line 86
    move-result v14

    .line 87
    invoke-virtual {v0, v14}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->b(I)Landroid/graphics/Paint;

    .line 90
    move-result-object v21

    .line 91
    move-object/from16 v16, p1

    .line 93
    move/from16 v18, v6

    .line 95
    move/from16 v19, v8

    .line 97
    move/from16 v20, v7

    .line 99
    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 102
    const/4 v7, 0x4

    .line 103
    new-array v7, v7, [Ljava/lang/Object;

    .line 105
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 108
    move-result-object v6

    .line 109
    aput-object v6, v7, v12

    .line 111
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    move-result-object v6

    .line 115
    aput-object v6, v7, v11

    .line 117
    iget v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->c:F

    .line 119
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 122
    move-result-object v6

    .line 123
    aput-object v6, v7, v15

    .line 125
    iget v4, v4, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v4

    .line 131
    const/4 v6, 0x3

    .line 132
    aput-object v4, v7, v6

    .line 134
    const-string v4, " \u7ed8\u5236\u8def\u51b5 top :{?} bottom:{?} mCursorPos:{?} status:{?}"

    .line 136
    invoke-static {v9, v4, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    add-int/lit8 v3, v3, -0x1

    .line 141
    goto :goto_0

    .line 142
    :cond_1
    if-ge v13, v2, :cond_2

    .line 144
    const/4 v5, 0x0

    .line 145
    int-to-float v6, v13

    .line 146
    int-to-float v7, v1

    .line 147
    iget-object v3, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a:Ljava/util/List;

    .line 149
    invoke-interface {v3, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 155
    iget v3, v3, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 157
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a(I)I

    .line 160
    move-result v3

    .line 161
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->b(I)Landroid/graphics/Paint;

    .line 164
    move-result-object v3

    .line 165
    move-object/from16 v4, p1

    .line 167
    move v8, v10

    .line 168
    move-object v14, v9

    .line 169
    move-object v9, v3

    .line 170
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 173
    const/4 v3, 0x3

    .line 174
    new-array v4, v3, [Ljava/lang/Object;

    .line 176
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    move-result-object v3

    .line 180
    aput-object v3, v4, v12

    .line 182
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 185
    move-result-object v3

    .line 186
    aput-object v3, v4, v11

    .line 188
    iget v3, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->c:F

    .line 190
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 193
    move-result-object v3

    .line 194
    aput-object v3, v4, v15

    .line 196
    const-string v3, " \u7ed8\u5236\u8def\u51b5 top :{?} bottom:{?} mCursorPos:{?}"

    .line 198
    invoke-static {v14, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    goto :goto_1

    .line 202
    :cond_2
    move-object v14, v9

    .line 203
    :goto_1
    iget v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->c:F

    .line 205
    cmpl-float v3, v10, v6

    .line 207
    if-lez v3, :cond_3

    .line 209
    const/4 v5, 0x0

    .line 210
    int-to-float v7, v1

    .line 211
    const/16 v1, 0xa

    .line 213
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->a(I)I

    .line 216
    move-result v3

    .line 217
    invoke-virtual {v0, v3}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->b(I)Landroid/graphics/Paint;

    .line 220
    move-result-object v9

    .line 221
    move-object/from16 v4, p1

    .line 223
    move v8, v10

    .line 224
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 227
    const/4 v3, 0x3

    .line 228
    new-array v3, v3, [Ljava/lang/Object;

    .line 230
    iget v4, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->c:F

    .line 232
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 235
    move-result-object v4

    .line 236
    aput-object v4, v3, v12

    .line 238
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 241
    move-result-object v2

    .line 242
    aput-object v2, v3, v11

    .line 244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    move-result-object v1

    .line 248
    aput-object v1, v3, v15

    .line 250
    const-string v1, " \u8d70\u8fc7\u7684\u8def\u7f6e\u7070 top :{?} bottom:{?}  status:{?}"

    .line 252
    invoke-static {v14, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :cond_3
    :goto_2
    return-void
.end method

.method public setCursorPos(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->c:F

    .line 3
    return-void
.end method

.method public setNightMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->d:Z

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarView;->c()V

    .line 6
    return-void
.end method

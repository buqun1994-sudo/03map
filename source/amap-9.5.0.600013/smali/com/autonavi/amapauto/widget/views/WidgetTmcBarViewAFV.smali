.class public Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I


# instance fields
.field public a:Ljava/util/List;

.field public b:I

.field public c:F

.field public d:Z

.field public e:Landroid/graphics/Paint;

.field public f:Landroid/graphics/Bitmap;

.field public g:Landroid/graphics/Canvas;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Ln80;->e:I

    .line 3
    invoke-static {v0}, Lta0;->a(I)I

    .line 6
    move-result v0

    .line 7
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->h:I

    .line 9
    sget v0, Ln80;->g:I

    .line 11
    invoke-static {v0}, Lta0;->a(I)I

    .line 14
    move-result v0

    .line 15
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->i:I

    .line 17
    sget v0, Ln80;->a:I

    .line 19
    invoke-static {v0}, Lta0;->a(I)I

    .line 22
    move-result v0

    .line 23
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->j:I

    .line 25
    sget v0, Ln80;->c:I

    .line 27
    invoke-static {v0}, Lta0;->a(I)I

    .line 30
    move-result v0

    .line 31
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->k:I

    .line 33
    sget v0, Ln80;->s:I

    .line 35
    invoke-static {v0}, Lta0;->a(I)I

    .line 38
    move-result v0

    .line 39
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->l:I

    .line 41
    sget v0, Ln80;->q:I

    .line 43
    invoke-static {v0}, Lta0;->a(I)I

    .line 46
    move-result v0

    .line 47
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->m:I

    .line 49
    sget v0, Ln80;->j:I

    .line 51
    invoke-static {v0}, Lta0;->a(I)I

    .line 54
    move-result v0

    .line 55
    sput v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->n:I

    .line 57
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
    iput-object p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 11
    return-void
.end method

.method public static d(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    if-eqz p5, :cond_0

    .line 3
    return-object p0

    .line 4
    :cond_0
    if-nez p0, :cond_1

    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    move-result p5

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 15
    move-result v0

    .line 16
    int-to-float v1, p1

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 19
    mul-float v1, v1, v2

    .line 21
    int-to-float v0, v0

    .line 22
    div-float/2addr v1, v0

    .line 23
    int-to-float v0, p2

    .line 24
    mul-float v0, v0, v2

    .line 26
    int-to-float p5, p5

    .line 27
    div-float/2addr v0, p5

    .line 28
    new-instance p5, Landroid/graphics/Matrix;

    .line 30
    invoke-direct {p5}, Landroid/graphics/Matrix;-><init>()V

    .line 33
    invoke-virtual {p5, v1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 36
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 38
    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 41
    move-result-object v0

    .line 42
    new-instance v1, Landroid/graphics/Canvas;

    .line 44
    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 47
    new-instance v2, Landroid/graphics/Paint;

    .line 49
    const/4 v3, 0x1

    .line 50
    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 53
    new-instance v4, Landroid/graphics/BitmapShader;

    .line 55
    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 57
    invoke-direct {v4, p0, v5, v5}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 60
    invoke-virtual {v4, p5}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 63
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 66
    new-instance p0, Landroid/graphics/RectF;

    .line 68
    int-to-float p5, p4

    .line 69
    sub-int/2addr p1, p4

    .line 70
    int-to-float p1, p1

    .line 71
    sub-int/2addr p2, p4

    .line 72
    int-to-float p2, p2

    .line 73
    invoke-direct {p0, p5, p5, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 76
    int-to-float p1, p3

    .line 77
    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 80
    if-lez p4, :cond_2

    .line 82
    new-instance p2, Landroid/graphics/Paint;

    .line 84
    invoke-direct {p2, v3}, Landroid/graphics/Paint;-><init>(I)V

    .line 87
    const/high16 p3, -0x1000000

    .line 89
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 92
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 94
    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    invoke-virtual {p2, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    invoke-virtual {v1, p0, p1, p1, p2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 103
    :cond_2
    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 6
    const-string v3, "WidgetTmcBarViewAFV"

    .line 8
    const-string v4, "drawTMC enter"

    .line 10
    invoke-static {v3, v4, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 16
    move-result v2

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 20
    move-result v4

    .line 21
    if-eqz v2, :cond_5

    .line 23
    if-nez v4, :cond_0

    .line 25
    goto/16 :goto_2

    .line 27
    :cond_0
    iget-object v5, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 29
    if-eqz v5, :cond_5

    .line 31
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 34
    move-result v5

    .line 35
    if-nez v5, :cond_1

    .line 37
    goto/16 :goto_2

    .line 39
    :cond_1
    iget-object v5, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 41
    if-eqz v5, :cond_5

    .line 43
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 46
    move-result v5

    .line 47
    int-to-float v12, v4

    .line 48
    const/high16 v6, 0x3f800000    # 1.0f

    .line 50
    mul-float v7, v12, v6

    .line 52
    iget v8, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->b:I

    .line 54
    int-to-float v8, v8

    .line 55
    mul-float v8, v8, v6

    .line 57
    div-float/2addr v7, v8

    .line 58
    iget-object v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 60
    if-nez v6, :cond_2

    .line 62
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 64
    invoke-static {v2, v4, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 67
    move-result-object v6

    .line 68
    iput-object v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 70
    new-instance v6, Landroid/graphics/Canvas;

    .line 72
    iget-object v8, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 74
    invoke-direct {v6, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 77
    iput-object v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->g:Landroid/graphics/Canvas;

    .line 79
    :cond_2
    const/4 v13, 0x1

    .line 80
    sub-int/2addr v5, v13

    .line 81
    const/4 v14, 0x0

    .line 82
    :goto_0
    const/4 v15, 0x4

    .line 83
    const/16 v16, 0x2

    .line 85
    if-ltz v5, :cond_3

    .line 87
    iget-object v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 89
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    move-result-object v6

    .line 93
    check-cast v6, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 95
    iget v8, v6, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->length:I

    .line 97
    int-to-float v8, v8

    .line 98
    mul-float v8, v8, v7

    .line 100
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 103
    move-result v8

    .line 104
    int-to-float v8, v8

    .line 105
    int-to-float v9, v14

    .line 106
    add-float/2addr v9, v8

    .line 107
    float-to-int v14, v9

    .line 108
    iget-object v9, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->g:Landroid/graphics/Canvas;

    .line 110
    const/16 v18, 0x0

    .line 112
    int-to-float v10, v14

    .line 113
    sub-float v8, v10, v8

    .line 115
    int-to-float v11, v2

    .line 116
    iget v13, v6, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 118
    invoke-virtual {v0, v13}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->b(I)I

    .line 121
    move-result v13

    .line 122
    invoke-virtual {v0, v13}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c(I)Landroid/graphics/Paint;

    .line 125
    move-result-object v22

    .line 126
    move-object/from16 v17, v9

    .line 128
    move/from16 v19, v8

    .line 130
    move/from16 v20, v11

    .line 132
    move/from16 v21, v10

    .line 134
    invoke-virtual/range {v17 .. v22}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 137
    new-array v9, v15, [Ljava/lang/Object;

    .line 139
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 142
    move-result-object v8

    .line 143
    aput-object v8, v9, v1

    .line 145
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    move-result-object v8

    .line 149
    const/4 v10, 0x1

    .line 150
    aput-object v8, v9, v10

    .line 152
    iget v8, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c:F

    .line 154
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 157
    move-result-object v8

    .line 158
    aput-object v8, v9, v16

    .line 160
    iget v6, v6, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 162
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    move-result-object v6

    .line 166
    const/4 v11, 0x3

    .line 167
    aput-object v6, v9, v11

    .line 169
    const-string v6, " \u7ed8\u5236\u8def\u51b5 top :{?} bottom:{?} mCursorPos:{?} status:{?}"

    .line 171
    invoke-static {v3, v6, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    add-int/lit8 v5, v5, -0x1

    .line 176
    const/4 v13, 0x1

    .line 177
    goto :goto_0

    .line 178
    :cond_3
    const/4 v11, 0x3

    .line 179
    if-ge v14, v4, :cond_4

    .line 181
    iget-object v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->g:Landroid/graphics/Canvas;

    .line 183
    const/4 v7, 0x0

    .line 184
    int-to-float v8, v14

    .line 185
    int-to-float v9, v2

    .line 186
    iget-object v5, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 188
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    move-result-object v5

    .line 192
    check-cast v5, Lcom/autonavi/amapauto/widget/jni/LightBarItem;

    .line 194
    iget v5, v5, Lcom/autonavi/amapauto/widget/jni/LightBarItem;->status:I

    .line 196
    invoke-virtual {v0, v5}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->b(I)I

    .line 199
    move-result v5

    .line 200
    invoke-virtual {v0, v5}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c(I)Landroid/graphics/Paint;

    .line 203
    move-result-object v5

    .line 204
    move v10, v12

    .line 205
    const/4 v13, 0x3

    .line 206
    move-object v11, v5

    .line 207
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 210
    new-array v5, v13, [Ljava/lang/Object;

    .line 212
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 215
    move-result-object v6

    .line 216
    aput-object v6, v5, v1

    .line 218
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    move-result-object v6

    .line 222
    const/4 v7, 0x1

    .line 223
    aput-object v6, v5, v7

    .line 225
    iget v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c:F

    .line 227
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 230
    move-result-object v6

    .line 231
    aput-object v6, v5, v16

    .line 233
    const-string v6, " \u7ed8\u5236\u8def\u51b5 top :{?} bottom:{?} mCursorPos:{?}"

    .line 235
    invoke-static {v3, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    goto :goto_1

    .line 239
    :cond_4
    const/4 v13, 0x3

    .line 240
    :goto_1
    iget v5, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c:F

    .line 242
    cmpl-float v5, v12, v5

    .line 244
    if-lez v5, :cond_5

    .line 246
    const/16 v5, 0xa

    .line 248
    invoke-virtual {v0, v5}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->b(I)I

    .line 251
    move-result v14

    .line 252
    iget-object v6, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->g:Landroid/graphics/Canvas;

    .line 254
    const/4 v7, 0x0

    .line 255
    iget v8, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c:F

    .line 257
    int-to-float v9, v2

    .line 258
    const v2, -0xdadadb

    .line 261
    invoke-virtual {v0, v2}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c(I)Landroid/graphics/Paint;

    .line 264
    move-result-object v11

    .line 265
    move v10, v12

    .line 266
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 269
    const/4 v6, 0x5

    .line 270
    new-array v6, v6, [Ljava/lang/Object;

    .line 272
    iget v7, v0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c:F

    .line 274
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 277
    move-result-object v7

    .line 278
    aput-object v7, v6, v1

    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 283
    move-result-object v1

    .line 284
    const/4 v4, 0x1

    .line 285
    aput-object v1, v6, v4

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 290
    move-result-object v1

    .line 291
    aput-object v1, v6, v16

    .line 293
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v1

    .line 297
    aput-object v1, v6, v13

    .line 299
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 302
    move-result-object v1

    .line 303
    aput-object v1, v6, v15

    .line 305
    const-string v1, " \u8d70\u8fc7\u7684\u8def\u7f6e\u7070 top :{?} bottom:{?}  status:{?}, color:{?},trueColor:{?}"

    .line 307
    invoke-static {v3, v1, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_5
    :goto_2
    return-void
.end method

.method public final b(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 3
    if-ne p1, v0, :cond_0

    .line 5
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->h:I

    .line 7
    return p1

    .line 8
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lpa;->n(Landroid/content/Context;)Z

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 22
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->i:I

    .line 24
    return p1

    .line 25
    :cond_1
    if-eqz p1, :cond_7

    .line 27
    const/4 v0, 0x1

    .line 28
    if-eq p1, v0, :cond_6

    .line 30
    const/4 v0, 0x2

    .line 31
    if-eq p1, v0, :cond_5

    .line 33
    const/4 v0, 0x3

    .line 34
    if-eq p1, v0, :cond_4

    .line 36
    const/4 v0, 0x4

    .line 37
    if-eq p1, v0, :cond_3

    .line 39
    const/4 v0, 0x5

    .line 40
    if-eq p1, v0, :cond_2

    .line 42
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->h:I

    .line 44
    return p1

    .line 45
    :cond_2
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->j:I

    .line 47
    return p1

    .line 48
    :cond_3
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->n:I

    .line 50
    return p1

    .line 51
    :cond_4
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->m:I

    .line 53
    return p1

    .line 54
    :cond_5
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->l:I

    .line 56
    return p1

    .line 57
    :cond_6
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->k:I

    .line 59
    return p1

    .line 60
    :cond_7
    sget p1, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->i:I

    .line 62
    return p1
.end method

.method public final c(I)Landroid/graphics/Paint;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->e:Landroid/graphics/Paint;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->e:Landroid/graphics/Paint;

    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 16
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->e:Landroid/graphics/Paint;

    .line 18
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->e:Landroid/graphics/Paint;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->e:Landroid/graphics/Paint;

    .line 30
    return-object p1
.end method

.method public e()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 4
    return-void
.end method

.method public f(Ljava/util/List;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_0
    iput p2, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->b:I

    .line 15
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 7
    move-result v3

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 11
    move-result v2

    .line 12
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_0

    .line 22
    goto/16 :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a:Ljava/util/List;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    const/16 v0, 0x8

    .line 30
    new-array v0, v0, [F

    .line 32
    int-to-float v1, v3

    .line 33
    const/4 v4, 0x0

    .line 34
    aput v1, v0, v4

    .line 36
    const/4 v5, 0x1

    .line 37
    aput v1, v0, v5

    .line 39
    const/4 v6, 0x2

    .line 40
    aput v1, v0, v6

    .line 42
    const/4 v6, 0x3

    .line 43
    aput v1, v0, v6

    .line 45
    const/4 v6, 0x4

    .line 46
    aput v1, v0, v6

    .line 48
    const/4 v6, 0x5

    .line 49
    aput v1, v0, v6

    .line 51
    const/4 v6, 0x6

    .line 52
    aput v1, v0, v6

    .line 54
    const/4 v6, 0x7

    .line 55
    aput v1, v0, v6

    .line 57
    new-instance v6, Landroid/graphics/Path;

    .line 59
    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    .line 62
    new-instance v7, Landroid/graphics/RectF;

    .line 64
    int-to-float v8, v2

    .line 65
    const/4 v9, 0x0

    .line 66
    invoke-direct {v7, v9, v9, v1, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 69
    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 71
    invoke-virtual {v6, v7, v0, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 74
    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 77
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 79
    const/4 v6, 0x0

    .line 80
    const-string v1, "bufferBitmap allocation:{?}"

    .line 82
    const-string v7, "WidgetTmcBarViewAFV"

    .line 84
    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_1

    .line 92
    new-array v0, v5, [Ljava/lang/Object;

    .line 94
    iget-object v5, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 96
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 99
    move-result v5

    .line 100
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 103
    move-result-object v5

    .line 104
    aput-object v5, v0, v4

    .line 106
    invoke-static {v7, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v5, 0x1

    .line 113
    move v1, v3

    .line 114
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->d(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {p1, v0, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a()V

    .line 125
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 127
    if-eqz v0, :cond_2

    .line 129
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_2

    .line 135
    new-array v0, v5, [Ljava/lang/Object;

    .line 137
    iget-object v5, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 139
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    .line 142
    move-result v5

    .line 143
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 146
    move-result-object v5

    .line 147
    aput-object v5, v0, v4

    .line 149
    invoke-static {v7, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->f:Landroid/graphics/Bitmap;

    .line 154
    const/4 v4, 0x0

    .line 155
    const/4 v5, 0x1

    .line 156
    move v1, v3

    .line 157
    invoke-static/range {v0 .. v5}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->d(Landroid/graphics/Bitmap;IIIIZ)Landroid/graphics/Bitmap;

    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1, v0, v9, v9, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 164
    :cond_2
    :goto_0
    return-void
.end method

.method public setCursorPos(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->c:F

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->a()V

    .line 6
    return-void
.end method

.method public setNightMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->d:Z

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/amapauto/widget/views/WidgetTmcBarViewAFV;->e()V

    .line 6
    return-void
.end method

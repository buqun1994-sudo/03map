.class public abstract Lnd0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Landroid/graphics/Path;

.field public static b:Landroid/graphics/Paint;

.field public static c:Landroid/graphics/RectF;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Path;

    .line 3
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 6
    sput-object v0, Lnd0;->a:Landroid/graphics/Path;

    .line 8
    new-instance v0, Landroid/graphics/Paint;

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 14
    sput-object v0, Lnd0;->b:Landroid/graphics/Paint;

    .line 16
    new-instance v0, Landroid/graphics/RectF;

    .line 18
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    sput-object v0, Lnd0;->c:Landroid/graphics/RectF;

    .line 23
    return-void
.end method

.method public static a(Landroid/graphics/Canvas;Landroid/view/View;Lzf;)V
    .locals 9

    .line 1
    if-nez p0, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    if-nez p1, :cond_1

    .line 6
    return-void

    .line 7
    :cond_1
    if-nez p2, :cond_2

    .line 9
    return-void

    .line 10
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/view/View;

    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v1, v2, :cond_3

    .line 23
    const/4 p0, 0x0

    .line 24
    invoke-virtual {v0, v2, p0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 27
    return-void

    .line 28
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    .line 31
    move-result v0

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v1

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 39
    move-result p1

    .line 40
    iget v2, p2, Lzf;->d:F

    .line 42
    const v3, 0x3fa66666    # 1.3f

    .line 45
    mul-float v2, v2, v3

    .line 47
    iget v3, p2, Lzf;->b:I

    .line 49
    iget v4, p2, Lzf;->c:I

    .line 51
    invoke-static {p1, v1, p2}, Lnd0;->b(IILzf;)V

    .line 54
    :try_start_0
    sget-object v5, Lnd0;->a:Landroid/graphics/Path;

    .line 56
    sget-object v6, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    .line 58
    invoke-virtual {p0, v5, v6}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    sget-object v5, Lnd0;->c:Landroid/graphics/RectF;

    .line 63
    int-to-float v6, v3

    .line 64
    sub-float v7, v6, v2

    .line 66
    iput v7, v5, Landroid/graphics/RectF;->left:F

    .line 68
    int-to-float v7, v4

    .line 69
    sub-float v8, v7, v2

    .line 71
    iput v8, v5, Landroid/graphics/RectF;->top:F

    .line 73
    add-int/2addr p1, v3

    .line 74
    int-to-float p1, p1

    .line 75
    add-float/2addr p1, v2

    .line 76
    iput p1, v5, Landroid/graphics/RectF;->right:F

    .line 78
    add-int/2addr v1, v4

    .line 79
    int-to-float p1, v1

    .line 80
    add-float/2addr p1, v2

    .line 81
    iput p1, v5, Landroid/graphics/RectF;->bottom:F

    .line 83
    sget-object p1, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 85
    invoke-virtual {p0, v5, p1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 88
    invoke-virtual {p0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    sget-object p1, Lnd0;->b:Landroid/graphics/Paint;

    .line 93
    iget v1, p2, Lzf;->a:I

    .line 95
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    sget-object p1, Lnd0;->b:Landroid/graphics/Paint;

    .line 100
    new-instance v1, Landroid/graphics/BlurMaskFilter;

    .line 102
    iget v2, p2, Lzf;->d:F

    .line 104
    sget-object v3, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    .line 106
    invoke-direct {v1, v2, v3}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 109
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 112
    sget-object p1, Lnd0;->a:Landroid/graphics/Path;

    .line 114
    sget-object v1, Lnd0;->b:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {p0, p1, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 122
    invoke-virtual {p2}, Lzf;->f()V

    .line 125
    return-void

    .line 126
    :catch_0
    move-exception p1

    .line 127
    const-string v1, "shadow"

    .line 129
    const-string v2, "\u4e0d\u652f\u6301clipPath"

    .line 131
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    invoke-virtual {p0, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 140
    invoke-virtual {p2}, Lzf;->f()V

    .line 143
    return-void
.end method

.method public static b(IILzf;)V
    .locals 9

    .line 1
    iget v0, p2, Lzf;->e:I

    .line 3
    int-to-float v0, v0

    .line 4
    iget v1, p2, Lzf;->f:I

    .line 6
    int-to-float v1, v1

    .line 7
    iget v2, p2, Lzf;->g:I

    .line 9
    int-to-float v2, v2

    .line 10
    iget p2, p2, Lzf;->h:I

    .line 12
    int-to-float p2, p2

    .line 13
    add-float v3, v0, v1

    .line 15
    int-to-float p0, p0

    .line 16
    cmpl-float v4, v3, p0

    .line 18
    if-lez v4, :cond_0

    .line 20
    div-float v3, p0, v3

    .line 22
    mul-float v0, v0, v3

    .line 24
    mul-float v1, v1, v3

    .line 26
    mul-float v2, v2, v3

    .line 28
    mul-float p2, p2, v3

    .line 30
    :cond_0
    add-float v3, v1, v2

    .line 32
    int-to-float p1, p1

    .line 33
    cmpl-float v4, v3, p1

    .line 35
    if-lez v4, :cond_1

    .line 37
    div-float v3, p1, v3

    .line 39
    mul-float v0, v0, v3

    .line 41
    mul-float v1, v1, v3

    .line 43
    mul-float v2, v2, v3

    .line 45
    mul-float p2, p2, v3

    .line 47
    :cond_1
    add-float v3, v2, p2

    .line 49
    cmpl-float v4, v3, p1

    .line 51
    if-lez v4, :cond_2

    .line 53
    div-float v3, p0, v3

    .line 55
    mul-float v0, v0, v3

    .line 57
    mul-float v1, v1, v3

    .line 59
    mul-float v2, v2, v3

    .line 61
    mul-float p2, p2, v3

    .line 63
    :cond_2
    add-float v3, v0, p2

    .line 65
    cmpl-float v4, v3, p1

    .line 67
    if-lez v4, :cond_3

    .line 69
    div-float v3, p0, v3

    .line 71
    mul-float v0, v0, v3

    .line 73
    mul-float v1, v1, v3

    .line 75
    mul-float v2, v2, v3

    .line 77
    mul-float p2, p2, v3

    .line 79
    :cond_3
    sget-object v3, Lnd0;->a:Landroid/graphics/Path;

    .line 81
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 84
    sget-object v3, Lnd0;->c:Landroid/graphics/RectF;

    .line 86
    const/4 v4, 0x0

    .line 87
    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 89
    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 91
    const/high16 v5, 0x40000000    # 2.0f

    .line 93
    mul-float v0, v0, v5

    .line 95
    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 97
    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 99
    sget-object v0, Lnd0;->a:Landroid/graphics/Path;

    .line 101
    const/high16 v6, 0x43340000    # 180.0f

    .line 103
    const/high16 v7, 0x42b40000    # 90.0f

    .line 105
    const/4 v8, 0x0

    .line 106
    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 109
    sget-object v0, Lnd0;->c:Landroid/graphics/RectF;

    .line 111
    mul-float v1, v1, v5

    .line 113
    sub-float v3, p0, v1

    .line 115
    iput v3, v0, Landroid/graphics/RectF;->left:F

    .line 117
    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 119
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 121
    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 123
    sget-object v1, Lnd0;->a:Landroid/graphics/Path;

    .line 125
    const/high16 v3, -0x3d4c0000    # -90.0f

    .line 127
    invoke-virtual {v1, v0, v3, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 130
    sget-object v0, Lnd0;->c:Landroid/graphics/RectF;

    .line 132
    mul-float v2, v2, v5

    .line 134
    sub-float v1, p0, v2

    .line 136
    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 138
    sub-float v1, p1, v2

    .line 140
    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 142
    iput p0, v0, Landroid/graphics/RectF;->right:F

    .line 144
    iput p1, v0, Landroid/graphics/RectF;->bottom:F

    .line 146
    sget-object p0, Lnd0;->a:Landroid/graphics/Path;

    .line 148
    invoke-virtual {p0, v0, v4, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 151
    sget-object p0, Lnd0;->c:Landroid/graphics/RectF;

    .line 153
    iput v4, p0, Landroid/graphics/RectF;->left:F

    .line 155
    mul-float p2, p2, v5

    .line 157
    sub-float v0, p1, p2

    .line 159
    iput v0, p0, Landroid/graphics/RectF;->top:F

    .line 161
    iput p2, p0, Landroid/graphics/RectF;->right:F

    .line 163
    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    .line 165
    sget-object p1, Lnd0;->a:Landroid/graphics/Path;

    .line 167
    invoke-virtual {p1, p0, v7, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 170
    sget-object p0, Lnd0;->a:Landroid/graphics/Path;

    .line 172
    invoke-virtual {p0}, Landroid/graphics/Path;->close()V

    .line 175
    return-void
.end method

.method public static c()V
    .locals 1

    .line 1
    sget-object v0, Lnd0;->a:Landroid/graphics/Path;

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 6
    return-void
.end method

.class public Lcom/autonavi/amapauto/textfont/GlyphLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GlyphLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static createGlyphLoader()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->nativeCreateGlyphLoader()J

    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private static decodeUnicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static decodeUnicode(S)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    int-to-char p0, p0

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static destroyGlyphLoader(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->nativeDestroyGlyphLoader(J)V

    .line 4
    return-void
.end method

.method private static genFontMetricsParam([B)Lqm;
    .locals 6

    .line 1
    new-instance v0, Lqm;

    .line 3
    invoke-direct {v0}, Lqm;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {p0, v1}, Ldn;->a([BI)I

    .line 10
    move-result v2

    .line 11
    int-to-float v2, v2

    .line 12
    const v3, 0x3a83126f    # 0.001f

    .line 15
    mul-float v2, v2, v3

    .line 17
    iput v2, v0, Lqm;->a:F

    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 23
    move-result v3

    .line 24
    iput v3, v0, Lqm;->b:I

    .line 26
    const/16 v3, 0x8

    .line 28
    invoke-static {p0, v3}, Ldn;->a([BI)I

    .line 31
    move-result v3

    .line 32
    const/4 v4, 0x1

    .line 33
    const/16 v5, 0xc

    .line 35
    if-ne v4, v3, :cond_0

    .line 37
    invoke-static {p0, v5}, Ldn;->a([BI)I

    .line 40
    move-result v3

    .line 41
    new-instance v4, Ljava/lang/String;

    .line 43
    const/16 v5, 0x10

    .line 45
    invoke-direct {v4, p0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 48
    iput-object v4, v0, Lqm;->c:Ljava/lang/String;

    .line 50
    add-int/2addr v5, v3

    .line 51
    :cond_0
    invoke-static {p0, v5}, Ldn;->a([BI)I

    .line 54
    move-result v3

    .line 55
    add-int/2addr v5, v2

    .line 56
    new-instance v2, Ljava/lang/String;

    .line 58
    invoke-direct {v2, p0, v5, v3}, Ljava/lang/String;-><init>([BII)V

    .line 61
    iput-object v2, v0, Lqm;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string v0, "genFontMetricsParam error!"

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    const-string v2, "GlyphLoader"

    .line 71
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 74
    const/4 v0, 0x0

    .line 75
    :goto_0
    return-object v0
.end method

.method private static genGlyphRequestParam([B)Lcom/autonavi/amapauto/textfont/GlyphRequestParam;
    .locals 8

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;-><init>()V

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-static {p0, v1}, Ldn;->a([BI)I

    .line 10
    move-result v2

    .line 11
    new-instance v3, Ljava/lang/String;

    .line 13
    const/4 v4, 0x4

    .line 14
    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([BII)V

    .line 17
    iput-object v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    .line 19
    add-int/2addr v2, v4

    .line 20
    new-instance v3, Lpm;

    .line 22
    invoke-direct {v3}, Lpm;-><init>()V

    .line 25
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 28
    move-result v5

    .line 29
    iput v5, v3, Lpm;->a:I

    .line 31
    add-int/2addr v2, v4

    .line 32
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 35
    move-result v5

    .line 36
    iput v5, v3, Lpm;->b:I

    .line 38
    add-int/2addr v2, v4

    .line 39
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 42
    move-result v5

    .line 43
    add-int/2addr v2, v4

    .line 44
    if-lez v5, :cond_0

    .line 46
    new-instance v6, Ljava/lang/String;

    .line 48
    invoke-direct {v6, p0, v2, v5}, Ljava/lang/String;-><init>([BII)V

    .line 51
    iput-object v6, v3, Lpm;->c:Ljava/lang/String;

    .line 53
    add-int/2addr v2, v5

    .line 54
    :cond_0
    new-instance v5, Lcom/autonavi/amapauto/textfont/FontMetrics;

    .line 56
    invoke-direct {v5}, Lcom/autonavi/amapauto/textfont/FontMetrics;-><init>()V

    .line 59
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 62
    move-result v6

    .line 63
    add-int/2addr v2, v4

    .line 64
    int-to-float v6, v6

    .line 65
    const v7, 0x3a83126f    # 0.001f

    .line 68
    mul-float v6, v6, v7

    .line 70
    iput v6, v5, Lcom/autonavi/amapauto/textfont/FontMetrics;->fAscent:F

    .line 72
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 75
    move-result v6

    .line 76
    add-int/2addr v2, v4

    .line 77
    int-to-float v6, v6

    .line 78
    mul-float v6, v6, v7

    .line 80
    iput v6, v5, Lcom/autonavi/amapauto/textfont/FontMetrics;->fDescent:F

    .line 82
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 85
    move-result v6

    .line 86
    add-int/2addr v2, v4

    .line 87
    int-to-float v6, v6

    .line 88
    mul-float v6, v6, v7

    .line 90
    iput v6, v5, Lcom/autonavi/amapauto/textfont/FontMetrics;->fLeading:F

    .line 92
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 95
    move-result v6

    .line 96
    add-int/2addr v2, v4

    .line 97
    int-to-float v6, v6

    .line 98
    mul-float v6, v6, v7

    .line 100
    iput v6, v5, Lcom/autonavi/amapauto/textfont/FontMetrics;->fHeight:F

    .line 102
    iput-object v5, v3, Lpm;->d:Lcom/autonavi/amapauto/textfont/FontMetrics;

    .line 104
    iput-object v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    .line 106
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 109
    move-result v3

    .line 110
    iput v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->drawingMode:I

    .line 112
    add-int/2addr v2, v4

    .line 113
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 116
    move-result v3

    .line 117
    add-int/2addr v2, v4

    .line 118
    int-to-float v3, v3

    .line 119
    mul-float v3, v3, v7

    .line 121
    iput v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strokeWidth:F

    .line 123
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 126
    move-result v3

    .line 127
    add-int/2addr v2, v4

    .line 128
    new-instance v5, Ljava/lang/String;

    .line 130
    invoke-direct {v5, p0, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .line 133
    iput-object v5, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->languageArr:Ljava/lang/String;

    .line 135
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 138
    move-result v3

    .line 139
    iput v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isEmoji:I

    .line 141
    add-int/2addr v2, v4

    .line 142
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 145
    move-result v3

    .line 146
    iput v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isSDF:I

    .line 148
    add-int/2addr v2, v4

    .line 149
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 152
    move-result v3

    .line 153
    add-int/2addr v2, v4

    .line 154
    const/4 v5, 0x1

    .line 155
    if-ne v5, v3, :cond_1

    .line 157
    new-instance v3, Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    .line 159
    invoke-direct {v3}, Lcom/autonavi/amapauto/textfont/GlyphMetrics;-><init>()V

    .line 162
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 165
    move-result v5

    .line 166
    iput v5, v3, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->nWidth:I

    .line 168
    add-int/2addr v2, v4

    .line 169
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 172
    move-result v5

    .line 173
    iput v5, v3, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->nHeight:I

    .line 175
    add-int/2addr v2, v4

    .line 176
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 179
    move-result v5

    .line 180
    add-int/2addr v2, v4

    .line 181
    int-to-float v5, v5

    .line 182
    mul-float v5, v5, v7

    .line 184
    iput v5, v3, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fLeft:F

    .line 186
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 189
    move-result v5

    .line 190
    add-int/2addr v2, v4

    .line 191
    int-to-float v4, v5

    .line 192
    mul-float v4, v4, v7

    .line 194
    iput v4, v3, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fTop:F

    .line 196
    invoke-static {p0, v2}, Ldn;->a([BI)I

    .line 199
    move-result p0

    .line 200
    int-to-float p0, p0

    .line 201
    mul-float p0, p0, v7

    .line 203
    iput p0, v3, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fAdvance:F

    .line 205
    iput-object v3, v0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->fGlyphMetrics:Lcom/autonavi/amapauto/textfont/GlyphMetrics;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 208
    :catch_0
    move-exception p0

    .line 209
    const-string v0, "genGlyphRequestParam error!"

    .line 211
    new-array v1, v1, [Ljava/lang/Object;

    .line 213
    const-string v2, "GlyphLoader"

    .line 215
    invoke-static {v2, v0, p0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 218
    const/4 v0, 0x0

    .line 219
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getFontMetrics(Lqm;)Lcom/autonavi/amapauto/textfont/FontMetrics;
    .locals 7

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/textfont/FontMetrics;

    invoke-direct {v0}, Lcom/autonavi/amapauto/textfont/FontMetrics;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lqm;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "GlyphLoader"

    const-string v5, "getFontMetrics, param:{?}"

    invoke-static {v3, v5, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v2, Lvm;

    iget v5, p0, Lqm;->b:I

    invoke-direct {v2, v5}, Lvm;-><init>(I)V

    .line 6
    iget v5, p0, Lqm;->a:F

    iget-object p0, p0, Lqm;->d:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v2, v5, p0, v4, v6}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->newTextPaint(Lvm;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p0

    .line 8
    iput-boolean v1, v0, Lcom/autonavi/amapauto/textfont/FontMetrics;->bSuccess:Z

    .line 9
    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fAscent:F

    .line 10
    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fDescent:F

    .line 11
    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->leading:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iput v2, v0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fLeading:F

    .line 12
    iget v2, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr v2, p0

    iput v2, v0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fHeight:F

    new-array p0, v1, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v0}, Lcom/autonavi/amapauto/textfont/FontMetrics;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v4

    const-string v1, "getFontMetrics, fm:{?}"

    invoke-static {v3, v1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getFontMetrics([B)Lcom/autonavi/amapauto/textfont/FontMetrics;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->genFontMetricsParam([B)Lqm;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->getFontMetrics(Lqm;)Lcom/autonavi/amapauto/textfont/FontMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getGlyphMetrics(Lcom/autonavi/amapauto/textfont/GlyphRequestParam;)Lcom/autonavi/amapauto/textfont/GlyphMetrics;
    .locals 13

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    invoke-direct {p0}, Lcom/autonavi/amapauto/textfont/GlyphMetrics;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GlyphLoader"

    const-string v4, "getGlyphMetrics, glyphRequestParam:{?}"

    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v6, Lvm;

    iget-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    iget v1, v1, Lpm;->a:I

    invoke-direct {v6, v1}, Lvm;-><init>(I)V

    .line 6
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->drawingMode:I

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 7
    :goto_0
    iget-object v5, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    iget v1, v1, Lpm;->b:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->languageArr:Ljava/lang/String;

    iget v10, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strokeWidth:F

    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isEmoji:I

    if-lez v1, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    iget p0, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isSDF:I

    if-lez p0, :cond_3

    const/4 v12, 0x1

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    :goto_2
    invoke-static/range {v5 .. v12}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->loadGlyphMetrics(Ljava/lang/String;Lvm;FLjava/lang/String;ZFZZ)Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getGlyphMetrics([B)Lcom/autonavi/amapauto/textfont/GlyphMetrics;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->genGlyphRequestParam([B)Lcom/autonavi/amapauto/textfont/GlyphRequestParam;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->getGlyphMetrics(Lcom/autonavi/amapauto/textfont/GlyphRequestParam;)Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static getGlyphRaster(Lcom/autonavi/amapauto/textfont/GlyphRequestParam;)Lcom/autonavi/amapauto/textfont/GlyphRaster;
    .locals 13

    if-nez p0, :cond_0

    .line 3
    new-instance p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;

    invoke-direct {p0}, Lcom/autonavi/amapauto/textfont/GlyphRaster;-><init>()V

    return-object p0

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "GlyphLoader"

    const-string v4, "getGlyphRaster, param:{?}"

    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    new-instance v6, Lvm;

    iget-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    iget v1, v1, Lpm;->a:I

    invoke-direct {v6, v1}, Lvm;-><init>(I)V

    .line 6
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->drawingMode:I

    if-eqz v1, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 7
    iget-object v5, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    iget v0, v0, Lpm;->b:I

    int-to-float v7, v0

    iget-object v8, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->languageArr:Ljava/lang/String;

    iget p0, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strokeWidth:F

    const/high16 v0, 0x40000000    # 2.0f

    mul-float v10, p0, v0

    invoke-static/range {v5 .. v10}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->loadPathRaster(Ljava/lang/String;Lvm;FLjava/lang/String;ZF)Lcom/autonavi/amapauto/textfont/GlyphRaster;

    move-result-object p0

    return-object p0

    .line 8
    :cond_2
    iget-object v5, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    iget-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    iget v1, v1, Lpm;->b:I

    int-to-float v7, v1

    iget-object v8, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->languageArr:Ljava/lang/String;

    iget v10, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strokeWidth:F

    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isEmoji:I

    if-lez v1, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    iget p0, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isSDF:I

    if-lez p0, :cond_4

    const/4 v12, 0x1

    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    :goto_2
    invoke-static/range {v5 .. v12}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->loadGlyphRaster(Ljava/lang/String;Lvm;FLjava/lang/String;ZFZZ)Lcom/autonavi/amapauto/textfont/GlyphRaster;

    move-result-object p0

    return-object p0
.end method

.method public static getGlyphRaster([B)Lcom/autonavi/amapauto/textfont/GlyphRaster;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->genGlyphRequestParam([B)Lcom/autonavi/amapauto/textfont/GlyphRequestParam;

    move-result-object p0

    .line 2
    invoke-static {p0}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->getGlyphRaster(Lcom/autonavi/amapauto/textfont/GlyphRequestParam;)Lcom/autonavi/amapauto/textfont/GlyphRaster;

    move-result-object p0

    return-object p0
.end method

.method private static loadGlyphMetrics(Ljava/lang/String;Lvm;FLjava/lang/String;ZFZZ)Lcom/autonavi/amapauto/textfont/GlyphMetrics;
    .locals 5

    .line 1
    new-instance p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    .line 3
    invoke-direct {p7}, Lcom/autonavi/amapauto/textfont/GlyphMetrics;-><init>()V

    .line 6
    if-nez p1, :cond_0

    .line 8
    return-object p7

    .line 9
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    return-object p7

    .line 16
    :cond_1
    const-string v0, "GlyphLoader"

    .line 18
    const/4 v1, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    if-nez p6, :cond_4

    .line 23
    :try_start_0
    const-string p6, "loadGlyphMetrics, newTextPaint"

    .line 25
    new-array v4, v3, [Ljava/lang/Object;

    .line 27
    invoke-static {v0, p6, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->newTextPaint(Lvm;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    .line 33
    move-result-object p1

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    .line 36
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 39
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 42
    move-result p3

    .line 43
    invoke-virtual {p1, p0, v3, p3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 46
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 49
    move-result p3

    .line 50
    if-nez p3, :cond_2

    .line 52
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 55
    move-result p3

    .line 56
    if-nez p3, :cond_2

    .line 58
    const-string p3, " "

    .line 60
    invoke-virtual {p1, p3, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 63
    move-result p3

    .line 64
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 67
    move-result-object p6

    .line 68
    iget p6, p6, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 70
    invoke-static {p6}, Ljava/lang/Math;->abs(F)F

    .line 73
    move-result p6

    .line 74
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 77
    move-result-object v4

    .line 78
    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 80
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 83
    move-result v4

    .line 84
    add-float/2addr p6, v4

    .line 85
    iput v3, p2, Landroid/graphics/Rect;->top:I

    .line 87
    iput v3, p2, Landroid/graphics/Rect;->left:I

    .line 89
    float-to-int p3, p3

    .line 90
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 92
    float-to-int p3, p6

    .line 93
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 95
    :cond_2
    if-eqz p4, :cond_3

    .line 97
    cmpl-float p3, p5, v1

    .line 99
    if-lez p3, :cond_3

    .line 101
    const/high16 p3, 0x40000000    # 2.0f

    .line 103
    div-float/2addr p5, p3

    .line 104
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 106
    int-to-float p3, p3

    .line 107
    sub-float/2addr p3, p5

    .line 108
    float-to-int p3, p3

    .line 109
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 111
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 113
    int-to-float p3, p3

    .line 114
    sub-float/2addr p3, p5

    .line 115
    float-to-int p3, p3

    .line 116
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 118
    iget p3, p2, Landroid/graphics/Rect;->right:I

    .line 120
    int-to-float p3, p3

    .line 121
    add-float/2addr p3, p5

    .line 122
    float-to-int p3, p3

    .line 123
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 125
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 127
    int-to-float p3, p3

    .line 128
    add-float/2addr p3, p5

    .line 129
    float-to-int p3, p3

    .line 130
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 132
    :cond_3
    iput-boolean v2, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->bSuccess:Z

    .line 134
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 136
    int-to-float p3, p3

    .line 137
    iput p3, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fLeft:F

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 142
    move-result-object p3

    .line 143
    iget p3, p3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 145
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 148
    move-result p3

    .line 149
    iget p4, p2, Landroid/graphics/Rect;->top:I

    .line 151
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    .line 154
    move-result p4

    .line 155
    int-to-float p4, p4

    .line 156
    sub-float/2addr p3, p4

    .line 157
    iput p3, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fTop:F

    .line 159
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 162
    move-result p3

    .line 163
    iput p3, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->nWidth:I

    .line 165
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 168
    move-result p2

    .line 169
    iput p2, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->nHeight:I

    .line 171
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 174
    move-result p0

    .line 175
    iput p0, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fAdvance:F

    .line 177
    goto :goto_0

    .line 178
    :cond_4
    iput-boolean v2, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->bSuccess:Z

    .line 180
    iput v1, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fLeft:F

    .line 182
    iput v1, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fTop:F

    .line 184
    float-to-int p0, p2

    .line 185
    iput p0, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->nWidth:I

    .line 187
    iput p0, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->nHeight:I

    .line 189
    iput p2, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->fAdvance:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 192
    :catch_0
    iput-boolean v3, p7, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->bSuccess:Z

    .line 194
    :goto_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 196
    invoke-virtual {p7}, Lcom/autonavi/amapauto/textfont/GlyphMetrics;->toString()Ljava/lang/String;

    .line 199
    move-result-object p1

    .line 200
    aput-object p1, p0, v3

    .line 202
    const-string p1, "loadGlyphMetrics, info:{?}"

    .line 204
    invoke-static {v0, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    return-object p7
.end method

.method private static loadGlyphRaster(Ljava/lang/String;Lvm;FLjava/lang/String;ZFZZ)Lcom/autonavi/amapauto/textfont/GlyphRaster;
    .locals 8

    .line 1
    const-string v0, "GlyphLoader"

    .line 3
    new-instance v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;

    .line 5
    invoke-direct {v1}, Lcom/autonavi/amapauto/textfont/GlyphRaster;-><init>()V

    .line 8
    if-nez p1, :cond_0

    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 17
    return-object v1

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :try_start_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lrv;->y()Landroid/app/Application;

    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    move-result-object v3

    .line 31
    const-string v4, "accessibility"

    .line 33
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    move-result-object v3

    .line 37
    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    .line 39
    const-string v4, "isHighTextContrastEnabled"

    .line 41
    new-array v5, v2, [Ljava/lang/Class;

    .line 43
    new-array v6, v2, [Ljava/lang/Object;

    .line 45
    invoke-static {v3, v4, v5, v6}, Lw90;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Ljava/lang/Boolean;

    .line 51
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 54
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v3

    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    const-string v5, "highText exception:"

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object v3

    .line 78
    new-array v4, v2, [Ljava/lang/Object;

    .line 80
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    const/4 v3, 0x0

    .line 84
    :goto_0
    const/4 v4, 0x1

    .line 85
    new-array v5, v4, [Ljava/lang/Object;

    .line 87
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    move-result-object v6

    .line 91
    aput-object v6, v5, v2

    .line 93
    const-string v6, "highText:{?}"

    .line 95
    invoke-static {v0, v6, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    :try_start_1
    invoke-static {p1, p2, p3, p4, p5}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->newTextPaint(Lvm;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Landroid/graphics/Rect;

    .line 104
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 107
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 110
    move-result p3

    .line 111
    invoke-virtual {p1, p0, v2, p3, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 114
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 117
    move-result p3

    .line 118
    if-nez p3, :cond_2

    .line 120
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 123
    move-result p3

    .line 124
    if-nez p3, :cond_2

    .line 126
    const-string p3, " "

    .line 128
    invoke-virtual {p1, p3, v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    .line 131
    move-result p3

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 135
    move-result-object v5

    .line 136
    iget v5, v5, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 138
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 141
    move-result v5

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 145
    move-result-object v6

    .line 146
    iget v6, v6, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 148
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 151
    move-result v6

    .line 152
    add-float/2addr v5, v6

    .line 153
    float-to-int p3, p3

    .line 154
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 156
    float-to-int p3, v5

    .line 157
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 159
    iput v2, p2, Landroid/graphics/Rect;->left:I

    .line 161
    iput v2, p2, Landroid/graphics/Rect;->top:I

    .line 163
    :cond_2
    if-eqz p4, :cond_3

    .line 165
    const/4 p3, 0x0

    .line 166
    cmpl-float p3, p5, p3

    .line 168
    if-lez p3, :cond_3

    .line 170
    const/high16 p3, 0x40000000    # 2.0f

    .line 172
    div-float/2addr p5, p3

    .line 173
    iget p3, p2, Landroid/graphics/Rect;->top:I

    .line 175
    int-to-float p3, p3

    .line 176
    sub-float/2addr p3, p5

    .line 177
    float-to-int p3, p3

    .line 178
    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 180
    iget p3, p2, Landroid/graphics/Rect;->left:I

    .line 182
    int-to-float p3, p3

    .line 183
    sub-float/2addr p3, p5

    .line 184
    float-to-int p3, p3

    .line 185
    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 187
    iget p3, p2, Landroid/graphics/Rect;->right:I

    .line 189
    int-to-float p3, p3

    .line 190
    add-float/2addr p3, p5

    .line 191
    float-to-int p3, p3

    .line 192
    iput p3, p2, Landroid/graphics/Rect;->right:I

    .line 194
    iget p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 196
    int-to-float p3, p3

    .line 197
    add-float/2addr p3, p5

    .line 198
    float-to-int p3, p3

    .line 199
    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    .line 201
    :cond_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    .line 204
    move-result p3

    .line 205
    if-nez p3, :cond_b

    .line 207
    sget-object p3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 209
    if-nez p6, :cond_5

    .line 211
    if-eqz v3, :cond_4

    .line 213
    goto :goto_1

    .line 214
    :cond_4
    const/4 p4, 0x1

    .line 215
    goto :goto_2

    .line 216
    :cond_5
    :goto_1
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 218
    const/4 p4, 0x4

    .line 219
    :goto_2
    if-eqz p7, :cond_6

    .line 221
    const/4 p5, 0x3

    .line 222
    goto :goto_3

    .line 223
    :cond_6
    const/4 p5, 0x0

    .line 224
    :goto_3
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 227
    move-result p7

    .line 228
    mul-int/lit8 v5, p5, 0x2

    .line 230
    add-int/2addr p7, v5

    .line 231
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 234
    move-result v6

    .line 235
    add-int/2addr v6, v5

    .line 236
    invoke-static {p7, v6, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 239
    move-result-object p3

    .line 240
    new-instance p7, Landroid/graphics/Canvas;

    .line 242
    invoke-direct {p7, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 245
    iget v6, p2, Landroid/graphics/Rect;->left:I

    .line 247
    rsub-int/lit8 v6, v6, 0x0

    .line 249
    add-int/2addr v6, p5

    .line 250
    int-to-float v6, v6

    .line 251
    iget v7, p2, Landroid/graphics/Rect;->top:I

    .line 253
    rsub-int/lit8 v7, v7, 0x0

    .line 255
    add-int/2addr v7, p5

    .line 256
    int-to-float p5, v7

    .line 257
    invoke-virtual {p7, p0, v6, p5, p1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 260
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 263
    move-result p0

    .line 264
    add-int/2addr p0, v5

    .line 265
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 268
    move-result p2

    .line 269
    add-int/2addr p2, v5

    .line 270
    mul-int p5, p0, p2

    .line 272
    mul-int p7, p5, p4

    .line 274
    new-array p7, p7, [B

    .line 276
    invoke-static {p7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {p3, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 283
    if-eqz v3, :cond_9

    .line 285
    new-array p5, p5, [B

    .line 287
    const/4 v3, 0x0

    .line 288
    :goto_4
    if-ge v3, p2, :cond_8

    .line 290
    const/4 v5, 0x0

    .line 291
    :goto_5
    mul-int v6, p0, p4

    .line 293
    if-ge v5, v6, :cond_7

    .line 295
    div-int v6, v5, p4

    .line 297
    mul-int v7, v3, p0

    .line 299
    add-int/2addr v6, v7

    .line 300
    mul-int v7, v7, p4

    .line 302
    add-int/2addr v7, v5

    .line 303
    aget-byte v7, p7, v7

    .line 305
    aput-byte v7, p5, v6

    .line 307
    add-int/2addr v5, p4

    .line 308
    goto :goto_5

    .line 309
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 311
    goto :goto_4

    .line 312
    :cond_8
    move-object p7, p5

    .line 313
    :cond_9
    iput p0, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapWidth:I

    .line 315
    iput p2, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapHeight:I

    .line 317
    if-eqz p6, :cond_a

    .line 319
    const/4 p0, 0x2

    .line 320
    iput p0, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapPixelMode:I

    .line 322
    goto :goto_6

    .line 323
    :cond_a
    iput v2, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapPixelMode:I

    .line 325
    :goto_6
    array-length p0, p7

    .line 326
    iput p0, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapSize:I

    .line 328
    iput-object p7, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapBuffer:[B

    .line 330
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    .line 333
    iput-boolean v4, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bSuccess:Z

    .line 335
    :cond_b
    const/4 p0, 0x0

    .line 336
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    goto :goto_7

    .line 340
    :catch_0
    iput-boolean v2, v1, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bSuccess:Z

    .line 342
    :goto_7
    new-array p0, v4, [Ljava/lang/Object;

    .line 344
    invoke-virtual {v1}, Lcom/autonavi/amapauto/textfont/GlyphRaster;->toString()Ljava/lang/String;

    .line 347
    move-result-object p1

    .line 348
    aput-object p1, p0, v2

    .line 350
    const-string p1, "loadGlyphRaster, info:{?}"

    .line 352
    invoke-static {v0, p1, p0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    return-object v1
.end method

.method private static loadPathRaster(Ljava/lang/String;Lvm;FLjava/lang/String;ZF)Lcom/autonavi/amapauto/textfont/GlyphRaster;
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 4
    new-instance v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;

    .line 6
    invoke-direct {v7}, Lcom/autonavi/amapauto/textfont/GlyphRaster;-><init>()V

    .line 9
    if-nez v0, :cond_0

    .line 11
    return-object v7

    .line 12
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 18
    return-object v7

    .line 19
    :cond_1
    const/4 v8, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v9, 0x0

    .line 22
    move/from16 v3, p2

    .line 24
    move-object/from16 v4, p3

    .line 26
    :try_start_0
    invoke-static {v0, v3, v4, v9, v2}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->newTextPaint(Lvm;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    .line 29
    move-result-object v5

    .line 30
    new-instance v6, Landroid/graphics/Rect;

    .line 32
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 35
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 38
    move-result v10

    .line 39
    invoke-virtual {v5, p0, v9, v10, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 42
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    .line 45
    move-result v10

    .line 46
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    .line 49
    move-result v11

    .line 50
    sget-object v12, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 52
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 55
    move-result-object v10

    .line 56
    new-instance v11, Landroid/graphics/Canvas;

    .line 58
    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 61
    iget v10, v6, Landroid/graphics/Rect;->left:I

    .line 63
    rsub-int/lit8 v10, v10, 0x0

    .line 65
    int-to-float v10, v10

    .line 66
    iget v6, v6, Landroid/graphics/Rect;->top:I

    .line 68
    rsub-int/lit8 v6, v6, 0x0

    .line 70
    int-to-float v6, v6

    .line 71
    invoke-virtual {v11, p0, v10, v6, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 74
    invoke-static/range {p1 .. p5}, Lcom/autonavi/amapauto/textfont/GlyphLoader;->newTextPaint(Lvm;FLjava/lang/String;ZF)Landroid/text/TextPaint;

    .line 77
    move-result-object v10

    .line 78
    new-instance v11, Landroid/graphics/Rect;

    .line 80
    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    move-result v0

    .line 87
    invoke-virtual {v10, p0, v9, v0, v11}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 90
    if-eqz p4, :cond_2

    .line 92
    cmpl-float v0, p5, v2

    .line 94
    if-lez v0, :cond_2

    .line 96
    const/high16 v0, 0x3f000000    # 0.5f

    .line 98
    mul-float v0, v0, p5

    .line 100
    iget v2, v11, Landroid/graphics/Rect;->top:I

    .line 102
    int-to-float v2, v2

    .line 103
    sub-float/2addr v2, v0

    .line 104
    float-to-int v2, v2

    .line 105
    iput v2, v11, Landroid/graphics/Rect;->top:I

    .line 107
    iget v2, v11, Landroid/graphics/Rect;->left:I

    .line 109
    int-to-float v2, v2

    .line 110
    sub-float/2addr v2, v0

    .line 111
    float-to-int v2, v2

    .line 112
    iput v2, v11, Landroid/graphics/Rect;->left:I

    .line 114
    iget v2, v11, Landroid/graphics/Rect;->right:I

    .line 116
    int-to-float v2, v2

    .line 117
    add-float/2addr v2, v0

    .line 118
    float-to-int v2, v2

    .line 119
    iput v2, v11, Landroid/graphics/Rect;->right:I

    .line 121
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    .line 123
    int-to-float v2, v2

    .line 124
    add-float/2addr v2, v0

    .line 125
    float-to-int v0, v2

    .line 126
    iput v0, v11, Landroid/graphics/Rect;->bottom:I

    .line 128
    :cond_2
    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    .line 131
    move-result v0

    .line 132
    if-nez v0, :cond_3

    .line 134
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 137
    move-result v0

    .line 138
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 141
    move-result v2

    .line 142
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 144
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 147
    move-result-object v12

    .line 148
    new-instance v13, Landroid/graphics/Canvas;

    .line 150
    invoke-direct {v13, v12}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 153
    iget v0, v11, Landroid/graphics/Rect;->left:I

    .line 155
    rsub-int/lit8 v0, v0, 0x0

    .line 157
    int-to-float v4, v0

    .line 158
    iget v0, v11, Landroid/graphics/Rect;->top:I

    .line 160
    rsub-int/lit8 v0, v0, 0x0

    .line 162
    int-to-float v6, v0

    .line 163
    new-instance v14, Landroid/graphics/Path;

    .line 165
    invoke-direct {v14}, Landroid/graphics/Path;-><init>()V

    .line 168
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 172
    move-result v3

    .line 173
    move-object v0, v5

    .line 174
    move-object v1, p0

    .line 175
    move v5, v6

    .line 176
    move-object v6, v14

    .line 177
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    .line 180
    invoke-virtual {v13, v14, v10}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 186
    move-result v0

    .line 187
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 190
    move-result v1

    .line 191
    mul-int v0, v0, v1

    .line 193
    new-array v1, v0, [B

    .line 195
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    .line 202
    move-result v3

    .line 203
    iput v3, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapWidth:I

    .line 205
    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    .line 208
    move-result v3

    .line 209
    iput v3, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapHeight:I

    .line 211
    iput v9, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapPixelMode:I

    .line 213
    iput v0, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapSize:I

    .line 215
    invoke-virtual {v12, v2}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 218
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 221
    iput-object v1, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapBuffer:[B

    .line 223
    iput-boolean v8, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bSuccess:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 226
    :catch_0
    iput-boolean v9, v7, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bSuccess:Z

    .line 228
    :cond_3
    :goto_0
    new-array v0, v8, [Ljava/lang/Object;

    .line 230
    invoke-virtual {v7}, Lcom/autonavi/amapauto/textfont/GlyphRaster;->toString()Ljava/lang/String;

    .line 233
    move-result-object v1

    .line 234
    aput-object v1, v0, v9

    .line 236
    const-string v1, "GlyphLoader"

    .line 238
    const-string v2, "loadPathRaster, info:{?}"

    .line 240
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-object v7
.end method

.method private static native nativeCreateGlyphLoader()J
.end method

.method private static native nativeDestroyGlyphLoader(J)V
.end method

.method private static newTextPaint(Lvm;FLjava/lang/String;ZF)Landroid/text/TextPaint;
    .locals 2

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    .line 3
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 6
    if-nez p0, :cond_0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, -0x1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 20
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 23
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 25
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 28
    if-eqz p3, :cond_1

    .line 30
    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 32
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 41
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    :goto_0
    invoke-virtual {p0}, Lvm;->a()I

    .line 47
    move-result p1

    .line 48
    const/4 p3, 0x2

    .line 49
    const/4 p4, 0x0

    .line 50
    if-eqz p1, :cond_3

    .line 52
    if-eq p1, v1, :cond_2

    .line 54
    if-eq p1, p3, :cond_2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 p1, 0x1

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 60
    :goto_2
    invoke-virtual {p0}, Lvm;->b()I

    .line 63
    move-result p0

    .line 64
    sparse-switch p0, :sswitch_data_0

    .line 67
    goto :goto_3

    .line 68
    :sswitch_0
    const/4 p0, 0x1

    .line 69
    goto :goto_4

    .line 70
    :goto_3
    :sswitch_1
    const/4 p0, 0x0

    .line 71
    :goto_4
    if-eqz p0, :cond_4

    .line 73
    if-eqz p1, :cond_4

    .line 75
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 78
    goto :goto_5

    .line 79
    :cond_4
    if-eqz p0, :cond_5

    .line 81
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    if-eqz p1, :cond_6

    .line 87
    goto :goto_6

    .line 88
    :cond_6
    :goto_5
    const/4 p3, 0x0

    .line 89
    :goto_6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 92
    move-result p0

    .line 93
    if-eqz p0, :cond_7

    .line 95
    sget-object p0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 97
    invoke-static {p0, p3}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 100
    move-result-object p0

    .line 101
    goto :goto_7

    .line 102
    :cond_7
    invoke-static {p2, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 105
    move-result-object p0

    .line 106
    :goto_7
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 109
    return-object v0

    .line 110
    nop

    .line 111
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x190 -> :sswitch_1
        0x1f4 -> :sswitch_0
        0x258 -> :sswitch_0
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_0
        0x384 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

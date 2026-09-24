.class public Lcom/autonavi/amapauto/textfont/TextTextureGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final ALIGNCENTER:I = 0x33

.field private static final ALIGNLEFT:I = 0x31

.field private static final ALIGNRIGHT:I = 0x32

.field static final AN_LABEL_MAXCHARINLINE:I = 0x7

.field static final AN_LABEL_MULITYLINE_SPAN:I = 0x2

.field public static final BREAK_TO_CHARACTERS_TYPE:I = 0x2

.field public static final BREAK_TO_WORDS_TYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TextTextureGenerator"

.field private static TEXT_FONTSIZE:I = -0x1

.field private static TEXT_FONTSIZE_TRUE:I = -0x1


# instance fields
.field private base_line:F

.field private start_x:F

.field private text_paint:Landroid/graphics/Paint;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->base_line:F

    .line 7
    iput v0, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->start_x:F

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 12
    invoke-direct {p0}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->createTextParam()V

    .line 15
    return-void
.end method

.method public static GetNearstSize2N(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-gt p0, v0, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public static breakCharacters(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const/4 v1, 0x0

    .line 5
    aput-object p0, v0, v1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v2

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v2, v0, v3

    .line 14
    const-string v2, "TextTextureGenerator"

    .line 16
    const-string v4, "breakCharacters text:{?}, breakType:{?}"

    .line 18
    invoke-static {v2, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 26
    move-result v4

    .line 27
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    if-eq p1, v3, :cond_0

    .line 32
    invoke-static {}, Ljava/text/BreakIterator;->getCharacterInstance()Ljava/text/BreakIterator;

    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {}, Ljava/text/BreakIterator;->getWordInstance()Ljava/text/BreakIterator;

    .line 40
    move-result-object p1

    .line 41
    :goto_0
    invoke-virtual {p1, p0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Ljava/text/BreakIterator;->first()I

    .line 47
    move-result v4

    .line 48
    invoke-virtual {p1}, Ljava/text/BreakIterator;->next()I

    .line 51
    move-result v5

    .line 52
    :goto_1
    move v8, v5

    .line 53
    move v5, v4

    .line 54
    move v4, v8

    .line 55
    const/4 v6, -0x1

    .line 56
    if-eq v4, v6, :cond_1

    .line 58
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 61
    move-result-object v5

    .line 62
    new-array v6, v3, [Ljava/lang/Object;

    .line 64
    aput-object v5, v6, v1

    .line 66
    const-string v7, "breakCharacters subStr:{?}"

    .line 68
    invoke-static {v2, v7, v6}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {p1}, Ljava/text/BreakIterator;->next()I

    .line 77
    move-result v5

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    new-array p0, v1, [Ljava/lang/String;

    .line 81
    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 85
    check-cast p0, [Ljava/lang/String;

    .line 87
    return-object p0
.end method

.method private createTextParam()V
    .locals 13

    .line 1
    sget v0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 3
    const/4 v1, 0x2

    .line 4
    sub-int/2addr v0, v1

    .line 5
    sput v0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 7
    const/4 v2, 0x1

    .line 8
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    move-result-object v0

    .line 14
    const/4 v4, 0x0

    .line 15
    aput-object v0, v3, v4

    .line 17
    const-string v0, "TextTextureGenerator"

    .line 19
    const-string v5, "createTextParam TEXT_FONTSIZE_TRUE={?}"

    .line 21
    invoke-static {v0, v5, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget v3, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 26
    const/16 v5, 0x31

    .line 28
    const/4 v6, 0x0

    .line 29
    invoke-static {v6, v3, v5}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    .line 32
    move-result-object v3

    .line 33
    iput-object v3, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 35
    sget v5, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 37
    sget v6, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 39
    sub-int/2addr v5, v6

    .line 40
    int-to-float v5, v5

    .line 41
    const/high16 v6, 0x40000000    # 2.0f

    .line 43
    div-float/2addr v5, v6

    .line 44
    iput v5, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->start_x:F

    .line 46
    const v7, 0x40ea6000    # 7.3242188f

    .line 49
    const v8, -0x3e215800

    .line 52
    const v9, -0x3e028600

    .line 55
    const v10, 0x41021400

    .line 58
    const/4 v11, 0x0

    .line 59
    :try_start_0
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 62
    move-result-object v3

    .line 63
    iget v7, v3, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 65
    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 67
    iget v9, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 69
    iget v10, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 71
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->leading:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    goto :goto_0

    .line 74
    :catch_0
    nop

    .line 75
    const/4 v3, 0x0

    .line 76
    :goto_0
    const/high16 v12, 0x41200000    # 10.0f

    .line 78
    cmpl-float v12, v3, v12

    .line 80
    if-lez v12, :cond_0

    .line 82
    new-array v12, v2, [Ljava/lang/Object;

    .line 84
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 87
    move-result-object v3

    .line 88
    aput-object v3, v12, v4

    .line 90
    const-string v3, "leading:{?}"

    .line 92
    invoke-static {v0, v3, v12}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    goto :goto_1

    .line 96
    :cond_0
    move v11, v3

    .line 97
    :goto_1
    sget v3, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 99
    int-to-float v3, v3

    .line 100
    add-float/2addr v3, v11

    .line 101
    add-float v12, v7, v8

    .line 103
    sub-float/2addr v3, v12

    .line 104
    div-float/2addr v3, v6

    .line 105
    add-float/2addr v3, v5

    .line 106
    const/high16 v6, 0x3f000000    # 0.5f

    .line 108
    add-float/2addr v3, v6

    .line 109
    iput v3, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->base_line:F

    .line 111
    const/4 v3, 0x7

    .line 112
    new-array v3, v3, [Ljava/lang/Object;

    .line 114
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 117
    move-result-object v6

    .line 118
    aput-object v6, v3, v4

    .line 120
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 123
    move-result-object v4

    .line 124
    aput-object v4, v3, v2

    .line 126
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 129
    move-result-object v2

    .line 130
    aput-object v2, v3, v1

    .line 132
    const/4 v1, 0x3

    .line 133
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    move-result-object v2

    .line 137
    aput-object v2, v3, v1

    .line 139
    const/4 v1, 0x4

    .line 140
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 143
    move-result-object v2

    .line 144
    aput-object v2, v3, v1

    .line 146
    const/4 v1, 0x5

    .line 147
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 150
    move-result-object v2

    .line 151
    aput-object v2, v3, v1

    .line 153
    iget v1, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->base_line:F

    .line 155
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 158
    move-result-object v1

    .line 159
    const/4 v2, 0x6

    .line 160
    aput-object v1, v3, v2

    .line 162
    const-string v1, "descent:{?}, ascent:{?}, top:{?}, bottom:{?}, leading:{?}, delta:{?}, base_line:{?}"

    .line 164
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    return-void
.end method

.method public static generaAsccIITexturePng()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "mounted"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 16
    invoke-static {}, Lr50;->j()Ljava/lang/String;

    .line 19
    move-result-object v1

    .line 20
    const-string v2, "asccii.png"

    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v1, Ljava/io/FileOutputStream;

    .line 27
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 30
    sget v0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 32
    const/4 v2, 0x0

    .line 33
    const/16 v3, 0x31

    .line 35
    invoke-static {v2, v0, v3}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    .line 38
    move-result-object v0

    .line 39
    sget v4, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 41
    mul-int/lit8 v5, v4, 0x10

    .line 43
    const/16 v6, 0x10

    .line 45
    mul-int/lit8 v4, v4, 0x10

    .line 47
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 49
    invoke-static {v5, v4, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    .line 56
    move-result-object v0

    .line 57
    new-instance v5, Landroid/graphics/Canvas;

    .line 59
    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 62
    sget v7, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 64
    invoke-static {v2, v7, v3}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;

    .line 67
    move-result-object v2

    .line 68
    const/4 v3, 0x1

    .line 69
    new-array v3, v3, [F

    .line 71
    const/4 v7, 0x0

    .line 72
    const/4 v8, 0x0

    .line 73
    :goto_0
    if-ge v8, v6, :cond_2

    .line 75
    const/4 v9, 0x0

    .line 76
    :goto_1
    if-ge v9, v6, :cond_1

    .line 78
    mul-int/lit8 v10, v8, 0x10

    .line 80
    add-int v11, v10, v9

    .line 82
    int-to-char v11, v11

    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    const-string v13, ""

    .line 93
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object v12

    .line 100
    mul-int/lit8 v14, v9, 0x10

    .line 102
    int-to-float v14, v14

    .line 103
    iget v15, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 105
    sub-int/2addr v10, v15

    .line 106
    add-int/lit8 v10, v10, -0x2

    .line 108
    int-to-float v10, v10

    .line 109
    invoke-virtual {v5, v12, v14, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 112
    new-instance v10, Ljava/lang/StringBuilder;

    .line 114
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    move-result-object v10

    .line 127
    invoke-virtual {v2, v10, v3}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 130
    add-int/lit8 v9, v9, 0x1

    .line 132
    goto :goto_1

    .line 133
    :cond_1
    add-int/lit8 v8, v8, 0x1

    .line 135
    goto :goto_0

    .line 136
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 138
    const/16 v2, 0x64

    .line 140
    invoke-virtual {v4, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 143
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_3

    .line 149
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 152
    :cond_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 155
    return-void
.end method

.method public static getFontHeight(Landroid/graphics/Paint;)F
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 8
    move-result-object p0

    .line 9
    iget v0, p0, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 11
    iget p0, p0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 13
    sub-float/2addr v0, p0

    .line 14
    return v0
.end method

.method public static getFontlength(Landroid/graphics/Paint;Ljava/lang/String;)F
    .locals 0

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private static newPaint(Ljava/lang/String;II)Landroid/graphics/Paint;
    .locals 1

    .line 1
    new-instance p0, Landroid/text/TextPaint;

    .line 3
    invoke-direct {p0}, Landroid/text/TextPaint;-><init>()V

    .line 6
    const/4 v0, -0x1

    .line 7
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    int-to-float p1, p1

    .line 11
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 18
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 21
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 23
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 26
    packed-switch p2, :pswitch_data_0

    .line 29
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 31
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 34
    goto :goto_0

    .line 35
    :pswitch_0
    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 37
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    sget-object p1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 43
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 46
    goto :goto_0

    .line 47
    :pswitch_2
    sget-object p1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 49
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 52
    :goto_0
    return-object p0

    .line 53
    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getCharsWidths([II)[B
    .locals 9

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    sget v2, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 17
    const/4 v4, 0x1

    .line 18
    aput-object v2, v1, v4

    .line 20
    const-string v2, "TextTextureGenerator"

    .line 22
    const-string v5, "getCharsWidths, TEXT_FONTSIZE={?}, fontsize={?}"

    .line 24
    invoke-static {v2, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    if-nez p1, :cond_0

    .line 29
    const/4 p1, 0x0

    .line 30
    return-object p1

    .line 31
    :cond_0
    sget v1, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 33
    if-eq v1, p2, :cond_1

    .line 35
    sput p2, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 37
    invoke-direct {p0}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->createTextParam()V

    .line 40
    :cond_1
    array-length p2, p1

    .line 41
    new-array v1, p2, [B

    .line 43
    const/4 v5, 0x0

    .line 44
    :goto_0
    if-ge v5, p2, :cond_2

    .line 46
    iget-object v6, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 48
    new-instance v7, Ljava/lang/StringBuilder;

    .line 50
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    aget v8, p1, v5

    .line 55
    int-to-char v8, v8

    .line 56
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    const-string v8, ""

    .line 61
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 71
    move-result v6

    .line 72
    sget v7, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 74
    sget v8, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 76
    sub-int/2addr v7, v8

    .line 77
    int-to-float v7, v7

    .line 78
    add-float/2addr v6, v7

    .line 79
    float-to-int v6, v6

    .line 80
    int-to-byte v6, v6

    .line 81
    aput-byte v6, v1, v5

    .line 83
    add-int/lit8 v5, v5, 0x1

    .line 85
    goto :goto_0

    .line 86
    :cond_2
    new-array p2, v0, [Ljava/lang/Object;

    .line 88
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    aput-object p1, p2, v3

    .line 94
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    .line 97
    move-result-object p1

    .line 98
    aput-object p1, p2, v4

    .line 100
    const-string p1, "getCharsWidths chars:{?}, bs:{?}"

    .line 102
    invoke-static {v2, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    return-object v1
.end method

.method public getGFrameChar(Lcom/autonavi/amapauto/textfont/CharData;)Lcom/autonavi/amapauto/textfont/CharInfo;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    const-string v2, "TextTextureGenerator"

    .line 6
    const-string v3, "getGFrameChar"

    .line 8
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v1, Lcom/autonavi/amapauto/textfont/CharInfo;

    .line 13
    invoke-direct {v1}, Lcom/autonavi/amapauto/textfont/CharInfo;-><init>()V

    .line 16
    iget v2, p1, Lcom/autonavi/amapauto/textfont/CharData;->Size:I

    .line 18
    if-eqz v2, :cond_7

    .line 20
    iget v2, p1, Lcom/autonavi/amapauto/textfont/CharData;->wcChar:I

    .line 22
    if-nez v2, :cond_0

    .line 24
    goto/16 :goto_2

    .line 26
    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    .line 28
    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    .line 31
    const/16 v3, -0x100

    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 36
    iget v3, p1, Lcom/autonavi/amapauto/textfont/CharData;->Size:I

    .line 38
    int-to-float v3, v3

    .line 39
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    const/4 v3, 0x1

    .line 43
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 46
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 49
    iget v4, p1, Lcom/autonavi/amapauto/textfont/CharData;->Type:I

    .line 51
    and-int/lit8 v5, v4, 0x2

    .line 53
    const/4 v6, 0x4

    .line 54
    const/4 v7, 0x2

    .line 55
    if-ne v5, v7, :cond_1

    .line 57
    and-int/lit8 v5, v4, 0x4

    .line 59
    if-ne v5, v6, :cond_1

    .line 61
    const/4 v4, 0x3

    .line 62
    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 65
    move-result-object v4

    .line 66
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    and-int/lit8 v5, v4, 0x2

    .line 72
    if-ne v5, v7, :cond_2

    .line 74
    invoke-static {v3}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 81
    goto :goto_0

    .line 82
    :cond_2
    and-int/2addr v4, v6

    .line 83
    if-ne v4, v6, :cond_3

    .line 85
    invoke-static {v7}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 92
    :cond_3
    :goto_0
    iget v4, p1, Lcom/autonavi/amapauto/textfont/CharData;->Type:I

    .line 94
    const/16 v5, 0x8

    .line 96
    and-int/2addr v4, v5

    .line 97
    if-ne v4, v5, :cond_4

    .line 99
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 102
    :cond_4
    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 104
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 107
    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 114
    move-result v4

    .line 115
    const v5, 0x3f59999a    # 0.85f

    .line 118
    mul-float v4, v4, v5

    .line 120
    float-to-int v4, v4

    .line 121
    iput v4, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->advanceX:I

    .line 123
    iget v4, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 125
    neg-float v4, v4

    .line 126
    float-to-int v4, v4

    .line 127
    iput v4, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->ascender:I

    .line 129
    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 131
    float-to-int v3, v3

    .line 132
    iput v3, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->descender:I

    .line 134
    iget p1, p1, Lcom/autonavi/amapauto/textfont/CharData;->wcChar:I

    .line 136
    int-to-char p1, p1

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 144
    move-result v3

    .line 145
    if-eqz v3, :cond_5

    .line 147
    goto :goto_1

    .line 148
    :cond_5
    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 151
    move-result v0

    .line 152
    float-to-int v0, v0

    .line 153
    :goto_1
    iget v3, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->ascender:I

    .line 155
    iget v4, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->descender:I

    .line 157
    add-int/2addr v3, v4

    .line 158
    if-lez v0, :cond_7

    .line 160
    if-lez v3, :cond_7

    .line 162
    iput v0, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->ptPointX:I

    .line 164
    iput v3, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->ptPointY:I

    .line 166
    iput v0, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->advanceX:I

    .line 168
    sget-object v4, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 170
    invoke-static {v0, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 173
    move-result-object v4

    .line 174
    mul-int v0, v0, v3

    .line 176
    new-array v0, v0, [B

    .line 178
    new-instance v3, Landroid/graphics/Canvas;

    .line 180
    invoke-direct {v3, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 186
    move-result-object v5

    .line 187
    iget-object v6, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 189
    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 192
    iget v6, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->ascender:I

    .line 194
    int-to-float v6, v6

    .line 195
    const/4 v7, 0x0

    .line 196
    invoke-virtual {v3, p1, v7, v6, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 199
    invoke-virtual {v4, v5}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 202
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 205
    move-result p1

    .line 206
    if-nez p1, :cond_6

    .line 208
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 211
    :cond_6
    iput-object v0, v1, Lcom/autonavi/amapauto/textfont/CharInfo;->buffer:[B

    .line 213
    :cond_7
    :goto_2
    return-object v1
.end method

.method public getTextPixelBuffer(II)[B
    .locals 13

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput-object v1, v0, v2

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object v1

    .line 15
    const/4 v3, 0x1

    .line 16
    aput-object v1, v0, v3

    .line 18
    const-string v1, "TextTextureGenerator"

    .line 20
    const-string v4, "getTextPixelBuffer, aChar={?}, fontsize={?}"

    .line 22
    invoke-static {v1, v4, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    sget v0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 27
    if-eq v0, p2, :cond_0

    .line 29
    sput p2, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 31
    invoke-direct {p0}, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->createTextParam()V

    .line 34
    :cond_0
    :try_start_0
    new-array v5, v3, [C

    .line 36
    int-to-char p1, p1

    .line 37
    aput-char p1, v5, v2

    .line 39
    const-string p2, "getTextPixelBuffer, aChar={?}"

    .line 41
    new-array v0, v3, [Ljava/lang/Object;

    .line 43
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 46
    move-result-object v3

    .line 47
    aput-object v3, v0, v2

    .line 49
    invoke-static {v1, p2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget p2, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->base_line:F

    .line 54
    sget v0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 56
    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 58
    invoke-static {v0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 61
    move-result-object v0

    .line 62
    new-instance v4, Landroid/graphics/Canvas;

    .line 64
    invoke-direct {v4, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 67
    sget v3, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE:I

    .line 69
    mul-int v3, v3, v3

    .line 71
    new-array v3, v3, [B

    .line 73
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 76
    move-result-object v11

    .line 77
    iget-object v6, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 79
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {v6, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 86
    move-result p1

    .line 87
    aget-char v6, v5, v2

    .line 89
    if-lez v6, :cond_1

    .line 91
    const/16 v7, 0x100

    .line 93
    if-ge v6, v7, :cond_1

    .line 95
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 97
    sub-float/2addr p2, v6

    .line 98
    :cond_1
    move v9, p2

    .line 99
    iget-object p2, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 101
    invoke-virtual {p2}, Landroid/graphics/Paint;->getTextAlign()Landroid/graphics/Paint$Align;

    .line 104
    move-result-object p2

    .line 105
    iget-object v6, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 107
    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    .line 110
    move-result v12

    .line 111
    sget v6, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 113
    int-to-float v6, v6

    .line 114
    sub-float/2addr p1, v6

    .line 115
    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 117
    if-eq p2, v6, :cond_2

    .line 119
    const/high16 v7, 0x40800000    # 4.0f

    .line 121
    cmpl-float v7, p1, v7

    .line 123
    if-ltz v7, :cond_2

    .line 125
    iget-object v7, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 127
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 130
    iget-object v6, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 132
    sget v7, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 134
    int-to-float v7, v7

    .line 135
    sub-float/2addr v7, p1

    .line 136
    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 139
    const/4 v6, 0x0

    .line 140
    const/4 v7, 0x1

    .line 141
    sget v8, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->TEXT_FONTSIZE_TRUE:I

    .line 143
    int-to-float v8, v8

    .line 144
    sub-float/2addr v8, p1

    .line 145
    const/high16 p1, 0x40000000    # 2.0f

    .line 147
    div-float/2addr v8, p1

    .line 148
    iget-object v10, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 150
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 153
    iget-object p1, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 155
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 158
    iget-object p1, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 160
    invoke-virtual {p1, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 163
    goto :goto_0

    .line 164
    :cond_2
    const/4 v6, 0x0

    .line 165
    const/4 v7, 0x1

    .line 166
    iget v8, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->start_x:F

    .line 168
    iget-object v10, p0, Lcom/autonavi/amapauto/textfont/TextTextureGenerator;->text_paint:Landroid/graphics/Paint;

    .line 170
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 173
    :goto_0
    invoke-virtual {v0, v11}, Landroid/graphics/Bitmap;->copyPixelsToBuffer(Ljava/nio/Buffer;)V

    .line 176
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 179
    move-result p1

    .line 180
    if-nez p1, :cond_3

    .line 182
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_3
    return-object v3

    .line 186
    :catch_0
    move-exception p1

    .line 187
    const-string p2, "getTextPixelBuffer Exception"

    .line 189
    new-array v0, v2, [Ljava/lang/Object;

    .line 191
    invoke-static {v1, p2, p1, v0}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    const/4 p1, 0x0

    .line 198
    return-object p1
.end method

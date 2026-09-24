.class public final Li70$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li70$a$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/text/TextPaint;

.field public final b:Landroid/text/TextDirectionHeuristic;

.field public final c:I

.field public final d:I

.field public final e:Landroid/text/PrecomputedText$Params;


# direct methods
.method public constructor <init>(Landroid/text/PrecomputedText$Params;)V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {p1}, La70;->a(Landroid/text/PrecomputedText$Params;)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 15
    invoke-static {p1}, Lb70;->a(Landroid/text/PrecomputedText$Params;)Landroid/text/TextDirectionHeuristic;

    move-result-object v0

    iput-object v0, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 16
    invoke-static {p1}, Lc70;->a(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Li70$a;->c:I

    .line 17
    invoke-static {p1}, Ld70;->a(Landroid/text/PrecomputedText$Params;)I

    move-result v0

    iput v0, p0, Li70$a;->d:I

    .line 18
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Li70$a;->e:Landroid/text/PrecomputedText$Params;

    return-void
.end method

.method public constructor <init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 3
    invoke-static {p1}, Ly60;->a(Landroid/text/TextPaint;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 4
    invoke-static {v0, p3}, Lf70;->a(Landroid/text/PrecomputedText$Params$Builder;I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 5
    invoke-static {v0, p4}, Lg70;->a(Landroid/text/PrecomputedText$Params$Builder;I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 6
    invoke-static {v0, p2}, Lh70;->a(Landroid/text/PrecomputedText$Params$Builder;Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lx60;->a(Landroid/text/PrecomputedText$Params$Builder;)Landroid/text/PrecomputedText$Params;

    move-result-object v0

    iput-object v0, p0, Li70$a;->e:Landroid/text/PrecomputedText$Params;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Li70$a;->e:Landroid/text/PrecomputedText$Params;

    .line 9
    :goto_0
    iput-object p1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 10
    iput-object p2, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 11
    iput p3, p0, Li70$a;->c:I

    .line 12
    iput p4, p0, Li70$a;->d:I

    return-void
.end method


# virtual methods
.method public a(Li70$a;)Z
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x17

    .line 5
    const/4 v2, 0x0

    .line 6
    if-lt v0, v1, :cond_1

    .line 8
    iget v1, p0, Li70$a;->c:I

    .line 10
    invoke-virtual {p1}, Li70$a;->b()I

    .line 13
    move-result v3

    .line 14
    if-eq v1, v3, :cond_0

    .line 16
    return v2

    .line 17
    :cond_0
    iget v1, p0, Li70$a;->d:I

    .line 19
    invoke-virtual {p1}, Li70$a;->c()I

    .line 22
    move-result v3

    .line 23
    if-eq v1, v3, :cond_1

    .line 25
    return v2

    .line 26
    :cond_1
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 28
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 31
    move-result v1

    .line 32
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    .line 39
    move-result v3

    .line 40
    cmpl-float v1, v1, v3

    .line 42
    if-eqz v1, :cond_2

    .line 44
    return v2

    .line 45
    :cond_2
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 47
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 50
    move-result v1

    .line 51
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 58
    move-result v3

    .line 59
    cmpl-float v1, v1, v3

    .line 61
    if-eqz v1, :cond_3

    .line 63
    return v2

    .line 64
    :cond_3
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 66
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 69
    move-result v1

    .line 70
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 77
    move-result v3

    .line 78
    cmpl-float v1, v1, v3

    .line 80
    if-eqz v1, :cond_4

    .line 82
    return v2

    .line 83
    :cond_4
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 85
    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 88
    move-result v1

    .line 89
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 96
    move-result v3

    .line 97
    cmpl-float v1, v1, v3

    .line 99
    if-eqz v1, :cond_5

    .line 101
    return v2

    .line 102
    :cond_5
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 104
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 111
    move-result-object v3

    .line 112
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontFeatureSettings()Ljava/lang/String;

    .line 115
    move-result-object v3

    .line 116
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 119
    move-result v1

    .line 120
    if-nez v1, :cond_6

    .line 122
    return v2

    .line 123
    :cond_6
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 125
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    .line 128
    move-result v1

    .line 129
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v3}, Landroid/graphics/Paint;->getFlags()I

    .line 136
    move-result v3

    .line 137
    if-eq v1, v3, :cond_7

    .line 139
    return v2

    .line 140
    :cond_7
    const/16 v1, 0x18

    .line 142
    if-lt v0, v1, :cond_8

    .line 144
    iget-object v0, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 146
    invoke-static {v0}, Lw60;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 153
    move-result-object v1

    .line 154
    invoke-static {v1}, Lw60;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 157
    move-result-object v1

    .line 158
    invoke-static {v0, v1}, Le70;->a(Landroid/os/LocaleList;Ljava/lang/Object;)Z

    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_9

    .line 164
    return v2

    .line 165
    :cond_8
    iget-object v0, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 167
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 182
    move-result v0

    .line 183
    if-nez v0, :cond_9

    .line 185
    return v2

    .line 186
    :cond_9
    iget-object v0, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 188
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 191
    move-result-object v0

    .line 192
    if-nez v0, :cond_a

    .line 194
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 201
    move-result-object p1

    .line 202
    if-eqz p1, :cond_b

    .line 204
    return v2

    .line 205
    :cond_a
    iget-object v0, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 207
    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 210
    move-result-object v0

    .line 211
    invoke-virtual {p1}, Li70$a;->e()Landroid/text/TextPaint;

    .line 214
    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    .line 222
    move-result p1

    .line 223
    if-nez p1, :cond_b

    .line 225
    return v2

    .line 226
    :cond_b
    const/4 p1, 0x1

    .line 227
    return p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Li70$a;->c:I

    .line 3
    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Li70$a;->d:I

    .line 3
    return v0
.end method

.method public d()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .line 1
    iget-object v0, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 3
    return-object v0
.end method

.method public e()Landroid/text/TextPaint;
    .locals 1

    .line 1
    iget-object v0, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Li70$a;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Li70$a;

    .line 13
    invoke-virtual {p0, p1}, Li70$a;->a(Li70$a;)Z

    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 22
    invoke-virtual {p1}, Li70$a;->d()Landroid/text/TextDirectionHeuristic;

    .line 25
    move-result-object p1

    .line 26
    if-eq v1, p1, :cond_3

    .line 28
    return v2

    .line 29
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 14

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 3
    const/16 v1, 0x18

    .line 5
    const/16 v2, 0xa

    .line 7
    const/16 v3, 0x9

    .line 9
    const/16 v4, 0x8

    .line 11
    const/4 v5, 0x7

    .line 12
    const/4 v6, 0x6

    .line 13
    const/4 v7, 0x5

    .line 14
    const/4 v8, 0x4

    .line 15
    const/4 v9, 0x3

    .line 16
    const/4 v10, 0x2

    .line 17
    const/4 v11, 0x1

    .line 18
    const/4 v12, 0x0

    .line 19
    const/16 v13, 0xb

    .line 21
    if-lt v0, v1, :cond_0

    .line 23
    new-array v0, v13, [Ljava/lang/Object;

    .line 25
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 27
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 34
    move-result-object v1

    .line 35
    aput-object v1, v0, v12

    .line 37
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 39
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 42
    move-result v1

    .line 43
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 46
    move-result-object v1

    .line 47
    aput-object v1, v0, v11

    .line 49
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 51
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 54
    move-result v1

    .line 55
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 58
    move-result-object v1

    .line 59
    aput-object v1, v0, v10

    .line 61
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 63
    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    move-result-object v1

    .line 71
    aput-object v1, v0, v9

    .line 73
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 75
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    aput-object v1, v0, v8

    .line 85
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 87
    invoke-static {v1}, Lw60;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 90
    move-result-object v1

    .line 91
    aput-object v1, v0, v7

    .line 93
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 95
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 98
    move-result-object v1

    .line 99
    aput-object v1, v0, v6

    .line 101
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 103
    invoke-virtual {v1}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 106
    move-result v1

    .line 107
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object v1

    .line 111
    aput-object v1, v0, v5

    .line 113
    iget-object v1, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 115
    aput-object v1, v0, v4

    .line 117
    iget v1, p0, Li70$a;->c:I

    .line 119
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    move-result-object v1

    .line 123
    aput-object v1, v0, v3

    .line 125
    iget v1, p0, Li70$a;->d:I

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    move-result-object v1

    .line 131
    aput-object v1, v0, v2

    .line 133
    invoke-static {v0}, Lt40;->b([Ljava/lang/Object;)I

    .line 136
    move-result v0

    .line 137
    return v0

    .line 138
    :cond_0
    new-array v0, v13, [Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    .line 145
    move-result v1

    .line 146
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 149
    move-result-object v1

    .line 150
    aput-object v1, v0, v12

    .line 152
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 154
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 157
    move-result v1

    .line 158
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 161
    move-result-object v1

    .line 162
    aput-object v1, v0, v11

    .line 164
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 166
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 173
    move-result-object v1

    .line 174
    aput-object v1, v0, v10

    .line 176
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 178
    invoke-virtual {v1}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 181
    move-result v1

    .line 182
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 185
    move-result-object v1

    .line 186
    aput-object v1, v0, v9

    .line 188
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 190
    invoke-virtual {v1}, Landroid/graphics/Paint;->getFlags()I

    .line 193
    move-result v1

    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    move-result-object v1

    .line 198
    aput-object v1, v0, v8

    .line 200
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 202
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 205
    move-result-object v1

    .line 206
    aput-object v1, v0, v7

    .line 208
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 210
    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 213
    move-result-object v1

    .line 214
    aput-object v1, v0, v6

    .line 216
    iget-object v1, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 218
    invoke-virtual {v1}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 221
    move-result v1

    .line 222
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 225
    move-result-object v1

    .line 226
    aput-object v1, v0, v5

    .line 228
    iget-object v1, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 230
    aput-object v1, v0, v4

    .line 232
    iget v1, p0, Li70$a;->c:I

    .line 234
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 237
    move-result-object v1

    .line 238
    aput-object v1, v0, v3

    .line 240
    iget v1, p0, Li70$a;->d:I

    .line 242
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v1

    .line 246
    aput-object v1, v0, v2

    .line 248
    invoke-static {v0}, Lt40;->b([Ljava/lang/Object;)I

    .line 251
    move-result v0

    .line 252
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v2, "textSize="

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-object v2, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 20
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    .line 23
    move-result v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    const-string v2, ", textScaleX="

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v2, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 46
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextScaleX()F

    .line 49
    move-result v2

    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v2, ", textSkewX="

    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    iget-object v2, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 72
    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSkewX()F

    .line 75
    move-result v2

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    const-string v3, ", letterSpacing="

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget-object v3, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 100
    invoke-virtual {v3}, Landroid/graphics/Paint;->getLetterSpacing()F

    .line 103
    move-result v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    const-string v3, ", elegantTextHeight="

    .line 121
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    iget-object v3, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 126
    invoke-virtual {v3}, Landroid/graphics/Paint;->isElegantTextHeight()Z

    .line 129
    move-result v3

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const/16 v2, 0x18

    .line 142
    const-string v3, ", textLocale="

    .line 144
    if-lt v1, v2, :cond_0

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    .line 148
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    iget-object v3, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 156
    invoke-static {v3}, Lw60;->a(Landroid/text/TextPaint;)Landroid/os/LocaleList;

    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    goto :goto_0

    .line 171
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 173
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget-object v3, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 181
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextLocale()Ljava/util/Locale;

    .line 184
    move-result-object v3

    .line 185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object v2

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 197
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    const-string v3, ", typeface="

    .line 202
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    iget-object v3, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 207
    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    move-result-object v2

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const/16 v2, 0x1a

    .line 223
    if-lt v1, v2, :cond_1

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    .line 227
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    const-string v2, ", variationSettings="

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v2, p0, Li70$a;->a:Landroid/text/TextPaint;

    .line 237
    invoke-static {v2}, Lz60;->a(Landroid/text/TextPaint;)Ljava/lang/String;

    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    move-result-object v1

    .line 248
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 253
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 256
    const-string v2, ", textDir="

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v2, p0, Li70$a;->b:Landroid/text/TextDirectionHeuristic;

    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 269
    move-result-object v1

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    .line 275
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    const-string v2, ", breakStrategy="

    .line 280
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget v2, p0, Li70$a;->c:I

    .line 285
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    move-result-object v1

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 297
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    const-string v2, ", hyphenationFrequency="

    .line 302
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    iget v2, p0, Li70$a;->d:I

    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 313
    move-result-object v1

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    const-string v1, "}"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 325
    move-result-object v0

    .line 326
    return-object v0
.end method

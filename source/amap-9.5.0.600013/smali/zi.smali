.class public Lzi;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzi$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:F


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lrv;->H()Lrv;

    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "window"

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Landroid/view/WindowManager;

    .line 20
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 22
    const/16 v3, 0x1e

    .line 24
    if-lt v2, v3, :cond_0

    .line 26
    invoke-static {}, Lzi;->a()Lzi$a;

    .line 29
    move-result-object v4

    .line 30
    iget v4, v4, Lzi$a;->a:I

    .line 32
    invoke-static {}, Lzi;->a()Lzi$a;

    .line 35
    move-result-object v4

    .line 36
    iget v4, v4, Lzi$a;->b:I

    .line 38
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 45
    move-result-object v4

    .line 46
    iget v4, v4, Landroid/content/res/Configuration;->densityDpi:I

    .line 48
    int-to-float v4, v4

    .line 49
    const/high16 v5, 0x43200000    # 160.0f

    .line 51
    div-float/2addr v4, v5

    .line 52
    iput v4, p0, Lzi;->d:F

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 58
    move-result-object v4

    .line 59
    new-instance v5, Landroid/util/DisplayMetrics;

    .line 61
    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 64
    invoke-virtual {v4, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 67
    iget v4, v5, Landroid/util/DisplayMetrics;->density:F

    .line 69
    iput v4, p0, Lzi;->d:F

    .line 71
    :goto_0
    if-lt v2, v3, :cond_1

    .line 73
    invoke-static {v1}, Lwi;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 76
    move-result-object v1

    .line 77
    invoke-static {v1}, Lxi;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 84
    move-result v2

    .line 85
    invoke-static {v1}, Lxi;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 92
    move-result v1

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 97
    move-result-object v1

    .line 98
    new-instance v2, Landroid/util/DisplayMetrics;

    .line 100
    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 103
    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 106
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 108
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 110
    move v8, v2

    .line 111
    move v2, v1

    .line 112
    move v1, v8

    .line 113
    :goto_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 120
    move-result-object v0

    .line 121
    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    .line 123
    invoke-static {}, Lrv;->H()Lrv;

    .line 126
    move-result-object v3

    .line 127
    invoke-virtual {v3}, Lrv;->C()I

    .line 130
    move-result v3

    .line 131
    if-lez v3, :cond_2

    .line 133
    invoke-static {}, Lrv;->H()Lrv;

    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lrv;->C()I

    .line 140
    move-result v0

    .line 141
    :cond_2
    iput v2, p0, Lzi;->a:I

    .line 143
    iput v1, p0, Lzi;->b:I

    .line 145
    iput v0, p0, Lzi;->c:I

    .line 147
    const/4 v3, 0x2

    .line 148
    new-array v3, v3, [Ljava/lang/Object;

    .line 150
    const/4 v4, 0x0

    .line 151
    invoke-virtual {p0}, Lzi;->toString()Ljava/lang/String;

    .line 154
    move-result-object v5

    .line 155
    aput-object v5, v3, v4

    .line 157
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 160
    move-result v1

    .line 161
    int-to-double v1, v1

    .line 162
    int-to-double v4, v0

    .line 163
    const-wide/high16 v6, 0x4064000000000000L    # 160.0

    .line 165
    div-double/2addr v4, v6

    .line 166
    div-double/2addr v1, v4

    .line 167
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 170
    move-result-object v0

    .line 171
    const/4 v1, 0x1

    .line 172
    aput-object v0, v3, v1

    .line 174
    const-string v0, "DeviceScreenInfo"

    .line 176
    const-string v1, "device = {?}, MinWid = {?}"

    .line 178
    invoke-static {v0, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method public static a()Lzi$a;
    .locals 13

    .line 1
    new-instance v0, Lzi$a;

    .line 3
    invoke-direct {v0}, Lzi$a;-><init>()V

    .line 6
    invoke-static {}, Lrv;->H()Lrv;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lrv;->y()Landroid/app/Application;

    .line 13
    move-result-object v1

    .line 14
    const-string v2, "window"

    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Landroid/view/WindowManager;

    .line 22
    if-nez v1, :cond_0

    .line 24
    return-object v0

    .line 25
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 27
    const/16 v3, 0x1e

    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    const-string v6, "DeviceScreenInfo"

    .line 33
    if-lt v2, v3, :cond_1

    .line 35
    invoke-static {v1}, Lwi;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 38
    move-result-object v7

    .line 39
    invoke-static {v7}, Lyi;->a(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    .line 42
    move-result-object v8

    .line 43
    invoke-static {}, Lyn0;->a()I

    .line 46
    move-result v9

    .line 47
    invoke-static {}, Leo0;->a()I

    .line 50
    move-result v10

    .line 51
    or-int/2addr v9, v10

    .line 52
    invoke-static {v8, v9}, Lvn0;->a(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    .line 55
    move-result-object v8

    .line 56
    invoke-static {v8}, Lwu;->a(Landroid/graphics/Insets;)I

    .line 59
    move-result v9

    .line 60
    invoke-static {v8}, Luu;->a(Landroid/graphics/Insets;)I

    .line 63
    move-result v10

    .line 64
    add-int/2addr v9, v10

    .line 65
    invoke-static {v8}, Lvu;->a(Landroid/graphics/Insets;)I

    .line 68
    move-result v10

    .line 69
    invoke-static {v8}, Lxu;->a(Landroid/graphics/Insets;)I

    .line 72
    move-result v8

    .line 73
    add-int/2addr v10, v8

    .line 74
    invoke-static {v7}, Lxi;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    .line 81
    move-result v8

    .line 82
    sub-int/2addr v8, v9

    .line 83
    iput v8, v0, Lzi$a;->a:I

    .line 85
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    .line 88
    move-result v7

    .line 89
    sub-int/2addr v7, v10

    .line 90
    iput v7, v0, Lzi$a;->b:I

    .line 92
    new-array v7, v5, [Ljava/lang/Object;

    .line 94
    aput-object v0, v7, v4

    .line 96
    const-string v8, "appUsableSize WindowMetrics:{?}"

    .line 98
    invoke-static {v6, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 105
    move-result-object v7

    .line 106
    new-instance v8, Landroid/util/DisplayMetrics;

    .line 108
    invoke-direct {v8}, Landroid/util/DisplayMetrics;-><init>()V

    .line 111
    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 114
    iget v7, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 116
    iput v7, v0, Lzi$a;->a:I

    .line 118
    iget v7, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 120
    iput v7, v0, Lzi$a;->b:I

    .line 122
    new-array v7, v5, [Ljava/lang/Object;

    .line 124
    aput-object v0, v7, v4

    .line 126
    const-string v8, "appUsableSize getMetrics:{?}"

    .line 128
    invoke-static {v6, v8, v7}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :goto_0
    :try_start_0
    new-instance v7, Lzi$a;

    .line 133
    invoke-direct {v7}, Lzi$a;-><init>()V

    .line 136
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 139
    move-result-object v8

    .line 140
    new-instance v9, Landroid/util/DisplayMetrics;

    .line 142
    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 145
    invoke-virtual {v8, v9}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 148
    iget v10, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 150
    iput v10, v7, Lzi$a;->a:I

    .line 152
    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 154
    iput v9, v7, Lzi$a;->b:I

    .line 156
    const-string v9, "test not 30api getMetrics:{?}"

    .line 158
    new-array v10, v5, [Ljava/lang/Object;

    .line 160
    aput-object v7, v10, v4

    .line 162
    invoke-static {v6, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    new-instance v7, Landroid/graphics/Point;

    .line 167
    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 170
    invoke-virtual {v8, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 173
    const-string v9, "test not 30api getSize:{?}"

    .line 175
    new-array v10, v5, [Ljava/lang/Object;

    .line 177
    aput-object v7, v10, v4

    .line 179
    invoke-static {v6, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    invoke-virtual {v8, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 185
    const-string v9, "test not 30api getRealSize:{?}"

    .line 187
    new-array v10, v5, [Ljava/lang/Object;

    .line 189
    aput-object v7, v10, v4

    .line 191
    invoke-static {v6, v9, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    new-instance v9, Landroid/util/DisplayMetrics;

    .line 196
    invoke-direct {v9}, Landroid/util/DisplayMetrics;-><init>()V

    .line 199
    invoke-virtual {v8, v9}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 202
    iget v8, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 204
    iput v8, v7, Landroid/graphics/Point;->x:I

    .line 206
    iget v8, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 208
    iput v8, v7, Landroid/graphics/Point;->y:I

    .line 210
    const-string v8, "test not 30api getRealMetrics:{?}"

    .line 212
    new-array v10, v5, [Ljava/lang/Object;

    .line 214
    aput-object v7, v10, v4

    .line 216
    invoke-static {v6, v8, v10}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    invoke-static {}, Lrv;->H()Lrv;

    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v8}, Lrv;->z()Landroid/content/Context;

    .line 226
    move-result-object v8

    .line 227
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 230
    move-result-object v8

    .line 231
    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 234
    move-result-object v8

    .line 235
    const-string v10, "test config.densityDpi:{?},config.density:{?},metrics.densityDpi:{?},metrics.density:{?}"

    .line 237
    const/4 v11, 0x4

    .line 238
    new-array v11, v11, [Ljava/lang/Object;

    .line 240
    iget v12, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 242
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    move-result-object v12

    .line 246
    aput-object v12, v11, v4

    .line 248
    iget v8, v8, Landroid/content/res/Configuration;->densityDpi:I

    .line 250
    int-to-float v8, v8

    .line 251
    const/high16 v12, 0x43200000    # 160.0f

    .line 253
    div-float/2addr v8, v12

    .line 254
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 257
    move-result-object v8

    .line 258
    aput-object v8, v11, v5

    .line 260
    iget v8, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 262
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    move-result-object v8

    .line 266
    const/4 v12, 0x2

    .line 267
    aput-object v8, v11, v12

    .line 269
    iget v8, v9, Landroid/util/DisplayMetrics;->density:F

    .line 271
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 274
    move-result-object v8

    .line 275
    const/4 v9, 0x3

    .line 276
    aput-object v8, v11, v9

    .line 278
    invoke-static {v6, v10, v11}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    if-lt v2, v3, :cond_2

    .line 283
    invoke-static {v1}, Lwi;->a(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    .line 286
    move-result-object v1

    .line 287
    invoke-static {v1}, Lxi;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 294
    move-result v2

    .line 295
    iput v2, v7, Landroid/graphics/Point;->x:I

    .line 297
    invoke-static {v1}, Lxi;->a(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    .line 300
    move-result-object v1

    .line 301
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 304
    move-result v1

    .line 305
    iput v1, v7, Landroid/graphics/Point;->y:I

    .line 307
    const-string v1, "test 30api windowMetrics.getBounds():{?}"

    .line 309
    new-array v2, v5, [Ljava/lang/Object;

    .line 311
    aput-object v7, v2, v4

    .line 313
    invoke-static {v6, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 316
    :catchall_0
    :cond_2
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "DeviceScreenInfo{deviceWidth="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lzi;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", deviceHeight="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lzi;->b:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", deviceDensityDpi="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lzi;->c:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const/16 v1, 0x7d

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.class public abstract Lob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lob$d;
    }
.end annotation


# static fields
.field public static final a:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lob$a;

    .line 3
    invoke-direct {v0}, Lob$a;-><init>()V

    .line 6
    sput-object v0, Lob;->a:Lcom/autonavi/amapauto/jni/RoadMapInteract$a;

    .line 8
    return-void
.end method

.method public static a(I)Lob$d;
    .locals 5

    .line 1
    const/16 v0, 0x1e

    .line 3
    add-int/2addr p0, v0

    .line 4
    const/16 v1, 0x3c

    .line 6
    div-int/2addr p0, v1

    .line 7
    new-instance v2, Lob$d;

    .line 9
    invoke-direct {v2}, Lob$d;-><init>()V

    .line 12
    if-ge p0, v1, :cond_0

    .line 14
    iput p0, v2, Lob$d;->c:I

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/16 v3, 0x5a0

    .line 19
    if-ge p0, v3, :cond_2

    .line 21
    div-int/lit8 v0, p0, 0x3c

    .line 23
    rem-int/2addr p0, v1

    .line 24
    if-lez p0, :cond_1

    .line 26
    iput v0, v2, Lob$d;->b:I

    .line 28
    iput p0, v2, Lob$d;->c:I

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    iput v0, v2, Lob$d;->b:I

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    div-int/lit8 v3, p0, 0x3c

    .line 36
    rem-int/2addr p0, v1

    .line 37
    rem-int/lit8 v1, v3, 0x18

    .line 39
    div-int/lit8 v4, v3, 0x18

    .line 41
    if-lt p0, v0, :cond_3

    .line 43
    add-int/lit8 v3, v3, 0x1

    .line 45
    rem-int/lit8 v1, v3, 0x18

    .line 47
    div-int/lit8 v4, v3, 0x18

    .line 49
    :cond_3
    if-nez v1, :cond_4

    .line 51
    iput v4, v2, Lob$d;->a:I

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    iput v4, v2, Lob$d;->a:I

    .line 56
    iput v1, v2, Lob$d;->b:I

    .line 58
    :goto_0
    return-object v2
.end method

.method public static b([B)[I
    .locals 7

    .line 1
    if-eqz p0, :cond_2

    .line 3
    array-length v0, p0

    .line 4
    add-int/lit8 v0, v0, -0x36

    .line 6
    rem-int/lit8 v0, v0, 0x4

    .line 8
    if-nez v0, :cond_2

    .line 10
    array-length v0, p0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    array-length v0, p0

    .line 15
    add-int/lit8 v0, v0, -0x36

    .line 17
    div-int/lit8 v0, v0, 0x4

    .line 19
    new-array v1, v0, [I

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v0, :cond_1

    .line 24
    mul-int/lit8 v3, v2, 0x4

    .line 26
    add-int/lit8 v3, v3, 0x36

    .line 28
    add-int/lit8 v4, v3, 0x0

    .line 30
    aget-byte v4, p0, v4

    .line 32
    and-int/lit16 v4, v4, 0xff

    .line 34
    add-int/lit8 v5, v3, 0x1

    .line 36
    aget-byte v5, p0, v5

    .line 38
    shl-int/lit8 v5, v5, 0x8

    .line 40
    const v6, 0xff00

    .line 43
    and-int/2addr v5, v6

    .line 44
    or-int/2addr v4, v5

    .line 45
    add-int/lit8 v5, v3, 0x2

    .line 47
    aget-byte v5, p0, v5

    .line 49
    shl-int/lit8 v5, v5, 0x18

    .line 51
    ushr-int/lit8 v5, v5, 0x8

    .line 53
    or-int/2addr v4, v5

    .line 54
    add-int/lit8 v3, v3, 0x3

    .line 56
    aget-byte v3, p0, v3

    .line 58
    shl-int/lit8 v3, v3, 0x18

    .line 60
    or-int/2addr v3, v4

    .line 61
    aput v3, v1, v2

    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    return-object v1

    .line 67
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public static c()Z
    .locals 1

    .line 1
    invoke-static {}, Lob;->e()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lhm0;->l()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public static d()Z
    .locals 3

    .line 1
    const/16 v0, 0xbbe

    .line 3
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/config/AndroidAdapterConfiger;->nativeGetIntValue(I)I

    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v2, v0, :cond_0

    .line 11
    const-string v0, "isWidgetAdded WIDGET_RENDER_TYPE_SEND_BITMAP_PATH"

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    const-string v2, "AutoWidgetUtils"

    .line 17
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lob;->e()Z

    .line 23
    move-result v0

    .line 24
    return v0

    .line 25
    :cond_0
    invoke-static {}, Lob;->e()Z

    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-static {}, Lhm0;->j()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_1
    return v1
.end method

.method public static e()Z
    .locals 4

    .line 1
    invoke-static {}, Lzm;->d()Lzm;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "isBgBitMapRun"

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lzm;->a(Ljava/lang/String;Z)Z

    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v3

    .line 19
    aput-object v3, v1, v2

    .line 21
    const-string v2, "AutoWidgetUtils"

    .line 23
    const-string v3, "checkIsWidgetEnable"

    .line 25
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    return v0
.end method

.method public static f(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    const/16 v1, 0x3e8

    .line 8
    if-lt p0, v1, :cond_1

    .line 10
    int-to-float p0, p0

    .line 11
    const/high16 v1, 0x447a0000    # 1000.0f

    .line 13
    div-float/2addr p0, v1

    .line 14
    const/high16 v1, 0x41200000    # 10.0f

    .line 16
    mul-float p0, p0, v1

    .line 18
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    .line 21
    move-result p0

    .line 22
    int-to-float p0, p0

    .line 23
    div-float/2addr p0, v1

    .line 24
    mul-float v2, p0, v1

    .line 26
    rem-float/2addr v2, v1

    .line 27
    const/4 v1, 0x0

    .line 28
    cmpl-float v1, v2, v1

    .line 30
    if-nez v1, :cond_0

    .line 32
    float-to-int p0, p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 36
    invoke-static {}, Lrv;->H()Lrv;

    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 43
    move-result-object p0

    .line 44
    sget v1, Ld90;->c:I

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    .line 57
    invoke-static {}, Lrv;->H()Lrv;

    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 64
    move-result-object p0

    .line 65
    sget v1, Ld90;->c:I

    .line 67
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 78
    invoke-static {}, Lrv;->H()Lrv;

    .line 81
    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lrv;->z()Landroid/content/Context;

    .line 85
    move-result-object p0

    .line 86
    sget v1, Ld90;->h:I

    .line 88
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 95
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 99
    return-object p0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    aput-object v2, v1, v3

    .line 30
    const-string v2, "AutoWidgetUtils"

    .line 32
    const-string v3, "getDrawableID() path+id : {?}"

    .line 34
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 56
    const-string p1, "drawable"

    .line 58
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, p0, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move-result p0

    .line 66
    return p0
.end method

.method public static h(IIZZ)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x63

    .line 11
    invoke-static {v0, v1}, Lgb;->a(Landroid/content/Context;I)I

    .line 14
    move-result v4

    .line 15
    const/4 v2, 0x0

    .line 16
    move v3, v4

    .line 17
    move v5, p0

    .line 18
    move v6, p1

    .line 19
    move v7, p2

    .line 20
    move v8, p3

    .line 21
    invoke-static/range {v2 .. v8}, Lob;->i([BIIIIZZ)Landroid/graphics/Bitmap;

    .line 24
    move-result-object p0

    .line 25
    return-object p0
.end method

.method public static i([BIIIIZZ)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    const-string v0, "AutoWidgetUtils"

    .line 3
    invoke-static {}, Lib;->o()Z

    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 9
    const-string v1, "_night_a530"

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "_night"

    .line 14
    :goto_0
    const/16 v2, 0x42

    .line 16
    const/16 v3, 0x41

    .line 18
    const-string v4, "sou"

    .line 20
    if-lez p4, :cond_c

    .line 22
    const/16 v5, 0xc

    .line 24
    if-eq p3, v5, :cond_9

    .line 26
    const/16 v5, 0xb

    .line 28
    if-ne p3, v5, :cond_1

    .line 30
    goto/16 :goto_6

    .line 32
    :cond_1
    const/16 v5, 0x12

    .line 34
    if-eq p3, v5, :cond_6

    .line 36
    const/16 v5, 0x11

    .line 38
    if-ne p3, v5, :cond_2

    .line 40
    goto :goto_3

    .line 41
    :cond_2
    if-eq p3, v3, :cond_3

    .line 43
    if-ne p3, v2, :cond_c

    .line 45
    :cond_3
    invoke-static {}, Lib;->n()Z

    .line 48
    move-result p4

    .line 49
    if-eqz p4, :cond_c

    .line 51
    if-nez p5, :cond_5

    .line 53
    if-eqz p6, :cond_4

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    add-int/lit8 p4, p3, 0x5

    .line 58
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    move-result-object p4

    .line 62
    invoke-static {v4, p4}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    move-result p4

    .line 66
    goto :goto_2

    .line 67
    :cond_5
    :goto_1
    new-instance p4, Ljava/lang/StringBuilder;

    .line 69
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    add-int/lit8 v5, p3, 0x5

    .line 74
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p4

    .line 88
    invoke-static {v4, p4}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    move-result p4

    .line 92
    :goto_2
    invoke-static {}, Lrv;->H()Lrv;

    .line 95
    move-result-object v5

    .line 96
    invoke-virtual {v5}, Lrv;->z()Landroid/content/Context;

    .line 99
    move-result-object v5

    .line 100
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v5

    .line 104
    invoke-static {v5, p4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 107
    move-result-object p4

    .line 108
    goto/16 :goto_9

    .line 110
    :cond_6
    :goto_3
    if-nez p5, :cond_8

    .line 112
    if-eqz p6, :cond_7

    .line 114
    goto :goto_4

    .line 115
    :cond_7
    add-int/lit8 p4, p4, 0x3b

    .line 117
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 120
    move-result-object p0

    .line 121
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    move-result p0

    .line 125
    goto :goto_5

    .line 126
    :cond_8
    :goto_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 128
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    add-int/lit8 p4, p4, 0x3b

    .line 133
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    move-result-object p0

    .line 147
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    move-result p0

    .line 151
    :goto_5
    invoke-static {}, Lrv;->H()Lrv;

    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 162
    move-result-object p1

    .line 163
    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 166
    move-result-object p0

    .line 167
    return-object p0

    .line 168
    :cond_9
    :goto_6
    if-nez p5, :cond_b

    .line 170
    if-eqz p6, :cond_a

    .line 172
    goto :goto_7

    .line 173
    :cond_a
    add-int/lit8 p4, p4, 0x31

    .line 175
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 178
    move-result-object p0

    .line 179
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    move-result p0

    .line 183
    goto :goto_8

    .line 184
    :cond_b
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    .line 186
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    add-int/lit8 p4, p4, 0x31

    .line 191
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 194
    move-result-object p1

    .line 195
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object p0

    .line 205
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    move-result p0

    .line 209
    :goto_8
    invoke-static {}, Lrv;->H()Lrv;

    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 220
    move-result-object p1

    .line 221
    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 224
    move-result-object p0

    .line 225
    return-object p0

    .line 226
    :cond_c
    const/4 p4, 0x0

    .line 227
    :goto_9
    invoke-static {p0}, Lob;->b([B)[I

    .line 230
    move-result-object p0

    .line 231
    if-eqz p0, :cond_d

    .line 233
    array-length v5, p0

    .line 234
    if-lez v5, :cond_d

    .line 236
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    .line 238
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 241
    move-result-object p0

    .line 242
    goto/16 :goto_f

    .line 244
    :cond_d
    invoke-static {}, Lib;->n()Z

    .line 247
    move-result p0

    .line 248
    if-eqz p0, :cond_11

    .line 250
    if-eq p3, v3, :cond_e

    .line 252
    if-ne p3, v2, :cond_11

    .line 254
    :cond_e
    if-nez p5, :cond_10

    .line 256
    if-eqz p6, :cond_f

    .line 258
    goto :goto_a

    .line 259
    :cond_f
    add-int/lit8 p3, p3, 0x5

    .line 261
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 264
    move-result-object p0

    .line 265
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    move-result p0

    .line 269
    goto :goto_b

    .line 270
    :cond_10
    :goto_a
    new-instance p0, Ljava/lang/StringBuilder;

    .line 272
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 275
    add-int/lit8 p3, p3, 0x5

    .line 277
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 280
    move-result-object p1

    .line 281
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 290
    move-result-object p0

    .line 291
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-result p0

    .line 295
    :goto_b
    invoke-static {}, Lrv;->H()Lrv;

    .line 298
    move-result-object p1

    .line 299
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 306
    move-result-object p1

    .line 307
    invoke-static {p1, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 310
    move-result-object p4

    .line 311
    goto :goto_d

    .line 312
    :cond_11
    if-nez p5, :cond_13

    .line 314
    if-eqz p6, :cond_12

    .line 316
    goto :goto_c

    .line 317
    :cond_12
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 320
    move-result-object p0

    .line 321
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    move-result p0

    .line 325
    goto :goto_d

    .line 326
    :cond_13
    :goto_c
    new-instance p0, Ljava/lang/StringBuilder;

    .line 328
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 340
    move-result-object p0

    .line 341
    invoke-static {v4, p0}, Lob;->g(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    move-result p0

    .line 345
    :goto_d
    const/4 p1, 0x0

    .line 346
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 349
    invoke-static {}, Lrv;->H()Lrv;

    .line 352
    move-result-object p2

    .line 353
    invoke-virtual {p2}, Lrv;->z()Landroid/content/Context;

    .line 356
    move-result-object p2

    .line 357
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 360
    move-result-object p2

    .line 361
    invoke-static {p2, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 364
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    goto :goto_f

    .line 366
    :catch_0
    move-exception p0

    .line 367
    const-string p2, "BitmapFactory.decodeResource occur OutOfMemoryError "

    .line 369
    new-array p1, p1, [Ljava/lang/Object;

    .line 371
    invoke-static {v0, p2, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 374
    goto :goto_e

    .line 375
    :catch_1
    move-exception p0

    .line 376
    const-string p2, "BitmapFactory.decodeResource occur Exception "

    .line 378
    new-array p1, p1, [Ljava/lang/Object;

    .line 380
    invoke-static {v0, p2, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 383
    :goto_e
    move-object p0, p4

    .line 384
    :goto_f
    return-object p0
.end method

.method public static j(Landroid/content/Context;Ljava/lang/Class;)Z
    .locals 4

    .line 1
    const-string v0, "AutoWidgetUtils"

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz p0, :cond_4

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    const-string v3, "isWidgetAddedUtils widgetClass = "

    .line 13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v2

    .line 27
    new-array v3, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v2

    .line 36
    if-nez v2, :cond_0

    .line 38
    return v1

    .line 39
    :cond_0
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    .line 42
    move-result-object v2

    .line 43
    if-nez v2, :cond_1

    .line 45
    new-instance p0, Ljava/lang/NullPointerException;

    .line 47
    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    .line 50
    new-array p1, v1, [Ljava/lang/Object;

    .line 52
    const-string v2, "mWidgetManager is null  return\uff01"

    .line 54
    invoke-static {v0, v2, p0, p1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    return v1

    .line 58
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/ComponentName;

    .line 60
    invoke-direct {v3, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    invoke-virtual {v2, v3}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_3

    .line 69
    array-length p1, p0

    .line 70
    if-lez p1, :cond_2

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    const-string v2, "isWidgetAddedUtils ids.length > 0 ids.length = "

    .line 79
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    array-length p0, p0

    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object p0

    .line 90
    new-array p1, v1, [Ljava/lang/Object;

    .line 92
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    const/4 p0, 0x1

    .line 96
    return p0

    .line 97
    :cond_2
    const-string p0, "isWidgetAddedUtils ids.length <= 0"

    .line 99
    new-array p1, v1, [Ljava/lang/Object;

    .line 101
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    goto :goto_0

    .line 105
    :cond_3
    const-string p0, "isWidgetAddedUtils ids==null"

    .line 107
    new-array p1, v1, [Ljava/lang/Object;

    .line 109
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    goto :goto_0

    .line 113
    :catch_0
    move-exception p0

    .line 114
    const-string p1, "isWidgetAddedUtils RuntimeException: system server dead?"

    .line 116
    new-array v2, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {v0, p1, p0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 121
    goto :goto_0

    .line 122
    :cond_4
    const-string p0, "isWidgetAddedUtils context==null"

    .line 124
    new-array p1, v1, [Ljava/lang/Object;

    .line 126
    invoke-static {v0, p0, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :goto_0
    return v1
.end method

.method public static k()V
    .locals 1

    .line 1
    new-instance v0, Lob$c;

    .line 3
    invoke-direct {v0}, Lob$c;-><init>()V

    .line 6
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 9
    return-void
.end method

.method public static l(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 3
    iget v0, p0, Lcom/autonavi/amapauto/widget/jni/LaneInfo;->type:I

    .line 5
    if-eqz v0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lob$b;

    .line 10
    invoke-direct {v0, p0}, Lob$b;-><init>(Lcom/autonavi/amapauto/widget/jni/LaneInfo;)V

    .line 13
    invoke-static {v0}, Lbg0;->b(Ljava/lang/Runnable;)V

    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method public static m(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    new-instance v5, Landroid/graphics/Matrix;

    .line 3
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    const/high16 v0, 0x3f800000    # 1.0f

    .line 8
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 11
    rsub-int p1, p1, 0x168

    .line 13
    int-to-float p1, p1

    .line 14
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 17
    if-eqz p0, :cond_1

    .line 19
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 31
    move-result v3

    .line 32
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 35
    move-result v4

    .line 36
    const/4 v6, 0x1

    .line 37
    move-object v0, p0

    .line 38
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :cond_1
    :goto_0
    const/4 p1, 0x2

    .line 44
    new-array p1, p1, [Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    .line 47
    aput-object p0, p1, v0

    .line 49
    if-nez p0, :cond_2

    .line 51
    const-string v0, "null bmp"

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 57
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 61
    move-result-object v0

    .line 62
    :goto_1
    const/4 v1, 0x1

    .line 63
    aput-object v0, p1, v1

    .line 65
    const-string v0, "AutoWidgetUtils"

    .line 67
    const-string v1, "rotateBitmap bmp={?} || bmp.isRecycled={?})"

    .line 69
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    return-object p0
.end method

.method public static n(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    const-string v1, "com.autonavi.amapauto.AUTO_WIDGET_UPDATE_CAR_DIRECTION"

    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lrv;->H()Lrv;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v1}, Lrv;->L()Ljava/lang/String;

    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public static o(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 9
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    new-instance v7, Landroid/graphics/Matrix;

    .line 13
    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 16
    double-to-float v2, p1

    .line 17
    div-float/2addr v2, v0

    .line 18
    double-to-float v3, p3

    .line 19
    div-float/2addr v3, v1

    .line 20
    cmpl-float v4, v2, v3

    .line 22
    if-lez v4, :cond_0

    .line 24
    move v9, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v9, v2

    .line 27
    :goto_0
    invoke-virtual {v7, v9, v9}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 30
    const/4 v3, 0x0

    .line 31
    const/4 v4, 0x0

    .line 32
    float-to-int v5, v0

    .line 33
    float-to-int v6, v1

    .line 34
    const/4 v8, 0x1

    .line 35
    move-object v2, p0

    .line 36
    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    .line 39
    move-result-object p0

    .line 40
    double-to-int v2, p1

    .line 41
    double-to-int v3, p3

    .line 42
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 44
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 47
    move-result-object v2

    .line 48
    new-instance v3, Landroid/graphics/Canvas;

    .line 50
    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 53
    mul-float v0, v0, v9

    .line 55
    float-to-double v4, v0

    .line 56
    sub-double/2addr p1, v4

    .line 57
    double-to-int p1, p1

    .line 58
    int-to-float p1, p1

    .line 59
    const/high16 p2, 0x40000000    # 2.0f

    .line 61
    div-float/2addr p1, p2

    .line 62
    mul-float v9, v9, v1

    .line 64
    float-to-double v0, v9

    .line 65
    sub-double/2addr p3, v0

    .line 66
    double-to-int p3, p3

    .line 67
    int-to-float p3, p3

    .line 68
    div-float/2addr p3, p2

    .line 69
    const/4 p2, 0x0

    .line 70
    invoke-virtual {v3, p0, p1, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {v3}, Landroid/graphics/Canvas;->save()I

    .line 76
    invoke-virtual {v3}, Landroid/graphics/Canvas;->restore()V

    .line 79
    return-object v2
.end method

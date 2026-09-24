.class public Lob$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amapauto/jni/RoadMapInteract$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)V
    .locals 7

    .line 1
    const/16 v0, 0x26c

    .line 3
    invoke-static {v0}, Lib;->u(I)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const/4 v0, 0x1

    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    const-string v2, "ARGB_8888"

    .line 14
    const/4 v3, 0x0

    .line 15
    aput-object v2, v1, v3

    .line 17
    const-string v2, "AutoWidgetUtils"

    .line 19
    const-string v4, "execute in new version~  true config:{?}"

    .line 21
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    invoke-static {p2, p3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 29
    move-result-object v4

    .line 30
    if-eqz v4, :cond_0

    .line 32
    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v4, p1}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 43
    if-lez p2, :cond_0

    .line 45
    if-lez p3, :cond_0

    .line 47
    if-eqz v1, :cond_0

    .line 49
    const-string p1, "Bitmap.createBitmap width={?},height={?}"

    .line 51
    const/4 v1, 0x2

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 54
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    move-result-object v5

    .line 58
    aput-object v5, v1, v3

    .line 60
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object v5

    .line 64
    aput-object v5, v1, v0

    .line 66
    invoke-static {v2, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    const-string v0, "occur an error~"

    .line 73
    new-array v1, v3, [Ljava/lang/Object;

    .line 75
    invoke-static {v2, v0, p1, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    :goto_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Lrv;->z()Landroid/content/Context;

    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object p1

    .line 90
    sget v0, Lq80;->n:I

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 95
    move-result p1

    .line 96
    invoke-static {}, Lrv;->H()Lrv;

    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 107
    move-result-object v0

    .line 108
    sget v1, Lq80;->k:I

    .line 110
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 113
    move-result v0

    .line 114
    const/high16 v1, 0x40000000    # 2.0f

    .line 116
    mul-float v0, v0, v1

    .line 118
    add-float/2addr p1, v0

    .line 119
    float-to-int p1, p1

    .line 120
    int-to-double v0, p3

    .line 121
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 123
    mul-double v2, v2, v0

    .line 125
    int-to-double v5, p1

    .line 126
    div-double/2addr v2, v5

    .line 127
    int-to-double p1, p2

    .line 128
    div-double/2addr p1, v2

    .line 129
    div-double/2addr v0, v2

    .line 130
    invoke-static {v4, p1, p2, v0, v1}, Lob;->o(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;

    .line 133
    move-result-object p1

    .line 134
    sget-object p2, Lco;->l:Landroid/graphics/Bitmap;

    .line 136
    sput-object p2, Lco;->k:Landroid/graphics/Bitmap;

    .line 138
    sput-object p1, Lco;->l:Landroid/graphics/Bitmap;

    .line 140
    :cond_1
    return-void
.end method

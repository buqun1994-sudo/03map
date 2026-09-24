.class public Lcom/autonavi/amapauto/textfont/GlyphRaster;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PIXEL_MODE_A8:I = 0x0

.field public static final PIXEL_MODE_ARGB:I = 0x1

.field public static final PIXEL_MODE_RGB:I = 0x3

.field public static final PIXEL_MODE_RGBA:I = 0x2


# instance fields
.field public bSuccess:Z

.field public bitmapBuffer:[B

.field public bitmapHeight:I

.field public bitmapPixelMode:I

.field public bitmapSize:I

.field public bitmapWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bSuccess:Z

    .line 7
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapBuffer:[B

    .line 10
    iput v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapSize:I

    .line 12
    iput v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapWidth:I

    .line 14
    iput v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapHeight:I

    .line 16
    iput v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapPixelMode:I

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "GlyphRaster{bSuccess="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bSuccess:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", bitmapSize="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapSize:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", bitmapWidth="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapWidth:I

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", bitmapHeight="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapHeight:I

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", bitmapPixelMode="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRaster;->bitmapPixelMode:I

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const/16 v1, 0x7d

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method

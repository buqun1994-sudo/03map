.class public Lcom/autonavi/amapauto/textfont/GlyphRequestParam;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public drawingMode:I

.field public fGlyphMetrics:Lcom/autonavi/amapauto/textfont/GlyphMetrics;

.field public font:Lpm;

.field public isEmoji:I

.field public isSDF:I

.field public languageArr:Ljava/lang/String;

.field public strBuffer:Ljava/lang/String;

.field public strokeWidth:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    .line 8
    const/4 v1, 0x0

    .line 9
    iput-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->drawingMode:I

    .line 14
    const/4 v3, 0x0

    .line 15
    iput v3, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strokeWidth:F

    .line 17
    iput-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->fGlyphMetrics:Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    .line 19
    iput-object v0, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->languageArr:Ljava/lang/String;

    .line 21
    iput v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isEmoji:I

    .line 23
    iput v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isSDF:I

    .line 25
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "GlyphRequestParam{strBuffer=\'"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strBuffer:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const/16 v1, 0x27

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, ", font="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->font:Lpm;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v2, ", drawingMode="

    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->drawingMode:I

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v2, ", strokeWidth="

    .line 43
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->strokeWidth:F

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 51
    const-string v2, ", fGlyphMetrics="

    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->fGlyphMetrics:Lcom/autonavi/amapauto/textfont/GlyphMetrics;

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", languageArr=\'"

    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget-object v2, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->languageArr:Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", isEmoji="

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isEmoji:I

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    const-string v1, ", isSDF="

    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v1, p0, Lcom/autonavi/amapauto/textfont/GlyphRequestParam;->isSDF:I

    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    const/16 v1, 0x7d

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method

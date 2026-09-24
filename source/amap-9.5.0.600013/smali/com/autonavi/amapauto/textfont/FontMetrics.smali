.class public Lcom/autonavi/amapauto/textfont/FontMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field public bSuccess:Z

.field public fAscent:F

.field public fDescent:F

.field public fHeight:F

.field public fLeading:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->bSuccess:Z

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fAscent:F

    .line 4
    iput v0, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fDescent:F

    .line 5
    iput v0, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fLeading:F

    .line 6
    iput v0, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fHeight:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->bSuccess:Z

    .line 9
    iput p1, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fAscent:F

    .line 10
    iput p2, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fDescent:F

    .line 11
    iput p3, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fLeading:F

    .line 12
    iput p4, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fHeight:F

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
    const-string v1, "FontMetrics{bSuccess="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-boolean v1, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->bSuccess:Z

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", fAscent="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fAscent:F

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", fDescent="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fDescent:F

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ", fLeading="

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget v1, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fLeading:F

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 46
    const-string v1, ", fHeight="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget v1, p0, Lcom/autonavi/amapauto/textfont/FontMetrics;->fHeight:F

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

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

.class public Lbx0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field public c:I

.field public d:D


# direct methods
.method public constructor <init>(DDID)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-wide p1, p0, Lbx0;->a:D

    .line 6
    iput-wide p3, p0, Lbx0;->b:D

    .line 8
    iput p5, p0, Lbx0;->c:I

    .line 10
    iput-wide p6, p0, Lbx0;->d:D

    .line 12
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lbx0;->a:D

    .line 3
    return-wide v0
.end method

.method public b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lbx0;->b:D

    .line 3
    return-wide v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lbx0;->c:I

    .line 3
    return v0
.end method

.method public d()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lbx0;->d:D

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-wide v1, p0, Lbx0;->a:D

    .line 6
    const-wide v3, 0x40f86a0000000000L    # 100000.0

    .line 11
    mul-double v1, v1, v3

    .line 13
    double-to-int v1, v1

    .line 14
    int-to-double v1, v1

    .line 15
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 17
    mul-double v1, v1, v5

    .line 19
    div-double/2addr v1, v3

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x0

    .line 25
    aput-object v1, v0, v2

    .line 27
    iget-wide v1, p0, Lbx0;->b:D

    .line 29
    mul-double v1, v1, v3

    .line 31
    double-to-int v1, v1

    .line 32
    int-to-double v1, v1

    .line 33
    mul-double v1, v1, v5

    .line 35
    div-double/2addr v1, v3

    .line 36
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x1

    .line 41
    aput-object v1, v0, v2

    .line 43
    iget v1, p0, Lbx0;->c:I

    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x2

    .line 50
    aput-object v1, v0, v2

    .line 52
    iget-wide v1, p0, Lbx0;->d:D

    .line 54
    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    .line 56
    mul-double v1, v1, v3

    .line 58
    double-to-int v1, v1

    .line 59
    int-to-double v1, v1

    .line 60
    mul-double v1, v1, v5

    .line 62
    div-double/2addr v1, v3

    .line 63
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 66
    move-result-object v1

    .line 67
    const/4 v2, 0x3

    .line 68
    aput-object v1, v0, v2

    .line 70
    const-string v1, ","

    .line 72
    invoke-static {v0, v1}, Lex0;->b([Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 76
    return-object v0
.end method

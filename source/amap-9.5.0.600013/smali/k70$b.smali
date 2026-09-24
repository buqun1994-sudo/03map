.class public Lk70$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk70;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lle0;

.field public b:Lk70;

.field public final synthetic c:Lk70;


# direct methods
.method public constructor <init>(Lk70;Lk70;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk70$b;->c:Lk70;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p2, p0, Lk70$b;->b:Lk70;

    .line 8
    return-void
.end method


# virtual methods
.method public a(Lle0;F)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lk70$b;->a:Lle0;

    .line 3
    iget-boolean v0, v0, Lle0;->a:Z

    .line 5
    const v1, 0x38d1b717    # 1.0E-4f

    .line 8
    const/16 v2, 0x9

    .line 10
    const/4 v3, 0x0

    .line 11
    const/4 v4, 0x1

    .line 12
    const/4 v5, 0x0

    .line 13
    if-eqz v0, :cond_3

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-ge v0, v2, :cond_1

    .line 18
    iget-object v6, p0, Lk70$b;->a:Lle0;

    .line 20
    iget-object v6, v6, Lle0;->i:[F

    .line 22
    aget v7, v6, v0

    .line 24
    iget-object v8, p1, Lle0;->i:[F

    .line 26
    aget v8, v8, v0

    .line 28
    mul-float v8, v8, p2

    .line 30
    add-float/2addr v7, v8

    .line 31
    aput v7, v6, v0

    .line 33
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 36
    move-result v6

    .line 37
    cmpg-float v6, v6, v1

    .line 39
    if-gez v6, :cond_0

    .line 41
    iget-object v6, p0, Lk70$b;->a:Lle0;

    .line 43
    iget-object v6, v6, Lle0;->i:[F

    .line 45
    aput v3, v6, v0

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    const/4 v4, 0x0

    .line 49
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    if-eqz v4, :cond_2

    .line 54
    iget-object p1, p0, Lk70$b;->c:Lk70;

    .line 56
    iget-object p2, p0, Lk70$b;->a:Lle0;

    .line 58
    invoke-static {p1, p2}, Lk70;->E(Lk70;Lle0;)V

    .line 61
    :cond_2
    return v5

    .line 62
    :cond_3
    :goto_2
    if-ge v5, v2, :cond_6

    .line 64
    iget-object v0, p1, Lle0;->i:[F

    .line 66
    aget v0, v0, v5

    .line 68
    cmpl-float v6, v0, v3

    .line 70
    if-eqz v6, :cond_5

    .line 72
    mul-float v0, v0, p2

    .line 74
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 77
    move-result v6

    .line 78
    cmpg-float v6, v6, v1

    .line 80
    if-gez v6, :cond_4

    .line 82
    const/4 v0, 0x0

    .line 83
    :cond_4
    iget-object v6, p0, Lk70$b;->a:Lle0;

    .line 85
    iget-object v6, v6, Lle0;->i:[F

    .line 87
    aput v0, v6, v5

    .line 89
    goto :goto_3

    .line 90
    :cond_5
    iget-object v0, p0, Lk70$b;->a:Lle0;

    .line 92
    iget-object v0, v0, Lle0;->i:[F

    .line 94
    aput v3, v0, v5

    .line 96
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 98
    goto :goto_2

    .line 99
    :cond_6
    return v4
.end method

.method public b(Lle0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk70$b;->a:Lle0;

    .line 3
    return-void
.end method

.method public final c()Z
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_2

    .line 6
    iget-object v2, p0, Lk70$b;->a:Lle0;

    .line 8
    iget-object v2, v2, Lle0;->i:[F

    .line 10
    aget v2, v2, v0

    .line 12
    const/4 v3, 0x0

    .line 13
    cmpl-float v4, v2, v3

    .line 15
    if-lez v4, :cond_0

    .line 17
    return v1

    .line 18
    :cond_0
    cmpg-float v1, v2, v3

    .line 20
    if-gez v1, :cond_1

    .line 22
    const/4 v0, 0x1

    .line 23
    return v0

    .line 24
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v1
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Lle0;

    .line 3
    iget-object v0, p0, Lk70$b;->a:Lle0;

    .line 5
    iget v0, v0, Lle0;->c:I

    .line 7
    iget p1, p1, Lle0;->c:I

    .line 9
    sub-int/2addr v0, p1

    .line 10
    return v0
.end method

.method public final d(Lle0;)Z
    .locals 5

    .line 1
    const/16 v0, 0x8

    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_1

    .line 6
    iget-object v2, p1, Lle0;->i:[F

    .line 8
    aget v2, v2, v0

    .line 10
    iget-object v3, p0, Lk70$b;->a:Lle0;

    .line 12
    iget-object v3, v3, Lle0;->i:[F

    .line 14
    aget v3, v3, v0

    .line 16
    cmpl-float v4, v3, v2

    .line 18
    if-nez v4, :cond_0

    .line 20
    add-int/lit8 v0, v0, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    cmpg-float p1, v3, v2

    .line 25
    if-gez p1, :cond_1

    .line 27
    const/4 p1, 0x1

    .line 28
    return p1

    .line 29
    :cond_1
    return v1
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk70$b;->a:Lle0;

    .line 3
    iget-object v0, v0, Lle0;->i:[F

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lk70$b;->a:Lle0;

    .line 3
    const-string v1, "[ "

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    :goto_0
    const/16 v2, 0x9

    .line 10
    if-ge v0, v2, :cond_0

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-object v1, p0, Lk70$b;->a:Lle0;

    .line 22
    iget-object v1, v1, Lle0;->i:[F

    .line 24
    aget v1, v1, v0

    .line 26
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 29
    const-string v1, " "

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    add-int/lit8 v0, v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "] "

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lk70$b;->a:Lle0;

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v0

    .line 63
    return-object v0
.end method

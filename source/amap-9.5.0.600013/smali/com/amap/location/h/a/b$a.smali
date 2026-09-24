.class Lcom/amap/location/h/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/location/h/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:J

.field d:J

.field e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    instance-of v1, p1, Lcom/amap/location/h/a/b$a;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    check-cast p1, Lcom/amap/location/h/a/b$a;

    .line 13
    iget v1, p0, Lcom/amap/location/h/a/b$a;->a:I

    .line 15
    iget v2, p1, Lcom/amap/location/h/a/b$a;->a:I

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    iget v1, p0, Lcom/amap/location/h/a/b$a;->b:I

    .line 21
    iget v2, p1, Lcom/amap/location/h/a/b$a;->b:I

    .line 23
    if-ne v1, v2, :cond_1

    .line 25
    iget-wide v1, p0, Lcom/amap/location/h/a/b$a;->c:J

    .line 27
    iget-wide v3, p1, Lcom/amap/location/h/a/b$a;->c:J

    .line 29
    cmp-long v5, v1, v3

    .line 31
    if-nez v5, :cond_1

    .line 33
    iget-wide v1, p0, Lcom/amap/location/h/a/b$a;->d:J

    .line 35
    iget-wide v3, p1, Lcom/amap/location/h/a/b$a;->d:J

    .line 37
    cmp-long v5, v1, v3

    .line 39
    if-nez v5, :cond_1

    .line 41
    iget v1, p0, Lcom/amap/location/h/a/b$a;->e:I

    .line 43
    iget p1, p1, Lcom/amap/location/h/a/b$a;->e:I

    .line 45
    if-ne v1, p1, :cond_1

    .line 47
    return v0

    .line 48
    :cond_1
    const/4 p1, 0x0

    .line 49
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/amap/location/h/a/b$a;->a:I

    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget v1, p0, Lcom/amap/location/h/a/b$a;->b:I

    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-wide v1, p0, Lcom/amap/location/h/a/b$a;->c:J

    .line 12
    long-to-int v2, v1

    .line 13
    add-int/2addr v0, v2

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Lcom/amap/location/h/a/b$a;->d:J

    .line 18
    long-to-int v2, v1

    .line 19
    add-int/2addr v0, v2

    .line 20
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget v1, p0, Lcom/amap/location/h/a/b$a;->e:I

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lcom/amap/location/h/a/b$a;->a:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ","

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v2, p0, Lcom/amap/location/h/a/b$a;->b:I

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-wide v2, p0, Lcom/amap/location/h/a/b$a;->c:J

    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-wide v1, p0, Lcom/amap/location/h/a/b$a;->d:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object v0

    .line 41
    return-object v0
.end method

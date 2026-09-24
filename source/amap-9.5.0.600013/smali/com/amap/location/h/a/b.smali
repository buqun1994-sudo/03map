.class Lcom/amap/location/h/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/location/h/a/b$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/location/h/a/b$a;",
            ">;"
        }
    .end annotation
.end field

.field b:B

.field c:Lcom/amap/location/h/a/b$a;

.field d:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    .line 11
    iput-boolean p1, p0, Lcom/amap/location/h/a/b;->d:Z

    .line 13
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/amap/location/h/a/b;->b:B

    .line 3
    if-lez v0, :cond_0

    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

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
    instance-of v1, p1, Lcom/amap/location/h/a/b;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    check-cast p1, Lcom/amap/location/h/a/b;

    .line 13
    iget-byte v1, p0, Lcom/amap/location/h/a/b;->b:B

    .line 15
    iget-byte v2, p1, Lcom/amap/location/h/a/b;->b:B

    .line 17
    if-ne v1, v2, :cond_1

    .line 19
    iget-object v1, p0, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    .line 21
    iget-object p1, p1, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    .line 23
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 29
    return v0

    .line 30
    :cond_1
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-byte v0, p0, Lcom/amap/location/h/a/b;->b:B

    .line 3
    iget-boolean v1, p0, Lcom/amap/location/h/a/b;->d:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    iget-object v1, p0, Lcom/amap/location/h/a/b;->c:Lcom/amap/location/h/a/b$a;

    .line 9
    if-eqz v1, :cond_1

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    invoke-virtual {v1}, Lcom/amap/location/h/a/b$a;->hashCode()I

    .line 16
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    .line 27
    move-result v1

    .line 28
    :goto_0
    add-int/2addr v0, v1

    .line 29
    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/amap/location/h/a/b;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v1, "#"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    iget-byte v1, p0, Lcom/amap/location/h/a/b;->b:B

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.class public Law0$a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Law0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Law0$a$a;->a:I

    .line 7
    const/16 v1, 0x3f

    .line 9
    iput v1, p0, Law0$a$a;->b:I

    .line 11
    iput v0, p0, Law0$a$a;->c:I

    .line 13
    invoke-virtual {p0, p1}, Law0$a$a;->b(I)V

    .line 16
    invoke-virtual {p0, p2}, Law0$a$a;->d(I)V

    .line 19
    invoke-virtual {p0, p3}, Law0$a$a;->f(I)V

    .line 22
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a$a;->a:I

    .line 3
    return v0
.end method

.method public b(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 3
    const/4 v0, 0x7

    .line 4
    if-gt p1, v0, :cond_0

    .line 6
    iput p1, p0, Law0$a$a;->a:I

    .line 8
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a$a;->b:I

    .line 3
    return v0
.end method

.method public d(I)V
    .locals 1

    .line 1
    const/16 v0, -0x40

    .line 3
    if-lt p1, v0, :cond_0

    .line 5
    const/16 v0, 0x3f

    .line 7
    if-gt p1, v0, :cond_0

    .line 9
    iput p1, p0, Law0$a$a;->b:I

    .line 11
    :cond_0
    return-void
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Law0$a$a;->c:I

    .line 3
    return v0
.end method

.method public f(I)V
    .locals 1

    .line 1
    if-ltz p1, :cond_0

    .line 3
    const/16 v0, 0x3f

    .line 5
    if-gt p1, v0, :cond_0

    .line 7
    iput p1, p0, Law0$a$a;->c:I

    .line 9
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "Type{locType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Law0$a$a;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", algType="

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v1, p0, Law0$a$a;->b:I

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ", algSubType="

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v1, p0, Law0$a$a;->c:I

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

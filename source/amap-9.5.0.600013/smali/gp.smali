.class public abstract Lgp;
.super Llg;
.source "SourceFile"

# interfaces
.implements Lep;


# instance fields
.field public D0:[Llg;

.field public E0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Llg;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    new-array v0, v0, [Llg;

    .line 7
    iput-object v0, p0, Lgp;->D0:[Llg;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lgp;->E0:I

    .line 12
    return-void
.end method


# virtual methods
.method public Z0(Ljava/util/ArrayList;ILcm0;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lgp;->E0:I

    .line 5
    if-ge v1, v2, :cond_0

    .line 7
    iget-object v2, p0, Lgp;->D0:[Llg;

    .line 9
    aget-object v2, v2, v1

    .line 11
    invoke-virtual {p3, v2}, Lcm0;->a(Llg;)Z

    .line 14
    add-int/lit8 v1, v1, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    :goto_1
    iget v1, p0, Lgp;->E0:I

    .line 19
    if-ge v0, v1, :cond_1

    .line 21
    iget-object v1, p0, Lgp;->D0:[Llg;

    .line 23
    aget-object v1, v1, v0

    .line 25
    invoke-static {v1, p2, p1, p3}, Lko;->a(Llg;ILjava/util/ArrayList;Lcm0;)Lcm0;

    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-void
.end method

.method public a(Llg;)V
    .locals 3

    .line 1
    if-eq p1, p0, :cond_2

    .line 3
    if-nez p1, :cond_0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lgp;->E0:I

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 10
    iget-object v1, p0, Lgp;->D0:[Llg;

    .line 12
    array-length v2, v1

    .line 13
    if-le v0, v2, :cond_1

    .line 15
    array-length v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x2

    .line 18
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 22
    check-cast v0, [Llg;

    .line 24
    iput-object v0, p0, Lgp;->D0:[Llg;

    .line 26
    :cond_1
    iget-object v0, p0, Lgp;->D0:[Llg;

    .line 28
    iget v1, p0, Lgp;->E0:I

    .line 30
    aput-object p1, v0, v1

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 34
    iput v1, p0, Lgp;->E0:I

    .line 36
    :cond_2
    :goto_0
    return-void
.end method

.method public a1(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lgp;->E0:I

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ge v0, v1, :cond_2

    .line 7
    iget-object v1, p0, Lgp;->D0:[Llg;

    .line 9
    aget-object v1, v1, v0

    .line 11
    if-nez p1, :cond_0

    .line 13
    iget v3, v1, Llg;->A0:I

    .line 15
    if-eq v3, v2, :cond_0

    .line 17
    return v3

    .line 18
    :cond_0
    const/4 v3, 0x1

    .line 19
    if-ne p1, v3, :cond_1

    .line 21
    iget v1, v1, Llg;->B0:I

    .line 23
    if-eq v1, v2, :cond_1

    .line 25
    return v1

    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_2
    return v2
.end method

.method public b()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lgp;->E0:I

    .line 4
    iget-object v0, p0, Lgp;->D0:[Llg;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    return-void
.end method

.method public c(Lmg;)V
    .locals 0

    .line 1
    return-void
.end method

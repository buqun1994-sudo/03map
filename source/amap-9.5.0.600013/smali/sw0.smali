.class public Lsw0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-short v0, p0, Lsw0;->a:S

    .line 7
    return-void
.end method


# virtual methods
.method public a()S
    .locals 1

    .line 1
    iget-short v0, p0, Lsw0;->a:S

    .line 3
    return v0
.end method

.method public b(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-short p1, p0, Lsw0;->a:S

    .line 5
    or-int/lit8 p1, p1, 0x1

    .line 7
    int-to-short p1, p1

    .line 8
    iput-short p1, p0, Lsw0;->a:S

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-short p1, p0, Lsw0;->a:S

    .line 13
    const v0, 0xfffe

    .line 16
    and-int/2addr p1, v0

    .line 17
    int-to-short p1, p1

    .line 18
    iput-short p1, p0, Lsw0;->a:S

    .line 20
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 3
    iget-short p1, p0, Lsw0;->a:S

    .line 5
    or-int/lit8 p1, p1, 0x2

    .line 7
    int-to-short p1, p1

    .line 8
    iput-short p1, p0, Lsw0;->a:S

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-short p1, p0, Lsw0;->a:S

    .line 13
    const v0, 0xfffd

    .line 16
    and-int/2addr p1, v0

    .line 17
    int-to-short p1, p1

    .line 18
    iput-short p1, p0, Lsw0;->a:S

    .line 20
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-short p1, p0, Lsw0;->a:S

    .line 5
    or-int/lit8 p1, p1, 0x4

    .line 7
    int-to-short p1, p1

    .line 8
    iput-short p1, p0, Lsw0;->a:S

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-short p1, p0, Lsw0;->a:S

    .line 13
    const v0, 0xfffb

    .line 16
    and-int/2addr p1, v0

    .line 17
    int-to-short p1, p1

    .line 18
    iput-short p1, p0, Lsw0;->a:S

    .line 20
    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-short p1, p0, Lsw0;->a:S

    .line 5
    or-int/lit8 p1, p1, 0x8

    .line 7
    int-to-short p1, p1

    .line 8
    iput-short p1, p0, Lsw0;->a:S

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-short p1, p0, Lsw0;->a:S

    .line 13
    const v0, 0xfff7

    .line 16
    and-int/2addr p1, v0

    .line 17
    int-to-short p1, p1

    .line 18
    iput-short p1, p0, Lsw0;->a:S

    .line 20
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-short v0, p0, Lsw0;->a:S

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.class public Ln8;
.super Lk8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lk8;-><init>()V

    .line 4
    const/16 v0, 0xfa

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 10
    return-void
.end method


# virtual methods
.method public e()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 1

    .line 1
    const/16 v0, 0x2712

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lk8;->getBooleanValue(I)Z

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lrv;->x()I

    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x780

    .line 20
    if-ne p1, v0, :cond_1

    .line 22
    const/4 p1, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x0

    .line 25
    :goto_0
    return p1
.end method

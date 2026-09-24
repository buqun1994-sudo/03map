.class public Lc9;
.super Lfi;
.source "SourceFile"


# instance fields
.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lc9;->d:I

    .line 7
    return-void
.end method


# virtual methods
.method public getIntValue(I)I
    .locals 1

    .line 1
    const/16 v0, 0x7537

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lac;->getIntValue(I)I

    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget p1, p0, Lc9;->d:I

    .line 12
    return p1
.end method

.method public startup()Z
    .locals 2

    .line 1
    invoke-super {p0}, Lbc;->startup()Z

    .line 4
    const-string v0, "ro.autonavi.streamtype"

    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-static {v0, v1}, Lvf0;->c(Ljava/lang/String;I)I

    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lc9;->d:I

    .line 13
    const/4 v0, 0x1

    .line 14
    return v0
.end method

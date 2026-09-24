.class public Lw7;
.super Lz7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lz7;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    const/16 v1, 0xea

    .line 7
    const/16 v2, 0xc3

    .line 9
    invoke-virtual {p0, v2, v0, v1, v0}, Lac;->d(IIII)V

    .line 12
    return-void
.end method


# virtual methods
.method public bridge synthetic createRealChannelImpl()Leq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw7;->h()Lfi;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBooleanValue(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lac;->getBooleanValue(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public h()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

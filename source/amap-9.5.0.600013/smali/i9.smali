.class public Li9;
.super Lm9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lm9;-><init>()V

    .line 4
    const/16 v0, 0x8c

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p0, v0, v1, v0, v1}, Lac;->d(IIII)V

    .line 10
    return-void
.end method


# virtual methods
.method public bridge synthetic createRealChannelImpl()Leq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li9;->g()Lfi;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getBooleanValue(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lm9;->getBooleanValue(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

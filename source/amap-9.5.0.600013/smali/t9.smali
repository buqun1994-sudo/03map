.class public Lt9;
.super Lr9;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lr9;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createRealChannelImpl()Leq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lt9;->g()Lfi;

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
    invoke-super {p0, p1}, Lr9;->getBooleanValue(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

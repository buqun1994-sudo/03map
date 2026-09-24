.class public Lm9;
.super Lda;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lda;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createRealChannelImpl()Leq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lm9;->g()Lfi;

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
    invoke-super {p0, p1}, Lda;->getBooleanValue(I)Z

    .line 4
    move-result p1

    .line 5
    return p1
.end method

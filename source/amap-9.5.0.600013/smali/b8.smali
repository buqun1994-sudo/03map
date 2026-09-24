.class public Lb8;
.super Lz7;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lz7;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic createRealChannelImpl()Leq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lb8;->h()Lfi;

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

.method public getFloatValue(I)F
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lac;->getFloatValue(I)F

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lz7;->getStringValue(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public h()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

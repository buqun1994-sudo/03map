.class public Li8;
.super Lj8;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lj8;-><init>()V

    .line 4
    const/16 v0, 0x96

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
    invoke-virtual {p0}, Li8;->g()Lfi;

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

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lj8;->getStringValue(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "C08010127003"

    .line 12
    return-object p1
.end method

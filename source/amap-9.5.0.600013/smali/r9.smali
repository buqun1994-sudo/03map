.class public Lr9;
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
    invoke-virtual {p0}, Lr9;->g()Lfi;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public g()Lfi;
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 3
    const-string v1, "HlydV98"

    .line 5
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 11
    new-instance v0, Lu9;

    .line 13
    invoke-direct {v0}, Lu9;-><init>()V

    .line 16
    invoke-virtual {v0}, Lu9;->g()Lfi;

    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    const-string v1, "HlydV99"

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 29
    new-instance v0, Lv9;

    .line 31
    invoke-direct {v0}, Lv9;-><init>()V

    .line 34
    invoke-virtual {v0}, Lv9;->g()Lfi;

    .line 37
    move-result-object v0

    .line 38
    return-object v0

    .line 39
    :cond_1
    const-string v1, "HlydV9M"

    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lt9;

    .line 49
    invoke-direct {v0}, Lt9;-><init>()V

    .line 52
    invoke-virtual {v0}, Lt9;->g()Lfi;

    .line 55
    move-result-object v0

    .line 56
    return-object v0

    .line 57
    :cond_2
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

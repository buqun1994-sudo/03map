.class public Ljg0;
.super Lac;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lac;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 7
    const-string v1, "yyc"

    .line 9
    const-string v2, "TestChannelImpl"

    .line 11
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    return-void
.end method


# virtual methods
.method public createRealChannelImpl()Leq;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "yyc"

    .line 6
    const-string v2, "createRealChannelImpl"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    const/16 v0, 0x3b07

    .line 13
    invoke-virtual {p0, v0}, Ljg0;->getStringValue(I)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0, p0}, Lre;->a(Ljava/lang/String;Leq;)Leq;

    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getIntValue(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x3b07

    .line 3
    if-eq p1, v0, :cond_0

    .line 5
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const-string p1, "C04010002223"

    .line 12
    return-object p1
.end method

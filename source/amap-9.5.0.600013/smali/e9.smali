.class public Le9;
.super Lfi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfi;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public e()Lfi;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getSatellitePrnForShow(I)I
    .locals 2

    .line 1
    const/16 v0, 0xc8

    if-le p1, v0, :cond_0

    const/16 v1, 0x12c

    if-ge p1, v1, :cond_0

    sub-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 3
    if-le p1, v0, :cond_0

    .line 5
    const/16 v0, 0x12c

    .line 7
    if-ge p1, v0, :cond_0

    .line 9
    sget p1, Luy;->b:I

    .line 11
    return p1

    .line 12
    :cond_0
    sget p1, Luy;->a:I

    .line 14
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lac;->getStringValue(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

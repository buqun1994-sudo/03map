.class public Lr40;
.super Lei;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lei;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getBooleanValue(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lei;->getBooleanValue(I)Z

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

.method public getGnssStatusCallbackType()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public getIntValue(I)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lac;->getIntValue(I)I

    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getStringValue(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lei;->getStringValue(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.class public Lso0;
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
.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0xc8

    .line 3
    if-le p1, v0, :cond_0

    .line 5
    const/16 v0, 0xe7

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

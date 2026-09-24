.class public Lij;
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
    const/16 v0, 0x96

    .line 3
    if-ge p1, v0, :cond_0

    .line 5
    sget p1, Luy;->a:I

    .line 7
    return p1

    .line 8
    :cond_0
    sget p1, Luy;->b:I

    .line 10
    return p1
.end method

.class public Lyb0$i;
.super Lyb0$n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lyb0$n;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public getSatelliteType(I)I
    .locals 1

    .line 1
    const/16 v0, 0xa0

    .line 3
    if-lt p1, v0, :cond_0

    .line 5
    const/16 v0, 0xbe

    .line 7
    if-le p1, v0, :cond_1

    .line 9
    :cond_0
    const/16 v0, 0xc8

    .line 11
    if-lt p1, v0, :cond_2

    .line 13
    :cond_1
    sget p1, Luy;->b:I

    .line 15
    return p1

    .line 16
    :cond_2
    const/16 v0, 0x41

    .line 18
    if-lt p1, v0, :cond_3

    .line 20
    const/16 v0, 0x60

    .line 22
    if-gt p1, v0, :cond_3

    .line 24
    sget p1, Luy;->c:I

    .line 26
    return p1

    .line 27
    :cond_3
    sget p1, Luy;->a:I

    .line 29
    return p1
.end method

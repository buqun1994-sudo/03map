.class public Lyb0$d;
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
    if-lez p1, :cond_0

    .line 3
    const/16 v0, 0x20

    .line 5
    if-gt p1, v0, :cond_0

    .line 7
    sget p1, Luy;->a:I

    .line 9
    return p1

    .line 10
    :cond_0
    const/16 v0, 0x40

    .line 12
    if-le p1, v0, :cond_1

    .line 14
    const/16 v0, 0x60

    .line 16
    if-gt p1, v0, :cond_1

    .line 18
    sget p1, Luy;->c:I

    .line 20
    return p1

    .line 21
    :cond_1
    const/16 v0, 0xc8

    .line 23
    if-le p1, v0, :cond_2

    .line 25
    const/16 v0, 0xe8

    .line 27
    if-gt p1, v0, :cond_2

    .line 29
    sget p1, Luy;->b:I

    .line 31
    return p1

    .line 32
    :cond_2
    sget p1, Luy;->e:I

    .line 34
    return p1
.end method

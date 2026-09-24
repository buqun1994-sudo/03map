.class public Lyb0$b;
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
    const/16 v0, 0x40

    .line 3
    if-lez p1, :cond_0

    .line 5
    if-gt p1, v0, :cond_0

    .line 7
    sget p1, Luy;->a:I

    .line 9
    return p1

    .line 10
    :cond_0
    if-le p1, v0, :cond_1

    .line 12
    const/16 v0, 0x5a

    .line 14
    if-gt p1, v0, :cond_1

    .line 16
    sget p1, Luy;->c:I

    .line 18
    return p1

    .line 19
    :cond_1
    const/16 v0, 0x9f

    .line 21
    if-lt p1, v0, :cond_2

    .line 23
    const/16 v0, 0xa3

    .line 25
    if-gt p1, v0, :cond_2

    .line 27
    sget p1, Luy;->b:I

    .line 29
    return p1

    .line 30
    :cond_2
    sget p1, Luy;->e:I

    .line 32
    return p1
.end method

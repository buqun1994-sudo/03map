.class public Lyb0$j;
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
    const/16 v0, 0xc8

    .line 3
    if-le p1, v0, :cond_0

    .line 5
    const/16 v0, 0xed

    .line 7
    if-le p1, v0, :cond_1

    .line 9
    :cond_0
    const/16 v0, 0x190

    .line 11
    if-le p1, v0, :cond_2

    .line 13
    const/16 v0, 0x1b5

    .line 15
    if-gt p1, v0, :cond_2

    .line 17
    :cond_1
    sget p1, Luy;->b:I

    .line 19
    return p1

    .line 20
    :cond_2
    sget p1, Luy;->a:I

    .line 22
    return p1
.end method

.class public Lwf0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Loz$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public e(IIZ)I
    .locals 2

    .line 1
    const/16 v0, 0x17

    .line 3
    if-eqz p2, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne p2, v1, :cond_4

    .line 8
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    if-lt v1, v0, :cond_2

    .line 12
    if-eqz p3, :cond_1

    .line 14
    or-int/lit16 p1, p1, 0x2000

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    and-int/lit16 p1, p1, -0x2001

    .line 19
    goto :goto_0

    .line 20
    :cond_2
    if-eqz p3, :cond_3

    .line 22
    or-int/lit8 p1, p1, 0x8

    .line 24
    goto :goto_0

    .line 25
    :cond_3
    and-int/lit8 p1, p1, -0x9

    .line 27
    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 29
    const/4 v1, 0x2

    .line 30
    if-ne p2, v1, :cond_8

    .line 32
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    if-lt p2, v0, :cond_6

    .line 36
    if-eqz p3, :cond_7

    .line 38
    goto :goto_1

    .line 39
    :cond_6
    if-eqz p3, :cond_7

    .line 41
    :goto_1
    or-int/lit8 p1, p1, 0x10

    .line 43
    goto :goto_2

    .line 44
    :cond_7
    and-int/lit8 p1, p1, -0x11

    .line 46
    :cond_8
    :goto_2
    return p1
.end method

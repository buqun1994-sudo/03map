.class public Lwf0$a;
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
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 3
    const/4 v0, 0x1

    .line 4
    if-ne p2, v0, :cond_4

    .line 6
    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const/16 v0, 0x17

    .line 10
    if-lt p2, v0, :cond_2

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
    return p1
.end method

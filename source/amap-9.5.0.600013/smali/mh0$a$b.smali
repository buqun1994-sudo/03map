.class public Lmh0$a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmh0$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq p1, v0, :cond_3

    .line 8
    const/4 v0, 0x2

    .line 9
    if-eq p1, v0, :cond_2

    .line 11
    if-eq p1, v1, :cond_1

    .line 13
    const/4 v0, 0x4

    .line 14
    const/16 v1, 0x50

    .line 16
    if-eq p1, v0, :cond_0

    .line 18
    iput v1, p0, Lmh0$a$b;->a:I

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iput v1, p0, Lmh0$a$b;->a:I

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p1, 0x5

    .line 25
    iput p1, p0, Lmh0$a$b;->a:I

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const/16 p1, 0x30

    .line 30
    iput p1, p0, Lmh0$a$b;->a:I

    .line 32
    goto :goto_0

    .line 33
    :cond_3
    iput v1, p0, Lmh0$a$b;->a:I

    .line 35
    :goto_0
    iput p2, p0, Lmh0$a$b;->b:I

    .line 37
    iput p3, p0, Lmh0$a$b;->c:I

    .line 39
    return-void
.end method

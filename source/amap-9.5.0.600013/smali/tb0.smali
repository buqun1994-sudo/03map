.class public abstract Ltb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lqy$d;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Lqy$d;

    .line 4
    new-instance v1, Ltb0$a;

    .line 6
    invoke-direct {v1}, Ltb0$a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 12
    sput-object v0, Ltb0;->a:[Lqy$d;

    .line 14
    return-void
.end method

.method public static a(I)I
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 3
    if-lez p0, :cond_0

    .line 5
    if-gt p0, v0, :cond_0

    .line 7
    sget p0, Luy;->a:I

    .line 9
    return p0

    .line 10
    :cond_0
    const/16 v1, 0x5a

    .line 12
    if-le p0, v0, :cond_1

    .line 14
    if-gt p0, v1, :cond_1

    .line 16
    sget p0, Luy;->c:I

    .line 18
    return p0

    .line 19
    :cond_1
    if-le p0, v1, :cond_2

    .line 21
    const/16 v0, 0xa0

    .line 23
    if-gt p0, v0, :cond_2

    .line 25
    sget p0, Luy;->e:I

    .line 27
    return p0

    .line 28
    :cond_2
    sget p0, Luy;->b:I

    .line 30
    return p0
.end method

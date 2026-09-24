.class public abstract Lmf;
.super Lic;
.source "SourceFile"


# static fields
.field public static final a:[Llf$b;

.field public static final b:[[Lfq;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Llf$b;

    .line 4
    new-instance v2, Lmf$a;

    .line 6
    invoke-direct {v2}, Lmf$a;-><init>()V

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v1, v3

    .line 12
    sput-object v1, Lmf;->a:[Llf$b;

    .line 14
    const/4 v2, 0x4

    .line 15
    new-array v2, v2, [[Lfq;

    .line 17
    aput-object v1, v2, v3

    .line 19
    sget-object v1, Lcj0;->b:[Llf$d;

    .line 21
    aput-object v1, v2, v0

    .line 23
    const/4 v0, 0x2

    .line 24
    sget-object v1, Lbj0;->a:[Llf$c;

    .line 26
    aput-object v1, v2, v0

    .line 28
    const/4 v0, 0x3

    .line 29
    sget-object v1, Lbb;->b:[Lfq;

    .line 31
    aput-object v1, v2, v0

    .line 33
    sput-object v2, Lmf;->b:[[Lfq;

    .line 35
    return-void
.end method

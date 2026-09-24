.class public abstract Lol0;
.super Lic;
.source "SourceFile"


# static fields
.field public static final a:[Lfq;

.field public static final b:[Lfq;

.field public static final c:[Lfq;

.field public static final d:[Lfq;

.field public static final e:[Lfq;

.field public static final f:[[Lfq;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lfq;

    .line 4
    new-instance v2, Lol0$a;

    .line 6
    invoke-direct {v2}, Lol0$a;-><init>()V

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v1, v3

    .line 12
    sput-object v1, Lol0;->a:[Lfq;

    .line 14
    const/4 v2, 0x2

    .line 15
    new-array v4, v2, [Lfq;

    .line 17
    new-instance v5, Lol0$b;

    .line 19
    invoke-direct {v5}, Lol0$b;-><init>()V

    .line 22
    aput-object v5, v4, v3

    .line 24
    new-instance v5, Lol0$c;

    .line 26
    invoke-direct {v5}, Lol0$c;-><init>()V

    .line 29
    aput-object v5, v4, v0

    .line 31
    sput-object v4, Lol0;->b:[Lfq;

    .line 33
    const/4 v5, 0x3

    .line 34
    new-array v6, v5, [Lfq;

    .line 36
    new-instance v7, Lol0$d;

    .line 38
    invoke-direct {v7}, Lol0$d;-><init>()V

    .line 41
    aput-object v7, v6, v3

    .line 43
    new-instance v7, Lol0$e;

    .line 45
    invoke-direct {v7}, Lol0$e;-><init>()V

    .line 48
    aput-object v7, v6, v0

    .line 50
    new-instance v7, Lol0$f;

    .line 52
    invoke-direct {v7}, Lol0$f;-><init>()V

    .line 55
    aput-object v7, v6, v2

    .line 57
    sput-object v6, Lol0;->c:[Lfq;

    .line 59
    new-array v7, v0, [Lfq;

    .line 61
    new-instance v8, Lol0$g;

    .line 63
    invoke-direct {v8}, Lol0$g;-><init>()V

    .line 66
    aput-object v8, v7, v3

    .line 68
    sput-object v7, Lol0;->d:[Lfq;

    .line 70
    new-array v8, v0, [Lfq;

    .line 72
    new-instance v9, Lol0$h;

    .line 74
    invoke-direct {v9}, Lol0$h;-><init>()V

    .line 77
    aput-object v9, v8, v3

    .line 79
    sput-object v8, Lol0;->e:[Lfq;

    .line 81
    const/4 v9, 0x5

    .line 82
    new-array v9, v9, [[Lfq;

    .line 84
    aput-object v1, v9, v3

    .line 86
    aput-object v4, v9, v0

    .line 88
    aput-object v6, v9, v2

    .line 90
    aput-object v7, v9, v5

    .line 92
    const/4 v0, 0x4

    .line 93
    aput-object v8, v9, v0

    .line 95
    sput-object v9, Lol0;->f:[[Lfq;

    .line 97
    return-void
.end method

.class public abstract Ldd0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/Context;

.field public static b:Ljava/lang/String;

.field public static final c:[Lfq;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lrv;->H()Lrv;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lrv;->z()Landroid/content/Context;

    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Ldd0;->a:Landroid/content/Context;

    .line 11
    const-string v0, "SetLampStatusFuncRepository"

    .line 13
    sput-object v0, Ldd0;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x7

    .line 16
    new-array v0, v0, [Lfq;

    .line 18
    new-instance v1, Ldd0$a;

    .line 20
    invoke-direct {v1}, Ldd0$a;-><init>()V

    .line 23
    const/4 v2, 0x0

    .line 24
    aput-object v1, v0, v2

    .line 26
    new-instance v1, Ldd0$b;

    .line 28
    invoke-direct {v1}, Ldd0$b;-><init>()V

    .line 31
    const/4 v2, 0x1

    .line 32
    aput-object v1, v0, v2

    .line 34
    new-instance v1, Ldd0$c;

    .line 36
    invoke-direct {v1}, Ldd0$c;-><init>()V

    .line 39
    const/4 v2, 0x2

    .line 40
    aput-object v1, v0, v2

    .line 42
    new-instance v1, Ldd0$d;

    .line 44
    invoke-direct {v1}, Ldd0$d;-><init>()V

    .line 47
    const/4 v2, 0x3

    .line 48
    aput-object v1, v0, v2

    .line 50
    new-instance v1, Ldd0$e;

    .line 52
    invoke-direct {v1}, Ldd0$e;-><init>()V

    .line 55
    const/4 v2, 0x4

    .line 56
    aput-object v1, v0, v2

    .line 58
    new-instance v1, Ldd0$f;

    .line 60
    invoke-direct {v1}, Ldd0$f;-><init>()V

    .line 63
    const/4 v2, 0x5

    .line 64
    aput-object v1, v0, v2

    .line 66
    new-instance v1, Ldd0$g;

    .line 68
    invoke-direct {v1}, Ldd0$g;-><init>()V

    .line 71
    const/4 v2, 0x6

    .line 72
    aput-object v1, v0, v2

    .line 74
    sput-object v0, Ldd0;->c:[Lfq;

    .line 76
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Ldd0;->a:Landroid/content/Context;

    .line 3
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ldd0;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

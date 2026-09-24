.class public abstract Lbb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbb$g;
    }
.end annotation


# static fields
.field public static a:Landroid/content/Context;

.field public static final b:[Lfq;


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
    sput-object v0, Lbb;->a:Landroid/content/Context;

    .line 11
    const/4 v0, 0x6

    .line 12
    new-array v0, v0, [Lfq;

    .line 14
    new-instance v1, Lbb$a;

    .line 16
    invoke-direct {v1}, Lbb$a;-><init>()V

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v1, v0, v2

    .line 22
    new-instance v1, Lbb$b;

    .line 24
    invoke-direct {v1}, Lbb$b;-><init>()V

    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object v1, v0, v2

    .line 30
    new-instance v1, Lbb$c;

    .line 32
    invoke-direct {v1}, Lbb$c;-><init>()V

    .line 35
    const/4 v2, 0x2

    .line 36
    aput-object v1, v0, v2

    .line 38
    new-instance v1, Lbb$d;

    .line 40
    invoke-direct {v1}, Lbb$d;-><init>()V

    .line 43
    const/4 v2, 0x3

    .line 44
    aput-object v1, v0, v2

    .line 46
    new-instance v1, Lbb$e;

    .line 48
    invoke-direct {v1}, Lbb$e;-><init>()V

    .line 51
    const/4 v2, 0x4

    .line 52
    aput-object v1, v0, v2

    .line 54
    new-instance v1, Lbb$f;

    .line 56
    invoke-direct {v1}, Lbb$f;-><init>()V

    .line 59
    const/4 v2, 0x5

    .line 60
    aput-object v1, v0, v2

    .line 62
    sput-object v0, Lbb;->b:[Lfq;

    .line 64
    return-void
.end method

.method public static synthetic a()Landroid/content/Context;
    .locals 1

    .line 1
    sget-object v0, Lbb;->a:Landroid/content/Context;

    .line 3
    return-object v0
.end method

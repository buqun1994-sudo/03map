.class public abstract Lxb0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxb0$f;
    }
.end annotation


# static fields
.field public static final a:[Lqy$e;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lqy$e;

    .line 4
    new-instance v1, Lxb0$a;

    .line 6
    invoke-direct {v1}, Lxb0$a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 12
    new-instance v1, Lxb0$b;

    .line 14
    invoke-direct {v1}, Lxb0$b;-><init>()V

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 20
    new-instance v1, Lxb0$c;

    .line 22
    invoke-direct {v1}, Lxb0$c;-><init>()V

    .line 25
    const/4 v2, 0x2

    .line 26
    aput-object v1, v0, v2

    .line 28
    new-instance v1, Lxb0$d;

    .line 30
    invoke-direct {v1}, Lxb0$d;-><init>()V

    .line 33
    const/4 v2, 0x3

    .line 34
    aput-object v1, v0, v2

    .line 36
    new-instance v1, Lxb0$e;

    .line 38
    invoke-direct {v1}, Lxb0$e;-><init>()V

    .line 41
    const/4 v2, 0x4

    .line 42
    aput-object v1, v0, v2

    .line 44
    sput-object v0, Lxb0;->a:[Lqy$e;

    .line 46
    return-void
.end method

.class public abstract Lwf0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/content/Context;

.field public static final b:[Loz$d;


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
    sput-object v0, Lwf0;->a:Landroid/content/Context;

    .line 11
    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Loz$d;

    .line 14
    new-instance v1, Lwf0$a;

    .line 16
    invoke-direct {v1}, Lwf0$a;-><init>()V

    .line 19
    const/4 v2, 0x0

    .line 20
    aput-object v1, v0, v2

    .line 22
    new-instance v1, Lwf0$b;

    .line 24
    invoke-direct {v1}, Lwf0$b;-><init>()V

    .line 27
    const/4 v2, 0x1

    .line 28
    aput-object v1, v0, v2

    .line 30
    sput-object v0, Lwf0;->b:[Loz$d;

    .line 32
    return-void
.end method

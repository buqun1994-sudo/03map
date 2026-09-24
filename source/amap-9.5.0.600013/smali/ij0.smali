.class public abstract Lij0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String; = "UserModuleFuncRepository"

.field public static final b:[Lfq;

.field public static final c:[[Lfq;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Lfq;

    .line 4
    new-instance v2, Lij0$a;

    .line 6
    invoke-direct {v2}, Lij0$a;-><init>()V

    .line 9
    const/4 v3, 0x0

    .line 10
    aput-object v2, v1, v3

    .line 12
    sput-object v1, Lij0;->b:[Lfq;

    .line 14
    new-array v0, v0, [[Lfq;

    .line 16
    aput-object v1, v0, v3

    .line 18
    sput-object v0, Lij0;->c:[[Lfq;

    .line 20
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lij0;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

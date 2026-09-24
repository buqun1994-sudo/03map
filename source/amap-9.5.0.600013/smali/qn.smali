.class public abstract Lqn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lqy$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lqy$a;

    .line 4
    new-instance v1, Lqn$a;

    .line 6
    invoke-direct {v1}, Lqn$a;-><init>()V

    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v1, v0, v2

    .line 12
    new-instance v1, Lqn$b;

    .line 14
    invoke-direct {v1}, Lqn$b;-><init>()V

    .line 17
    const/4 v2, 0x1

    .line 18
    aput-object v1, v0, v2

    .line 20
    sput-object v0, Lqn;->a:[Lqy$a;

    .line 22
    return-void
.end method

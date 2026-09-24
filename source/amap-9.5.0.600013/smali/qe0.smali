.class public abstract Lqe0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static a()V
    .locals 1

    .line 1
    sget-boolean v0, Lqe0;->a:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lqe0;->a:Z

    .line 9
    new-instance v0, Lqe0$a;

    .line 11
    invoke-direct {v0}, Lqe0$a;-><init>()V

    .line 14
    invoke-static {v0}, Lbg0;->f(Ljava/lang/Runnable;)V

    .line 17
    return-void
.end method

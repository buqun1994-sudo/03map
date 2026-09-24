.class public abstract Lbj$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# static fields
.field public static final a:Ljava/util/concurrent/Executor;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lbj$e;->a:Ljava/util/concurrent/Executor;

    .line 7
    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .locals 2

    .line 1
    sget-object v0, Lbj$e;->a:Ljava/util/concurrent/Executor;

    .line 3
    new-instance v1, Lbj$e$a;

    .line 5
    invoke-direct {v1, p0}, Lbj$e$a;-><init>(Ljava/io/InputStream;)V

    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 11
    return-void
.end method

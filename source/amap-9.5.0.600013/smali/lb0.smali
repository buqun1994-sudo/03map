.class public abstract Llb0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/Queue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 6
    sput-object v0, Llb0;->a:Ljava/util/Queue;

    .line 8
    return-void
.end method

.method public static a([B)V
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 3
    array-length v0, p0

    .line 4
    if-lez v0, :cond_0

    .line 6
    sget-object v0, Llb0;->a:Ljava/util/Queue;

    .line 8
    invoke-interface {v0, p0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_0
    return-void
.end method

.method public static b()[B
    .locals 1

    .line 1
    sget-object v0, Llb0;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [B

    .line 9
    return-object v0
.end method

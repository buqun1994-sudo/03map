.class public abstract Lgw0$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "e"
.end annotation


# instance fields
.field public a:Ljava/util/LinkedList;

.field public b:I

.field public final synthetic c:Lgw0;


# direct methods
.method public constructor <init>(Lgw0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgw0$e;->c:Lgw0;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/LinkedList;

    .line 8
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    iput-object p1, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 13
    iput p2, p0, Lgw0$e;->b:I

    .line 15
    return-void
.end method


# virtual methods
.method public a(Lcom/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {p0, p1, v1}, Lgw0$e;->b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I

    .line 9
    move-result p1

    .line 10
    monitor-exit v0

    .line 11
    return p1

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    throw p1
.end method

.method public abstract b(Lcom/google/flatbuffers/FlatBufferBuilder;Ljava/util/List;)I
.end method

.method public c(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 6
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 9
    move-result v1

    .line 10
    iget v2, p0, Lgw0$e;->b:I

    .line 12
    if-le v1, v2, :cond_0

    .line 14
    iget-object v1, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object v1, p0, Lgw0$e;->a:Ljava/util/LinkedList;

    .line 22
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method

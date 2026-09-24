.class public Lnw0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:I = 0x3

.field public static c:I = 0x78


# instance fields
.field public a:Ljava/util/Queue;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/PriorityQueue;

    .line 6
    sget v1, Lnw0;->b:I

    .line 8
    invoke-direct {v0, v1}, Ljava/util/PriorityQueue;-><init>(I)V

    .line 11
    iput-object v0, p0, Lnw0;->a:Ljava/util/Queue;

    .line 13
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-object v0, p0, Lnw0;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(I)V
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lnw0;->a:Ljava/util/Queue;

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lnw0;->a:Ljava/util/Queue;

    .line 11
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lnw0;->a:Ljava/util/Queue;

    .line 19
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lop0;

    .line 25
    iget v0, v0, Lop0;->b:I

    .line 27
    sub-int v0, p1, v0

    .line 29
    sget v1, Lnw0;->c:I

    .line 31
    if-le v0, v1, :cond_0

    .line 33
    iget-object v0, p0, Lnw0;->a:Ljava/util/Queue;

    .line 35
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lnw0;->b(I)V

    .line 4
    new-instance v0, Lop0;

    .line 6
    invoke-direct {v0, p1, p2}, Lop0;-><init>(II)V

    .line 9
    iget-object p1, p0, Lnw0;->a:Ljava/util/Queue;

    .line 11
    invoke-interface {p1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 14
    iget-object p1, p0, Lnw0;->a:Ljava/util/Queue;

    .line 16
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 19
    :goto_0
    iget-object p1, p0, Lnw0;->a:Ljava/util/Queue;

    .line 21
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 24
    move-result p1

    .line 25
    sget p2, Lnw0;->b:I

    .line 27
    if-le p1, p2, :cond_0

    .line 29
    iget-object p1, p0, Lnw0;->a:Ljava/util/Queue;

    .line 31
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    return-void
.end method

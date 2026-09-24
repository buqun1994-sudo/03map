.class public Luw0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Luw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Luw0;

.field public b:Ljava/util/Iterator;

.field public c:Ljava/util/Iterator;


# direct methods
.method public constructor <init>(Luw0;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Luw0$a;->a:Luw0;

    .line 6
    if-eqz p2, :cond_0

    .line 8
    invoke-static {p1}, Luw0;->a(Luw0;)Ljava/util/LinkedList;

    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Luw0$a;->b:Ljava/util/Iterator;

    .line 18
    iget-object p1, p0, Luw0$a;->a:Luw0;

    .line 20
    invoke-static {p1}, Luw0;->d(Luw0;)Ljava/util/LinkedList;

    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Luw0$a;->c:Ljava/util/Iterator;

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Luw0;->a(Luw0;)Ljava/util/LinkedList;

    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Luw0$a;->c:Ljava/util/Iterator;

    .line 41
    iget-object p1, p0, Luw0$a;->a:Luw0;

    .line 43
    invoke-static {p1}, Luw0;->d(Luw0;)Ljava/util/LinkedList;

    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Ljava/util/LinkedList;->descendingIterator()Ljava/util/Iterator;

    .line 50
    move-result-object p1

    .line 51
    iput-object p1, p0, Luw0$a;->b:Ljava/util/Iterator;

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lbx0;
    .locals 1

    .line 1
    iget-object v0, p0, Luw0$a;->b:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Luw0$a;->b:Ljava/util/Iterator;

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lbx0;

    .line 17
    return-object v0

    .line 18
    :cond_0
    iget-object v0, p0, Luw0$a;->c:Ljava/util/Iterator;

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Luw0$a;->c:Ljava/util/Iterator;

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lbx0;

    .line 34
    return-object v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Luw0$a;->b:Ljava/util/Iterator;

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Luw0$a;->c:Ljava/util/Iterator;

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Luw0$a;->a()Lbx0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 6
    throw v0
.end method

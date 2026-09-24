.class public Lc6$a;
.super Lsz;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc6;->d()Lsz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic d:Lc6;


# direct methods
.method public constructor <init>(Lc6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc6$a;->d:Lc6;

    .line 3
    invoke-direct {p0}, Lsz;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc6$a;->d:Lc6;

    .line 3
    invoke-virtual {v0}, Lc6;->clear()V

    .line 6
    return-void
.end method

.method public b(II)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p2, p0, Lc6$a;->d:Lc6;

    .line 3
    iget-object p2, p2, Lc6;->b:[Ljava/lang/Object;

    .line 5
    aget-object p1, p2, p1

    .line 7
    return-object p1
.end method

.method public c()Ljava/util/Map;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string v1, "not a map"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc6$a;->d:Lc6;

    .line 3
    iget v0, v0, Lc6;->c:I

    .line 5
    return v0
.end method

.method public e(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc6$a;->d:Lc6;

    .line 3
    invoke-virtual {v0, p1}, Lc6;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lc6$a;->d:Lc6;

    .line 3
    invoke-virtual {v0, p1}, Lc6;->indexOf(Ljava/lang/Object;)I

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public g(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lc6$a;->d:Lc6;

    .line 3
    invoke-virtual {p2, p1}, Lc6;->add(Ljava/lang/Object;)Z

    .line 6
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc6$a;->d:Lc6;

    .line 3
    invoke-virtual {v0, p1}, Lc6;->g(I)Ljava/lang/Object;

    .line 6
    return-void
.end method

.method public i(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 3
    const-string p2, "not a map"

    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 8
    throw p1
.end method

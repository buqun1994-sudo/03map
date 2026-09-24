.class public abstract Lwl0;
.super Llg;
.source "SourceFile"


# instance fields
.field public D0:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Llg;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public Z0()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public a(Llg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Llg;->I()Llg;

    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Llg;->I()Llg;

    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lwl0;

    .line 18
    invoke-virtual {v0, p1}, Lwl0;->b1(Llg;)V

    .line 21
    :cond_0
    invoke-virtual {p1, p0}, Llg;->L0(Llg;)V

    .line 24
    return-void
.end method

.method public abstract a1()V
.end method

.method public b1(Llg;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    invoke-virtual {p1}, Llg;->h0()V

    .line 9
    return-void
.end method

.method public c1()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    return-void
.end method

.method public h0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    invoke-super {p0}, Llg;->h0()V

    .line 9
    return-void
.end method

.method public j0(Lud;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Llg;->j0(Lud;)V

    .line 4
    iget-object v0, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lwl0;->D0:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Llg;

    .line 21
    invoke-virtual {v2, p1}, Llg;->j0(Lud;)V

    .line 24
    add-int/lit8 v1, v1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.class public Ldq0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/Map;

.field public b:Lyp0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lsp0;)Lwq0;
    .locals 3

    .line 1
    new-instance v0, Lrp0;

    .line 3
    invoke-direct {v0}, Lrp0;-><init>()V

    .line 6
    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p1}, Lsq0;->c()Lvq0;

    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Ldq0;->a:Ljava/util/Map;

    .line 17
    invoke-virtual {p1}, Lsq0;->c()Lvq0;

    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Leq0;

    .line 27
    if-nez v1, :cond_1

    .line 29
    sget-object p1, Lzp0;->t:Lzp0;

    .line 31
    invoke-virtual {v0, p1}, Laq0;->a(Lzp0;)V

    .line 34
    return-object v0

    .line 35
    :cond_1
    iget-object v0, p0, Ldq0;->b:Lyp0;

    .line 37
    invoke-virtual {v1, v0}, Lpu0;->d(Lyp0;)V

    .line 40
    invoke-interface {v1, p1}, Liw0;->a(Lqw0;)Lxv0;

    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lrp0;

    .line 46
    iget-object v0, p0, Ldq0;->b:Lyp0;

    .line 48
    invoke-virtual {p1, v0}, Lwq0;->b(Lyp0;)V

    .line 51
    return-object p1

    .line 52
    :cond_2
    :goto_0
    sget-object p1, Lzp0;->u:Lzp0;

    .line 54
    invoke-virtual {v0, p1}, Laq0;->a(Lzp0;)V

    .line 57
    return-object v0
.end method

.method public b(Lyp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq0;->b:Lyp0;

    .line 3
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ldq0;->a:Ljava/util/Map;

    .line 3
    return-void
.end method

.class public Lyq0;
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
.method public a(Lnu0;)Lvp0;
    .locals 3

    .line 1
    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lnu0;->b()Lvq0;

    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lyq0;->a:Ljava/util/Map;

    .line 12
    invoke-virtual {p1}, Lnu0;->b()Lvq0;

    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lzq0;

    .line 22
    iget-object v1, p0, Lyq0;->b:Lyp0;

    .line 24
    invoke-virtual {v0, v1}, Lpu0;->d(Lyp0;)V

    .line 27
    invoke-interface {v0, p1}, Liw0;->b(Lxv0;)Lqw0;

    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lvp0;

    .line 33
    invoke-virtual {v0}, Lvp0;->c()Lvq0;

    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {v0}, Lvp0;->c()Lvq0;

    .line 42
    move-result-object v1

    .line 43
    sget-object v2, Lvq0;->d:Lvq0;

    .line 45
    if-ne v1, v2, :cond_2

    .line 47
    :cond_1
    invoke-virtual {p1}, Lnu0;->b()Lvq0;

    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v0, p1}, Lsq0;->b(Lvq0;)V

    .line 54
    :cond_2
    return-object v0

    .line 55
    :cond_3
    :goto_0
    invoke-static {}, Lvp0$a;->h()Lvp0$a;

    .line 58
    move-result-object p1

    .line 59
    sget-object v0, Lzp0;->f:Lzp0;

    .line 61
    invoke-virtual {p1, v0}, Lsq0;->a(Lzp0;)V

    .line 64
    return-object p1
.end method

.method public b(Lyp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyq0;->b:Lyp0;

    .line 3
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lyq0;->a:Ljava/util/Map;

    .line 3
    return-void
.end method

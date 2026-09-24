.class public Ltp0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:S

.field public B:Ljava/lang/Byte;

.field public C:Ljava/util/List;

.field public D:[B

.field public a:Lvq0;

.field public b:Lzp0;

.field public c:Lup0$a;

.field public d:Lsu0;

.field public e:Lsw0;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Lvw0;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;

.field public n:Lku0;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Z

.field public t:[B

.field public u:[B

.field public v:Z

.field public w:Z

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Ltp0;->a:Lvq0;

    .line 7
    sget-object v1, Lzp0;->d:Lzp0;

    .line 9
    iput-object v1, p0, Ltp0;->b:Lzp0;

    .line 11
    new-instance v1, Lup0$a;

    .line 13
    invoke-direct {v1}, Lup0$a;-><init>()V

    .line 16
    iput-object v1, p0, Ltp0;->c:Lup0$a;

    .line 18
    iput-object v0, p0, Ltp0;->d:Lsu0;

    .line 20
    new-instance v1, Lsw0;

    .line 22
    invoke-direct {v1}, Lsw0;-><init>()V

    .line 25
    iput-object v1, p0, Ltp0;->e:Lsw0;

    .line 27
    iput-object v0, p0, Ltp0;->f:Ljava/lang/String;

    .line 29
    const/4 v1, 0x0

    .line 30
    iput-boolean v1, p0, Ltp0;->g:Z

    .line 32
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Ltp0;->h:Z

    .line 35
    iput-boolean v2, p0, Ltp0;->i:Z

    .line 37
    iput-boolean v2, p0, Ltp0;->j:Z

    .line 39
    iput-object v0, p0, Ltp0;->k:Lvw0;

    .line 41
    iput-object v0, p0, Ltp0;->l:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Ltp0;->m:Ljava/util/List;

    .line 45
    iput-object v0, p0, Ltp0;->n:Lku0;

    .line 47
    iput-object v0, p0, Ltp0;->o:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Ltp0;->p:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Ltp0;->q:Ljava/lang/String;

    .line 53
    iput-object v0, p0, Ltp0;->r:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Ltp0;->s:Z

    .line 57
    iput-object v0, p0, Ltp0;->t:[B

    .line 59
    iput-object v0, p0, Ltp0;->u:[B

    .line 61
    iput-boolean v1, p0, Ltp0;->v:Z

    .line 63
    iput-boolean v1, p0, Ltp0;->w:Z

    .line 65
    const-string v1, ""

    .line 67
    iput-object v1, p0, Ltp0;->x:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Ltp0;->y:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Ltp0;->z:Ljava/lang/String;

    .line 73
    const/4 v1, -0x1

    .line 74
    iput-short v1, p0, Ltp0;->A:S

    .line 76
    iput-object v0, p0, Ltp0;->B:Ljava/lang/Byte;

    .line 78
    iput-object v0, p0, Ltp0;->C:Ljava/util/List;

    .line 80
    iput-object v0, p0, Ltp0;->D:[B

    .line 82
    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->r:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public B()S
    .locals 1

    .line 1
    iget-short v0, p0, Ltp0;->A:S

    .line 3
    return v0
.end method

.method public C()Ljava/lang/Byte;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->B:Ljava/lang/Byte;

    .line 3
    return-object v0
.end method

.method public D()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->C:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public E()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->D:[B

    .line 3
    return-object v0
.end method

.method public a()Lzp0;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->b:Lzp0;

    .line 3
    return-object v0
.end method

.method public b(Lup0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->c:Lup0$a;

    .line 3
    return-void
.end method

.method public c(Lzp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->b:Lzp0;

    .line 3
    return-void
.end method

.method public d(Lvq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->a:Lvq0;

    .line 3
    return-void
.end method

.method public e(Lvw0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->k:Lvw0;

    .line 3
    return-void
.end method

.method public f(Ljava/lang/Byte;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->B:Ljava/lang/Byte;

    .line 3
    return-void
.end method

.method public g(Ljava/lang/Short;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->c:Lup0$a;

    .line 3
    invoke-virtual {v0, p1}, Lup0$a;->c(Ljava/lang/Short;)V

    .line 6
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->l:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->m:Ljava/util/List;

    .line 3
    return-void
.end method

.method public j(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Ltp0;->A:S

    .line 3
    return-void
.end method

.method public k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltp0;->h:Z

    .line 3
    return-void
.end method

.method public l([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->t:[B

    .line 3
    return-void
.end method

.method public m()Lup0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->c:Lup0$a;

    .line 3
    return-object v0
.end method

.method public n(Ljava/lang/Byte;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->c:Lup0$a;

    .line 3
    invoke-virtual {v0, p1}, Lup0$a;->b(Ljava/lang/Byte;)V

    .line 6
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->q:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->C:Ljava/util/List;

    .line 3
    return-void
.end method

.method public q([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->D:[B

    .line 3
    return-void
.end method

.method public r(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ltp0;->r:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public s()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltp0;->v:Z

    .line 3
    return v0
.end method

.method public t()[B
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->t:[B

    .line 3
    return-object v0
.end method

.method public u()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltp0;->h:Z

    .line 3
    return v0
.end method

.method public v()Lvw0;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->k:Lvw0;

    .line 3
    return-object v0
.end method

.method public w()Ljava/util/List;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->m:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public x()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->l:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->p:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ltp0;->q:Ljava/lang/String;

    .line 3
    return-object v0
.end method

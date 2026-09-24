.class public abstract Lsp0;
.super Lsq0;
.source "SourceFile"


# instance fields
.field public e:Lrp0$a;

.field public f:Lrp0$b;

.field public g:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsq0;-><init>()V

    .line 4
    new-instance v0, Lrp0$a;

    .line 6
    invoke-direct {v0}, Lrp0$a;-><init>()V

    .line 9
    iput-object v0, p0, Lsp0;->e:Lrp0$a;

    .line 11
    new-instance v0, Lrp0$b;

    .line 13
    invoke-direct {v0}, Lrp0$b;-><init>()V

    .line 16
    iput-object v0, p0, Lsp0;->f:Lrp0$b;

    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lsp0;->g:[B

    .line 21
    return-void
.end method


# virtual methods
.method public e(Lrp0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsp0;->e:Lrp0$a;

    .line 3
    return-void
.end method

.method public f(Lrp0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsp0;->f:Lrp0$b;

    .line 3
    return-void
.end method

.method public g()Lrp0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lsp0;->e:Lrp0$a;

    .line 3
    return-object v0
.end method

.method public h()Lrp0$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lsp0;->f:Lrp0$b;

    .line 3
    invoke-virtual {p0}, Lsq0;->c()Lvq0;

    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lrp0$b;->b(Lvq0;)Lrp0$b;

    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

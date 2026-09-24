.class public Liq0;
.super Lvp0;
.source "SourceFile"


# instance fields
.field public f:Lbr0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lvp0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public c()Lvq0;
    .locals 1

    .line 1
    sget-object v0, Lvq0;->x:Lvq0;

    .line 3
    return-object v0
.end method

.method public e()Lzq0;
    .locals 1

    .line 1
    invoke-static {}, Lhq0;->k()Lhq0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(Lbr0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Liq0;->f:Lbr0;

    .line 3
    return-void
.end method

.method public i()Lbr0;
    .locals 1

    .line 1
    iget-object v0, p0, Liq0;->f:Lbr0;

    .line 3
    return-object v0
.end method

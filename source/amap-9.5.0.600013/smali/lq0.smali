.class public Llq0;
.super Lvp0;
.source "SourceFile"


# instance fields
.field public f:Ljq0;


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
    sget-object v0, Lvq0;->y:Lvq0;

    .line 3
    return-object v0
.end method

.method public e()Lzq0;
    .locals 1

    .line 1
    invoke-static {}, Lkq0;->k()Lkq0;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public h(Ljq0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Llq0;->f:Ljq0;

    .line 3
    return-void
.end method

.method public i()Ljq0;
    .locals 1

    .line 1
    iget-object v0, p0, Llq0;->f:Ljq0;

    .line 3
    return-object v0
.end method

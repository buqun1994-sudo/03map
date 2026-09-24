.class public Lep0;
.super Lsp0;
.source "SourceFile"


# instance fields
.field public h:Lcp0;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsp0;-><init>()V

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

.method public i()Lcp0;
    .locals 1

    .line 1
    iget-object v0, p0, Lep0;->h:Lcp0;

    .line 3
    return-object v0
.end method

.method public j(Lcp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lep0;->h:Lcp0;

    .line 3
    return-void
.end method

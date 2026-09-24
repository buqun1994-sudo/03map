.class public Lhp0;
.super Lsp0;
.source "SourceFile"


# instance fields
.field public h:Lfp0;


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
    sget-object v0, Lvq0;->y:Lvq0;

    .line 3
    return-object v0
.end method

.method public i()Lfp0;
    .locals 1

    .line 1
    iget-object v0, p0, Lhp0;->h:Lfp0;

    .line 3
    return-object v0
.end method

.method public j(Lfp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhp0;->h:Lfp0;

    .line 3
    return-void
.end method

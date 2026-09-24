.class public abstract Lvp0;
.super Lsq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp0$a;
    }
.end annotation


# instance fields
.field public e:Lup0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsq0;-><init>()V

    .line 4
    new-instance v0, Lup0$a;

    .line 6
    invoke-direct {v0}, Lup0$a;-><init>()V

    .line 9
    iput-object v0, p0, Lvp0;->e:Lup0$a;

    .line 11
    return-void
.end method


# virtual methods
.method public abstract c()Lvq0;
.end method

.method public abstract e()Lzq0;
.end method

.method public f()Lup0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lvp0;->e:Lup0$a;

    .line 3
    return-object v0
.end method

.method public g()Ltp0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lvp0;->e()Lzq0;

    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lzq0;->e(Lvp0;)Ltp0;

    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.class public Lup0;
.super Lnu0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup0$a;
    }
.end annotation


# instance fields
.field public c:[B

.field public d:Ljava/lang/String;

.field public e:Lup0$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnu0;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lup0;->c:[B

    .line 7
    iput-object v0, p0, Lup0;->d:Ljava/lang/String;

    .line 9
    new-instance v0, Lup0$a;

    .line 11
    invoke-direct {v0}, Lup0$a;-><init>()V

    .line 14
    iput-object v0, p0, Lup0;->e:Lup0$a;

    .line 16
    return-void
.end method


# virtual methods
.method public b()Lvq0;
    .locals 1

    .line 1
    iget-object v0, p0, Lnu0;->b:Lvq0;

    .line 3
    return-object v0
.end method

.method public d([B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lup0;->c:[B

    .line 3
    return-void
.end method

.method public e()Lup0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lup0;->e:Lup0$a;

    .line 3
    return-object v0
.end method

.method public f()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lup0;->c:[B

    .line 3
    return-object v0
.end method

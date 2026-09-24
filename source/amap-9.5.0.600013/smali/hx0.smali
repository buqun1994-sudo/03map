.class public Lhx0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhx0$b;,
        Lhx0$a;,
        Lhx0$c;,
        Lhx0$d;,
        Lhx0$e;
    }
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:Ljava/lang/String;

.field public e:Lhx0$e;

.field public f:Lhx0$d;

.field public g:Lhx0$c;

.field public h:Lhx0$a;

.field public i:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lhx0;->a:D

    .line 3
    return-wide v0
.end method

.method public b(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lhx0;->a:D

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhx0;->i:I

    .line 3
    return-void
.end method

.method public d(Lhx0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0;->h:Lhx0$a;

    .line 3
    return-void
.end method

.method public e(Lhx0$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0;->g:Lhx0$c;

    .line 3
    return-void
.end method

.method public f(Lhx0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0;->f:Lhx0$d;

    .line 3
    return-void
.end method

.method public g(Lhx0$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0;->e:Lhx0$e;

    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0;->d:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public i()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lhx0;->b:D

    .line 3
    return-wide v0
.end method

.method public j(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lhx0;->b:D

    .line 3
    return-void
.end method

.method public k()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lhx0;->c:D

    .line 3
    return-wide v0
.end method

.method public l(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lhx0;->c:D

    .line 3
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0;->d:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public n()Lhx0$e;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0;->e:Lhx0$e;

    .line 3
    return-object v0
.end method

.method public o()Lhx0$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0;->f:Lhx0$d;

    .line 3
    return-object v0
.end method

.method public p()Lhx0$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0;->g:Lhx0$c;

    .line 3
    return-object v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lhx0;->i:I

    .line 3
    return v0
.end method

.method public r()Lhx0$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0;->h:Lhx0$a;

    .line 3
    return-object v0
.end method

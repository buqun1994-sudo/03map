.class public abstract Lhx0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:D

.field public d:D

.field public e:Ljava/lang/String;

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0$b;->a:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public b(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lhx0$b;->c:D

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 1
    iput p1, p0, Lhx0$b;->f:I

    .line 3
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0$b;->a:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0$b;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public f(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lhx0$b;->d:D

    .line 3
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0$b;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public h()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lhx0$b;->c:D

    .line 3
    return-wide v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhx0$b;->e:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public j()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lhx0$b;->d:D

    .line 3
    return-wide v0
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhx0$b;->e:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lhx0$b;->f:I

    .line 3
    return v0
.end method

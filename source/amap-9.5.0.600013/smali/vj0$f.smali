.class public abstract Lvj0$f;
.super Lvj0$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvj0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "f"
.end annotation


# instance fields
.field public a:[Lq50$b;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lvj0$e;-><init>(Lvj0$a;)V

    .line 2
    iput-object v0, p0, Lvj0$f;->a:[Lq50$b;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lvj0$f;->c:I

    return-void
.end method

.method public constructor <init>(Lvj0$f;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0}, Lvj0$e;-><init>(Lvj0$a;)V

    .line 5
    iput-object v0, p0, Lvj0$f;->a:[Lq50$b;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lvj0$f;->c:I

    .line 7
    iget-object v0, p1, Lvj0$f;->b:Ljava/lang/String;

    iput-object v0, p0, Lvj0$f;->b:Ljava/lang/String;

    .line 8
    iget v0, p1, Lvj0$f;->d:I

    iput v0, p0, Lvj0$f;->d:I

    .line 9
    iget-object p1, p1, Lvj0$f;->a:[Lq50$b;

    invoke-static {p1}, Lq50;->f([Lq50$b;)[Lq50$b;

    move-result-object p1

    iput-object p1, p0, Lvj0$f;->a:[Lq50$b;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/graphics/Path;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lvj0$f;->a:[Lq50$b;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-static {v0, p1}, Lq50$b;->e([Lq50$b;Landroid/graphics/Path;)V

    .line 11
    :cond_0
    return-void
.end method

.method public getPathData()[Lq50$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lvj0$f;->a:[Lq50$b;

    .line 3
    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lvj0$f;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setPathData([Lq50$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lvj0$f;->a:[Lq50$b;

    .line 3
    invoke-static {v0, p1}, Lq50;->b([Lq50$b;[Lq50$b;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    invoke-static {p1}, Lq50;->f([Lq50$b;)[Lq50$b;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lvj0$f;->a:[Lq50$b;

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lvj0$f;->a:[Lq50$b;

    .line 18
    invoke-static {v0, p1}, Lq50;->j([Lq50$b;[Lq50$b;)V

    .line 21
    :goto_0
    return-void
.end method

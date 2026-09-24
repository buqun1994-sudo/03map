.class public final Lfn0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Lfn0$f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 3
    new-instance v0, Lfn0$e;

    invoke-direct {v0}, Lfn0$e;-><init>()V

    iput-object v0, p0, Lfn0$b;->a:Lfn0$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    new-instance v0, Lfn0$d;

    invoke-direct {v0}, Lfn0$d;-><init>()V

    iput-object v0, p0, Lfn0$b;->a:Lfn0$f;

    goto :goto_0

    .line 5
    :cond_1
    new-instance v0, Lfn0$c;

    invoke-direct {v0}, Lfn0$c;-><init>()V

    iput-object v0, p0, Lfn0$b;->a:Lfn0$f;

    :goto_0
    return-void
.end method

.method public constructor <init>(Lfn0;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 8
    new-instance v0, Lfn0$e;

    invoke-direct {v0, p1}, Lfn0$e;-><init>(Lfn0;)V

    iput-object v0, p0, Lfn0$b;->a:Lfn0$f;

    goto :goto_0

    :cond_0
    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 9
    new-instance v0, Lfn0$d;

    invoke-direct {v0, p1}, Lfn0$d;-><init>(Lfn0;)V

    iput-object v0, p0, Lfn0$b;->a:Lfn0$f;

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Lfn0$c;

    invoke-direct {v0, p1}, Lfn0$c;-><init>(Lfn0;)V

    iput-object v0, p0, Lfn0$b;->a:Lfn0$f;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$b;->a:Lfn0$f;

    .line 3
    invoke-virtual {v0}, Lfn0$f;->b()Lfn0;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public b(Lzu;)Lfn0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$b;->a:Lfn0$f;

    .line 3
    invoke-virtual {v0, p1}, Lfn0$f;->d(Lzu;)V

    .line 6
    return-object p0
.end method

.method public c(Lzu;)Lfn0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$b;->a:Lfn0$f;

    .line 3
    invoke-virtual {v0, p1}, Lfn0$f;->f(Lzu;)V

    .line 6
    return-object p0
.end method

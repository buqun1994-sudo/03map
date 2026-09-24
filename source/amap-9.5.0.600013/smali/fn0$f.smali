.class public abstract Lfn0$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Lfn0;

.field public b:[Lzu;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lfn0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfn0;-><init>(Lfn0;)V

    invoke-direct {p0, v0}, Lfn0$f;-><init>(Lfn0;)V

    return-void
.end method

.method public constructor <init>(Lfn0;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lfn0$f;->a:Lfn0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lfn0$f;->b:[Lzu;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Lfn0$m;->a(I)I

    .line 9
    move-result v2

    .line 10
    aget-object v0, v0, v2

    .line 12
    iget-object v2, p0, Lfn0$f;->b:[Lzu;

    .line 14
    const/4 v3, 0x2

    .line 15
    invoke-static {v3}, Lfn0$m;->a(I)I

    .line 18
    move-result v4

    .line 19
    aget-object v2, v2, v4

    .line 21
    if-nez v2, :cond_0

    .line 23
    iget-object v2, p0, Lfn0$f;->a:Lfn0;

    .line 25
    invoke-virtual {v2, v3}, Lfn0;->f(I)Lzu;

    .line 28
    move-result-object v2

    .line 29
    :cond_0
    if-nez v0, :cond_1

    .line 31
    iget-object v0, p0, Lfn0$f;->a:Lfn0;

    .line 33
    invoke-virtual {v0, v1}, Lfn0;->f(I)Lzu;

    .line 36
    move-result-object v0

    .line 37
    :cond_1
    invoke-static {v0, v2}, Lzu;->a(Lzu;Lzu;)Lzu;

    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {p0, v0}, Lfn0$f;->f(Lzu;)V

    .line 44
    iget-object v0, p0, Lfn0$f;->b:[Lzu;

    .line 46
    const/16 v1, 0x10

    .line 48
    invoke-static {v1}, Lfn0$m;->a(I)I

    .line 51
    move-result v1

    .line 52
    aget-object v0, v0, v1

    .line 54
    if-eqz v0, :cond_2

    .line 56
    invoke-virtual {p0, v0}, Lfn0$f;->e(Lzu;)V

    .line 59
    :cond_2
    iget-object v0, p0, Lfn0$f;->b:[Lzu;

    .line 61
    const/16 v1, 0x20

    .line 63
    invoke-static {v1}, Lfn0$m;->a(I)I

    .line 66
    move-result v1

    .line 67
    aget-object v0, v0, v1

    .line 69
    if-eqz v0, :cond_3

    .line 71
    invoke-virtual {p0, v0}, Lfn0$f;->c(Lzu;)V

    .line 74
    :cond_3
    iget-object v0, p0, Lfn0$f;->b:[Lzu;

    .line 76
    const/16 v1, 0x40

    .line 78
    invoke-static {v1}, Lfn0$m;->a(I)I

    .line 81
    move-result v1

    .line 82
    aget-object v0, v0, v1

    .line 84
    if-eqz v0, :cond_4

    .line 86
    invoke-virtual {p0, v0}, Lfn0$f;->g(Lzu;)V

    .line 89
    :cond_4
    return-void
.end method

.method public abstract b()Lfn0;
.end method

.method public c(Lzu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract d(Lzu;)V
.end method

.method public e(Lzu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract f(Lzu;)V
.end method

.method public g(Lzu;)V
    .locals 0

    .line 1
    return-void
.end method

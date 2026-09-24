.class public Lfn0$l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfn0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "l"
.end annotation


# static fields
.field public static final b:Lfn0;


# instance fields
.field public final a:Lfn0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfn0$b;

    .line 3
    invoke-direct {v0}, Lfn0$b;-><init>()V

    .line 6
    invoke-virtual {v0}, Lfn0$b;->a()Lfn0;

    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lfn0;->a()Lfn0;

    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lfn0;->b()Lfn0;

    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lfn0;->c()Lfn0;

    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lfn0$l;->b:Lfn0;

    .line 24
    return-void
.end method

.method public constructor <init>(Lfn0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lfn0$l;->a:Lfn0;

    .line 6
    return-void
.end method


# virtual methods
.method public a()Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$l;->a:Lfn0;

    .line 3
    return-object v0
.end method

.method public b()Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$l;->a:Lfn0;

    .line 3
    return-object v0
.end method

.method public c()Lfn0;
    .locals 1

    .line 1
    iget-object v0, p0, Lfn0$l;->a:Lfn0;

    .line 3
    return-object v0
.end method

.method public d(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Lfn0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lfn0$l;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lfn0$l;

    .line 13
    invoke-virtual {p0}, Lfn0$l;->p()Z

    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Lfn0$l;->p()Z

    .line 20
    move-result v3

    .line 21
    if-ne v1, v3, :cond_2

    .line 23
    invoke-virtual {p0}, Lfn0$l;->o()Z

    .line 26
    move-result v1

    .line 27
    invoke-virtual {p1}, Lfn0$l;->o()Z

    .line 30
    move-result v3

    .line 31
    if-ne v1, v3, :cond_2

    .line 33
    invoke-virtual {p0}, Lfn0$l;->l()Lzu;

    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {p1}, Lfn0$l;->l()Lzu;

    .line 40
    move-result-object v3

    .line 41
    invoke-static {v1, v3}, Lt40;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 47
    invoke-virtual {p0}, Lfn0$l;->j()Lzu;

    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lfn0$l;->j()Lzu;

    .line 54
    move-result-object v3

    .line 55
    invoke-static {v1, v3}, Lt40;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p0}, Lfn0$l;->f()Lvj;

    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1}, Lfn0$l;->f()Lvj;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {v1, p1}, Lt40;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0
.end method

.method public f()Lvj;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g(I)Lzu;
    .locals 0

    .line 1
    sget-object p1, Lzu;->e:Lzu;

    .line 3
    return-object p1
.end method

.method public h(I)Lzu;
    .locals 1

    .line 1
    and-int/lit8 p1, p1, 0x8

    .line 3
    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lzu;->e:Lzu;

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string v0, "Unable to query the maximum insets for IME"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Lfn0$l;->p()Z

    .line 7
    move-result v1

    .line 8
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    aput-object v1, v0, v2

    .line 15
    invoke-virtual {p0}, Lfn0$l;->o()Z

    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    move-result-object v1

    .line 23
    const/4 v2, 0x1

    .line 24
    aput-object v1, v0, v2

    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {p0}, Lfn0$l;->l()Lzu;

    .line 30
    move-result-object v2

    .line 31
    aput-object v2, v0, v1

    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-virtual {p0}, Lfn0$l;->j()Lzu;

    .line 37
    move-result-object v2

    .line 38
    aput-object v2, v0, v1

    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-virtual {p0}, Lfn0$l;->f()Lvj;

    .line 44
    move-result-object v2

    .line 45
    aput-object v2, v0, v1

    .line 47
    invoke-static {v0}, Lt40;->b([Ljava/lang/Object;)I

    .line 50
    move-result v0

    .line 51
    return v0
.end method

.method public i()Lzu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfn0$l;->l()Lzu;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public j()Lzu;
    .locals 1

    .line 1
    sget-object v0, Lzu;->e:Lzu;

    .line 3
    return-object v0
.end method

.method public k()Lzu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfn0$l;->l()Lzu;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public l()Lzu;
    .locals 1

    .line 1
    sget-object v0, Lzu;->e:Lzu;

    .line 3
    return-object v0
.end method

.method public m()Lzu;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfn0$l;->l()Lzu;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public n(IIII)Lfn0;
    .locals 0

    .line 1
    sget-object p1, Lfn0$l;->b:Lfn0;

    .line 3
    return-object p1
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public q([Lzu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public r(Lzu;)V
    .locals 0

    .line 1
    return-void
.end method

.method public s(Lfn0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public t(Lzu;)V
    .locals 0

    .line 1
    return-void
.end method

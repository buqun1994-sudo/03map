.class public Lzf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static i:Ljava/util/List;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:F

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sput-object v0, Lzf;->i:Ljava/util/List;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
.end method

.method public static d()Lzf;
    .locals 2

    .line 1
    sget-object v0, Lzf;->i:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    new-instance v0, Lzf;

    .line 11
    invoke-direct {v0}, Lzf;-><init>()V

    .line 14
    return-object v0

    .line 15
    :cond_0
    sget-object v0, Lzf;->i:Ljava/util/List;

    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 20
    move-result v1

    .line 21
    add-int/lit8 v1, v1, -0x1

    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lzf;

    .line 29
    return-object v0
.end method


# virtual methods
.method public a(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->a:I

    .line 3
    return-object p0
.end method

.method public b(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->h:I

    .line 3
    return-object p0
.end method

.method public c(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->e:I

    .line 3
    return-object p0
.end method

.method public e(F)Lzf;
    .locals 5

    .line 1
    float-to-double v0, p1

    .line 2
    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 7
    cmpg-double v4, v0, v2

    .line 9
    if-gez v4, :cond_0

    .line 11
    const p1, 0x3c23d70a    # 0.01f

    .line 14
    :cond_0
    iput p1, p0, Lzf;->d:F

    .line 16
    return-object p0
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lzf;->i:Ljava/util/List;

    .line 3
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lzf;->a:I

    .line 13
    iput v0, p0, Lzf;->b:I

    .line 15
    iput v0, p0, Lzf;->c:I

    .line 17
    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lzf;->d:F

    .line 20
    iput v0, p0, Lzf;->e:I

    .line 22
    iput v0, p0, Lzf;->f:I

    .line 24
    iput v0, p0, Lzf;->g:I

    .line 26
    iput v0, p0, Lzf;->h:I

    .line 28
    sget-object v0, Lzf;->i:Ljava/util/List;

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    move-result v0

    .line 34
    const/16 v1, 0x32

    .line 36
    if-ge v0, v1, :cond_1

    .line 38
    sget-object v0, Lzf;->i:Ljava/util/List;

    .line 40
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    return-void
.end method

.method public g(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->g:I

    .line 3
    return-object p0
.end method

.method public h(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->f:I

    .line 3
    return-object p0
.end method

.method public i(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->b:I

    .line 3
    return-object p0
.end method

.method public j(I)Lzf;
    .locals 0

    .line 1
    iput p1, p0, Lzf;->c:I

    .line 3
    return-object p0
.end method

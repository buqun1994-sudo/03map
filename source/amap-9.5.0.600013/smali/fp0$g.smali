.class public Lfp0$g;
.super Lxq0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# instance fields
.field public a:[B

.field public b:[B

.field public c:[B

.field public d:Ljava/util/List;

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lxq0;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [B

    .line 7
    iput-object v1, p0, Lfp0$g;->a:[B

    .line 9
    new-array v1, v0, [B

    .line 11
    iput-object v1, p0, Lfp0$g;->b:[B

    .line 13
    new-array v0, v0, [B

    .line 15
    iput-object v0, p0, Lfp0$g;->c:[B

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iput-object v0, p0, Lfp0$g;->d:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    iput-object v0, p0, Lfp0$g;->e:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object v0, p0, Lfp0$g;->f:Ljava/util/List;

    .line 38
    return-void
.end method


# virtual methods
.method public f(Lou0;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lfp0$g;->a:[B

    .line 3
    invoke-static {v0}, Lbp0;->g([B)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lfp0$g;->a:[B

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v1, v0}, Lou0;->g(I[B)V

    .line 15
    :cond_0
    iget-object v0, p0, Lfp0$g;->b:[B

    .line 17
    invoke-static {v0}, Lbp0;->g([B)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x2

    .line 24
    iget-object v1, p0, Lfp0$g;->b:[B

    .line 26
    invoke-virtual {p1, v0, v1}, Lou0;->g(I[B)V

    .line 29
    :cond_1
    iget-object v0, p0, Lfp0$g;->c:[B

    .line 31
    invoke-static {v0}, Lbp0;->g([B)Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 37
    const/4 v0, 0x3

    .line 38
    iget-object v1, p0, Lfp0$g;->c:[B

    .line 40
    invoke-virtual {p1, v0, v1}, Lou0;->g(I[B)V

    .line 43
    :cond_2
    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x0

    .line 45
    :goto_0
    iget-object v2, p0, Lfp0$g;->d:Ljava/util/List;

    .line 47
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 50
    move-result v2

    .line 51
    if-ge v1, v2, :cond_3

    .line 53
    iget-object v2, p0, Lfp0$g;->d:Ljava/util/List;

    .line 55
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Lxq0;

    .line 61
    const/4 v3, 0x4

    .line 62
    invoke-virtual {p1, v3, v2}, Lou0;->e(ILxq0;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 67
    goto :goto_0

    .line 68
    :cond_3
    const/4 v1, 0x0

    .line 69
    :goto_1
    iget-object v2, p0, Lfp0$g;->e:Ljava/util/List;

    .line 71
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 74
    move-result v2

    .line 75
    if-ge v1, v2, :cond_4

    .line 77
    iget-object v2, p0, Lfp0$g;->e:Ljava/util/List;

    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lxq0;

    .line 85
    const/4 v3, 0x5

    .line 86
    invoke-virtual {p1, v3, v2}, Lou0;->e(ILxq0;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    :goto_2
    iget-object v1, p0, Lfp0$g;->f:Ljava/util/List;

    .line 94
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 97
    move-result v1

    .line 98
    if-ge v0, v1, :cond_5

    .line 100
    iget-object v1, p0, Lfp0$g;->f:Ljava/util/List;

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    move-result-object v1

    .line 106
    check-cast v1, Lxq0;

    .line 108
    const/4 v2, 0x6

    .line 109
    invoke-virtual {p1, v2, v1}, Lou0;->e(ILxq0;)V

    .line 112
    add-int/lit8 v0, v0, 0x1

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    return-void
.end method

.class public Lbr0$a;
.super Lzv0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbr0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:J

.field public h:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzv0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public d(ILru0;)Z
    .locals 2

    .line 1
    const/16 v0, 0x8

    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq p1, v0, :cond_7

    .line 6
    const/16 v0, 0x10

    .line 8
    if-eq p1, v0, :cond_6

    .line 10
    const/16 v0, 0x18

    .line 12
    if-eq p1, v0, :cond_5

    .line 14
    const/16 v0, 0x20

    .line 16
    if-eq p1, v0, :cond_4

    .line 18
    const/16 v0, 0x2a

    .line 20
    if-eq p1, v0, :cond_3

    .line 22
    const/16 v0, 0x30

    .line 24
    if-eq p1, v0, :cond_2

    .line 26
    const/16 v0, 0x38

    .line 28
    if-eq p1, v0, :cond_1

    .line 30
    const/16 v0, 0x62

    .line 32
    if-eq p1, v0, :cond_0

    .line 34
    invoke-virtual {p2, p1}, Lru0;->p(I)Z

    .line 37
    return v1

    .line 38
    :cond_0
    invoke-virtual {p2}, Lru0;->q()[B

    .line 41
    move-result-object p1

    .line 42
    iput-object p1, p0, Lbr0$a;->h:[B

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p2}, Lru0;->v()J

    .line 48
    move-result-wide p1

    .line 49
    iput-wide p1, p0, Lbr0$a;->g:J

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p2}, Lru0;->w()I

    .line 55
    move-result p1

    .line 56
    iput p1, p0, Lbr0$a;->f:I

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    invoke-virtual {p2}, Lru0;->r()Ljava/lang/String;

    .line 62
    move-result-object p1

    .line 63
    iput-object p1, p0, Lbr0$a;->e:Ljava/lang/String;

    .line 65
    goto :goto_0

    .line 66
    :cond_4
    invoke-virtual {p2}, Lru0;->u()I

    .line 69
    move-result p1

    .line 70
    iput p1, p0, Lbr0$a;->d:I

    .line 72
    goto :goto_0

    .line 73
    :cond_5
    invoke-virtual {p2}, Lru0;->u()I

    .line 76
    move-result p1

    .line 77
    iput p1, p0, Lbr0$a;->c:I

    .line 79
    goto :goto_0

    .line 80
    :cond_6
    invoke-virtual {p2}, Lru0;->u()I

    .line 83
    move-result p1

    .line 84
    iput p1, p0, Lbr0$a;->b:I

    .line 86
    goto :goto_0

    .line 87
    :cond_7
    invoke-virtual {p2}, Lru0;->u()I

    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lbr0$a;->a:I

    .line 93
    :goto_0
    return v1
.end method

.class public Lcp0$i;
.super Lzv0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "i"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzv0;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public c(Lkw0;)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcp0$i;->a:J

    .line 3
    const-wide/16 v2, 0x0

    .line 5
    cmp-long v4, v0, v2

    .line 7
    if-eqz v4, :cond_0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {p1, v2, v0, v1}, Lkw0;->d(IJ)V

    .line 13
    :cond_0
    iget v0, p0, Lcp0$i;->b:I

    .line 15
    if-eqz v0, :cond_1

    .line 17
    const/4 v1, 0x2

    .line 18
    invoke-virtual {p1, v1, v0}, Lkw0;->u(II)V

    .line 21
    :cond_1
    iget-object v0, p0, Lcp0$i;->c:Ljava/lang/String;

    .line 23
    invoke-static {v0}, Lbp0;->f(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 29
    const/4 v0, 0x3

    .line 30
    iget-object v1, p0, Lcp0$i;->c:Ljava/lang/String;

    .line 32
    invoke-virtual {p1, v0, v1}, Lkw0;->f(ILjava/lang/String;)V

    .line 35
    :cond_2
    iget v0, p0, Lcp0$i;->d:I

    .line 37
    if-eqz v0, :cond_3

    .line 39
    const/4 v1, 0x4

    .line 40
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 43
    :cond_3
    iget v0, p0, Lcp0$i;->e:I

    .line 45
    if-eqz v0, :cond_4

    .line 47
    const/4 v1, 0x5

    .line 48
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 51
    :cond_4
    iget v0, p0, Lcp0$i;->f:I

    .line 53
    if-eqz v0, :cond_5

    .line 55
    const/16 v1, 0xf

    .line 57
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 60
    :cond_5
    return-void
.end method

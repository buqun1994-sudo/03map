.class public Lcp0$b;
.super Lzv0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcp0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I


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
    .locals 2

    .line 1
    iget v0, p0, Lcp0$b;->a:I

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 9
    :cond_0
    iget v0, p0, Lcp0$b;->b:I

    .line 11
    if-eqz v0, :cond_1

    .line 13
    const/4 v1, 0x2

    .line 14
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 17
    :cond_1
    iget v0, p0, Lcp0$b;->c:I

    .line 19
    if-eqz v0, :cond_2

    .line 21
    const/4 v1, 0x3

    .line 22
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 25
    :cond_2
    iget v0, p0, Lcp0$b;->d:I

    .line 27
    if-eqz v0, :cond_3

    .line 29
    const/4 v1, 0x4

    .line 30
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 33
    :cond_3
    iget v0, p0, Lcp0$b;->e:I

    .line 35
    if-eqz v0, :cond_4

    .line 37
    const/4 v1, 0x5

    .line 38
    invoke-virtual {p1, v1, v0}, Lkw0;->s(II)V

    .line 41
    :cond_4
    return-void
.end method

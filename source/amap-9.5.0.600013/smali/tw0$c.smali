.class public Ltw0$c;
.super Loq0;
.source "SourceFile"

# interfaces
.implements Ltw0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public g:Z

.field public h:S

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Loq0;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Ltw0$c;->g:Z

    .line 7
    const/16 v0, 0x7fff

    .line 9
    iput-short v0, p0, Ltw0$c;->h:S

    .line 11
    const v0, 0x7fffffff

    .line 14
    iput v0, p0, Ltw0$c;->i:I

    .line 16
    iput v0, p0, Ltw0$c;->j:I

    .line 18
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Ltw0$c;->g:Z

    .line 3
    return v0
.end method

.method public i()B
    .locals 1

    .line 1
    invoke-super {p0}, Loq0;->i()B

    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public m(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Ltw0$c;->g:Z

    .line 3
    return-void
.end method

.method public n(I)V
    .locals 2

    .line 1
    sget-object v0, Luq0;->a:Ljava/lang/Integer;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    move-result v1

    .line 7
    if-le p1, v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result p1

    .line 13
    :cond_0
    sget-object v0, Luq0;->b:Ljava/lang/Integer;

    .line 15
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 18
    move-result v1

    .line 19
    if-ge p1, v1, :cond_1

    .line 21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    move-result p1

    .line 25
    :cond_1
    int-to-short p1, p1

    .line 26
    iput-short p1, p0, Ltw0$c;->h:S

    .line 28
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    iget-short v0, p0, Ltw0$c;->h:S

    .line 3
    invoke-static {v0}, Lyw0;->a(S)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltw0$c;->i:I

    .line 3
    return-void
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Ltw0$c;->i:I

    .line 3
    return v0
.end method

.method public r(I)V
    .locals 0

    .line 1
    iput p1, p0, Ltw0$c;->j:I

    .line 3
    return-void
.end method

.method public s()I
    .locals 1

    .line 1
    iget v0, p0, Ltw0$c;->j:I

    .line 3
    return v0
.end method

.class public Lbw0$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbw0$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbw0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:J

.field public d:S


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lbw0$d;->a:Z

    .line 7
    iput v0, p0, Lbw0$d;->b:I

    .line 9
    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lbw0$d;->c:J

    .line 13
    iput-short v0, p0, Lbw0$d;->d:S

    .line 15
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lbw0$d;->b:I

    .line 3
    return-void
.end method

.method public b()B
    .locals 1

    .line 1
    const/4 v0, 0x5

    return v0
.end method

.method public b(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lbw0$d;->c:J

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lbw0$d;->a:Z

    .line 3
    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lbw0$d;->a:Z

    .line 3
    return v0
.end method

.method public e(I)V
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
    iput-short p1, p0, Lbw0$d;->d:S

    .line 28
    return-void
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lbw0$d;->b:I

    .line 3
    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lbw0$d;->c:J

    .line 3
    return-wide v0
.end method

.method public h()I
    .locals 1

    .line 1
    iget-short v0, p0, Lbw0$d;->d:S

    .line 3
    invoke-static {v0}, Lyw0;->a(S)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

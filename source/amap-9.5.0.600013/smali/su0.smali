.class public Lsu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lsu0;->a:Z

    .line 7
    iput-boolean v0, p0, Lsu0;->b:Z

    .line 9
    iput-boolean v0, p0, Lsu0;->c:Z

    .line 11
    iput-boolean v0, p0, Lsu0;->d:Z

    .line 13
    iput-boolean v0, p0, Lsu0;->e:Z

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lsu0;->f:Z

    .line 18
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lsu0;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/16 v0, 0x80

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    or-int/2addr v0, v1

    .line 11
    iget-boolean v2, p0, Lsu0;->b:Z

    .line 13
    if-eqz v2, :cond_1

    .line 15
    const/16 v2, 0x40

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v2, 0x0

    .line 19
    :goto_1
    or-int/2addr v0, v2

    .line 20
    iget-boolean v2, p0, Lsu0;->c:Z

    .line 22
    if-eqz v2, :cond_2

    .line 24
    const/16 v2, 0x20

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    const/4 v2, 0x0

    .line 28
    :goto_2
    or-int/2addr v0, v2

    .line 29
    iget-boolean v2, p0, Lsu0;->d:Z

    .line 31
    if-eqz v2, :cond_3

    .line 33
    const/16 v2, 0x10

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    const/4 v2, 0x0

    .line 37
    :goto_3
    or-int/2addr v0, v2

    .line 38
    iget-boolean v2, p0, Lsu0;->e:Z

    .line 40
    if-eqz v2, :cond_4

    .line 42
    const/16 v2, 0x8

    .line 44
    goto :goto_4

    .line 45
    :cond_4
    const/4 v2, 0x0

    .line 46
    :goto_4
    or-int/2addr v0, v2

    .line 47
    iget-boolean v2, p0, Lsu0;->f:Z

    .line 49
    if-eqz v2, :cond_5

    .line 51
    const/4 v1, 0x4

    .line 52
    :cond_5
    or-int/2addr v0, v1

    .line 53
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x1

    .line 62
    if-ne v1, v2, :cond_6

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    const-string v2, "0"

    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object v0

    .line 81
    :cond_6
    return-object v0
.end method

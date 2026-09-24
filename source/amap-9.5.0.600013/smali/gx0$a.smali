.class public Lgx0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgx0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:D

.field public b:D

.field public c:S

.field public d:Low0;

.field public e:S


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lgx0$a;->a:D

    .line 8
    iput-wide v0, p0, Lgx0$a;->b:D

    .line 10
    const/4 v0, 0x0

    .line 11
    iput-short v0, p0, Lgx0$a;->c:S

    .line 13
    sget-object v1, Low0;->d:Low0;

    .line 15
    iput-object v1, p0, Lgx0$a;->d:Low0;

    .line 17
    iput-short v0, p0, Lgx0$a;->e:S

    .line 19
    return-void
.end method


# virtual methods
.method public a()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lgx0$a;->a:D

    .line 3
    return-wide v0
.end method

.method public b(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lgx0$a;->a:D

    .line 3
    return-void
.end method

.method public c(Low0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgx0$a;->d:Low0;

    .line 3
    return-void
.end method

.method public d(Ljava/nio/ByteBuffer;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lgx0$a;->a:D

    .line 3
    const-wide v2, 0x41324f8000000000L    # 1200000.0

    .line 8
    mul-double v0, v0, v2

    .line 10
    double-to-int v0, v0

    .line 11
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 14
    iget-wide v0, p0, Lgx0$a;->b:D

    .line 16
    const-wide v2, 0x412e848000000000L    # 1000000.0

    .line 21
    mul-double v0, v0, v2

    .line 23
    double-to-int v0, v0

    .line 24
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 27
    iget-short v0, p0, Lgx0$a;->c:S

    .line 29
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 32
    iget-object v0, p0, Lgx0$a;->d:Low0;

    .line 34
    invoke-virtual {v0}, Low0;->c()Ljava/lang/Byte;

    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 41
    move-result v0

    .line 42
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 45
    iget-short v0, p0, Lgx0$a;->e:S

    .line 47
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 50
    return-void
.end method

.method public e(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lgx0$a;->c:S

    .line 3
    return-void
.end method

.method public f()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lgx0$a;->b:D

    .line 3
    return-wide v0
.end method

.method public g(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lgx0$a;->b:D

    .line 3
    return-void
.end method

.method public h(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lgx0$a;->e:S

    .line 3
    return-void
.end method

.method public i()S
    .locals 1

    .line 1
    iget-short v0, p0, Lgx0$a;->c:S

    .line 3
    return v0
.end method

.method public j()Low0;
    .locals 1

    .line 1
    iget-object v0, p0, Lgx0$a;->d:Low0;

    .line 3
    return-object v0
.end method

.method public k()S
    .locals 1

    .line 1
    iget-short v0, p0, Lgx0$a;->e:S

    .line 3
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    const/16 v0, 0xd

    return v0
.end method

.class public Lju0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lju0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lqp0;

.field public b:Ljava/lang/String;

.field public c:B

.field public d:S

.field public e:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lqp0;

    .line 6
    invoke-direct {v0}, Lqp0;-><init>()V

    .line 9
    iput-object v0, p0, Lju0$a;->a:Lqp0;

    .line 11
    const-string v0, ""

    .line 13
    iput-object v0, p0, Lju0$a;->b:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    .line 16
    iput-byte v0, p0, Lju0$a;->c:B

    .line 18
    iput-short v0, p0, Lju0$a;->d:S

    .line 20
    iput-short v0, p0, Lju0$a;->e:S

    .line 22
    return-void
.end method


# virtual methods
.method public a()Lqp0;
    .locals 1

    .line 1
    iget-object v0, p0, Lju0$a;->a:Lqp0;

    .line 3
    return-object v0
.end method

.method public b(B)V
    .locals 0

    .line 1
    iput-byte p1, p0, Lju0$a;->c:B

    .line 3
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 1
    sget-object v0, Luq0;->c:Ljava/lang/Integer;

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
    sget-object v0, Luq0;->d:Ljava/lang/Integer;

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
    iput-short p1, p0, Lju0$a;->d:S

    .line 28
    return-void
.end method

.method public d(Lqp0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lju0$a;->a:Lqp0;

    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lju0$a;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public f(S)V
    .locals 0

    .line 1
    iput-short p1, p0, Lju0$a;->e:S

    .line 3
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lju0$a;->b:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public h()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lju0$a;->c:B

    .line 3
    return v0
.end method

.method public i()I
    .locals 1

    .line 1
    iget-short v0, p0, Lju0$a;->d:S

    .line 3
    invoke-static {v0}, Lyw0;->a(S)I

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()S
    .locals 1

    .line 1
    iget-short v0, p0, Lju0$a;->e:S

    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "NbWifi{mac="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lju0$a;->a:Lqp0;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ", ssid=\'"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lju0$a;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const/16 v1, 0x27

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", rssi="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-byte v1, p0, Lju0$a;->c:B

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", age="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-short v1, p0, Lju0$a;->d:S

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", freq="

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-short v1, p0, Lju0$a;->e:S

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    const/16 v1, 0x7d

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 70
    return-object v0
.end method

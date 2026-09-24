.class public Lym0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:J

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lym0;->a:I

    .line 7
    const-string v1, ""

    .line 9
    iput-object v1, p0, Lym0;->b:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lym0;->c:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lym0;->d:Ljava/lang/String;

    .line 15
    iput-boolean v0, p0, Lym0;->e:Z

    .line 17
    iput-boolean v0, p0, Lym0;->f:Z

    .line 19
    iput-object v1, p0, Lym0;->g:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lym0;->h:Ljava/lang/String;

    .line 23
    const-wide/16 v2, 0x0

    .line 25
    iput-wide v2, p0, Lym0;->i:J

    .line 27
    iput-object v1, p0, Lym0;->j:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lym0;->k:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lym0;->l:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static a(Lym0;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lym0;->a:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "=!,"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lym0;->b:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lym0;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Lym0;->d:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object v2, p0, Lym0;->g:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-object v2, p0, Lym0;->h:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-wide v1, p0, Lym0;->i:J

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 65
    return-object p0
.end method

.method public static b(Lym0;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lym0;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "=!,"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v2, p0, Lym0;->c:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    iget-object v2, p0, Lym0;->j:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v2, p0, Lym0;->k:Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    iget-object p0, p0, Lym0;->l:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static c(Lym0;)Lym0;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lym0;

    .line 7
    invoke-direct {v0}, Lym0;-><init>()V

    .line 10
    iget v1, p0, Lym0;->a:I

    .line 12
    iput v1, v0, Lym0;->a:I

    .line 14
    iget-object v1, p0, Lym0;->b:Ljava/lang/String;

    .line 16
    iput-object v1, v0, Lym0;->b:Ljava/lang/String;

    .line 18
    iget-object v1, p0, Lym0;->c:Ljava/lang/String;

    .line 20
    iput-object v1, v0, Lym0;->c:Ljava/lang/String;

    .line 22
    iget-object v1, p0, Lym0;->d:Ljava/lang/String;

    .line 24
    iput-object v1, v0, Lym0;->d:Ljava/lang/String;

    .line 26
    iget-object v1, p0, Lym0;->g:Ljava/lang/String;

    .line 28
    iput-object v1, v0, Lym0;->g:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lym0;->h:Ljava/lang/String;

    .line 32
    iput-object v1, v0, Lym0;->h:Ljava/lang/String;

    .line 34
    iget-wide v1, p0, Lym0;->i:J

    .line 36
    iput-wide v1, v0, Lym0;->i:J

    .line 38
    iget-object v1, p0, Lym0;->j:Ljava/lang/String;

    .line 40
    iput-object v1, v0, Lym0;->j:Ljava/lang/String;

    .line 42
    iget-object v1, p0, Lym0;->k:Ljava/lang/String;

    .line 44
    iput-object v1, v0, Lym0;->k:Ljava/lang/String;

    .line 46
    iget-object p0, p0, Lym0;->l:Ljava/lang/String;

    .line 48
    iput-object p0, v0, Lym0;->l:Ljava/lang/String;

    .line 50
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Lym0;
    .locals 2

    .line 1
    const-string v0, "=!,"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x5

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lym0;

    .line 15
    invoke-direct {v0}, Lym0;-><init>()V

    .line 18
    const/4 v1, 0x0

    .line 19
    aget-object v1, p0, v1

    .line 21
    iput-object v1, v0, Lym0;->b:Ljava/lang/String;

    .line 23
    const/4 v1, 0x1

    .line 24
    aget-object v1, p0, v1

    .line 26
    iput-object v1, v0, Lym0;->c:Ljava/lang/String;

    .line 28
    const/4 v1, 0x2

    .line 29
    aget-object v1, p0, v1

    .line 31
    iput-object v1, v0, Lym0;->j:Ljava/lang/String;

    .line 33
    const/4 v1, 0x3

    .line 34
    aget-object v1, p0, v1

    .line 36
    iput-object v1, v0, Lym0;->k:Ljava/lang/String;

    .line 38
    const/4 v1, 0x4

    .line 39
    aget-object p0, p0, v1

    .line 41
    iput-object p0, v0, Lym0;->l:Ljava/lang/String;

    .line 43
    return-object v0
.end method

.method public static e(Ljava/lang/String;)Lym0;
    .locals 3

    .line 1
    const-string v0, "=!,"

    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 7
    array-length v0, p0

    .line 8
    const/4 v1, 0x7

    .line 9
    if-eq v0, v1, :cond_0

    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    new-instance v0, Lym0;

    .line 15
    invoke-direct {v0}, Lym0;-><init>()V

    .line 18
    const/4 v1, 0x0

    .line 19
    aget-object v1, p0, v1

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result v1

    .line 29
    iput v1, v0, Lym0;->a:I

    .line 31
    const/4 v1, 0x1

    .line 32
    aget-object v1, p0, v1

    .line 34
    iput-object v1, v0, Lym0;->b:Ljava/lang/String;

    .line 36
    const/4 v1, 0x2

    .line 37
    aget-object v1, p0, v1

    .line 39
    iput-object v1, v0, Lym0;->c:Ljava/lang/String;

    .line 41
    const/4 v1, 0x3

    .line 42
    aget-object v1, p0, v1

    .line 44
    iput-object v1, v0, Lym0;->d:Ljava/lang/String;

    .line 46
    const/4 v1, 0x4

    .line 47
    aget-object v1, p0, v1

    .line 49
    iput-object v1, v0, Lym0;->g:Ljava/lang/String;

    .line 51
    const/4 v1, 0x5

    .line 52
    aget-object v1, p0, v1

    .line 54
    iput-object v1, v0, Lym0;->h:Ljava/lang/String;

    .line 56
    const/4 v1, 0x6

    .line 57
    aget-object p0, p0, v1

    .line 59
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    .line 66
    move-result-wide v1

    .line 67
    iput-wide v1, v0, Lym0;->i:J

    .line 69
    return-object v0
.end method

.method public static f(Landroid/net/wifi/p2p/WifiP2pDevice;)Lym0;
    .locals 2

    .line 1
    new-instance v0, Lym0;

    .line 3
    invoke-direct {v0}, Lym0;-><init>()V

    .line 6
    if-eqz p0, :cond_0

    .line 8
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 10
    iput-object v1, v0, Lym0;->h:Ljava/lang/String;

    .line 12
    iget-object p0, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 14
    iput-object p0, v0, Lym0;->g:Ljava/lang/String;

    .line 16
    invoke-static {p0}, Len0;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 20
    iput-object p0, v0, Lym0;->g:Ljava/lang/String;

    .line 22
    :cond_0
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "deviceType:"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lym0;->a:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ",featureCode:"

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lym0;->b:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    const-string v1, ",displayName:"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget-object v1, p0, Lym0;->c:Ljava/lang/String;

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v1, ",deviceName:"

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    iget-object v1, p0, Lym0;->g:Ljava/lang/String;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object v0

    .line 50
    return-object v0
.end method

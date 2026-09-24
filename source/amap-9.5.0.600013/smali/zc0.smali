.class public Lzc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz40;


# instance fields
.field public final a:Ljava/lang/String;

.field public b:I

.field public c:Z

.field public d:Lnb0;


# direct methods
.method public constructor <init>(Lpr;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "SendDataManager"

    .line 6
    iput-object v0, p0, Lzc0;->a:Ljava/lang/String;

    .line 8
    const/4 v0, 0x5

    .line 9
    iput v0, p0, Lzc0;->b:I

    .line 11
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lzc0;->c:Z

    .line 14
    invoke-virtual {p0, p1}, Lzc0;->b(Lpr;)V

    .line 17
    invoke-virtual {p0}, Lzc0;->c()V

    .line 20
    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 4

    .line 1
    sget-boolean v0, Lxj0;->a:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "SendDataManager"

    .line 6
    if-eqz v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v3, " Communication onSendNalData isCanSend = "

    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-boolean v3, p0, Lzc0;->c:Z

    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    new-array v3, v1, [Ljava/lang/Object;

    .line 29
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    iget-boolean v0, p0, Lzc0;->c:Z

    .line 34
    if-nez v0, :cond_1

    .line 36
    return-void

    .line 37
    :cond_1
    :try_start_0
    iget v0, p0, Lzc0;->b:I

    .line 39
    const/4 v3, 0x5

    .line 40
    if-eq v0, v3, :cond_2

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    iget-object v0, p0, Lzc0;->d:Lnb0;

    .line 45
    invoke-virtual {v0, p1}, Lnb0;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    sget-boolean v0, Lxj0;->a:Z

    .line 52
    if-eqz v0, :cond_3

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    const-string v3, " Communication onSendNalData e = "

    .line 61
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    new-array v0, v1, [Ljava/lang/Object;

    .line 77
    invoke-static {v2, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :cond_3
    :goto_0
    return-void
.end method

.method public b(Lpr;)V
    .locals 2

    .line 1
    iget v0, p0, Lzc0;->b:I

    .line 3
    const/4 v1, 0x5

    .line 4
    if-eq v0, v1, :cond_0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lnb0;

    .line 9
    invoke-direct {v0, p1}, Lnb0;-><init>(Lpr;)V

    .line 12
    iput-object v0, p0, Lzc0;->d:Lnb0;

    .line 14
    invoke-virtual {v0}, Lnb0;->b()V

    .line 17
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lzc0;->c:Z

    .line 4
    return-void
.end method

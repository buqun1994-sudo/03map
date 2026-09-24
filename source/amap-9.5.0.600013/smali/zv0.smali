.class public abstract Lzv0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lru0;)Lzv0;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lru0;->f()I

    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_1

    .line 11
    :goto_1
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, v1, p1}, Lzv0;->d(ILru0;)Z

    .line 16
    move-result v3

    .line 17
    if-nez v3, :cond_0

    .line 19
    invoke-virtual {p1, v1}, Lru0;->p(I)Z

    .line 22
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-nez v1, :cond_0

    .line 25
    goto :goto_1

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    new-instance v0, Ljava/lang/RuntimeException;

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    throw v0

    .line 41
    :cond_2
    return-object p0
.end method

.method public b(Lru0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lru0;->k(I)V

    .line 5
    iget v0, p1, Lru0;->j:I

    .line 7
    add-int/lit8 v0, v0, -0x1

    .line 9
    iput v0, p1, Lru0;->j:I

    .line 11
    invoke-virtual {p1, p2}, Lru0;->i(I)V

    .line 14
    return-void
.end method

.method public c(Lkw0;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(ILru0;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public e(Lru0;)I
    .locals 3

    .line 1
    invoke-virtual {p1}, Lru0;->h()I

    .line 4
    move-result v0

    .line 5
    iget v1, p1, Lru0;->j:I

    .line 7
    iget v2, p1, Lru0;->k:I

    .line 9
    if-ge v1, v2, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Lru0;->g(I)I

    .line 14
    move-result v0

    .line 15
    iget v1, p1, Lru0;->j:I

    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 19
    iput v1, p1, Lru0;->j:I

    .line 21
    return v0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 24
    const-string v0, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    .line 26
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p1
.end method

.method public f(Lkw0;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lzv0;->c(Lkw0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    goto :goto_0

    .line 5
    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    :goto_0
    return-void
.end method

.class public Lag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/util/ArrayList;

.field public e:[B

.field public f:Ljava/io/File;

.field public g:Ljava/io/FileInputStream;

.field public h:Ljava/io/FileOutputStream;

.field public i:Lyf;

.field public j:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, "/data/data/autoupdate.com.myapplication/UpdateVerInfo.dat"

    .line 6
    iput-object v0, p0, Lag;->a:Ljava/lang/String;

    .line 8
    const-string v0, "SelfUpdate"

    .line 10
    iput-object v0, p0, Lag;->b:Ljava/lang/String;

    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lag;->c:I

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    iput-object v0, p0, Lag;->d:Ljava/util/ArrayList;

    .line 22
    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lag;->e:[B

    .line 25
    iput-object v0, p0, Lag;->f:Ljava/io/File;

    .line 27
    iput-object v0, p0, Lag;->g:Ljava/io/FileInputStream;

    .line 29
    iput-object v0, p0, Lag;->h:Ljava/io/FileOutputStream;

    .line 31
    iput-object v0, p0, Lag;->i:Lyf;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object v0, p0, Lag;->j:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lag;->a:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lag;->d()V

    .line 45
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    :try_start_0
    iget-object v1, p0, Lag;->d:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_0

    .line 10
    iget-object v1, p0, Lag;->i:Lyf;

    .line 12
    iget-object v2, p0, Lag;->d:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 18
    check-cast v2, [B

    .line 20
    invoke-virtual {v1, v2}, Lyf;->g([B)Lvh;

    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Lag;->i:Lyf;

    .line 26
    invoke-virtual {v2, v1}, Lyf;->b(Lvh;)Ljk0;

    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lag;->j:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    add-int/lit8 v0, v0, 0x1

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lei0;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 45
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lag;->e:[B

    .line 3
    if-eqz v0, :cond_0

    .line 5
    array-length v0, v0

    .line 6
    if-lez v0, :cond_0

    .line 8
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    .line 10
    iget-object v1, p0, Lag;->f:Ljava/io/File;

    .line 12
    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 15
    iput-object v0, p0, Lag;->h:Ljava/io/FileOutputStream;

    .line 17
    iget-object v1, p0, Lag;->e:[B

    .line 19
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 22
    iget-object v0, p0, Lag;->h:Ljava/io/FileOutputStream;

    .line 24
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 27
    iget-object v0, p0, Lag;->h:Ljava/io/FileOutputStream;

    .line 29
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    sget-object v1, Lei0;->a:Ljava/lang/String;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method public c()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object v0, p0, Lag;->j:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    new-instance v0, Lyf;

    .line 3
    invoke-direct {v0}, Lyf;-><init>()V

    .line 6
    iput-object v0, p0, Lag;->i:Lyf;

    .line 8
    new-instance v0, Ljava/io/File;

    .line 10
    iget-object v1, p0, Lag;->a:Ljava/lang/String;

    .line 12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object v0, p0, Lag;->f:Ljava/io/File;

    .line 17
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    .line 19
    iget-object v1, p0, Lag;->f:Ljava/io/File;

    .line 21
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 24
    iput-object v0, p0, Lag;->g:Ljava/io/FileInputStream;

    .line 26
    invoke-virtual {p0}, Lag;->e()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    sget-object v1, Lei0;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    move-result-object v0

    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :goto_0
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lag;->d:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget-object v0, p0, Lag;->j:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    invoke-virtual {p0}, Lag;->f()V

    .line 14
    invoke-virtual {p0}, Lag;->a()V

    .line 17
    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lag;->g:Ljava/io/FileInputStream;

    .line 3
    if-eqz v0, :cond_2

    .line 5
    :goto_0
    :try_start_0
    sget v0, Lvh;->t:I

    .line 7
    new-array v1, v0, [B

    .line 9
    iget-object v2, p0, Lag;->g:Ljava/io/FileInputStream;

    .line 11
    const/4 v3, 0x0

    .line 12
    add-int/2addr v0, v3

    .line 13
    invoke-virtual {v2, v1, v3, v0}, Ljava/io/FileInputStream;->read([BII)I

    .line 16
    move-result v0

    .line 17
    sget v2, Lvh;->t:I

    .line 19
    if-ge v0, v2, :cond_0

    .line 21
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 23
    const-string v1, "limit length"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    if-ne v0, v2, :cond_1

    .line 31
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 33
    const-string v2, "add to verList"

    .line 35
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lag;->d:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lei0;->a:Ljava/lang/String;

    .line 46
    const-string v1, "error length"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_1
    iget-object v0, p0, Lag;->g:Ljava/io/FileInputStream;

    .line 53
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    goto :goto_2

    .line 57
    :catch_0
    move-exception v0

    .line 58
    sget-object v1, Lei0;->a:Ljava/lang/String;

    .line 60
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    move-result-object v0

    .line 64
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_2
    :goto_2
    return-void
.end method

.method public g(Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    if-eqz p1, :cond_2

    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v2

    .line 9
    if-ge v1, v2, :cond_2

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 15
    check-cast v2, Ljk0;

    .line 17
    if-eqz v2, :cond_1

    .line 19
    iget-object v3, p0, Lag;->i:Lyf;

    .line 21
    invoke-virtual {v3, v2}, Lyf;->c(Ljk0;)Lvh;

    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_1

    .line 27
    iget-object v3, p0, Lag;->i:Lyf;

    .line 29
    invoke-virtual {v3, v2}, Lyf;->a(Lvh;)[B

    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 35
    iget-object v3, p0, Lag;->e:[B

    .line 37
    if-nez v3, :cond_0

    .line 39
    iput-object v2, p0, Lag;->e:[B

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    array-length v4, v3

    .line 43
    array-length v5, v3

    .line 44
    array-length v6, v2

    .line 45
    add-int/2addr v5, v6

    .line 46
    new-array v5, v5, [B

    .line 48
    array-length v6, v3

    .line 49
    invoke-static {v3, v0, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    array-length v3, v2

    .line 53
    invoke-static {v2, v0, v5, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iput-object v5, p0, Lag;->e:[B

    .line 58
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-void
.end method

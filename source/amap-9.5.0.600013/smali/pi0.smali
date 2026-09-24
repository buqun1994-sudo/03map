.class public Lpi0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final i:Ljava/lang/Object;

.field public static j:Lpi0;

.field public static final k:Ljava/lang/String;

.field public static l:Ljava/lang/String;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/String;

.field public c:Lri0;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lv50;

.field public g:Lv50;

.field public h:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    sput-object v0, Lpi0;->i:Ljava/lang/Object;

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, ".UTSystemConfig"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "Global"

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lpi0;->k:Ljava/lang/String;

    .line 34
    const-string v0, ""

    .line 36
    sput-object v0, Lpi0;->l:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lpi0;->a:Landroid/content/Context;

    .line 7
    iput-object v0, p0, Lpi0;->b:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lpi0;->c:Lri0;

    .line 11
    const-string v1, "xx_utdid_key"

    .line 13
    iput-object v1, p0, Lpi0;->d:Ljava/lang/String;

    .line 15
    const-string v1, "xx_utdid_domain"

    .line 17
    iput-object v1, p0, Lpi0;->e:Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lpi0;->f:Lv50;

    .line 21
    iput-object v0, p0, Lpi0;->g:Lv50;

    .line 23
    const-string v0, "[^0-9a-zA-Z=/+]+"

    .line 25
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lpi0;->h:Ljava/util/regex/Pattern;

    .line 31
    iput-object p1, p0, Lpi0;->a:Landroid/content/Context;

    .line 33
    new-instance v0, Lv50;

    .line 35
    sget-object v3, Lpi0;->k:Ljava/lang/String;

    .line 37
    const-string v4, "Alvin2"

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v6, 0x1

    .line 41
    move-object v1, v0

    .line 42
    move-object v2, p1

    .line 43
    invoke-direct/range {v1 .. v6}, Lv50;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 46
    iput-object v0, p0, Lpi0;->g:Lv50;

    .line 48
    new-instance v0, Lv50;

    .line 50
    const-string v9, ".DataStorage"

    .line 52
    const-string v10, "ContextData"

    .line 54
    const/4 v11, 0x0

    .line 55
    const/4 v12, 0x1

    .line 56
    move-object v7, v0

    .line 57
    move-object v8, p1

    .line 58
    invoke-direct/range {v7 .. v12}, Lv50;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 61
    iput-object v0, p0, Lpi0;->f:Lv50;

    .line 63
    new-instance p1, Lri0;

    .line 65
    invoke-direct {p1}, Lri0;-><init>()V

    .line 68
    iput-object p1, p0, Lpi0;->c:Lri0;

    .line 70
    const/4 p1, 0x1

    .line 71
    new-array v0, p1, [Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lpi0;->d:Ljava/lang/String;

    .line 75
    invoke-static {v1}, Laf0;->a(Ljava/lang/String;)I

    .line 78
    move-result v1

    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x0

    .line 84
    aput-object v1, v0, v2

    .line 86
    const-string v1, "K_%d"

    .line 88
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lpi0;->d:Ljava/lang/String;

    .line 94
    new-array p1, p1, [Ljava/lang/Object;

    .line 96
    iget-object v0, p0, Lpi0;->e:Ljava/lang/String;

    .line 98
    invoke-static {v0}, Laf0;->a(Ljava/lang/String;)I

    .line 101
    move-result v0

    .line 102
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 105
    move-result-object v0

    .line 106
    aput-object v0, p1, v2

    .line 108
    const-string v0, "D_%d"

    .line 110
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Lpi0;->e:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public static a([B)Ljava/lang/String;
    .locals 4

    .line 1
    const/16 v0, 0x2c

    .line 3
    new-array v0, v0, [B

    .line 5
    fill-array-data v0, :array_0

    .line 8
    const-string v1, "HmacSHA1"

    .line 10
    invoke-static {v1}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    .line 13
    move-result-object v1

    .line 14
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 16
    invoke-static {v0}, Lm90;->b([B)[B

    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v1}, Ljavax/crypto/Mac;->getAlgorithm()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 27
    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 30
    invoke-virtual {v1, p0}, Ljavax/crypto/Mac;->doFinal([B)[B

    .line 33
    move-result-object p0

    .line 34
    const/4 v0, 0x2

    .line 35
    invoke-static {p0, v0}, Lxb;->e([BI)Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    nop

    .line 41
    :array_0
    .array-data 1
        0x45t
        0x72t
        0x74t
        -0x21t
        0x7dt
        -0x36t
        -0x1ft
        0x56t
        -0xbt
        0xbt
        -0x4et
        -0x60t
        -0x11t
        -0x63t
        0x40t
        0x17t
        -0x5ft
        -0x7et
        -0x52t
        -0x40t
        0x71t
        0x74t
        -0x10t
        -0x67t
        0x31t
        -0x1et
        0x9t
        -0x27t
        0x21t
        -0x50t
        -0x44t
        -0x4et
        -0x75t
        0x35t
        0x1et
        -0x7at
        0x40t
        -0x68t
        0x4at
        -0x31t
        0x6at
        0x55t
        -0x26t
        -0x5dt
    .end array-data
.end method

.method public static f(Landroid/content/Context;)Lpi0;
    .locals 2

    .line 1
    if-eqz p0, :cond_1

    .line 3
    sget-object v0, Lpi0;->j:Lpi0;

    .line 5
    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lpi0;->i:Ljava/lang/Object;

    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lpi0;->j:Lpi0;

    .line 12
    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lpi0;

    .line 16
    invoke-direct {v1, p0}, Lpi0;-><init>(Landroid/content/Context;)V

    .line 19
    sput-object v1, Lpi0;->j:Lpi0;

    .line 21
    invoke-virtual {v1}, Lpi0;->i()V

    .line 24
    :cond_0
    monitor-exit v0

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0

    .line 29
    :cond_1
    :goto_0
    sget-object p0, Lpi0;->j:Lpi0;

    .line 31
    return-object p0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lpi0;->l:Ljava/lang/String;

    .line 3
    return-void
.end method


# virtual methods
.method public final b()[B
    .locals 5

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 9
    move-result-wide v1

    .line 10
    const-wide/16 v3, 0x3e8

    .line 12
    div-long/2addr v1, v3

    .line 13
    long-to-int v2, v1

    .line 14
    new-instance v1, Ljava/util/Random;

    .line 16
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 19
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    .line 22
    move-result v1

    .line 23
    invoke-static {v2}, Lbv;->a(I)[B

    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1}, Lbv;->a(I)[B

    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x4

    .line 33
    invoke-virtual {v0, v2, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 36
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 39
    const/4 v1, 0x3

    .line 40
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 43
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 46
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    sget-object v2, Lpi0;->l:Ljava/lang/String;

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object v2, p0, Lpi0;->a:Landroid/content/Context;

    .line 58
    invoke-static {v2}, Lw50;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    sget-object v2, Lpi0;->l:Ljava/lang/String;

    .line 77
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    new-instance v2, Ljava/util/Random;

    .line 82
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 85
    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    .line 88
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    move-result-object v1

    .line 96
    :goto_0
    invoke-static {v1}, Laf0;->a(Ljava/lang/String;)I

    .line 99
    move-result v1

    .line 100
    invoke-static {v1}, Lbv;->a(I)[B

    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 107
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1}, Lpi0;->a([B)Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    invoke-static {v1}, Laf0;->a(Ljava/lang/String;)I

    .line 118
    move-result v1

    .line 119
    invoke-static {v1}, Lbv;->a(I)[B

    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 126
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 129
    move-result-object v0

    .line 130
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    const-string v1, "UTDID2"

    .line 7
    invoke-virtual {v0, v1}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Laf0;->b(Ljava/lang/String;)Z

    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 17
    iget-object v1, p0, Lpi0;->c:Lri0;

    .line 19
    invoke-virtual {v1, v0}, Lri0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public declared-synchronized d()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lpi0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    if-eqz v0, :cond_0

    .line 6
    monitor-exit p0

    .line 7
    return-object v0

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lpi0;->e()Ljava/lang/String;

    .line 11
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0

    .line 16
    throw v0
.end method

.method public declared-synchronized e()Ljava/lang/String;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lpi0;->h()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    iput-object v0, p0, Lpi0;->b:Ljava/lang/String;

    .line 8
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lpi0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    monitor-exit p0

    .line 17
    return-object v0

    .line 18
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lpi0;->b()[B

    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-static {v0, v1}, Lxb;->e([BI)Ljava/lang/String;

    .line 28
    move-result-object v1

    .line 29
    iput-object v1, p0, Lpi0;->b:Ljava/lang/String;

    .line 31
    invoke-virtual {p0, v1}, Lpi0;->k(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lpi0;->c:Lri0;

    .line 36
    invoke-virtual {v1, v0}, Lri0;->b([B)Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Lpi0;->j(Ljava/lang/String;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lpi0;->b:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    monitor-exit p0

    .line 48
    return-object v0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :cond_2
    monitor-exit p0

    .line 54
    const/4 v0, 0x0

    .line 55
    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p0

    .line 58
    throw v0
.end method

.method public final g(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 4
    const-string v1, "\n"

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 16
    move-result v1

    .line 17
    sub-int/2addr v1, v2

    .line 18
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 25
    move-result v1

    .line 26
    const/16 v3, 0x18

    .line 28
    if-ne v3, v1, :cond_1

    .line 30
    iget-object v1, p0, Lpi0;->h:Ljava/util/regex/Pattern;

    .line 32
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 39
    move-result p1

    .line 40
    if-nez p1, :cond_1

    .line 42
    return v2

    .line 43
    :cond_1
    return v0
.end method

.method public declared-synchronized h()Ljava/lang/String;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lpi0;->c()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lpi0;->g(Ljava/lang/String;)Z

    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lpi0;->c:Lri0;

    .line 14
    invoke-virtual {v1, v0}, Lri0;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0, v1}, Lpi0;->j(Ljava/lang/String;)V

    .line 21
    iput-object v0, p0, Lpi0;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    .line 24
    return-object v0

    .line 25
    :cond_0
    :try_start_1
    iget-object v0, p0, Lpi0;->f:Lv50;

    .line 27
    iget-object v1, p0, Lpi0;->d:Ljava/lang/String;

    .line 29
    invoke-virtual {v0, v1}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 33
    invoke-static {v0}, Laf0;->b(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 39
    new-instance v1, Lqi0;

    .line 41
    invoke-direct {v1}, Lqi0;-><init>()V

    .line 44
    invoke-virtual {v1, v0}, Lqi0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p0, v1}, Lpi0;->g(Ljava/lang/String;)Z

    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 54
    iget-object v1, p0, Lpi0;->c:Lri0;

    .line 56
    invoke-virtual {v1, v0}, Lri0;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object v1

    .line 60
    :cond_1
    invoke-virtual {p0, v1}, Lpi0;->g(Ljava/lang/String;)Z

    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 66
    invoke-static {v1}, Laf0;->b(Ljava/lang/String;)Z

    .line 69
    move-result v0

    .line 70
    if-nez v0, :cond_2

    .line 72
    iput-object v1, p0, Lpi0;->b:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v1}, Lpi0;->k(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lpi0;->b:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    .line 80
    return-object v0

    .line 81
    :cond_2
    monitor-exit p0

    .line 82
    const/4 v0, 0x0

    .line 83
    return-object v0

    .line 84
    :catchall_0
    move-exception v0

    .line 85
    monitor-exit p0

    .line 86
    throw v0
.end method

.method public final i()V
    .locals 4

    .line 1
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 3
    if-eqz v0, :cond_4

    .line 5
    const-string v1, "UTDID2"

    .line 7
    invoke-virtual {v0, v1}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Laf0;->b(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 19
    const-string v1, "UTDID"

    .line 21
    invoke-virtual {v0, v1}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Laf0;->b(Ljava/lang/String;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 31
    invoke-virtual {p0, v0}, Lpi0;->k(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 36
    const-string v1, "DID"

    .line 38
    invoke-virtual {v0, v1}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    invoke-static {v0}, Laf0;->b(Ljava/lang/String;)Z

    .line 45
    move-result v0

    .line 46
    const/4 v2, 0x1

    .line 47
    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 51
    invoke-virtual {v0, v1}, Lv50;->e(Ljava/lang/String;)V

    .line 54
    const/4 v0, 0x1

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lpi0;->g:Lv50;

    .line 59
    const-string v3, "EI"

    .line 61
    invoke-virtual {v1, v3}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Laf0;->b(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_2

    .line 71
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 73
    invoke-virtual {v0, v3}, Lv50;->e(Ljava/lang/String;)V

    .line 76
    const/4 v0, 0x1

    .line 77
    :cond_2
    iget-object v1, p0, Lpi0;->g:Lv50;

    .line 79
    const-string v3, "SI"

    .line 81
    invoke-virtual {v1, v3}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    move-result-object v1

    .line 85
    invoke-static {v1}, Laf0;->b(Ljava/lang/String;)Z

    .line 88
    move-result v1

    .line 89
    if-nez v1, :cond_3

    .line 91
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 93
    invoke-virtual {v0, v3}, Lv50;->e(Ljava/lang/String;)V

    .line 96
    goto :goto_1

    .line 97
    :cond_3
    move v2, v0

    .line 98
    :goto_1
    if-eqz v2, :cond_4

    .line 100
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 102
    invoke-virtual {v0}, Lv50;->a()Z

    .line 105
    :cond_4
    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lpi0;->f:Lv50;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lpi0;->d:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lv50;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 19
    iget-object v0, p0, Lpi0;->f:Lv50;

    .line 21
    iget-object v1, p0, Lpi0;->d:Ljava/lang/String;

    .line 23
    invoke-virtual {v0, v1, p1}, Lv50;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lpi0;->f:Lv50;

    .line 28
    invoke-virtual {p1}, Lv50;->a()Z

    .line 31
    :cond_0
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lpi0;->g(Ljava/lang/String;)Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const-string v0, "\n"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    move-result v0

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 29
    move-result v0

    .line 30
    const/16 v1, 0x18

    .line 32
    if-ne v0, v1, :cond_1

    .line 34
    iget-object v0, p0, Lpi0;->g:Lv50;

    .line 36
    if-eqz v0, :cond_1

    .line 38
    const-string v1, "UTDID2"

    .line 40
    invoke-virtual {v0, v1, p1}, Lv50;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lpi0;->g:Lv50;

    .line 45
    invoke-virtual {p1}, Lv50;->a()Z

    .line 48
    :cond_1
    return-void
.end method

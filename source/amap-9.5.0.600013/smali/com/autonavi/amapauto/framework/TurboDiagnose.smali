.class public Lcom/autonavi/amapauto/framework/TurboDiagnose;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/amapauto/framework/TurboDiagnose$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->b:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->c:Z

    .line 12
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d:Z

    .line 14
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->e:Z

    .line 16
    iput v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 18
    iput v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I

    .line 20
    return-void
.end method

.method public static d()Lcom/autonavi/amapauto/framework/TurboDiagnose;
    .locals 1

    .line 1
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose$a;->a()Lcom/autonavi/amapauto/framework/TurboDiagnose;

    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static native nativeDebug()V
.end method

.method private static native nativeDump()V
.end method

.method private static native nativeInit()Z
.end method

.method private static native nativeIsForceDebug()Z
.end method

.method private static native nativeSetConfigPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetLogPath(Ljava/lang/String;)V
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 3
    const/4 v1, 0x0

    .line 4
    if-ltz v0, :cond_1

    .line 6
    iget v2, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I

    .line 8
    if-gez v2, :cond_0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    if-ge v0, v2, :cond_1

    .line 13
    const/4 v1, 0x1

    .line 14
    :cond_1
    :goto_0
    return v1
.end method

.method public b()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->nativeDump()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    nop

    .line 11
    :goto_0
    iget v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 15
    iput v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 17
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a()Z

    .line 20
    move-result v0

    .line 21
    const-string v1, "turbo"

    .line 23
    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    const-string v2, "crash, remain "

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    iget v2, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I

    .line 37
    iget v3, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 39
    sub-int/2addr v2, v3

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->n()Z

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const-string v0, "crash, disable"

    .line 60
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->c()Z

    .line 66
    :goto_1
    return-void
.end method

.method public final c()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d:Z

    .line 4
    new-instance v0, Ljava/io/File;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    iget-object v2, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v2, "count.txt"

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 37
    :cond_0
    const/4 v0, 0x1

    .line 38
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->k(Ljava/lang/String;Z)Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "detect/runtime_detector_log.txt"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "detect/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public h()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->c:Z

    .line 9
    iget-object v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 11
    invoke-static {v1}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->nativeSetConfigPath(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 18
    invoke-static {v1}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->nativeSetLogPath(Ljava/lang/String;)V

    .line 21
    iget-boolean v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->e:Z

    .line 23
    if-nez v1, :cond_2

    .line 25
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->nativeIsForceDebug()Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_2

    .line 31
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->j()Z

    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_1

    .line 37
    return-void

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a()Z

    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 44
    const-string v0, "turbo"

    .line 46
    const-string v1, "checkCount fail"

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    invoke-virtual {p0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->c()Z

    .line 54
    return-void

    .line 55
    :cond_2
    iput-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d:Z

    .line 57
    invoke-static {}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->nativeInit()Z

    .line 60
    return-void
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->d:Z

    .line 3
    return v0
.end method

.method public final j()Z
    .locals 7

    .line 1
    const-string v0, " / "

    .line 3
    const-string v1, "turbo"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    iget-object v3, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    const-string v3, "count.txt"

    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v2

    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {p0, v2, v3}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->k(Ljava/lang/String;Z)Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_0

    .line 31
    return v3

    .line 32
    :cond_0
    const-string v4, "/"

    .line 34
    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    move-result-object v4

    .line 38
    array-length v5, v4

    .line 39
    const/4 v6, 0x2

    .line 40
    if-ne v5, v6, :cond_1

    .line 42
    :try_start_0
    aget-object v5, v4, v3

    .line 44
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    move-result v5

    .line 48
    iput v5, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 50
    const/4 v5, 0x1

    .line 51
    aget-object v4, v4, v5

    .line 53
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 56
    move-result v4

    .line 57
    iput v4, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    const-string v3, "count="

    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget v3, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I

    .line 79
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 86
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v5

    .line 90
    :catch_0
    move-exception v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 96
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    const-string v5, "content="

    .line 101
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    const-string v2, ",count="

    .line 109
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget v2, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 114
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I

    .line 122
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 129
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1
    return v3
.end method

.method public final k(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 13
    return-object v1

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    .line 21
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 24
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    .line 26
    const-string v3, "UTF-8"

    .line 28
    invoke-direct {v0, v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 31
    :try_start_2
    new-instance v3, Ljava/io/BufferedReader;

    .line 33
    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 36
    :cond_1
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 39
    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 40
    if-nez v4, :cond_2

    .line 42
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 45
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 48
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 51
    :catch_0
    const/4 p2, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    :try_start_5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    if-eqz p2, :cond_1

    .line 58
    const-string v4, "\n"

    .line 60
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 63
    goto :goto_0

    .line 64
    :catch_1
    move-exception p2

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p1

    .line 67
    goto :goto_3

    .line 68
    :catch_2
    move-exception p2

    .line 69
    move-object v3, v1

    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p1

    .line 72
    move-object v0, v1

    .line 73
    goto :goto_3

    .line 74
    :catch_3
    move-exception p2

    .line 75
    move-object v0, v1

    .line 76
    move-object v3, v0

    .line 77
    goto :goto_1

    .line 78
    :catchall_2
    move-exception p1

    .line 79
    move-object v0, v1

    .line 80
    move-object v2, v0

    .line 81
    goto :goto_3

    .line 82
    :catch_4
    move-exception p2

    .line 83
    move-object v0, v1

    .line 84
    move-object v2, v0

    .line 85
    move-object v3, v2

    .line 86
    :goto_1
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 89
    if-eqz v3, :cond_3

    .line 91
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 94
    :cond_3
    if-eqz v0, :cond_4

    .line 96
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 99
    :cond_4
    if-eqz v2, :cond_5

    .line 101
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 104
    :catch_5
    :cond_5
    const/4 p2, 0x0

    .line 105
    :goto_2
    if-eqz p2, :cond_6

    .line 107
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p1

    .line 111
    return-object p1

    .line 112
    :cond_6
    return-object v1

    .line 113
    :catchall_3
    move-exception p1

    .line 114
    move-object v1, v3

    .line 115
    :goto_3
    if-eqz v1, :cond_7

    .line 117
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 120
    :cond_7
    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    .line 125
    :cond_8
    if-eqz v2, :cond_9

    .line 127
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    .line 130
    :catch_6
    :cond_9
    throw p1
.end method

.method public l(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 11
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v0, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string v0, "/detect/"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 30
    :cond_0
    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->b:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public final n()Z
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->f:I

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->g:I

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    iget-object v3, p0, Lcom/autonavi/amapauto/framework/TurboDiagnose;->a:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v3, "count.txt"

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p0, v1, v2, v0}, Lcom/autonavi/amapauto/framework/TurboDiagnose;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 49
    move-result v0

    .line 50
    return v0
.end method

.method public final o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez p1, :cond_0

    .line 13
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 19
    return v1

    .line 20
    :cond_0
    new-instance p1, Ljava/io/File;

    .line 22
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 p2, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 32
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 38
    return v1

    .line 39
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    .line 41
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 44
    :try_start_1
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 51
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    :goto_0
    const/4 v1, 0x1

    .line 60
    goto :goto_3

    .line 61
    :catchall_0
    move-exception p1

    .line 62
    move-object p2, v0

    .line 63
    goto :goto_4

    .line 64
    :catch_1
    move-exception p1

    .line 65
    move-object p2, v0

    .line 66
    goto :goto_1

    .line 67
    :catch_2
    move-exception p1

    .line 68
    move-object p2, v0

    .line 69
    goto :goto_2

    .line 70
    :catchall_1
    move-exception p1

    .line 71
    goto :goto_4

    .line 72
    :catch_3
    move-exception p1

    .line 73
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    if-eqz p2, :cond_2

    .line 78
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 81
    goto :goto_3

    .line 82
    :catch_4
    move-exception p1

    .line 83
    :goto_2
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 86
    if-eqz p2, :cond_2

    .line 88
    :try_start_6
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 91
    goto :goto_3

    .line 92
    :catch_5
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    :cond_2
    :goto_3
    return v1

    .line 97
    :goto_4
    if-eqz p2, :cond_3

    .line 99
    :try_start_7
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 102
    goto :goto_5

    .line 103
    :catch_6
    move-exception p2

    .line 104
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    :cond_3
    :goto_5
    throw p1
.end method

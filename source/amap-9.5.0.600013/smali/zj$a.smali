.class public Lzj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzj;->p(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lzj;


# direct methods
.method public constructor <init>(Lzj;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lzj$a;->b:Lzj;

    .line 3
    iput-object p2, p0, Lzj$a;->a:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    const-string v0, "DiuGenerator"

    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    :try_start_0
    const-string v4, "saveDiuToSdCard encryptAES md5Diu:{?}"

    .line 8
    new-array v5, v1, [Ljava/lang/Object;

    .line 10
    iget-object v6, p0, Lzj$a;->a:Ljava/lang/String;

    .line 12
    aput-object v6, v5, v2

    .line 14
    invoke-static {v0, v4, v5}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v4, Ljava/io/FileOutputStream;

    .line 19
    invoke-static {}, Lzj;->a()Ljava/lang/String;

    .line 22
    move-result-object v5

    .line 23
    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    iget-object v5, p0, Lzj$a;->a:Ljava/lang/String;

    .line 33
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v4, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 47
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 53
    goto :goto_1

    .line 54
    :catch_0
    move-exception v3

    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    goto :goto_2

    .line 58
    :catch_1
    move-exception v4

    .line 59
    move-object v7, v4

    .line 60
    move-object v4, v3

    .line 61
    move-object v3, v7

    .line 62
    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    const-string v5, "saveDiuToSdCard Exception: {?}"

    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 72
    move-result-object v3

    .line 73
    aput-object v3, v1, v2

    .line 75
    invoke-static {v0, v5, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 78
    if-eqz v4, :cond_0

    .line 80
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 83
    goto :goto_1

    .line 84
    :catch_2
    move-exception v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 88
    :cond_0
    :goto_1
    return-void

    .line 89
    :catchall_1
    move-exception v0

    .line 90
    move-object v3, v4

    .line 91
    :goto_2
    if-eqz v3, :cond_1

    .line 93
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 96
    goto :goto_3

    .line 97
    :catch_3
    move-exception v1

    .line 98
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_1
    :goto_3
    throw v0
.end method

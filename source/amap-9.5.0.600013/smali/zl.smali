.class public Lzl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/io/FileOutputStream;

.field public final b:Ljava/nio/channels/FileLock;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/io/FileOutputStream;

    .line 6
    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 9
    iput-object v0, p0, Lzl;->a:Ljava/io/FileOutputStream;

    .line 11
    const/4 v0, 0x0

    .line 12
    const/4 v1, 0x0

    .line 13
    move-object v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    :goto_0
    const/4 v4, 0x3

    .line 16
    if-ge v3, v4, :cond_2

    .line 18
    add-int/lit8 v3, v3, 0x1

    .line 20
    :try_start_0
    iget-object v4, p0, Lzl;->a:Ljava/io/FileOutputStream;

    .line 22
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    .line 25
    move-result-object v4

    .line 26
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;

    .line 29
    move-result-object v1

    .line 30
    if-eqz v1, :cond_0

    .line 32
    const/4 v4, 0x1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    const/4 v4, 0x0

    .line 35
    :goto_1
    if-eqz v4, :cond_1

    .line 37
    goto :goto_2

    .line 38
    :cond_1
    const-wide/16 v4, 0xa

    .line 40
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v2

    .line 45
    const-string v4, "ShareFileLockHelper"

    .line 47
    const-string v5, "saveException Thread failed time:10"

    .line 49
    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    :goto_2
    if-eqz v1, :cond_3

    .line 55
    iput-object v1, p0, Lzl;->b:Ljava/nio/channels/FileLock;

    .line 57
    return-void

    .line 58
    :cond_3
    new-instance v0, Ljava/io/IOException;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    const-string v3, "Exception:localFileLock failed: "

    .line 67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p1

    .line 81
    invoke-direct {v0, p1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    throw v0
.end method

.method public static a(Ljava/io/File;)Lzl;
    .locals 1

    .line 1
    new-instance v0, Lzl;

    .line 3
    invoke-direct {v0, p0}, Lzl;-><init>(Ljava/io/File;)V

    .line 6
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lzl;->b:Ljava/nio/channels/FileLock;

    .line 3
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_0
    iget-object v0, p0, Lzl;->a:Ljava/io/FileOutputStream;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 15
    :cond_1
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lzl;->a:Ljava/io/FileOutputStream;

    .line 19
    if-eqz v1, :cond_2

    .line 21
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 24
    :cond_2
    throw v0
.end method

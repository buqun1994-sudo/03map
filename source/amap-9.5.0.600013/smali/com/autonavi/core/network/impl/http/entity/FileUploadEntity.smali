.class public Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/impl/http/entity/HttpEntity;
.implements Lcom/autonavi/core/network/impl/http/entity/ISupportProgress;
.implements Lcom/autonavi/core/network/impl/http/entity/IFixedLengthStreamingMode;


# static fields
.field private static final BUFFER_SIZE:I = 0x10000

.field private static final TAG:Ljava/lang/String; = "ANet-FileUploadEntity"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mFile:Ljava/io/File;

.field private mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 6
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mContentType:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mContentType:Ljava/lang/String;

    .line 11
    return-object v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    const-string v1, "multipart/form-data;file="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-object v1, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 24
    if-nez v1, :cond_1

    .line 26
    const-string v1, ""

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public length()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 10
    move-result-wide v0

    .line 11
    long-to-int v0, v0

    .line 12
    :goto_0
    return v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mContentType:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public setProgressCallback(Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

    .line 3
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 3
    const-wide/16 v1, 0x0

    .line 5
    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .line 17
    iget-object v4, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 19
    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 22
    const/high16 v0, 0x10000

    .line 24
    :try_start_1
    new-array v0, v0, [B

    .line 26
    iget-object v4, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 28
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 31
    move-result-wide v4

    .line 32
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 35
    move-result v6

    .line 36
    if-ltz v6, :cond_2

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-virtual {p1, v0, v7, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 42
    int-to-long v6, v6

    .line 43
    add-long/2addr v1, v6

    .line 44
    iget-object v6, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

    .line 46
    if-eqz v6, :cond_1

    .line 48
    invoke-interface {v6, v4, v5, v1, v2}, Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;->onProgress(JJ)V

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    invoke-static {v3}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 58
    return-wide v1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    move-object v0, v3

    .line 61
    goto :goto_1

    .line 62
    :catchall_1
    move-exception p1

    .line 63
    :goto_1
    invoke-static {v0}, Lcom/autonavi/core/network/impl/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 66
    throw p1

    .line 67
    :cond_3
    :goto_2
    const/4 p1, 0x5

    .line 68
    invoke-static {p1}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_5

    .line 74
    new-instance p1, Ljava/lang/StringBuilder;

    .line 76
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    const-string v0, "upload error, invalid file"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/FileUploadEntity;->mFile:Ljava/io/File;

    .line 86
    if-eqz v0, :cond_4

    .line 88
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    goto :goto_3

    .line 93
    :cond_4
    const-string v0, "!"

    .line 95
    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 102
    const-string v0, "ANet-FileUploadEntity"

    .line 104
    invoke-static {v0, p1}, Lcom/autonavi/core/network/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_5
    return-wide v1
.end method

.class public Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/impl/http/entity/HttpEntity;


# static fields
.field private static final TAG:Ljava/lang/String; = "ANet-InputStreamEntity"


# instance fields
.field private mContent:Ljava/io/InputStream;

.field private mContentType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 6
    iput-object p2, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContentType:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContentType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "ANet-InputStreamEntity"

    .line 3
    const/16 v1, 0x400

    .line 5
    new-array v1, v1, [B

    .line 7
    :try_start_0
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 9
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    const-string v4, "inputStream reset error: "

    .line 21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    invoke-static {v0, v2}, Lcom/autonavi/core/network/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :goto_0
    const/4 v2, 0x0

    .line 39
    :try_start_1
    iget-object v3, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 41
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    .line 44
    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 45
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 47
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    .line 50
    move-result v4

    .line 51
    const/4 v5, -0x1

    .line 52
    if-eq v4, v5, :cond_0

    .line 54
    invoke-virtual {p1, v1, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 61
    :try_start_3
    iget-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 63
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 66
    goto :goto_3

    .line 67
    :catchall_1
    move-exception p1

    .line 68
    move v2, v3

    .line 69
    goto :goto_2

    .line 70
    :catchall_2
    move-exception p1

    .line 71
    :goto_2
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    const-string v3, "inputStream write error: "

    .line 78
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object p1

    .line 92
    invoke-static {v0, p1}, Lcom/autonavi/core/network/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    .line 95
    :try_start_5
    iget-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 97
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 100
    :catchall_3
    move v3, v2

    .line 101
    :catchall_4
    :goto_3
    int-to-long v0, v3

    .line 102
    return-wide v0

    .line 103
    :catch_0
    move-exception p1

    .line 104
    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 105
    :catchall_5
    move-exception p1

    .line 106
    :try_start_7
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/InputStreamEntity;->mContent:Ljava/io/InputStream;

    .line 108
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 111
    :catchall_6
    throw p1
.end method

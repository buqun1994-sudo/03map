.class public Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/core/network/impl/http/entity/HttpEntity;
.implements Lcom/autonavi/core/network/impl/http/entity/ISupportProgress;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;
    }
.end annotation


# static fields
.field private static BOUNDARY_PREFIX_BYTES:[B = null

.field private static END_BYTES:[B = null

.field private static final TAG:Ljava/lang/String; = "ANet-MultipartEntity"

.field private static TWO_DASHES_BYTES:[B


# instance fields
.field private mBoundaryPostfixBytes:[B

.field private mCharset:Ljava/lang/String;

.field private mContentType:Ljava/lang/String;

.field private mMultipartParam:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "--------7da3d81520810"

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->BOUNDARY_PREFIX_BYTES:[B

    .line 9
    const-string v0, "\r\n"

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 17
    const-string v0, "--"

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->TWO_DASHES_BYTES:[B

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mMultipartParam:Ljava/util/List;

    .line 6
    if-nez p2, :cond_0

    .line 8
    const-string p2, "UTF-8"

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mCharset:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->generateContentType()V

    .line 15
    return-void
.end method

.method private generateContentType()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 4
    move-result-wide v0

    .line 5
    const-wide v2, 0x40efffe000000000L    # 65535.0

    .line 10
    mul-double v0, v0, v2

    .line 12
    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 19
    move-result-object v1

    .line 20
    iput-object v1, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mBoundaryPostfixBytes:[B

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    const-string v2, "multipart/form-data; boundary="

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    new-instance v2, Ljava/lang/String;

    .line 34
    sget-object v3, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->BOUNDARY_PREFIX_BYTES:[B

    .line 36
    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 49
    iput-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mContentType:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private writeFilePart(Ljava/io/OutputStream;Ljava/lang/String;Ljava/io/File;[BLcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [[B

    .line 4
    sget-object v1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->TWO_DASHES_BYTES:[B

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sget-object v1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->BOUNDARY_PREFIX_BYTES:[B

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p4, v0, v1

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 20
    move-result-wide v4

    .line 21
    const-wide/16 v6, 0x0

    .line 23
    add-long/2addr v4, v6

    .line 24
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 27
    move-result-object p4

    .line 28
    invoke-static {p4}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_0

    .line 34
    const-string v0, "application/octet-stream"

    .line 36
    :cond_0
    const-string v6, "\\/jpg$"

    .line 38
    const-string v7, "/jpeg"

    .line 40
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 44
    new-array v6, v3, [[B

    .line 46
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    const-string v8, "Content-Disposition: form-data; name=\""

    .line 53
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string p2, "\"; filename=\""

    .line 61
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    const-string p2, "\""

    .line 69
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object p2

    .line 76
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 79
    move-result-object p2

    .line 80
    aput-object p2, v6, v2

    .line 82
    invoke-direct {p0, p1, v6}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 85
    move-result-wide v6

    .line 86
    add-long/2addr v4, v6

    .line 87
    new-array p2, v1, [[B

    .line 89
    new-instance p4, Ljava/lang/StringBuilder;

    .line 91
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    const-string v1, "Content-Type: "

    .line 96
    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    move-result-object p4

    .line 106
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    .line 109
    move-result-object p4

    .line 110
    aput-object p4, p2, v2

    .line 112
    sget-object p4, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 114
    aput-object p4, p2, v3

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 119
    move-result-wide v0

    .line 120
    add-long/2addr v4, v0

    .line 121
    new-instance p2, Ljava/io/FileInputStream;

    .line 123
    invoke-direct {p2, p3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 126
    invoke-direct {p0, p1, p2, p5}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;)J

    .line 129
    move-result-wide p1

    .line 130
    add-long/2addr v4, p1

    .line 131
    return-wide v4
.end method

.method private varargs writeLine(Ljava/io/OutputStream;[[B)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    array-length v0, p2

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    const/4 v3, 0x0

    .line 5
    :goto_0
    if-ge v3, v0, :cond_0

    .line 7
    aget-object v4, p2, v3

    .line 9
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 12
    array-length v4, v4

    .line 13
    int-to-long v4, v4

    .line 14
    add-long/2addr v1, v4

    .line 15
    add-int/lit8 v3, v3, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object p2, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 20
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 23
    sget-object p1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 25
    array-length p1, p1

    .line 26
    int-to-long p1, p1

    .line 27
    add-long/2addr v1, p1

    .line 28
    return-wide v1
.end method

.method private writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/16 v0, 0x400

    .line 3
    new-array v0, v0, [B

    .line 5
    const-wide/16 v1, 0x0

    .line 7
    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    .line 10
    move-result v3

    .line 11
    if-ltz v3, :cond_1

    .line 13
    const/4 v4, 0x0

    .line 14
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 17
    int-to-long v3, v3

    .line 18
    add-long/2addr v1, v3

    .line 19
    iget-object v3, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

    .line 21
    if-eqz v3, :cond_0

    .line 23
    iget-wide v4, p3, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;->totalLength:J

    .line 25
    iget-wide v6, p3, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;->nowLength:J

    .line 27
    add-long/2addr v6, v1

    .line 28
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;->onProgress(JJ)V

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-wide v3, p3, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;->nowLength:J

    .line 34
    add-long/2addr v3, v1

    .line 35
    iput-wide v3, p3, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;->nowLength:J

    .line 37
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 40
    sget-object p2, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 42
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 45
    sget-object p1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 47
    array-length p1, p1

    .line 48
    int-to-long p1, p1

    .line 49
    add-long/2addr v1, p1

    .line 50
    return-wide v1
.end method

.method private writeStringPart(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;[B)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v0, v0, [[B

    .line 4
    sget-object v1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->TWO_DASHES_BYTES:[B

    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 9
    sget-object v1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->BOUNDARY_PREFIX_BYTES:[B

    .line 11
    const/4 v3, 0x1

    .line 12
    aput-object v1, v0, v3

    .line 14
    const/4 v1, 0x2

    .line 15
    aput-object p4, v0, v1

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 20
    move-result-wide v4

    .line 21
    const-wide/16 v6, 0x0

    .line 23
    add-long/2addr v4, v6

    .line 24
    new-array p4, v1, [[B

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    const-string v1, "Content-Disposition: form-data; name=\""

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    const-string p2, "\""

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    .line 51
    move-result-object p2

    .line 52
    aput-object p2, p4, v2

    .line 54
    sget-object p2, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->END_BYTES:[B

    .line 56
    aput-object p2, p4, v3

    .line 58
    invoke-direct {p0, p1, p4}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 61
    move-result-wide v0

    .line 62
    add-long/2addr v4, v0

    .line 63
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object p2

    .line 67
    iget-object p3, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mCharset:Ljava/lang/String;

    .line 69
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 72
    move-result-object p2

    .line 73
    new-array p3, v3, [[B

    .line 75
    aput-object p2, p3, v2

    .line 77
    invoke-direct {p0, p1, p3}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 80
    move-result-wide p1

    .line 81
    add-long/2addr v4, p1

    .line 82
    return-wide v4
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mContentType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public setProgressCallback(Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mProgressCallback:Lcom/autonavi/core/network/impl/http/response/HurlProgressCallback;

    .line 3
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)J
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;

    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v6, v0}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;-><init>(Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$1;)V

    .line 7
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mMultipartParam:Ljava/util/List;

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;

    .line 25
    iget-wide v2, v6, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;->totalLength:J

    .line 27
    invoke-virtual {v1}, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->fileLength()J

    .line 30
    move-result-wide v4

    .line 31
    add-long/2addr v2, v4

    .line 32
    iput-wide v2, v6, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;->totalLength:J

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mMultipartParam:Ljava/util/List;

    .line 37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 40
    move-result-object v7

    .line 41
    const-wide/16 v8, 0x0

    .line 43
    move-wide v10, v8

    .line 44
    :cond_1
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_6

    .line 50
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;

    .line 56
    iget-object v1, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->file:Ljava/io/File;

    .line 58
    if-eqz v1, :cond_2

    .line 60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_2

    .line 66
    iget-object v2, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->paramName:Ljava/lang/String;

    .line 68
    iget-object v3, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->file:Ljava/io/File;

    .line 70
    iget-object v4, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mBoundaryPostfixBytes:[B

    .line 72
    move-object v0, p0

    .line 73
    move-object v1, p1

    .line 74
    move-object v5, v6

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeFilePart(Ljava/io/OutputStream;Ljava/lang/String;Ljava/io/File;[BLcom/autonavi/core/network/impl/http/entity/MultipartEntity$ProgressRecord;)J

    .line 78
    move-result-wide v0

    .line 79
    goto :goto_2

    .line 80
    :cond_2
    iget-object v1, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->content:Ljava/lang/String;

    .line 82
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    move-result v1

    .line 86
    if-nez v1, :cond_3

    .line 88
    iget-object v1, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->paramName:Ljava/lang/String;

    .line 90
    iget-object v0, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->content:Ljava/lang/String;

    .line 92
    iget-object v2, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mBoundaryPostfixBytes:[B

    .line 94
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeStringPart(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;[B)J

    .line 97
    move-result-wide v0

    .line 98
    :goto_2
    add-long/2addr v10, v0

    .line 99
    goto :goto_1

    .line 100
    :cond_3
    const/4 v1, 0x5

    .line 101
    invoke-static {v1}, Lcom/autonavi/core/network/util/Logger;->isLogEnable(I)Z

    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_1

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 109
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    const-string v2, "Multipart send error, invalid param: "

    .line 114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->paramName:Ljava/lang/String;

    .line 119
    const-string v3, ""

    .line 121
    if-nez v2, :cond_4

    .line 123
    move-object v2, v3

    .line 124
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "/"

    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v0, v0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->file:Ljava/io/File;

    .line 134
    if-nez v0, :cond_5

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 140
    move-result-object v3

    .line 141
    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 148
    const-string v1, "ANet-MultipartEntity"

    .line 150
    invoke-static {v1, v0}, Lcom/autonavi/core/network/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    goto :goto_1

    .line 154
    :cond_6
    cmp-long v0, v10, v8

    .line 156
    if-lez v0, :cond_7

    .line 158
    const/4 v0, 0x4

    .line 159
    new-array v0, v0, [[B

    .line 161
    sget-object v1, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->TWO_DASHES_BYTES:[B

    .line 163
    const/4 v2, 0x0

    .line 164
    aput-object v1, v0, v2

    .line 166
    const/4 v2, 0x1

    .line 167
    sget-object v3, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->BOUNDARY_PREFIX_BYTES:[B

    .line 169
    aput-object v3, v0, v2

    .line 171
    const/4 v2, 0x2

    .line 172
    iget-object v3, p0, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->mBoundaryPostfixBytes:[B

    .line 174
    aput-object v3, v0, v2

    .line 176
    const/4 v2, 0x3

    .line 177
    aput-object v1, v0, v2

    .line 179
    invoke-direct {p0, p1, v0}, Lcom/autonavi/core/network/impl/http/entity/MultipartEntity;->writeLine(Ljava/io/OutputStream;[[B)J

    .line 182
    move-result-wide v0

    .line 183
    add-long/2addr v10, v0

    .line 184
    :cond_7
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 187
    return-wide v10
.end method

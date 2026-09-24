.class public Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/core/network/inter/request/MultipartRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MultiPartKV"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public file:Ljava/io/File;

.field public paramName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->file:Ljava/io/File;

    .line 3
    iput-object p2, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->paramName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->content:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->paramName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public fileLength()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->file:Ljava/io/File;

    .line 3
    if-nez v0, :cond_0

    .line 5
    const-wide/16 v0, 0x0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 11
    move-result-wide v0

    .line 12
    :goto_0
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "{"

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "key:"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->paramName:Ljava/lang/String;

    .line 18
    const-string v2, ""

    .line 20
    if-eqz v1, :cond_0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v1, v2

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ",value:"

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->file:Ljava/io/File;

    .line 34
    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object v1, p0, Lcom/autonavi/core/network/inter/request/MultipartRequest$MultiPartKV;->content:Ljava/lang/String;

    .line 43
    if-eqz v1, :cond_2

    .line 45
    move-object v2, v1

    .line 46
    :cond_2
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "}"

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    move-result-object v0

    .line 58
    return-object v0
.end method

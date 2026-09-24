.class public Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public jsonData:Ljava/lang/String;

.field public jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

.field public jsonResult:Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

.field public requestId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonHeader:Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;

    .line 3
    const-string v1, "null"

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->toString()Ljava/lang/String;

    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-object v0, v1

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonResult:Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2}, Lcom/autonavi/amapauto/jni/protocol/data/JsonResult;->toString()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 21
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    const-string v3, "JsonParam{requestId="

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    iget v3, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->requestId:I

    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string v3, ", jsonHeader="

    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    const-string v0, ", jsonResult="

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v0, ", jsonData=\'"

    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v0, p0, Lcom/autonavi/amapauto/jni/protocol/data/JsonParam;->jsonData:Ljava/lang/String;

    .line 59
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string v0, "\'}"

    .line 64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method

.class public final Lcom/alibaba/android/ark/AIMRpcRequestHeader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x14579b2f9fc79277L


# instance fields
.field public dataType:Lcom/alibaba/android/ark/AIMRpcDataType;

.field public enableRetry:Z

.field public kvParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public noNeedAuth:Z

.field public timeoutMs:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/alibaba/android/ark/AIMRpcDataType;->DT_MSGPACK:Lcom/alibaba/android/ark/AIMRpcDataType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->dataType:Lcom/alibaba/android/ark/AIMRpcDataType;

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->enableRetry:Z

    const-wide/32 v1, 0x9c40

    .line 14
    iput-wide v1, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->timeoutMs:J

    .line 15
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->noNeedAuth:Z

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMRpcDataType;ZJZLjava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMRpcDataType;",
            "ZJZ",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMRpcDataType;->DT_MSGPACK:Lcom/alibaba/android/ark/AIMRpcDataType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->dataType:Lcom/alibaba/android/ark/AIMRpcDataType;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->enableRetry:Z

    const-wide/32 v1, 0x9c40

    .line 4
    iput-wide v1, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->timeoutMs:J

    .line 5
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->noNeedAuth:Z

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->dataType:Lcom/alibaba/android/ark/AIMRpcDataType;

    .line 7
    :cond_0
    iput-boolean p2, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->enableRetry:Z

    .line 8
    iput-wide p3, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->timeoutMs:J

    .line 9
    iput-boolean p5, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->noNeedAuth:Z

    .line 10
    iput-object p6, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->kvParams:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getDataType()Lcom/alibaba/android/ark/AIMRpcDataType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->dataType:Lcom/alibaba/android/ark/AIMRpcDataType;

    .line 3
    return-object v0
.end method

.method public getEnableRetry()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->enableRetry:Z

    .line 3
    return v0
.end method

.method public getKvParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->kvParams:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getNoNeedAuth()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->noNeedAuth:Z

    .line 3
    return v0
.end method

.method public getTimeoutMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->timeoutMs:J

    .line 3
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMRpcRequestHeader{dataType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->dataType:Lcom/alibaba/android/ark/AIMRpcDataType;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "enableRetry="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->enableRetry:Z

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "timeoutMs="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->timeoutMs:J

    .line 41
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "noNeedAuth="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->noNeedAuth:Z

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, "kvParams="

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMRpcRequestHeader;->kvParams:Ljava/util/HashMap;

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, "}"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 79
    return-object v0
.end method

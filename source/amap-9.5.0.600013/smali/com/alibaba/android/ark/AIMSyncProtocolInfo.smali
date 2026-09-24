.class public final Lcom/alibaba/android/ark/AIMSyncProtocolInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6f4194e51acea1c8L


# instance fields
.field public bizName:Ljava/lang/String;

.field public bizType:J

.field public protocolType:Lcom/alibaba/android/ark/AIMSyncProtocolType;

.field public topic:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizType:J

    .line 10
    sget-object v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->RELIABLE:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->protocolType:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/android/ark/AIMSyncProtocolType;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizType:J

    .line 3
    sget-object v0, Lcom/alibaba/android/ark/AIMSyncProtocolType;->RELIABLE:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->protocolType:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 4
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->topic:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizType:J

    .line 6
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizName:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 7
    iput-object p5, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->protocolType:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getBizName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizName:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getBizType()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizType:J

    .line 3
    return-wide v0
.end method

.method public getProtocolType()Lcom/alibaba/android/ark/AIMSyncProtocolType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->protocolType:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 3
    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->topic:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMSyncProtocolInfo{topic="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->topic:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "bizType="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizType:J

    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "bizName="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->bizName:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "protocolType="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSyncProtocolInfo;->protocolType:Lcom/alibaba/android/ark/AIMSyncProtocolType;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "}"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

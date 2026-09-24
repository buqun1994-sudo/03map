.class public final Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x162b5da9126f44bL


# instance fields
.field public bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

.field public cid:Ljava/lang/String;

.field public localid:Ljava/lang/String;

.field public updateMode:Lcom/alibaba/android/ark/AIMMsgUpdateMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->UPDATE_ALL:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->updateMode:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgUpdateMode;Lcom/alibaba/android/ark/AIMMsgBizInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgUpdateMode;->UPDATE_ALL:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->updateMode:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 3
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->cid:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->localid:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 5
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->updateMode:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 6
    :cond_0
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

    return-void
.end method


# virtual methods
.method public getBizInfo()Lcom/alibaba/android/ark/AIMMsgBizInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

    .line 3
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->cid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getLocalid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->localid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getUpdateMode()Lcom/alibaba/android/ark/AIMMsgUpdateMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->updateMode:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMMsgBizUpdateInfo{cid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->cid:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "localid="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->localid:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "updateMode="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->updateMode:Lcom/alibaba/android/ark/AIMMsgUpdateMode;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "bizInfo="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;->bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

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

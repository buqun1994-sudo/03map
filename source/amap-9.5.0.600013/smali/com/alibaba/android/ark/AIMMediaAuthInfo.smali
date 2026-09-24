.class public final Lcom/alibaba/android/ark/AIMMediaAuthInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x72a8cc5a2fc10e45L


# instance fields
.field public bizType:Ljava/lang/String;

.field public groupAvatorAuth:Lcom/alibaba/android/ark/AIMGroupAvatorMediaAuthInfo;

.field public msgAuth:Lcom/alibaba/android/ark/AIMMsgMediaAuthInfo;

.field public scene:Lcom/alibaba/android/ark/AIMMediaAuthScene;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/alibaba/android/ark/AIMMediaAuthScene;->MAC_UNKNOWN:Lcom/alibaba/android/ark/AIMMediaAuthScene;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->scene:Lcom/alibaba/android/ark/AIMMediaAuthScene;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMMediaAuthScene;Ljava/lang/String;Lcom/alibaba/android/ark/AIMGroupAvatorMediaAuthInfo;Lcom/alibaba/android/ark/AIMMsgMediaAuthInfo;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMediaAuthScene;->MAC_UNKNOWN:Lcom/alibaba/android/ark/AIMMediaAuthScene;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->scene:Lcom/alibaba/android/ark/AIMMediaAuthScene;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->scene:Lcom/alibaba/android/ark/AIMMediaAuthScene;

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->bizType:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->groupAvatorAuth:Lcom/alibaba/android/ark/AIMGroupAvatorMediaAuthInfo;

    .line 6
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->msgAuth:Lcom/alibaba/android/ark/AIMMsgMediaAuthInfo;

    return-void
.end method


# virtual methods
.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->bizType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getGroupAvatorAuth()Lcom/alibaba/android/ark/AIMGroupAvatorMediaAuthInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->groupAvatorAuth:Lcom/alibaba/android/ark/AIMGroupAvatorMediaAuthInfo;

    .line 3
    return-object v0
.end method

.method public getMsgAuth()Lcom/alibaba/android/ark/AIMMsgMediaAuthInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->msgAuth:Lcom/alibaba/android/ark/AIMMsgMediaAuthInfo;

    .line 3
    return-object v0
.end method

.method public getScene()Lcom/alibaba/android/ark/AIMMediaAuthScene;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->scene:Lcom/alibaba/android/ark/AIMMediaAuthScene;

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
    const-string v1, "AIMMediaAuthInfo{scene="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->scene:Lcom/alibaba/android/ark/AIMMediaAuthScene;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "bizType="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->bizType:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "groupAvatorAuth="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->groupAvatorAuth:Lcom/alibaba/android/ark/AIMGroupAvatorMediaAuthInfo;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "msgAuth="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMediaAuthInfo;->msgAuth:Lcom/alibaba/android/ark/AIMMsgMediaAuthInfo;

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

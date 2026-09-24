.class public final Lcom/alibaba/android/ark/AIMFullLinkPointMsg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public basePoint:Lcom/alibaba/android/ark/AIMFullLinkPointBase;

.field public msgInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMTraceMsgInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMFullLinkPointBase;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMFullLinkPointBase;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMTraceMsgInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMFullLinkPointMsg;->basePoint:Lcom/alibaba/android/ark/AIMFullLinkPointBase;

    .line 3
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMFullLinkPointMsg;->msgInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBasePoint()Lcom/alibaba/android/ark/AIMFullLinkPointBase;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMFullLinkPointMsg;->basePoint:Lcom/alibaba/android/ark/AIMFullLinkPointBase;

    .line 3
    return-object v0
.end method

.method public getMsgInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMTraceMsgInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMFullLinkPointMsg;->msgInfos:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMFullLinkPointMsg{basePoint="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMFullLinkPointMsg;->basePoint:Lcom/alibaba/android/ark/AIMFullLinkPointBase;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "msgInfos="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMFullLinkPointMsg;->msgInfos:Ljava/util/ArrayList;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "}"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

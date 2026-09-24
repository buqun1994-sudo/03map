.class public final Lcom/alibaba/android/ark/AIMSearchChatContentParams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1c84ee7567f353f2L


# instance fields
.field public bizTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public cids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public endTime:J

.field public isAsc:Z

.field public isAutoHighlight:Z

.field public keyword:Ljava/lang/String;

.field public maxNum:I

.field public offset:I

.field public senderIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation
.end field

.field public startTime:J

.field public supportMsgTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgContentType;",
            ">;"
        }
    .end annotation
.end field

.field public supportSubTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->offset:I

    const/16 v0, 0x14

    .line 16
    iput v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->maxNum:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->startTime:J

    const-wide v0, 0x7fffffffffffffffL

    .line 18
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->endTime:J

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAutoHighlight:Z

    .line 20
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAsc:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJJZZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJJZZ",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgContentType;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->keyword:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->offset:I

    .line 4
    iput p3, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->maxNum:I

    .line 5
    iput-wide p4, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->startTime:J

    .line 6
    iput-wide p6, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->endTime:J

    .line 7
    iput-boolean p8, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAutoHighlight:Z

    .line 8
    iput-boolean p9, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAsc:Z

    .line 9
    iput-object p10, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->supportMsgTypes:Ljava/util/ArrayList;

    .line 10
    iput-object p11, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->supportSubTypes:Ljava/util/ArrayList;

    .line 11
    iput-object p12, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->bizTags:Ljava/util/ArrayList;

    .line 12
    iput-object p13, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->cids:Ljava/util/ArrayList;

    .line 13
    iput-object p14, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->senderIds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getBizTags()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->bizTags:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getCids()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->cids:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->endTime:J

    .line 3
    return-wide v0
.end method

.method public getIsAsc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAsc:Z

    .line 3
    return v0
.end method

.method public getIsAutoHighlight()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAutoHighlight:Z

    .line 3
    return v0
.end method

.method public getKeyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->keyword:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMaxNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->maxNum:I

    .line 3
    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->offset:I

    .line 3
    return v0
.end method

.method public getSenderIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->senderIds:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->startTime:J

    .line 3
    return-wide v0
.end method

.method public getSupportMsgTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgContentType;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->supportMsgTypes:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getSupportSubTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->supportSubTypes:Ljava/util/ArrayList;

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
    const-string v1, "AIMSearchChatContentParams{keyword="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->keyword:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "offset="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->offset:I

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "maxNum="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->maxNum:I

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "startTime="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->startTime:J

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "endTime="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->endTime:J

    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "isAutoHighlight="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAutoHighlight:Z

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "isAsc="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->isAsc:Z

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "supportMsgTypes="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->supportMsgTypes:Ljava/util/ArrayList;

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "supportSubTypes="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->supportSubTypes:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "bizTags="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->bizTags:Ljava/util/ArrayList;

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "cids="

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->cids:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "senderIds="

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSearchChatContentParams;->senderIds:Ljava/util/ArrayList;

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v1, "}"

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    return-object v0
.end method

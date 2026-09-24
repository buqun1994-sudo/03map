.class public final Lcom/alibaba/android/ark/AIMMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6e9423e24557db42L


# instance fields
.field public bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

.field public cid:Ljava/lang/String;

.field public content:Lcom/alibaba/android/ark/AIMMsgContent;

.field public createdAt:J

.field public displayStyle:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

.field public extension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isDelete:Z

.field public isDisableRead:Z

.field public isLocal:Z

.field public isRead:Z

.field public isRecall:Z

.field public localExtension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public localid:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public recallFeature:Lcom/alibaba/android/ark/AIMMsgRecallFeature;

.field public receiverCount:I

.field public receivers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation
.end field

.field public sender:Lcom/alibaba/android/ark/AIMUserId;

.field public senderTag:J

.field public status:Lcom/alibaba/android/ark/AIMMsgSendStatus;

.field public unreadCount:I

.field public userExtension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 36
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMessage;->senderTag:J

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMMessage;->createdAt:J

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lcom/alibaba/android/ark/AIMMessage;->unreadCount:I

    .line 39
    iput v0, p0, Lcom/alibaba/android/ark/AIMMessage;->receiverCount:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isRead:Z

    .line 41
    sget-object v1, Lcom/alibaba/android/ark/AIMMsgSendStatus;->SEND_STATUS_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    iput-object v1, p0, Lcom/alibaba/android/ark/AIMMessage;->status:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    .line 42
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isDelete:Z

    .line 43
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isRecall:Z

    .line 44
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isDisableRead:Z

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isLocal:Z

    .line 46
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgDisplayStyle;->DISPLAY_STYLE_USER:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->displayStyle:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMUserId;JJIILjava/util/ArrayList;ZLjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMMsgContent;Lcom/alibaba/android/ark/AIMMsgSendStatus;ZZZZLcom/alibaba/android/ark/AIMMsgBizInfo;Lcom/alibaba/android/ark/AIMMsgDisplayStyle;Lcom/alibaba/android/ark/AIMMsgRecallFeature;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ark/AIMUserId;",
            "JJII",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgContent;",
            "Lcom/alibaba/android/ark/AIMMsgSendStatus;",
            "ZZZZ",
            "Lcom/alibaba/android/ark/AIMMsgBizInfo;",
            "Lcom/alibaba/android/ark/AIMMsgDisplayStyle;",
            "Lcom/alibaba/android/ark/AIMMsgRecallFeature;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p17

    move-object/from16 v2, p23

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v3, 0x0

    .line 2
    iput-wide v3, v0, Lcom/alibaba/android/ark/AIMMessage;->senderTag:J

    const-wide/16 v3, -0x1

    .line 3
    iput-wide v3, v0, Lcom/alibaba/android/ark/AIMMessage;->createdAt:J

    const/4 v3, -0x1

    .line 4
    iput v3, v0, Lcom/alibaba/android/ark/AIMMessage;->unreadCount:I

    .line 5
    iput v3, v0, Lcom/alibaba/android/ark/AIMMessage;->receiverCount:I

    const/4 v3, 0x0

    .line 6
    iput-boolean v3, v0, Lcom/alibaba/android/ark/AIMMessage;->isRead:Z

    .line 7
    sget-object v4, Lcom/alibaba/android/ark/AIMMsgSendStatus;->SEND_STATUS_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    iput-object v4, v0, Lcom/alibaba/android/ark/AIMMessage;->status:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    .line 8
    iput-boolean v3, v0, Lcom/alibaba/android/ark/AIMMessage;->isDelete:Z

    .line 9
    iput-boolean v3, v0, Lcom/alibaba/android/ark/AIMMessage;->isRecall:Z

    .line 10
    iput-boolean v3, v0, Lcom/alibaba/android/ark/AIMMessage;->isDisableRead:Z

    .line 11
    iput-boolean v3, v0, Lcom/alibaba/android/ark/AIMMessage;->isLocal:Z

    .line 12
    sget-object v3, Lcom/alibaba/android/ark/AIMMsgDisplayStyle;->DISPLAY_STYLE_USER:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->displayStyle:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    move-object v3, p1

    .line 13
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->cid:Ljava/lang/String;

    move-object v3, p2

    .line 14
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->mid:Ljava/lang/String;

    move-object v3, p3

    .line 15
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->localid:Ljava/lang/String;

    move-object v3, p4

    .line 16
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->sender:Lcom/alibaba/android/ark/AIMUserId;

    move-wide v3, p5

    .line 17
    iput-wide v3, v0, Lcom/alibaba/android/ark/AIMMessage;->senderTag:J

    move-wide v3, p7

    .line 18
    iput-wide v3, v0, Lcom/alibaba/android/ark/AIMMessage;->createdAt:J

    move v3, p9

    .line 19
    iput v3, v0, Lcom/alibaba/android/ark/AIMMessage;->unreadCount:I

    move v3, p10

    .line 20
    iput v3, v0, Lcom/alibaba/android/ark/AIMMessage;->receiverCount:I

    move-object/from16 v3, p11

    .line 21
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->receivers:Ljava/util/ArrayList;

    move/from16 v3, p12

    .line 22
    iput-boolean v3, v0, Lcom/alibaba/android/ark/AIMMessage;->isRead:Z

    move-object/from16 v3, p13

    .line 23
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->extension:Ljava/util/HashMap;

    move-object/from16 v3, p14

    .line 24
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->localExtension:Ljava/util/HashMap;

    move-object/from16 v3, p15

    .line 25
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->userExtension:Ljava/util/HashMap;

    move-object/from16 v3, p16

    .line 26
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMMessage;->content:Lcom/alibaba/android/ark/AIMMsgContent;

    if-eqz v1, :cond_0

    .line 27
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMessage;->status:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    :cond_0
    move/from16 v1, p18

    .line 28
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMMessage;->isDelete:Z

    move/from16 v1, p19

    .line 29
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMMessage;->isRecall:Z

    move/from16 v1, p20

    .line 30
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMMessage;->isDisableRead:Z

    move/from16 v1, p21

    .line 31
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMMessage;->isLocal:Z

    move-object/from16 v1, p22

    .line 32
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMessage;->bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

    if-eqz v2, :cond_1

    .line 33
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMMessage;->displayStyle:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    :cond_1
    move-object/from16 v1, p24

    .line 34
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMMessage;->recallFeature:Lcom/alibaba/android/ark/AIMMsgRecallFeature;

    return-void
.end method


# virtual methods
.method public getBizInfo()Lcom/alibaba/android/ark/AIMMsgBizInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

    .line 3
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->cid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getContent()Lcom/alibaba/android/ark/AIMMsgContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->content:Lcom/alibaba/android/ark/AIMMsgContent;

    .line 3
    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMessage;->createdAt:J

    .line 3
    return-wide v0
.end method

.method public getDisplayStyle()Lcom/alibaba/android/ark/AIMMsgDisplayStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->displayStyle:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    .line 3
    return-object v0
.end method

.method public getExtension()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->extension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getIsDelete()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isDelete:Z

    .line 3
    return v0
.end method

.method public getIsDisableRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isDisableRead:Z

    .line 3
    return v0
.end method

.method public getIsLocal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isLocal:Z

    .line 3
    return v0
.end method

.method public getIsRead()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isRead:Z

    .line 3
    return v0
.end method

.method public getIsRecall()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMMessage;->isRecall:Z

    .line 3
    return v0
.end method

.method public getLocalExtension()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->localExtension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getLocalid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->localid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->mid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRecallFeature()Lcom/alibaba/android/ark/AIMMsgRecallFeature;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->recallFeature:Lcom/alibaba/android/ark/AIMMsgRecallFeature;

    .line 3
    return-object v0
.end method

.method public getReceiverCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMessage;->receiverCount:I

    .line 3
    return v0
.end method

.method public getReceivers()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->receivers:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getSender()Lcom/alibaba/android/ark/AIMUserId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->sender:Lcom/alibaba/android/ark/AIMUserId;

    .line 3
    return-object v0
.end method

.method public getSenderTag()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMessage;->senderTag:J

    .line 3
    return-wide v0
.end method

.method public getStatus()Lcom/alibaba/android/ark/AIMMsgSendStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->status:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    .line 3
    return-object v0
.end method

.method public getUnreadCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMMessage;->unreadCount:I

    .line 3
    return v0
.end method

.method public getUserExtension()Ljava/util/HashMap;
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMessage;->userExtension:Ljava/util/HashMap;

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
    const-string v1, "AIMMessage{cid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMessage;->cid:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "mid="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->mid:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "localid="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->localid:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "sender="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->sender:Lcom/alibaba/android/ark/AIMUserId;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "senderTag="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMMessage;->senderTag:J

    .line 67
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "createdAt="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMMessage;->createdAt:J

    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "unreadCount="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v2, p0, Lcom/alibaba/android/ark/AIMMessage;->unreadCount:I

    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "receiverCount="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v2, p0, Lcom/alibaba/android/ark/AIMMessage;->receiverCount:I

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "receivers="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->receivers:Ljava/util/ArrayList;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "isRead="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMMessage;->isRead:Z

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "extension="

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->extension:Ljava/util/HashMap;

    .line 145
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "localExtension="

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->localExtension:Ljava/util/HashMap;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "userExtension="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->userExtension:Ljava/util/HashMap;

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "content="

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->content:Lcom/alibaba/android/ark/AIMMsgContent;

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "status="

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->status:Lcom/alibaba/android/ark/AIMMsgSendStatus;

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, "isDelete="

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMMessage;->isDelete:Z

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, "isRecall="

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMMessage;->isRecall:Z

    .line 223
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v2, "isDisableRead="

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMMessage;->isDisableRead:Z

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, "isLocal="

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMMessage;->isLocal:Z

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v2, "bizInfo="

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->bizInfo:Lcom/alibaba/android/ark/AIMMsgBizInfo;

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "displayStyle="

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMessage;->displayStyle:Lcom/alibaba/android/ark/AIMMsgDisplayStyle;

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v1, "recallFeature="

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMessage;->recallFeature:Lcom/alibaba/android/ark/AIMMsgRecallFeature;

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 291
    const-string v1, "}"

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    move-result-object v0

    .line 300
    return-object v0
.end method

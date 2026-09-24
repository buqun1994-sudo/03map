.class public final Lcom/alibaba/android/ark/AIMConversation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x4d82a560ab40181L


# instance fields
.field public admins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation
.end field

.field public bizType:Ljava/lang/String;

.field public cid:Ljava/lang/String;

.field public createdAt:J

.field public draft:Ljava/lang/String;

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

.field public hasLastMsg:Z

.field public icon:Ljava/lang/String;

.field public joinTime:J

.field public lastMsg:Lcom/alibaba/android/ark/AIMMessage;

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

.field public memberCount:I

.field public memberLimit:I

.field public memberPermissions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMGroupPermission;",
            ">;"
        }
    .end annotation
.end field

.field public modifyTime:J

.field public muteNotification:Z

.field public ownerUid:Lcom/alibaba/android/ark/AIMUserId;

.field public parentId:Ljava/lang/String;

.field public redPoint:I

.field public silenceAll:Z

.field public silencedEndtime:J

.field public silencedStatus:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

.field public status:Lcom/alibaba/android/ark/AIMConvStatus;

.field public title:Ljava/lang/String;

.field public topRank:J

.field public type:Lcom/alibaba/android/ark/AIMConvType;

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

.field public userids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation
.end field

.field public utags:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/alibaba/android/ark/AIMConvType;->CONV_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMConvType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->type:Lcom/alibaba/android/ark/AIMConvType;

    .line 47
    sget-object v0, Lcom/alibaba/android/ark/AIMConvStatus;->CONV_STATUS_UNKNOW:Lcom/alibaba/android/ark/AIMConvStatus;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->status:Lcom/alibaba/android/ark/AIMConvStatus;

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->createdAt:J

    .line 49
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->modifyTime:J

    const/4 v2, 0x0

    .line 50
    iput v2, p0, Lcom/alibaba/android/ark/AIMConversation;->redPoint:I

    .line 51
    iput-boolean v2, p0, Lcom/alibaba/android/ark/AIMConversation;->muteNotification:Z

    .line 52
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->topRank:J

    .line 53
    iput-boolean v2, p0, Lcom/alibaba/android/ark/AIMConversation;->hasLastMsg:Z

    .line 54
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->joinTime:J

    .line 55
    iput v2, p0, Lcom/alibaba/android/ark/AIMConversation;->memberCount:I

    .line 56
    iput v2, p0, Lcom/alibaba/android/ark/AIMConversation;->memberLimit:I

    .line 57
    iput-boolean v2, p0, Lcom/alibaba/android/ark/AIMConversation;->silenceAll:Z

    .line 58
    sget-object v2, Lcom/alibaba/android/ark/AIMGroupSilencedStatus;->GROUP_SILENCE_STATUS_NORMAL:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    iput-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->silencedStatus:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    .line 59
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->silencedEndtime:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvType;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvStatus;Ljava/util/ArrayList;JJILjava/lang/String;ZJLjava/util/HashMap;Ljava/util/HashMap;Ljava/util/HashMap;ZLcom/alibaba/android/ark/AIMMessage;JLcom/alibaba/android/ark/AIMUserId;Ljava/lang/String;Ljava/lang/String;IIZLcom/alibaba/android/ark/AIMGroupSilencedStatus;JLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ark/AIMConvType;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ark/AIMConvStatus;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;JJI",
            "Ljava/lang/String;",
            "ZJ",
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
            ">;Z",
            "Lcom/alibaba/android/ark/AIMMessage;",
            "J",
            "Lcom/alibaba/android/ark/AIMUserId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ",
            "Lcom/alibaba/android/ark/AIMGroupSilencedStatus;",
            "J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMGroupPermission;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object/from16 v3, p28

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v4, Lcom/alibaba/android/ark/AIMConvType;->CONV_TYPE_UNKNOW:Lcom/alibaba/android/ark/AIMConvType;

    iput-object v4, v0, Lcom/alibaba/android/ark/AIMConversation;->type:Lcom/alibaba/android/ark/AIMConvType;

    .line 3
    sget-object v4, Lcom/alibaba/android/ark/AIMConvStatus;->CONV_STATUS_UNKNOW:Lcom/alibaba/android/ark/AIMConvStatus;

    iput-object v4, v0, Lcom/alibaba/android/ark/AIMConversation;->status:Lcom/alibaba/android/ark/AIMConvStatus;

    const-wide/16 v4, 0x0

    .line 4
    iput-wide v4, v0, Lcom/alibaba/android/ark/AIMConversation;->createdAt:J

    .line 5
    iput-wide v4, v0, Lcom/alibaba/android/ark/AIMConversation;->modifyTime:J

    const/4 v6, 0x0

    .line 6
    iput v6, v0, Lcom/alibaba/android/ark/AIMConversation;->redPoint:I

    .line 7
    iput-boolean v6, v0, Lcom/alibaba/android/ark/AIMConversation;->muteNotification:Z

    .line 8
    iput-wide v4, v0, Lcom/alibaba/android/ark/AIMConversation;->topRank:J

    .line 9
    iput-boolean v6, v0, Lcom/alibaba/android/ark/AIMConversation;->hasLastMsg:Z

    .line 10
    iput-wide v4, v0, Lcom/alibaba/android/ark/AIMConversation;->joinTime:J

    .line 11
    iput v6, v0, Lcom/alibaba/android/ark/AIMConversation;->memberCount:I

    .line 12
    iput v6, v0, Lcom/alibaba/android/ark/AIMConversation;->memberLimit:I

    .line 13
    iput-boolean v6, v0, Lcom/alibaba/android/ark/AIMConversation;->silenceAll:Z

    .line 14
    sget-object v6, Lcom/alibaba/android/ark/AIMGroupSilencedStatus;->GROUP_SILENCE_STATUS_NORMAL:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    iput-object v6, v0, Lcom/alibaba/android/ark/AIMConversation;->silencedStatus:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    .line 15
    iput-wide v4, v0, Lcom/alibaba/android/ark/AIMConversation;->silencedEndtime:J

    move-object v4, p1

    .line 16
    iput-object v4, v0, Lcom/alibaba/android/ark/AIMConversation;->cid:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 17
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->type:Lcom/alibaba/android/ark/AIMConvType;

    :cond_0
    move-object v1, p3

    .line 18
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->bizType:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 19
    iput-object v2, v0, Lcom/alibaba/android/ark/AIMConversation;->status:Lcom/alibaba/android/ark/AIMConvStatus;

    :cond_1
    move-object v1, p5

    .line 20
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->userids:Ljava/util/ArrayList;

    move-wide v1, p6

    .line 21
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMConversation;->createdAt:J

    move-wide v1, p8

    .line 22
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMConversation;->modifyTime:J

    move/from16 v1, p10

    .line 23
    iput v1, v0, Lcom/alibaba/android/ark/AIMConversation;->redPoint:I

    move-object/from16 v1, p11

    .line 24
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->draft:Ljava/lang/String;

    move/from16 v1, p12

    .line 25
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMConversation;->muteNotification:Z

    move-wide/from16 v1, p13

    .line 26
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMConversation;->topRank:J

    move-object/from16 v1, p15

    .line 27
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->extension:Ljava/util/HashMap;

    move-object/from16 v1, p16

    .line 28
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->userExtension:Ljava/util/HashMap;

    move-object/from16 v1, p17

    .line 29
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->localExtension:Ljava/util/HashMap;

    move/from16 v1, p18

    .line 30
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMConversation;->hasLastMsg:Z

    move-object/from16 v1, p19

    .line 31
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->lastMsg:Lcom/alibaba/android/ark/AIMMessage;

    move-wide/from16 v1, p20

    .line 32
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMConversation;->joinTime:J

    move-object/from16 v1, p22

    .line 33
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->ownerUid:Lcom/alibaba/android/ark/AIMUserId;

    move-object/from16 v1, p23

    .line 34
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->title:Ljava/lang/String;

    move-object/from16 v1, p24

    .line 35
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->icon:Ljava/lang/String;

    move/from16 v1, p25

    .line 36
    iput v1, v0, Lcom/alibaba/android/ark/AIMConversation;->memberCount:I

    move/from16 v1, p26

    .line 37
    iput v1, v0, Lcom/alibaba/android/ark/AIMConversation;->memberLimit:I

    move/from16 v1, p27

    .line 38
    iput-boolean v1, v0, Lcom/alibaba/android/ark/AIMConversation;->silenceAll:Z

    if-eqz v3, :cond_2

    .line 39
    iput-object v3, v0, Lcom/alibaba/android/ark/AIMConversation;->silencedStatus:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    :cond_2
    move-wide/from16 v1, p29

    .line 40
    iput-wide v1, v0, Lcom/alibaba/android/ark/AIMConversation;->silencedEndtime:J

    move-object/from16 v1, p31

    .line 41
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->admins:Ljava/util/ArrayList;

    move-object/from16 v1, p32

    .line 42
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->memberPermissions:Ljava/util/ArrayList;

    move-object/from16 v1, p33

    .line 43
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->utags:Ljava/util/HashMap;

    move-object/from16 v1, p34

    .line 44
    iput-object v1, v0, Lcom/alibaba/android/ark/AIMConversation;->parentId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdmins()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->admins:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getBizType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->bizType:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->cid:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getCreatedAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->createdAt:J

    .line 3
    return-wide v0
.end method

.method public getDraft()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->draft:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->extension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getHasLastMsg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMConversation;->hasLastMsg:Z

    .line 3
    return v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->icon:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getJoinTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->joinTime:J

    .line 3
    return-wide v0
.end method

.method public getLastMsg()Lcom/alibaba/android/ark/AIMMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->lastMsg:Lcom/alibaba/android/ark/AIMMessage;

    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->localExtension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getMemberCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMConversation;->memberCount:I

    .line 3
    return v0
.end method

.method public getMemberLimit()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMConversation;->memberLimit:I

    .line 3
    return v0
.end method

.method public getMemberPermissions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMGroupPermission;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->memberPermissions:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getModifyTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->modifyTime:J

    .line 3
    return-wide v0
.end method

.method public getMuteNotification()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMConversation;->muteNotification:Z

    .line 3
    return v0
.end method

.method public getOwnerUid()Lcom/alibaba/android/ark/AIMUserId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->ownerUid:Lcom/alibaba/android/ark/AIMUserId;

    .line 3
    return-object v0
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->parentId:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getRedPoint()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMConversation;->redPoint:I

    .line 3
    return v0
.end method

.method public getSilenceAll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMConversation;->silenceAll:Z

    .line 3
    return v0
.end method

.method public getSilencedEndtime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->silencedEndtime:J

    .line 3
    return-wide v0
.end method

.method public getSilencedStatus()Lcom/alibaba/android/ark/AIMGroupSilencedStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->silencedStatus:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    .line 3
    return-object v0
.end method

.method public getStatus()Lcom/alibaba/android/ark/AIMConvStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->status:Lcom/alibaba/android/ark/AIMConvStatus;

    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->title:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getTopRank()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConversation;->topRank:J

    .line 3
    return-wide v0
.end method

.method public getType()Lcom/alibaba/android/ark/AIMConvType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->type:Lcom/alibaba/android/ark/AIMConvType;

    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->userExtension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getUserids()Ljava/util/ArrayList;
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
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->userids:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public getUtags()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConversation;->utags:Ljava/util/HashMap;

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
    const-string v1, "AIMConversation{cid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMConversation;->cid:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "type="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->type:Lcom/alibaba/android/ark/AIMConvType;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "bizType="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->bizType:Ljava/lang/String;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "status="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->status:Lcom/alibaba/android/ark/AIMConvStatus;

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "userids="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->userids:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v2, "createdAt="

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMConversation;->createdAt:J

    .line 80
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    const-string v2, "modifyTime="

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMConversation;->modifyTime:J

    .line 93
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "redPoint="

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    iget v2, p0, Lcom/alibaba/android/ark/AIMConversation;->redPoint:I

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v2, "draft="

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->draft:Ljava/lang/String;

    .line 119
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    const-string v2, "muteNotification="

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMConversation;->muteNotification:Z

    .line 132
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v2, "topRank="

    .line 140
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMConversation;->topRank:J

    .line 145
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v2, "extension="

    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->extension:Ljava/util/HashMap;

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "userExtension="

    .line 166
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->userExtension:Ljava/util/HashMap;

    .line 171
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "localExtension="

    .line 179
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->localExtension:Ljava/util/HashMap;

    .line 184
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "hasLastMsg="

    .line 192
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMConversation;->hasLastMsg:Z

    .line 197
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, "lastMsg="

    .line 205
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->lastMsg:Lcom/alibaba/android/ark/AIMMessage;

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    const-string v2, "joinTime="

    .line 218
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMConversation;->joinTime:J

    .line 223
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v2, "ownerUid="

    .line 231
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->ownerUid:Lcom/alibaba/android/ark/AIMUserId;

    .line 236
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v2, "title="

    .line 244
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->title:Ljava/lang/String;

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    const-string v2, "icon="

    .line 257
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->icon:Ljava/lang/String;

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    const-string v2, "memberCount="

    .line 270
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    iget v2, p0, Lcom/alibaba/android/ark/AIMConversation;->memberCount:I

    .line 275
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v2, "memberLimit="

    .line 283
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget v2, p0, Lcom/alibaba/android/ark/AIMConversation;->memberLimit:I

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    const-string v2, "silenceAll="

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-boolean v2, p0, Lcom/alibaba/android/ark/AIMConversation;->silenceAll:Z

    .line 301
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v2, "silencedStatus="

    .line 309
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->silencedStatus:Lcom/alibaba/android/ark/AIMGroupSilencedStatus;

    .line 314
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    const-string v2, "silencedEndtime="

    .line 322
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMConversation;->silencedEndtime:J

    .line 327
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v2, "admins="

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->admins:Ljava/util/ArrayList;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v2, "memberPermissions="

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->memberPermissions:Ljava/util/ArrayList;

    .line 353
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    const-string v2, "utags="

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMConversation;->utags:Ljava/util/HashMap;

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "parentId="

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMConversation;->parentId:Ljava/lang/String;

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v1, "}"

    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 390
    move-result-object v0

    .line 391
    return-object v0
.end method

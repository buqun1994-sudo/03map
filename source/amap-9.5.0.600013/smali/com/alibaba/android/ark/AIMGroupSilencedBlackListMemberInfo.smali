.class public final Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x228fa124cf155282L


# instance fields
.field public endTime:J

.field public operateTime:J

.field public uid:Lcom/alibaba/android/ark/AIMUserId;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->endTime:J

    .line 7
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->operateTime:J

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMUserId;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->uid:Lcom/alibaba/android/ark/AIMUserId;

    .line 3
    iput-wide p2, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->endTime:J

    .line 4
    iput-wide p4, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->operateTime:J

    return-void
.end method


# virtual methods
.method public getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->endTime:J

    .line 3
    return-wide v0
.end method

.method public getOperateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->operateTime:J

    .line 3
    return-wide v0
.end method

.method public getUid()Lcom/alibaba/android/ark/AIMUserId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->uid:Lcom/alibaba/android/ark/AIMUserId;

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
    const-string v1, "AIMGroupSilencedBlackListMemberInfo{uid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->uid:Lcom/alibaba/android/ark/AIMUserId;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "endTime="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v2, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->endTime:J

    .line 28
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "operateTime="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMGroupSilencedBlackListMemberInfo;->operateTime:J

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "}"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

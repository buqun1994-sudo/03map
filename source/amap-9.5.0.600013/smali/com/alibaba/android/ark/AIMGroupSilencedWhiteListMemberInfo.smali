.class public final Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x30e6ee1d5f35644eL


# instance fields
.field public operateTime:J

.field public uid:Lcom/alibaba/android/ark/AIMUserId;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->operateTime:J

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMUserId;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->uid:Lcom/alibaba/android/ark/AIMUserId;

    .line 3
    iput-wide p2, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->operateTime:J

    return-void
.end method


# virtual methods
.method public getOperateTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->operateTime:J

    .line 3
    return-wide v0
.end method

.method public getUid()Lcom/alibaba/android/ark/AIMUserId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->uid:Lcom/alibaba/android/ark/AIMUserId;

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
    const-string v1, "AIMGroupSilencedWhiteListMemberInfo{uid="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->uid:Lcom/alibaba/android/ark/AIMUserId;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "operateTime="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMGroupSilencedWhiteListMemberInfo;->operateTime:J

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

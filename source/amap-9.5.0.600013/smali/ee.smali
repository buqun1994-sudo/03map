.class public Lee;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public final k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:I


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const-string v0, "CarBindAction"

    .line 6
    iput-object v0, p0, Lee;->k:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getSourceApp()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lee;->l:Ljava/lang/String;

    .line 14
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getSourceAppName()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lee;->m:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserLoginId()Ljava/lang/String;

    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lee;->n:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserLoginName()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lee;->o:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserLoginAvata()Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lee;->p:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserRequestTime()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lee;->q:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getBindUserDeviceId()Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lee;->r:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getHasBindAutoUserId()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 54
    iput-object v0, p0, Lee;->s:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;->getIsBindAck()I

    .line 59
    move-result p1

    .line 60
    iput p1, p0, Lee;->t:I

    .line 62
    const/4 p1, 0x1

    .line 63
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const/4 v1, 0x5

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 18
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v2, v1, v3

    .line 25
    const/4 v2, 0x1

    .line 26
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 28
    aput-object v3, v1, v2

    .line 30
    const/4 v2, 0x2

    .line 31
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 33
    aput-object v3, v1, v2

    .line 35
    const/4 v2, 0x3

    .line 36
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 38
    aput-object v3, v1, v2

    .line 40
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isPassiveLogout:Z

    .line 42
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 45
    move-result-object v2

    .line 46
    const/4 v3, 0x4

    .line 47
    aput-object v2, v1, v3

    .line 49
    const-string v2, "CarBindAction"

    .line 51
    const-string v3, "[CarBindAction]parseToAidlModel NotifyBindCarAutoUserModel isBingingSuccess:{?};autoUserAvatar:{?};autoUserId:{?};autoUserName:{?};isPassiveLogout:{?}"

    .line 53
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;

    .line 58
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 60
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;-><init>(Ljava/lang/Boolean;)V

    .line 67
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 69
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->w(Ljava/lang/String;)V

    .line 72
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 74
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->x(Ljava/lang/String;)V

    .line 77
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/NotifyBindCarAutoUserModel;->v(Ljava/lang/String;)V

    .line 82
    goto :goto_0

    .line 83
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 85
    iget v0, p0, Lnc;->d:I

    .line 87
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 90
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0}, Lnc;->i()I

    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    aput-object v1, v0, v2

    .line 16
    const/4 v1, 0x1

    .line 17
    iget-object v2, p0, Lee;->l:Ljava/lang/String;

    .line 19
    aput-object v2, v0, v1

    .line 21
    const/4 v1, 0x2

    .line 22
    iget-object v2, p0, Lee;->m:Ljava/lang/String;

    .line 24
    aput-object v2, v0, v1

    .line 26
    const/4 v1, 0x3

    .line 27
    iget-object v2, p0, Lee;->n:Ljava/lang/String;

    .line 29
    aput-object v2, v0, v1

    .line 31
    const/4 v1, 0x4

    .line 32
    iget-object v2, p0, Lee;->o:Ljava/lang/String;

    .line 34
    aput-object v2, v0, v1

    .line 36
    const/4 v1, 0x5

    .line 37
    iget-object v2, p0, Lee;->p:Ljava/lang/String;

    .line 39
    aput-object v2, v0, v1

    .line 41
    const/4 v1, 0x6

    .line 42
    iget-object v2, p0, Lee;->q:Ljava/lang/String;

    .line 44
    aput-object v2, v0, v1

    .line 46
    const/4 v1, 0x7

    .line 47
    iget-object v2, p0, Lee;->r:Ljava/lang/String;

    .line 49
    aput-object v2, v0, v1

    .line 51
    const-string v1, "CarBindAction"

    .line 53
    const-string v2, "[CarBindAction] doAction getRequestALId={?}; sourceApp={?}; sourceAppName={?};bindUserLoginId={?};bindUserLoginName={?};bindUserLoginAvata={?};bindUserRequestTime={?};bindUserDeviceId={?}"

    .line 55
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    return-void
.end method

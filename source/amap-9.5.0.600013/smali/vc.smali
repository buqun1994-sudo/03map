.class public Lvc;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "SOURCE_APP"

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->k:Ljava/lang/String;

    const-string v0, "SOURCE_APP_NAME"

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->l:Ljava/lang/String;

    const-string v0, "USER_LOGIN_ID"

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->m:Ljava/lang/String;

    const-string v0, "USER_LOGIN_NAME"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->n:Ljava/lang/String;

    const-string v0, "USER_LOGIN_AVATA"

    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->o:Ljava/lang/String;

    const-string v0, "USER_REQUEST_TIME"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->p:Ljava/lang/String;

    const-string v0, "USER_DEVICE_ID"

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvc;->q:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getSourceApp()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->k:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getSourceAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->l:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserLoginId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->m:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserLoginName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->n:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserLoginAvata()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->o:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserRequestTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->p:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getBindUserDeviceId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc;->q:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->getCarLoginEnvironment()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvc;->r:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 6

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    const-string v1, "[parseToAidlModel]resultCode:{?}"

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x1

    .line 9
    const-string v4, "BindUserAction"

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 15
    if-eqz v5, :cond_1

    .line 17
    iget-boolean v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Lvc;->x()Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    .line 28
    iget v3, p0, Lnc;->d:I

    .line 30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    move-result-object v3

    .line 34
    aput-object v3, v0, v2

    .line 36
    invoke-static {v4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 41
    iget v1, p0, Lnc;->d:I

    .line 43
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 46
    :goto_0
    return-object v0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iget-boolean v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 57
    if-eqz v5, :cond_2

    .line 59
    const/4 v1, 0x4

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    .line 62
    iget-boolean v5, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 64
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 67
    move-result-object v5

    .line 68
    aput-object v5, v1, v2

    .line 70
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 72
    aput-object v2, v1, v3

    .line 74
    const/4 v2, 0x2

    .line 75
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 77
    aput-object v3, v1, v2

    .line 79
    const/4 v2, 0x3

    .line 80
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 82
    aput-object v3, v1, v2

    .line 84
    const-string v2, "[parseToAidlModel][30501]isBingingSuccess:{?}; autoUserId:{?}; autoUserName:{?}; autoUserAvatar:{?};"

    .line 86
    invoke-static {v4, v2, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;

    .line 91
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 93
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 96
    move-result-object v2

    .line 97
    iget-object v3, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 99
    invoke-direct {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 102
    iget-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 104
    invoke-virtual {v1, v2}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->x(Ljava/lang/String;)V

    .line 107
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->v(Ljava/lang/String;)V

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    .line 115
    iget v3, p0, Lnc;->d:I

    .line 117
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v3

    .line 121
    aput-object v3, v0, v2

    .line 123
    invoke-static {v4, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 128
    iget v0, p0, Lnc;->d:I

    .line 130
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 133
    :goto_1
    return-object v1
.end method

.method public c()Landroid/content/Intent;
    .locals 11

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget v2, p0, Lnc;->d:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "BindUserAction"

    .line 15
    const-string v4, "[pareseToIntent][10101]resultCode:{?}"

    .line 17
    invoke-static {v2, v4, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    new-instance v1, Landroid/content/Intent;

    .line 22
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 25
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 28
    move-result-object v4

    .line 29
    const-string v5, "AUTO_USER_NAME"

    .line 31
    const-string v6, "USER_LOGIN_AVATA"

    .line 33
    const-string v7, "AUTO_USER_ID"

    .line 35
    const-string v8, "IS_BINDING_SUCCES"

    .line 37
    if-eqz v4, :cond_1

    .line 39
    iget-boolean v9, v4, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 41
    if-eqz v9, :cond_1

    .line 43
    invoke-virtual {p0}, Lvc;->x()Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;

    .line 46
    move-result-object v0

    .line 47
    iget-boolean v2, v4, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 49
    if-eqz v2, :cond_0

    .line 51
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->s()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->r()Ljava/lang/String;

    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->t()Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;->u()Ljava/lang/Boolean;

    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 81
    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 85
    goto :goto_0

    .line 86
    :cond_1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 89
    move-result-object v4

    .line 90
    check-cast v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;

    .line 92
    if-eqz v4, :cond_2

    .line 94
    iget-boolean v9, v4, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isSuccessed:Z

    .line 96
    if-eqz v9, :cond_2

    .line 98
    const/4 v9, 0x4

    .line 99
    new-array v9, v9, [Ljava/lang/Object;

    .line 101
    iget-boolean v10, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 103
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v10

    .line 107
    aput-object v10, v9, v3

    .line 109
    iget-object v3, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 111
    aput-object v3, v9, v0

    .line 113
    const/4 v0, 0x2

    .line 114
    iget-object v3, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 116
    aput-object v3, v9, v0

    .line 118
    const/4 v0, 0x3

    .line 119
    iget-object v3, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 121
    aput-object v3, v9, v0

    .line 123
    const-string v0, "[pareseToIntent][10101]isBingingSuccess:{?}; autoUserId:{?}; autoUserName:{?}; autoUserAvatar:{?};"

    .line 125
    invoke-static {v2, v0, v9}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v0, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserId:Ljava/lang/String;

    .line 130
    invoke-virtual {v1, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v0, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserAvatar:Ljava/lang/String;

    .line 135
    invoke-virtual {v1, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->autoUserName:Ljava/lang/String;

    .line 140
    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-boolean v0, v4, Lcom/autonavi/amapauto/jni/protocol/data/AutoUserInfoData;->isBingingSuccess:Z

    .line 145
    invoke-virtual {v1, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 148
    goto :goto_0

    .line 149
    :cond_2
    invoke-virtual {v1, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 152
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 12

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "BindUserAction"

    .line 8
    if-eqz v0, :cond_0

    .line 10
    const-string v0, "[BindUserAction][30500/10101(\u5e7f\u64ad\u534f\u8bae)] doAction  \u65b0\u534f\u8bae\u901a\u9053\uff0c\u534f\u8bae\u4fe1\u606f\u53bb\u7c7b\"ProtocolDistributeManager\"\u4e2d\u641c\u7d22"

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 14
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    .line 19
    iget-object v1, p0, Lvc;->k:Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lvc;->l:Ljava/lang/String;

    .line 23
    iget-object v3, p0, Lvc;->m:Ljava/lang/String;

    .line 25
    iget-object v4, p0, Lvc;->q:Ljava/lang/String;

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object v1, p0, Lvc;->p:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserRequestTime(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lvc;->o:Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserLoginAvata(Ljava/lang/String;)V

    .line 40
    iget-object v1, p0, Lvc;->r:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setCarLoginEnvironment(Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lvc;->n:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;->setBindUserLoginName(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v0, 0x9

    .line 56
    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0}, Lnc;->i()I

    .line 61
    move-result v3

    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object v3

    .line 66
    aput-object v3, v0, v1

    .line 68
    const/4 v1, 0x1

    .line 69
    iget-object v3, p0, Lvc;->k:Ljava/lang/String;

    .line 71
    aput-object v3, v0, v1

    .line 73
    const/4 v1, 0x2

    .line 74
    iget-object v3, p0, Lvc;->l:Ljava/lang/String;

    .line 76
    aput-object v3, v0, v1

    .line 78
    const/4 v1, 0x3

    .line 79
    iget-object v3, p0, Lvc;->m:Ljava/lang/String;

    .line 81
    aput-object v3, v0, v1

    .line 83
    const/4 v1, 0x4

    .line 84
    iget-object v3, p0, Lvc;->n:Ljava/lang/String;

    .line 86
    aput-object v3, v0, v1

    .line 88
    const/4 v1, 0x5

    .line 89
    iget-object v3, p0, Lvc;->o:Ljava/lang/String;

    .line 91
    aput-object v3, v0, v1

    .line 93
    const/4 v1, 0x6

    .line 94
    iget-object v3, p0, Lvc;->p:Ljava/lang/String;

    .line 96
    aput-object v3, v0, v1

    .line 98
    const/4 v1, 0x7

    .line 99
    iget-object v3, p0, Lvc;->q:Ljava/lang/String;

    .line 101
    aput-object v3, v0, v1

    .line 103
    const/16 v1, 0x8

    .line 105
    iget-object v3, p0, Lvc;->r:Ljava/lang/String;

    .line 107
    aput-object v3, v0, v1

    .line 109
    const-string v1, "[BindUserAction][30500/10101(\u5e7f\u64ad\u534f\u8bae)] doAction getRequestALId={?}; sourceApp={?}; sourceAppName={?};bindUserLoginId={?};bindUserLoginName={?};bindUserLoginAvata={?};bindUserRequestTime={?};bindUserDeviceId={?};carLoginEnvironment={?}"

    .line 111
    invoke-static {v2, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lnc;->i()I

    .line 117
    move-result v3

    .line 118
    iget-object v4, p0, Lvc;->k:Ljava/lang/String;

    .line 120
    iget-object v5, p0, Lvc;->l:Ljava/lang/String;

    .line 122
    iget-object v6, p0, Lvc;->m:Ljava/lang/String;

    .line 124
    iget-object v7, p0, Lvc;->n:Ljava/lang/String;

    .line 126
    iget-object v8, p0, Lvc;->o:Ljava/lang/String;

    .line 128
    iget-object v9, p0, Lvc;->p:Ljava/lang/String;

    .line 130
    iget-object v10, p0, Lvc;->q:Ljava/lang/String;

    .line 132
    iget-object v11, p0, Lvc;->r:Ljava/lang/String;

    .line 134
    invoke-static/range {v3 .. v11}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->bindAutoUser(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;

    .line 11
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    const-string v3, ""

    .line 15
    invoke-direct {v1, v2, v3}, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;-><init>(Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 18
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 23
    move-result-object v0

    .line 24
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;

    .line 26
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/user/AutoUserInfoModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    move-object v1, v0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 39
    const/4 v3, 0x0

    .line 40
    new-array v3, v3, [Ljava/lang/Object;

    .line 42
    const-string v4, "BindUserAction"

    .line 44
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-object v1
.end method

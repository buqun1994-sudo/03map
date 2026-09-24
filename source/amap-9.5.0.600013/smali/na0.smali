.class public Lna0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

.field public l:Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 7
    iput-object p1, p0, Lna0;->l:Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 9
    const-string v0, "RequestSilentAutoLoginAction"

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_1

    .line 14
    const-string v2, "[RequestSilentAutoLoginAction]parse param"

    .line 16
    new-array v3, v1, [Ljava/lang/Object;

    .line 18
    invoke-static {v0, v2, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    new-instance v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 23
    invoke-direct {v0}, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;-><init>()V

    .line 26
    iput-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 28
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceApp()Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 32
    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceApp:Ljava/lang/String;

    .line 34
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 36
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAppName()Ljava/lang/String;

    .line 39
    move-result-object v2

    .line 40
    iput-object v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAppName:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 44
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getAccoundLoginStatus()I

    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_0

    .line 50
    const/4 v1, 0x1

    .line 51
    :cond_0
    iput-boolean v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->isAccountLoginStatus:Z

    .line 53
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 55
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountToken()Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 59
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountToken:Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 63
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccount()Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceTokenId:Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 71
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountId()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountId:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 79
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountName()Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 83
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountName:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 87
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAccountAvatar()Ljava/lang/String;

    .line 90
    move-result-object v1

    .line 91
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAccountAvatar:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 95
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getSourceAutoAccount()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 99
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->sourceAutoAccount:Ljava/lang/String;

    .line 101
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 103
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getDeviceId()Ljava/lang/String;

    .line 106
    move-result-object v1

    .line 107
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->deviceId:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 111
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getDeviceNo()Ljava/lang/String;

    .line 114
    move-result-object v1

    .line 115
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->deviceNo:Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 119
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getUserRequestTime()Ljava/lang/String;

    .line 122
    move-result-object v1

    .line 123
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->userRequestTime:Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 127
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getBindingId()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 131
    iput-object v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->bindingId:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 135
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getBingingAck()I

    .line 138
    move-result v1

    .line 139
    iput v1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->bingingAck:I

    .line 141
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 143
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;->getCarLoginEnvironment()Ljava/lang/String;

    .line 146
    move-result-object p1

    .line 147
    iput-object p1, v0, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->carLoginEnvironment:Ljava/lang/String;

    .line 149
    goto :goto_0

    .line 150
    :cond_1
    const-string p1, "[RequestSilentAutoLoginAction]requestSilentAutoLoginModel == null, please check input param !"

    .line 152
    new-array v1, v1, [Ljava/lang/Object;

    .line 154
    invoke-static {v0, p1, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :goto_0
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lna0;->l:Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "RequestSilentAutoLoginAction"

    .line 18
    if-eqz v0, :cond_1

    .line 20
    const/4 v3, 0x1

    .line 21
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    invoke-virtual {v0}, Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;->toString()Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 27
    aput-object v0, v3, v1

    .line 29
    const-string v0, "[doAction]mCarEnterpriseUserInfoData={?}"

    .line 31
    invoke-static {v2, v0, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lna0;->k:Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;

    .line 36
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRequestSilentAutoLogin(Lcom/autonavi/amapauto/jni/protocol/data/CarEnterpriseUserInfoData;)V

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const-string v0, "[doAction]mCarEnterpriseUserInfoData == null, please check input param !"

    .line 42
    new-array v1, v1, [Ljava/lang/Object;

    .line 44
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    :goto_0
    return-void
.end method

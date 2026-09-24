.class public Lpa0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    .line 8
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RequestUnionAutoAction"

    .line 6
    const-string v2, "[RequestUnionAutoAction][parseToAidlModel]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-boolean v0, p0, Lnc;->c:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    .line 17
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;-><init>()V

    .line 20
    const/16 v1, 0x772f

    .line 22
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    iget v1, p0, Lnc;->d:I

    .line 30
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 33
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "RequestUnionAutoAction"

    .line 6
    const-string v2, "[RequestUnionAutoAction][doAction]"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lse;->c()Lse;

    .line 14
    move-result-object v0

    .line 15
    const/16 v1, 0x2732

    .line 17
    invoke-virtual {v0, v1}, Lse;->getBooleanValue(I)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    invoke-static {}, Lrv;->H()Lrv;

    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lrv;->X()V

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {}, Lrv;->H()Lrv;

    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lrv;->W()V

    .line 38
    :goto_0
    invoke-static {}, Lib;->i()Z

    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 44
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    .line 46
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;-><init>()V

    .line 49
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p0}, Lnc;->i()I

    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeCarCompanyLoginSuccess(I)V

    .line 60
    :goto_1
    return-void
.end method

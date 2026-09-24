.class public Lub;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    iput-object p1, p0, Lub;->k:Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    .line 10
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v1, p0, Lnc;->c:Z

    .line 6
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "BackToMapAction"

    .line 15
    const-string v3, "parseToAidlModel isSuccessed:{?}"

    .line 17
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-boolean v0, p0, Lnc;->c:Z

    .line 22
    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 26
    invoke-direct {v0, v2}, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;-><init>(I)V

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 32
    iget v1, p0, Lnc;->d:I

    .line 34
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 37
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
    const-string v1, "BackToMapAction"

    .line 6
    const-string v2, "nativeBackToMap doAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lib;->h()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lub;->k:Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    .line 19
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x1

    .line 28
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeBackToMap(II)V

    .line 31
    :goto_0
    invoke-virtual {p0}, Lnc;->m()Z

    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p0}, Lnc;->f()V

    .line 40
    :cond_1
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

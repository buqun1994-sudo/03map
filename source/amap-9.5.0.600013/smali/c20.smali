.class public Lc20;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;-><init>()V

    iput-object v0, p0, Lc20;->k:Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;-><init>()V

    .line 5
    iput-object p1, p0, Lc20;->k:Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

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
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;-><init>()V

    .line 14
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 16
    if-eqz v2, :cond_1

    .line 18
    invoke-virtual {p0}, Lc20;->x()Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    check-cast v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;

    .line 25
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/MuteStateData;->muteStateType:I

    .line 27
    if-eqz v0, :cond_4

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eq v0, v2, :cond_3

    .line 32
    const/4 v2, 0x2

    .line 33
    if-eq v0, v2, :cond_2

    .line 35
    const/4 v2, 0x3

    .line 36
    if-eq v0, v2, :cond_3

    .line 38
    const/4 v2, 0x5

    .line 39
    if-eq v0, v2, :cond_3

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    const/16 v0, 0x2a

    .line 44
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    const/16 v0, 0x29

    .line 50
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 53
    goto :goto_0

    .line 54
    :cond_4
    const/16 v0, 0x28

    .line 56
    invoke-virtual {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;->t(I)V

    .line 59
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->h()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lc20;->k:Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeGetMuteState(I)V

    .line 20
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;
    .locals 5

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;-><init>()V

    .line 6
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 9
    move-result-object v1

    .line 10
    iget-object v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 12
    invoke-static {v1}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 15
    move-result-object v1

    .line 16
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;

    .line 18
    invoke-static {v1, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolAutoStatusModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    move-object v0, v1

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v3, v3, [Ljava/lang/Object;

    .line 34
    const-string v4, "MuteStateAction"

    .line 36
    invoke-static {v4, v2, v1, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 39
    :goto_0
    return-object v0
.end method

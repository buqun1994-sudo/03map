.class public Lqd0;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;->getPhoneNum()Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lqd0;->k:Ljava/lang/String;

    .line 10
    const/4 p1, 0x1

    .line 11
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    .line 14
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lnc;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 7
    iget-object v1, p0, Lqd0;->k:Ljava/lang/String;

    .line 9
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;-><init>(Ljava/lang/String;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 15
    iget v1, p0, Lnc;->d:I

    .line 17
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 20
    :goto_0
    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    .line 9
    iget-object v1, p0, Lqd0;->k:Ljava/lang/String;

    .line 11
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 21
    move-result v0

    .line 22
    iget-object v1, p0, Lqd0;->k:Ljava/lang/String;

    .line 24
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeShareRoute(ILjava/lang/String;)V

    .line 27
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.class public Lba0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;-><init>()V

    iput-object v0, p0, Lba0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;-><init>()V

    .line 3
    iput-object p1, p0, Lba0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lba0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRepeatLastVoice()V

    .line 16
    :goto_0
    return-void
.end method

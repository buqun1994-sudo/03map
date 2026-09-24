.class public Lrl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;-><init>()V

    iput-object v0, p0, Lrl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;-><init>()V

    iput-object v0, p0, Lrl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    const-string v0, "EXTRA_LAUNCH_AUTO"

    const/4 v1, 0x1

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lrl;->k:I

    .line 9
    iget-object v0, p0, Lrl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;->setLaunchAuto(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;-><init>()V

    .line 3
    iput-object p1, p0, Lrl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "FactoryDataClearAction"

    .line 6
    const-string v2, "doAction"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {}, Lib;->j()Z

    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 17
    iget-object v0, p0, Lrl;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    .line 19
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p0, Lrl;->k:I

    .line 25
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeFactoryDataClear(I)V

    .line 28
    :goto_0
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

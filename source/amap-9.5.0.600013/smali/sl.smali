.class public Lsl;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

.field public e:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;-><init>()V

    iput-object v0, p0, Lsl;->d:Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 3
    iput p1, p0, Lsl;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;-><init>()V

    .line 6
    iput-object p1, p0, Lsl;->d:Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;->getClearHistoryResultCode()I

    move-result p1

    iput p1, p0, Lsl;->e:I

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
    const-string v1, "FactoryDataClearResultAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lsl;->d:Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2fae

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_CLEAR_HISTORY_RESULT_CODE"

    .line 15
    iget v2, p0, Lsl;->e:I

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 20
    iget v1, p0, Lsl;->e:I

    .line 22
    if-nez v1, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    const-string v2, "EXTRA_CLEAR_HISTORY_STATE"

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    return-object v0
.end method

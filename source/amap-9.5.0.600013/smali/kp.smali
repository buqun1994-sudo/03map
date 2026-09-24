.class public Lkp;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;-><init>()V

    .line 9
    iput-object p1, p0, Lkp;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 11
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lkp;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 6
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;->toString()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 13
    const-string v1, "HistoryOutputDisAction"

    .line 15
    const-string v2, "parseToAidlModel rspHistoryOutputModel={?}"

    .line 17
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lkp;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHistoryOutputModel;

    .line 22
    return-object v0
.end method

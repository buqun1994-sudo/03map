.class public Lj80;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;-><init>()V

    .line 9
    iput-object p1, p0, Lj80;->d:Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;

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
    iget-object v1, p0, Lj80;->d:Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;

    .line 6
    if-nez v1, :cond_0

    .line 8
    const-string v1, ""

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;->toString()Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 15
    :goto_0
    const/4 v2, 0x0

    .line 16
    aput-object v1, v0, v2

    .line 18
    const-string v1, "QuerySavesOutputDisAction"

    .line 20
    const-string v2, "parseToAidlModel:{?}"

    .line 22
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lj80;->d:Lcom/autonavi/amapauto/protocol/model/service/RspQuerySavesOutputModel;

    .line 27
    return-object v0
.end method

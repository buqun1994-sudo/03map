.class public Lk30;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;

    .line 6
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;-><init>()V

    .line 9
    iput-object p1, p0, Lk30;->d:Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;

    .line 11
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
    const-string v1, "NewMidPOIsInfoNotifyDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lk30;->d:Lcom/autonavi/amapauto/protocol/model/service/RspNewMidPOIsInfoNotifyModel;

    .line 13
    return-object v0
.end method

.class public Lvc0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Ljava/lang/String;

.field public e:D

.field public f:D

.field public g:Ljava/lang/String;

.field public h:Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;-><init>()V

    iput-object v0, p0, Lvc0;->h:Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;-><init>()V

    .line 5
    iput-object p1, p0, Lvc0;->h:Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;->getSend2carData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvc0;->d:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;->getDlon()D

    move-result-wide v0

    iput-wide v0, p0, Lvc0;->e:D

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;->getDlat()D

    move-result-wide v0

    iput-wide v0, p0, Lvc0;->f:D

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;->getPoitype()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvc0;->g:Ljava/lang/String;

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
    const-string v1, "Send2CarOperaAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lvc0;->h:Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v1, "KEY_TYPE"

    .line 8
    const/16 v2, 0x2742

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "EXTRA_SEND2CAR_DATA"

    .line 15
    iget-object v2, p0, Lvc0;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "EXTRA_DLON"

    .line 22
    iget-wide v2, p0, Lvc0;->e:D

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 27
    const-string v1, "EXTRA_DLAT"

    .line 29
    iget-wide v2, p0, Lvc0;->f:D

    .line 31
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 34
    const-string v1, "EXTRA_POITYPE"

    .line 36
    iget-object v2, p0, Lvc0;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lvc0;->h:Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;

    .line 43
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/ReqSend2carInfoModel;->getPoiid()Ljava/lang/String;

    .line 46
    move-result-object v1

    .line 47
    const-string v2, "poiid"

    .line 49
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvc0;->d:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public h(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lvc0;->f:D

    .line 3
    return-void
.end method

.method public i(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lvc0;->e:D

    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvc0;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

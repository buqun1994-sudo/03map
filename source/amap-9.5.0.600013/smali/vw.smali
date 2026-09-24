.class public Lvw;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;-><init>()V

    iput-object v0, p0, Lvw;->h:Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;-><init>()V

    .line 5
    iput-object p1, p0, Lvw;->h:Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;->getEntryLat()D

    move-result-wide v0

    iput-wide v0, p0, Lvw;->d:D

    .line 7
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;->getEntryLon()D

    move-result-wide v0

    iput-wide v0, p0, Lvw;->e:D

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lvw;->f:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lvw;->g:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lvw;->h:Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    .line 3
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
    const/16 v2, 0x277e

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "ENTRY_LAT"

    .line 15
    iget-wide v2, p0, Lvw;->d:D

    .line 17
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 20
    const-string v1, "ENTRY_LON"

    .line 22
    iget-wide v2, p0, Lvw;->e:D

    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 27
    const-string v1, "EXTRA_NAME"

    .line 29
    iget-object v2, p0, Lvw;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    const-string v1, "EXTRA_ADDRESS"

    .line 36
    iget-object v2, p0, Lvw;->g:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    iget-object v1, p0, Lvw;->h:Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    .line 43
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;->getPoiid()Ljava/lang/String;

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
    iput-object p1, p0, Lvw;->g:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public h(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lvw;->d:D

    .line 3
    return-void
.end method

.method public i(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lvw;->e:D

    .line 3
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvw;->f:Ljava/lang/String;

    .line 3
    return-void
.end method

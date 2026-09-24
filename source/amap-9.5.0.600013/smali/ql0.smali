.class public Lql0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 8
    iput-object p1, p0, Lql0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 10
    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lql0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "VolumeNotifyToAutoAction"

    .line 6
    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 9
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    const-string v3, "mRspVolumeNotifyToAutoModel must not be bull"

    .line 13
    invoke-static {v2, v3, v0, v1}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    const-string v3, "onNaviVolumeChanged volume "

    .line 24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v3, p0, Lql0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 29
    invoke-virtual {v3}, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;->getVolumeLevel()I

    .line 32
    move-result v3

    .line 33
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    new-array v1, v1, [Ljava/lang/Object;

    .line 42
    invoke-static {v2, v0, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lo6;->j()Lo6;

    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lql0;->k:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    .line 51
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;->getVolumeLevel()I

    .line 54
    move-result v1

    .line 55
    invoke-virtual {v0, v1}, Lo6;->y(I)V

    .line 58
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

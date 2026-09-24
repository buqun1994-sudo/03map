.class public Lrl0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToSystemModel;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToSystemModel;

    .line 6
    invoke-direct {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToSystemModel;-><init>(I)V

    .line 9
    iput-object v0, p0, Lrl0;->d:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToSystemModel;

    .line 11
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lrl0;->d:Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToSystemModel;

    .line 3
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

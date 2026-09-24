.class public Lgt;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 4
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ReqSpeedLimitSwitchStateNotifyModel;

    .line 3
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/ReqSpeedLimitSwitchStateNotifyModel;-><init>()V

    .line 6
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
    const/16 v2, 0x32dc

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    return-object v0
.end method

.class public Lh10;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public final d:Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;-><init>()V

    iput-object v0, p0, Lh10;->d:Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 3
    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;->setMessageType(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    iput-object p1, p0, Lh10;->d:Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lh10;->d:Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 3
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
    const/16 v2, 0x2ee3

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    iget-object v1, p0, Lh10;->d:Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    .line 15
    invoke-virtual {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;->getMessageType()I

    .line 18
    move-result v1

    .line 19
    const-string v2, "EXTRA_MESSAGE_TYPE"

    .line 21
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    return-object v0
.end method

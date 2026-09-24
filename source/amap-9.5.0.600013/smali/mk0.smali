.class public Lmk0;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lec;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;-><init>()V

    iput-object v0, p0, Lmk0;->g:Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;-><init>()V

    .line 3
    iput-object p1, p0, Lmk0;->g:Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;->getVersionNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmk0;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;->getChannelNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmk0;->e:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;->getDataVer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmk0;->f:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lmk0;->g:Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

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
    const/16 v2, 0x2739

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 13
    const-string v1, "VERSION_NUM"

    .line 15
    iget-object v2, p0, Lmk0;->d:Ljava/lang/String;

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    const-string v1, "CHANNEL_NUM"

    .line 22
    iget-object v2, p0, Lmk0;->e:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 27
    const-string v1, "DATA_VERSION"

    .line 29
    iget-object v2, p0, Lmk0;->f:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmk0;->e:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmk0;->f:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmk0;->d:Ljava/lang/String;

    .line 3
    return-void
.end method

.class public Lzo;
.super Lec;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public d:Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lec;-><init>()V

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;-><init>()V

    .line 6
    iput-object p1, p0, Lzo;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lec;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;-><init>()V

    iput-object v0, p0, Lzo;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 3
    iput-object p1, p0, Lzo;->e:Ljava/lang/String;

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
    const-string v1, "HeadingDirectionDisAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lzo;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 13
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "HeadingDirectionDisAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lec;->d()Z

    .line 14
    move-result v0

    .line 15
    const-string v1, "EXTRA_LOCATION_INFO"

    .line 17
    const/16 v2, 0x2751

    .line 19
    const-string v3, "KEY_TYPE"

    .line 21
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lzo;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 25
    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x0

    .line 28
    return-object v0

    .line 29
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 31
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 34
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 37
    iget-object v2, p0, Lzo;->d:Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    .line 39
    invoke-virtual {v2}, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;->getLocationInfo()Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    return-object v0

    .line 47
    :cond_1
    new-instance v0, Landroid/content/Intent;

    .line 49
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lzo;->e:Ljava/lang/String;

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    return-object v0
.end method

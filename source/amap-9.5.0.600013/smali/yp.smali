.class public Lyp;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Z

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lyp;->k:Z

    .line 3
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;-><init>()V

    iput-object v0, p0, Lyp;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lyp;->k:Z

    .line 12
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;-><init>()V

    iput-object v1, p0, Lyp;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    const-string v1, "HUD_IS_OPEN"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lyp;->k:Z

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lyp;->k:Z

    .line 6
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;-><init>()V

    iput-object v1, p0, Lyp;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 8
    iput-object p1, p0, Lyp;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    .line 9
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;->getHudIsOpen()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lyp;->k:Z

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    .line 4
    iget-boolean v2, p0, Lyp;->k:Z

    .line 6
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x0

    .line 11
    aput-object v2, v1, v3

    .line 13
    const-string v2, "HudEnableAction"

    .line 15
    const-string v3, "BroadcastDataHandle hud open  = {?}"

    .line 17
    invoke-static {v2, v3, v1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    invoke-static {}, Lib;->k()Z

    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 26
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    .line 28
    iget-boolean v2, p0, Lyp;->k:Z

    .line 30
    xor-int/2addr v0, v2

    .line 31
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;-><init>(I)V

    .line 34
    invoke-virtual {p0, v1}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 41
    move-result v0

    .line 42
    iget-boolean v1, p0, Lyp;->k:Z

    .line 44
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeSetHudEnabled(IZ)V

    .line 47
    :goto_0
    return-void
.end method

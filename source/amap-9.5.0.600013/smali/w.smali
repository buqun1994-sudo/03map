.class public Lw;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Z

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lw;->k:Z

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;-><init>()V

    iput-object v0, p0, Lw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lw;->k:Z

    .line 11
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;-><init>()V

    iput-object v1, p0, Lw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    const-string v1, "acc_is_on"

    .line 12
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lw;->k:Z

    .line 13
    iget-object v0, p0, Lw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    invoke-virtual {v0, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;->setAccState(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lw;->k:Z

    .line 3
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;-><init>()V

    iput-object v1, p0, Lw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    .line 4
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 5
    iput-object p1, p0, Lw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    sget v0, Li6;->g:I

    .line 3
    sget v1, Li6;->f:I

    .line 5
    invoke-static {v0, v1}, Li6;->y(II)Z

    .line 8
    invoke-static {}, Lib;->k()Z

    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lw;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    .line 16
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 23
    move-result v0

    .line 24
    iget-boolean v1, p0, Lw;->k:Z

    .line 26
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeAccOn(IZ)V

    .line 29
    :goto_0
    return-void
.end method

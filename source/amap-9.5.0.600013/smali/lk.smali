.class public Llk;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Llk;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Llk;->k:I

    const-string v0, "DRIVEMODE_STATE"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Llk;->k:I

    .line 10
    :cond_0
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;-><init>()V

    iput-object p1, p0, Llk;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    .line 11
    iget v0, p0, Llk;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;->setDrivemodeState(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Llk;->k:I

    .line 5
    iput-object p1, p0, Llk;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    invoke-static {}, Lib;->i()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Llk;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget v0, p0, Llk;->k:I

    .line 15
    const/4 v1, -0x1

    .line 16
    if-ne v0, v1, :cond_1

    .line 18
    new-instance v0, Ljava/lang/Exception;

    .line 20
    const-string v1, "Received drive mode from system, but some key parameter is missing."

    .line 22
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    const-string v3, "DriveModeAction"

    .line 30
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    return-void

    .line 34
    :cond_1
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onDriveModeChanged(I)V

    .line 37
    :goto_0
    return-void
.end method

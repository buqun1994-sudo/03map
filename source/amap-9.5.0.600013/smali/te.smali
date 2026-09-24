.class public Lte;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:I

.field public m:Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lte;->k:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lte;->k:I

    const-string v1, "CHARGE_STATE"

    .line 8
    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lte;->k:I

    const-string v1, "CHARGE_TYPE"

    .line 10
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lte;->l:I

    .line 11
    :cond_0
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;-><init>()V

    iput-object p1, p0, Lte;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    .line 12
    iget v0, p0, Lte;->l:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;->setChargeType(I)V

    .line 13
    iget-object p1, p0, Lte;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    iget v0, p0, Lte;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;->setChargeState(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lte;->k:I

    .line 5
    iput-object p1, p0, Lte;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lte;->m:Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    iget v1, p0, Lte;->k:I

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    move-result-object v1

    .line 22
    const/4 v2, 0x0

    .line 23
    aput-object v1, v0, v2

    .line 25
    iget v1, p0, Lte;->l:I

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    move-result-object v1

    .line 31
    const/4 v3, 0x1

    .line 32
    aput-object v1, v0, v3

    .line 34
    const-string v1, "ChargingStateAction"

    .line 36
    const-string v3, "chargeState:{?};chargeType:{?}"

    .line 38
    invoke-static {v1, v3, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    iget v0, p0, Lte;->k:I

    .line 43
    if-nez v0, :cond_1

    .line 45
    new-instance v0, Ljava/lang/Exception;

    .line 47
    const-string v3, "Received charge state from system, but some key parameter is missing."

    .line 49
    invoke-direct {v0, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 52
    new-array v2, v2, [Ljava/lang/Object;

    .line 54
    invoke-static {v1, v3, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 57
    return-void

    .line 58
    :cond_1
    iget v1, p0, Lte;->l:I

    .line 60
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->onChargeStateChanged(II)V

    .line 63
    :goto_0
    return-void
.end method

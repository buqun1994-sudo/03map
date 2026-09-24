.class public Li5;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 12

    .line 9
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    if-eqz p1, :cond_3

    const-string v1, "cameraDisplay"

    .line 11
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "productModel"

    .line 12
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "cameraName"

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "productName"

    .line 14
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "imu"

    .line 15
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "cameraConnect"

    .line 16
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "apkName"

    .line 17
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "serviceAction"

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "common"

    .line 19
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v1, "null"

    if-eqz v9, :cond_0

    move-object v2, v9

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    aput-object v2, p1, v0

    if-eqz v10, :cond_1

    move-object v1, v10

    :cond_1
    const/4 v0, 0x1

    aput-object v1, p1, v0

    const-string v0, "ArCameraIdAction"

    const-string v1, "apkName = {?},serviceAction = {?}"

    .line 20
    invoke-static {v0, v1, p1}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 22
    new-instance p1, Lcn$c;

    invoke-direct {p1, v9, v10}, Lcn$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sput-object p1, Lcn;->t:Lcn$c;

    .line 24
    :cond_2
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    move-object v2, p1

    invoke-direct/range {v2 .. v11}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p1, p0, Li5;->k:Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    :cond_3
    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 3
    iput-object p1, p0, Li5;->k:Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    const-string v1, "ArCameraIdAction"

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getApkName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "null"

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getApkName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    aput-object v3, v2, v0

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getServiceAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getServiceAction()Ljava/lang/String;

    move-result-object v4

    :cond_1
    const/4 v0, 0x1

    aput-object v4, v2, v0

    const-string v0, "apkName = {?},serviceAction = {?}"

    invoke-static {v1, v0, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getApkName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getServiceAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    new-instance v0, Lcn$c;

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getApkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;->getServiceAction()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcn$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    sput-object v0, Lcn;->t:Lcn$c;

    goto :goto_1

    :cond_2
    const-string p1, "rspArCameraIdModel==null"

    new-array v0, v0, [Ljava/lang/Object;

    .line 8
    invoke-static {v1, p1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Li5;->k:Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    .line 3
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 6
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

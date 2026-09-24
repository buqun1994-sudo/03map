.class public Ljo;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lld;
.implements Lo2;


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lnc;-><init>()V

    .line 12
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;-><init>()V

    iput-object v0, p0, Ljo;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    const/4 v0, 0x1

    .line 13
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;-><init>()V

    iput-object v0, p0, Ljo;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    const-string v1, "operaSelect"

    const/4 v2, -0x1

    .line 4
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 5
    iget-object v1, p0, Ljo;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    invoke-virtual {v1, p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;->setOperaSelect(I)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "GroupDestinationChangeAction"

    const-string v1, "[onReceive] receiveClientRequest GroupDestinationChangeAction Intent operaSelect = {?}"

    invoke-static {p1, v1, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Lnc;-><init>()V

    .line 8
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;-><init>()V

    iput-object v0, p0, Ljo;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 10
    iput-object p1, p0, Ljo;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

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
    const-string v1, "GroupDestinationChangeAction"

    .line 6
    const-string v2, "parseToAidlModel"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 14
    move-result-object v0

    .line 15
    iget-boolean v1, p0, Lnc;->c:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {p0}, Ljo;->x()Lcom/autonavi/amapauto/protocol/model/service/RspGroupDestinationChangeModel;

    .line 24
    move-result-object v0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 28
    if-nez v0, :cond_1

    .line 30
    const/16 v0, 0x2730

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 35
    :goto_0
    invoke-direct {v1, v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 38
    move-object v0, v1

    .line 39
    :goto_1
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 4
    const-string v1, "GroupDestinationChangeAction"

    .line 6
    const-string v2, "pareseToIntent"

    .line 8
    invoke-static {v1, v2, v0}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    new-instance v0, Landroid/content/Intent;

    .line 13
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 16
    const-string v1, "KEY_TYPE"

    .line 18
    const v2, 0xea95

    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 24
    iget-boolean v1, p0, Lnc;->c:Z

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 37
    move-result-object v1

    .line 38
    iget v1, v1, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->resultCode:I

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/16 v1, 0x2730

    .line 43
    :goto_0
    const-string v2, "resultCode"

    .line 45
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljo;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

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

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/RspGroupDestinationChangeModel;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Lcom/autonavi/amapauto/protocol/model/service/RspGroupDestinationChangeModel;

    .line 11
    invoke-direct {v1}, Lcom/autonavi/amapauto/protocol/model/service/RspGroupDestinationChangeModel;-><init>()V

    .line 14
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 16
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    move-result-object v0

    .line 20
    :try_start_0
    const-class v2, Lcom/autonavi/amapauto/protocol/model/service/RspGroupDestinationChangeModel;

    .line 22
    invoke-static {v0, v2}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/RspGroupDestinationChangeModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    move-object v1, v0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x0

    .line 36
    new-array v3, v3, [Ljava/lang/Object;

    .line 38
    const-string v4, "GroupDestinationChangeAction"

    .line 40
    invoke-static {v4, v2, v0, v3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 43
    :goto_0
    return-object v1
.end method

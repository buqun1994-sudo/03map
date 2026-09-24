.class public Lo20;
.super Lnc;
.source "SourceFile"

# interfaces
.implements Lo2;
.implements Lld;


# instance fields
.field public k:I

.field public l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lo20;->k:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lo20;->l:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lo20;->l:I

    .line 6
    iput p1, p0, Lo20;->k:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Lnc;->r(Z)V

    .line 8
    :cond_0
    iget p1, p0, Lo20;->k:I

    if-eq p1, v2, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    xor-int/lit8 p1, v0, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lnc;->q(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lo20;->k:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lo20;->l:I

    const-string v1, "actionType"

    .line 20
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lo20;->k:I

    const-string v1, "operaType"

    .line 21
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lo20;->l:I

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lo20;->k:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lo20;->l:I

    .line 13
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;->getOperaType()I

    move-result v1

    iput v1, p0, Lo20;->l:I

    .line 14
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;->getActionType()I

    move-result p1

    iput p1, p0, Lo20;->k:I

    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lnc;->r(Z)V

    .line 16
    iget v1, p0, Lo20;->k:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lnc;->q(Z)V

    return-void
.end method


# virtual methods
.method public b()Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lnc;->c:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 7
    iget v1, p0, Lo20;->k:I

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;-><init>(II)V

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 16
    iget v1, p0, Lnc;->d:I

    .line 18
    invoke-direct {v0, v1}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;-><init>(I)V

    .line 21
    :goto_0
    return-object v0
.end method

.method public c()Landroid/content/Intent;
    .locals 4

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
    new-instance v1, Landroid/content/Intent;

    .line 11
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 14
    iget-boolean v2, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->isNewJsonResult:Z

    .line 16
    const-string v3, "EXTRA_ROUTE_REFRESH_INFO"

    .line 18
    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {p0}, Lo20;->x()Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;->s()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->message:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    :cond_2
    :goto_0
    return-object v1
.end method

.method public d()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lnc;->m()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->getReadyStatus()Z

    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 13
    const/16 v0, 0x2722

    .line 15
    invoke-virtual {p0, v0}, Lnc;->e(I)V

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lib;->h()Z

    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 25
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    .line 27
    iget v1, p0, Lo20;->k:I

    .line 29
    iget v2, p0, Lo20;->l:I

    .line 31
    invoke-direct {v0, v1, v2}, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;-><init>(II)V

    .line 34
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget v0, p0, Lo20;->k:I

    .line 40
    const/4 v1, -0x1

    .line 41
    if-eq v0, v1, :cond_5

    .line 43
    if-eqz v0, :cond_4

    .line 45
    const/4 v1, 0x1

    .line 46
    if-eq v0, v1, :cond_3

    .line 48
    const/4 v1, 0x2

    .line 49
    if-eq v0, v1, :cond_2

    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-virtual {p0}, Lnc;->i()I

    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRefreshRoute(I)V

    .line 59
    goto :goto_0

    .line 60
    :cond_3
    invoke-virtual {p0}, Lnc;->i()I

    .line 63
    move-result v0

    .line 64
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviPreview(IZ)V

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    invoke-virtual {p0}, Lnc;->i()I

    .line 71
    move-result v0

    .line 72
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeStopGuide(I)V

    .line 75
    goto :goto_0

    .line 76
    :cond_5
    invoke-virtual {p0}, Lnc;->i()I

    .line 79
    move-result v0

    .line 80
    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeNaviOpera(II)V

    .line 84
    :goto_0
    return-void
.end method

.method public final x()Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lnc;->j()Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;

    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/autonavi/amapauto/jni/protocol/data/ALResponeData;->jsonString:Ljava/lang/String;

    .line 7
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/data/JsonHeader;->parseJsonToJsonObj(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 10
    move-result-object v0

    .line 11
    :try_start_0
    const-class v1, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;

    .line 13
    invoke-static {v0, v1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/autonavi/amapauto/protocol/model/service/ProtocolErrorModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    new-array v2, v2, [Ljava/lang/Object;

    .line 28
    const-string v3, "NaviOperaAction"

    .line 30
    invoke-static {v3, v1, v0, v2}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 33
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0
.end method

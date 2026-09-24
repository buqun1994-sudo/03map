.class public Lfl;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    .line 2
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;-><init>()V

    iput-object v0, p0, Lfl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lnc;-><init>()V

    .line 4
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;-><init>()V

    iput-object p1, p0, Lfl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lnc;-><init>()V

    .line 6
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;-><init>()V

    .line 7
    iput-object p1, p0, Lfl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 6

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "ExitAppAction"

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lfl;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    .line 13
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeShutdown()V

    .line 20
    invoke-static {}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeIsExitApp()Z

    .line 23
    move-result v0

    .line 24
    new-array v4, v3, [Ljava/lang/Object;

    .line 26
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    move-result-object v5

    .line 30
    aput-object v5, v4, v1

    .line 32
    const-string v5, "isExitApp = {?}"

    .line 34
    invoke-static {v2, v5, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    if-eqz v0, :cond_1

    .line 39
    invoke-static {}, Lk6;->g()Lk6;

    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0, v1}, Lk6;->d(Z)V

    .line 46
    :cond_1
    :goto_0
    invoke-static {}, Ll30;->g()Ll30;

    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0, v3}, Ll30;->f(Z)V

    .line 53
    new-instance v0, Landroid/content/Intent;

    .line 55
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 58
    const-string v4, "AUTO_EVENT_ACTION"

    .line 60
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const-string v4, "EXTRA_EVENT_TYPE"

    .line 65
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 68
    invoke-static {}, Lrv;->H()Lrv;

    .line 71
    move-result-object v4

    .line 72
    invoke-virtual {v4}, Lrv;->z()Landroid/content/Context;

    .line 75
    move-result-object v4

    .line 76
    invoke-static {v4}, Lay;->b(Landroid/content/Context;)Lay;

    .line 79
    move-result-object v4

    .line 80
    invoke-virtual {v4, v0}, Lay;->c(Landroid/content/Intent;)Z

    .line 83
    move-result v0

    .line 84
    new-array v3, v3, [Ljava/lang/Object;

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 89
    move-result-object v4

    .line 90
    aput-object v4, v3, v1

    .line 92
    const-string v1, "sendBroadcast AutoEventType.EXIT_APP, ret={?}"

    .line 94
    invoke-static {v2, v1, v3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    const-string v3, "sendBroadcast AutoEventType.EXIT_APP, ret="

    .line 104
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 114
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    return-void
.end method

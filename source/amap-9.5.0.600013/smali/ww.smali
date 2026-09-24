.class public Lww;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "SOURCE_APP"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lww;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "sourceApplication"

    .line 5
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lww;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 8
    invoke-virtual {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;->getSourceApp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lww;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->k()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;

    .line 9
    invoke-direct {v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;-><init>()V

    .line 12
    iget-object v1, p0, Lww;->k:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;->setSourceApp(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lww;->k:Ljava/lang/String;

    .line 27
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->launchAuto(ILjava/lang/String;)V

    .line 30
    :goto_0
    return-void
.end method

.method public k()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

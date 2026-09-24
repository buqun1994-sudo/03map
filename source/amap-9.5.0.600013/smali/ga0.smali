.class public Lga0;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;-><init>()V

    iput-object p1, p0, Lga0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lnc;->r(Z)V

    .line 6
    iput-object p1, p0, Lga0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lga0;->k:Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    .line 9
    invoke-virtual {p0, v0}, Lnc;->g(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;)V

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lnc;->i()I

    .line 16
    move-result v0

    .line 17
    invoke-static {v0}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeRequestDayNightMode(I)V

    .line 20
    :goto_0
    return-void
.end method

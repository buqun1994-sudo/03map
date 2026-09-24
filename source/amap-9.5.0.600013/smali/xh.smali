.class public Lxh;
.super Lnc;
.source "SourceFile"


# instance fields
.field public k:I

.field public l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnc;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 3

    .line 4
    invoke-direct {p0}, Lnc;-><init>()V

    const-string v0, "EXTRA_DAY_NIGHT_MODE"

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lxh;->k:I

    const/16 v0, 0x2740

    const/4 v2, -0x1

    .line 6
    invoke-static {v0, v2, p1}, Lwe0;->c(III)V

    .line 7
    iget p1, p0, Lxh;->k:I

    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 8
    :cond_0
    iput v1, p0, Lxh;->k:I

    .line 9
    :cond_1
    new-instance p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    invoke-direct {p1}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;-><init>()V

    iput-object p1, p0, Lxh;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    .line 10
    iget v0, p0, Lxh;->k:I

    invoke-virtual {p1, v0}, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;->setDayNightMode(I)V

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lnc;-><init>()V

    .line 3
    iput-object p1, p0, Lxh;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    .line 1
    invoke-static {}, Lib;->j()Z

    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lxh;->l:Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

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
    iget v1, p0, Lxh;->k:I

    .line 19
    invoke-static {v0, v1}, Lcom/autonavi/amapauto/jni/protocol/AndroidProtocolExe;->nativeDayNightMode(II)V

    .line 22
    :goto_0
    return-void
.end method

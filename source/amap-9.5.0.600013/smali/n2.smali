.class public Ln2;
.super Ls;
.source "SourceFile"


# instance fields
.field public a:Lkt;

.field public b:Lys;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ls;-><init>()V

    .line 4
    new-instance v0, Lt10;

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Lt10;-><init>(Z)V

    .line 10
    iput-object v0, p0, Ln2;->a:Lkt;

    .line 12
    new-instance v0, Ln2$a;

    .line 14
    invoke-direct {v0, p0}, Ln2$a;-><init>(Ln2;)V

    .line 17
    iput-object v0, p0, Ln2;->b:Lys;

    .line 19
    invoke-static {}, Lta;->b()Lta;

    .line 22
    move-result-object v0

    .line 23
    invoke-static {}, Lrv;->H()Lrv;

    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lrv;->z()Landroid/content/Context;

    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lta;->d(Landroid/content/Context;)Z

    .line 34
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "[ALSimulate] AidlModelSimulator"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Ln2;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 3
    invoke-virtual {p0}, Ls;->b()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "doSimulate isNeedAssert"

    new-array v4, v1, [Ljava/lang/Object;

    .line 4
    invoke-static {v0, v3, v4}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    iget-object v3, p0, Ln2;->a:Lkt;

    instance-of v4, v3, Lt10;

    if-eqz v4, :cond_0

    .line 6
    check-cast v3, Lt10;

    .line 7
    invoke-virtual {v3, p2}, Lq70;->k(I)Ls10;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 8
    invoke-virtual {v4}, Ls10;->a()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v3, v5}, Lq70;->l(Ljava/lang/Class;)V

    .line 9
    invoke-virtual {v4}, Ls10;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lq70;->m(Ljava/lang/String;)V

    .line 10
    :cond_0
    iget-object v3, p0, Ln2;->a:Lkt;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, p1, v4, p3}, Lkt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 11
    iget-object p1, p0, Ln2;->a:Lkt;

    invoke-interface {p1}, Lkt;->b()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    const/16 p1, 0x753f

    if-eq p2, p1, :cond_7

    const/16 p1, 0x7540

    if-eq p2, p1, :cond_6

    const/16 p1, 0x76d3

    if-eq p2, p1, :cond_5

    const/16 p1, 0x76d4

    if-eq p2, p1, :cond_4

    const/16 p1, 0x76df

    if-eq p2, p1, :cond_3

    const/16 p1, 0x76e0

    if-eq p2, p1, :cond_2

    packed-switch p2, :pswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 12
    :pswitch_0
    :try_start_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspCarEnergyInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 13
    :pswitch_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarChargeStateNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 14
    :pswitch_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqDrivingModeChangeNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 15
    :pswitch_3
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAdditionalEnergyNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 16
    :pswitch_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSendSearchResultListStateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 17
    :pswitch_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryLastMapStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 18
    :pswitch_6
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryDayNightModeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 19
    :pswitch_7
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingDayNightModeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 20
    :pswitch_8
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSearchResultOperateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 21
    :pswitch_9
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/ShareTripByTelNumModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 22
    :pswitch_a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestHighwayExitModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 23
    :pswitch_b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ModifyNaviViaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 24
    :pswitch_c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestFrontTrafficRadioModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 25
    :pswitch_d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestGuideInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 26
    :pswitch_e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/NaviOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 27
    :pswitch_f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/NaviRoutePreferModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 28
    :pswitch_10
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SelectRouteModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 29
    :sswitch_0
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteChangeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 30
    :sswitch_1
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqFuncConfigLoadingStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 31
    :sswitch_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGroupDestinationChangeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 32
    :sswitch_3
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetPlateNumberFromAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 33
    :sswitch_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspGetPlateNumberModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 34
    :sswitch_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetManufactureInfoFromAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 35
    :sswitch_6
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspGetManufactureInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 36
    :sswitch_7
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspVehicleEnergyInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 37
    :sswitch_8
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetVehicleEnergyTypeFromAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 38
    :sswitch_9
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspChannelIDModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 39
    :sswitch_a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspCarRestrictionsInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 40
    :sswitch_b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAccountInfoFromAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 41
    :sswitch_c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspGetAccountInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 42
    :sswitch_d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNewQuerySavesModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 43
    :sswitch_e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSystemKeyboardStatusInformModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 44
    :sswitch_f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspNetworkStatusInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 45
    :sswitch_10
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqBringAutoToForegroundModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 46
    :sswitch_11
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAutoUpdateRollBackModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 47
    :sswitch_12
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqPathConfigInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 48
    :sswitch_13
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCommutingStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 49
    :sswitch_14
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqChooseHomeAndCompanyInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 50
    :sswitch_15
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspIsNOAFunctionOpenModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 51
    :sswitch_16
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqArNavigationLDWInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 52
    :sswitch_17
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspPlaySettingStatusDispatchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 53
    :sswitch_18
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspArOperationInformModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 54
    :sswitch_19
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspAvoidJamOperateStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 55
    :sswitch_1a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMessageDisappearNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 56
    :sswitch_1b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNetworkPositionSwitchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 57
    :sswitch_1c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQueryBackStageCuriseSwitchStateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 58
    :sswitch_1d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCoordinateTransformInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 59
    :sswitch_1e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSlopeAndRollAngleInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 60
    :sswitch_1f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenMapParmModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 61
    :sswitch_20
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqExternalScreenActionModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 62
    :sswitch_21
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspPOIInfoShareModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 63
    :sswitch_22
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMidPOIsInfoNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 64
    :sswitch_23
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSwitchMainAndAuxiliaryRoadModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 65
    :sswitch_24
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspCameraSpeedInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 66
    :sswitch_25
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqCarPlateInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 67
    :sswitch_26
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspFingersSlidingOperationNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 68
    :sswitch_27
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenTypeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 69
    :sswitch_28
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSetExpansionScreenJVSwitchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 70
    :sswitch_29
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspScaleLevelNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 71
    :sswitch_2a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGuideInfoOutputModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 72
    :sswitch_2b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficRestrictQueryModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 73
    :sswitch_2c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMapOperateResultModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 74
    :sswitch_2d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMoveMapModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 75
    :sswitch_2e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspSend2carInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 76
    :sswitch_2f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqAccONNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 77
    :sswitch_30
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspVoiceAssistantControlModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 78
    :sswitch_31
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSettingBroadcastRolesModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 79
    :sswitch_32
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspPhotoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 80
    :sswitch_33
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRepeatBroadcastModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 81
    :sswitch_34
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTTStextforAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 82
    :sswitch_35
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqNoticeOperateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 83
    :sswitch_36
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqSoftwareInfoQueryModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 84
    :sswitch_37
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqEndNavigationModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 85
    :sswitch_38
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqWhetherBackOverviewStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 86
    :sswitch_39
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRouteOverviewModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 87
    :sswitch_3a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspSpeedLimitSwitchStateNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 88
    :sswitch_3b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqHUDnavigationModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 89
    :sswitch_3c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqFatigueDrivingBroadcastModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 90
    :sswitch_3d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqQuerySavesModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 91
    :sswitch_3e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspScreenshotPathModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 92
    :sswitch_3f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSoftwareInfoNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 93
    :sswitch_40
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqTrafficEventsReportModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 94
    :sswitch_41
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspSendDesInfoLastMileModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 95
    :sswitch_42
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspActivateStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 96
    :sswitch_43
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspHeadingDirectionModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 97
    :sswitch_44
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlContinueNaviTipShowOrNotModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 98
    :sswitch_45
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqControlCommuteTipShowOrNotModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 99
    :sswitch_46
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspCurrentRoadNameDispatchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 100
    :sswitch_47
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/ReqSystemDayNightModeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 101
    :sswitch_48
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspReturnStatesofClearHistoryRecordModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 102
    :sswitch_49
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqFleetIMOperationModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 103
    :sswitch_4a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapMoveofEightDirectionModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 104
    :sswitch_4b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/ReqOpenSavesModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 105
    :sswitch_4c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMinimizeAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 106
    :sswitch_4d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqExitAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 107
    :sswitch_4e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqEnterAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 108
    :sswitch_4f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqRestoreDefaultSettingsModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 109
    :sswitch_50
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqClearHistoryOperationRecordModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 110
    :sswitch_51
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/ReqGetVehicleStateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 111
    :sswitch_52
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspNotifyVehicleStateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 112
    :sswitch_53
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqGetAreaInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 113
    :sswitch_54
    const-class p1, Lcom/autonavi/amapauto/protocol/model/service/RspMultiScreenStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 114
    :sswitch_55
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspArCameraIdModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 115
    :sswitch_56
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspVolumeNotifyToAutoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 116
    :sswitch_57
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RspIsARNaviEnableNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 117
    :sswitch_58
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReqMapStateInfoQueryModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 118
    :sswitch_59
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetSystemFontModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 119
    :sswitch_5a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/extscreen/ExScreenOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 120
    :sswitch_5b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ResponseCarHWStatusModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 121
    :sswitch_5c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/CarVehicleInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 122
    :sswitch_5d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestSilentAutoLoginModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 123
    :sswitch_5e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestUnionAutoUserModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 124
    :sswitch_5f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestFavoritePoiModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 125
    :sswitch_60
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteTypeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 126
    :sswitch_61
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/LogoutUserModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 127
    :sswitch_62
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/AckRequestBindUserModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 128
    :sswitch_63
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestBindUserModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 129
    :sswitch_64
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/TmcSegmentDispatchControlModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 130
    :sswitch_65
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/CameraStatusNotifyModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 131
    :sswitch_66
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAvoidLimitModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 132
    :sswitch_67
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ContinueNaviOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 133
    :sswitch_68
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ParkOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 134
    :sswitch_69
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/TSRInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 135
    :sswitch_6a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteExModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 136
    :sswitch_6b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SpecialPoiNaviModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 137
    :pswitch_11
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/PageJumpModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 138
    :pswitch_12
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/RequestHistoryPoiModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 139
    :pswitch_13
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/HomeCompanyAroundSearchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 140
    :pswitch_14
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/AlongTheWaySearchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 141
    :pswitch_15
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/AroundSearchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 142
    :pswitch_16
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/KeyWordSearchModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 143
    :pswitch_17
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/search/FrequentPoisModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 144
    :pswitch_18
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ViewPoiModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 145
    :pswitch_19
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ReportNaviModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 146
    :pswitch_1a
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/GoToHomeOrCopType;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 147
    :pswitch_1b
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/drive_module/RegisterActiveDialogueModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 148
    :pswitch_1c
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/GetNaviMuteModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 149
    :pswitch_1d
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/SetNaviMuteModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto/16 :goto_0

    .line 150
    :pswitch_1e
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/RequestRouteInfoModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 151
    :pswitch_1f
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/user/FavoriteCurrentPoiModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 152
    :pswitch_20
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ShowTrafficModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 153
    :pswitch_21
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/ShowMyLocationModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 154
    :pswitch_22
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/BackToMapModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 155
    :pswitch_23
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/MapOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 156
    :cond_2
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetNaviTypeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 157
    :cond_3
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SetWipeStateModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 158
    :cond_4
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/OilLowRemindOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 159
    :cond_5
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/AvoidJamOperaModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 160
    :cond_6
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/CruisePlayTypeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;

    goto :goto_0

    .line 161
    :cond_7
    const-class p1, Lcom/autonavi/amapauto/protocol/model/client/SwitchAutoThemeModel;

    invoke-static {v2, p1}, Lhw;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;
    :try_end_1
    .catch Liw; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    if-eqz p1, :cond_8

    :try_start_2
    const-string p3, "com.amapauto.autonavi.modelsimulate.client"

    .line 162
    invoke-virtual {p1, p3}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setPackageName(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p1, p2}, Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;->setProtocolID(I)V

    .line 164
    invoke-static {}, Lta;->b()Lta;

    move-result-object p2

    iget-object p3, p0, Ln2;->b:Lys;

    invoke-virtual {p2, p1, p3}, Lta;->e(Lcom/autonavi/amapauto/protocol/model/base/ProtocolBaseModel;Lys;)I

    goto :goto_1

    :cond_8
    const-string p1, "doSimulate null == protocolBaseModel"

    new-array p2, v1, [Ljava/lang/Object;

    .line 165
    invoke-static {v0, p1, p2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 p1, 0x1

    return p1

    .line 166
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p1, p3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v1

    :catch_1
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p1, p3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :catch_2
    move-exception p1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {v0, p2, p1, p3}, Lcz;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x7530
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7538
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x765c
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_16
        :pswitch_13
        :pswitch_12
        :pswitch_11
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x76c0 -> :sswitch_6b
        0x76c2 -> :sswitch_6a
        0x76cd -> :sswitch_69
        0x76d1 -> :sswitch_68
        0x76d7 -> :sswitch_67
        0x76db -> :sswitch_66
        0x76e2 -> :sswitch_65
        0x76e4 -> :sswitch_64
        0x7724 -> :sswitch_63
        0x7726 -> :sswitch_62
        0x7728 -> :sswitch_61
        0x772b -> :sswitch_60
        0x772d -> :sswitch_5f
        0x772f -> :sswitch_5e
        0x7733 -> :sswitch_5d
        0x778c -> :sswitch_5c
        0x778f -> :sswitch_5b
        0x7850 -> :sswitch_5a
        0x78b5 -> :sswitch_59
        0x13888 -> :sswitch_58
        0x1388b -> :sswitch_57
        0x1388d -> :sswitch_56
        0x13895 -> :sswitch_55
        0x1389c -> :sswitch_54
        0x1389e -> :sswitch_53
        0x138a8 -> :sswitch_52
        0x138a9 -> :sswitch_51
        0x138aa -> :sswitch_50
        0x138ab -> :sswitch_4f
        0x138ac -> :sswitch_4e
        0x138ad -> :sswitch_4d
        0x138ae -> :sswitch_4c
        0x138af -> :sswitch_4b
        0x138b0 -> :sswitch_4a
        0x138b3 -> :sswitch_49
        0x138b4 -> :sswitch_48
        0x138b8 -> :sswitch_47
        0x138b9 -> :sswitch_46
        0x138bb -> :sswitch_45
        0x138bc -> :sswitch_44
        0x138bf -> :sswitch_43
        0x138c3 -> :sswitch_42
        0x138c4 -> :sswitch_41
        0x138c5 -> :sswitch_40
        0x138c6 -> :sswitch_3f
        0x138c7 -> :sswitch_3e
        0x138c8 -> :sswitch_3d
        0x138c9 -> :sswitch_3c
        0x138ca -> :sswitch_3b
        0x138cb -> :sswitch_3a
        0x138cc -> :sswitch_39
        0x138cd -> :sswitch_38
        0x138ce -> :sswitch_37
        0x138cf -> :sswitch_36
        0x138d1 -> :sswitch_35
        0x138d2 -> :sswitch_34
        0x138d3 -> :sswitch_33
        0x138d4 -> :sswitch_32
        0x138d5 -> :sswitch_31
        0x138d7 -> :sswitch_30
        0x138d8 -> :sswitch_2f
        0x138d9 -> :sswitch_2e
        0x138da -> :sswitch_2d
        0x138df -> :sswitch_2c
        0x138e1 -> :sswitch_2b
        0x138e3 -> :sswitch_2a
        0x138e4 -> :sswitch_29
        0x138e5 -> :sswitch_28
        0x138e6 -> :sswitch_27
        0x138e7 -> :sswitch_26
        0x138e8 -> :sswitch_25
        0x138e9 -> :sswitch_24
        0x138eb -> :sswitch_23
        0x138ec -> :sswitch_22
        0x138ed -> :sswitch_21
        0x138ee -> :sswitch_20
        0x138ef -> :sswitch_1f
        0x138f0 -> :sswitch_1e
        0x138f1 -> :sswitch_1d
        0x138f2 -> :sswitch_1c
        0x138f3 -> :sswitch_1b
        0x138f4 -> :sswitch_1a
        0x138f7 -> :sswitch_19
        0x138f8 -> :sswitch_18
        0x138fa -> :sswitch_17
        0x138fb -> :sswitch_16
        0x138fc -> :sswitch_15
        0x138ff -> :sswitch_14
        0x13900 -> :sswitch_13
        0x13901 -> :sswitch_12
        0x13903 -> :sswitch_11
        0x13904 -> :sswitch_10
        0x13905 -> :sswitch_f
        0x13906 -> :sswitch_e
        0x1390b -> :sswitch_d
        0x1390c -> :sswitch_c
        0x1390d -> :sswitch_b
        0x1390e -> :sswitch_a
        0x1390f -> :sswitch_9
        0x13911 -> :sswitch_8
        0x13912 -> :sswitch_7
        0x13913 -> :sswitch_6
        0x13914 -> :sswitch_5
        0x13915 -> :sswitch_4
        0x13916 -> :sswitch_3
        0x13919 -> :sswitch_2
        0x1391a -> :sswitch_1
        0x1391c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x76c4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x13897
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x138a2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 1
    const-string p1, "[ALSimulate] AidlModelSimulator"

    .line 3
    const/4 p3, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    const-string v1, "getSimulateProtocolId protocolIdInt = {?}"

    .line 11
    new-array v2, p3, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v3

    .line 17
    aput-object v3, v2, v0

    .line 19
    invoke-static {p1, v1, v2}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    return p2

    .line 23
    :catch_0
    move-exception v1

    .line 24
    goto :goto_0

    .line 25
    :catch_1
    move-exception v1

    .line 26
    const/4 p2, 0x0

    .line 27
    :goto_0
    new-array p3, p3, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    move-result-object v1

    .line 33
    aput-object v1, p3, v0

    .line 35
    const-string v0, "getSimulateProtocolId Exception = {?}"

    .line 37
    invoke-static {p1, v0, p3}, Lcz;->l(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    return p2
.end method

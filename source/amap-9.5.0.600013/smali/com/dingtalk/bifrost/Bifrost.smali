.class public Lcom/dingtalk/bifrost/Bifrost;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSwitchProvider:Lcom/dingtalk/bifrost/BifrostSwitchProvider;

.field private static swchmng:Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/dingtalk/mobile/common/amnetcore/DftAmnetSwitchManager;

    .line 3
    invoke-direct {v0}, Lcom/dingtalk/mobile/common/amnetcore/DftAmnetSwitchManager;-><init>()V

    .line 6
    sput-object v0, Lcom/dingtalk/bifrost/Bifrost;->swchmng:Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;

    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSwchmng()Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/dingtalk/bifrost/Bifrost;->swchmng:Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;

    .line 3
    return-object v0
.end method

.method public static getSwitchProvider()Lcom/dingtalk/bifrost/BifrostSwitchProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/dingtalk/bifrost/Bifrost;->sSwitchProvider:Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 3
    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-static {p0}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->setContext(Landroid/content/Context;)V

    .line 12
    :cond_0
    invoke-static {}, Lcom/dingtalk/bifrost/Bifrost;->loadLibrary()V

    .line 15
    invoke-static {}, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->getInstance()Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 18
    move-result-object p0

    .line 19
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->register(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/dingtalk/bifrost/AppLogicICallBackImpl;->getInstance()Lcom/dingtalk/bifrost/AppLogicICallBackImpl;

    .line 29
    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/dingtalk/mars/app/AppLogic;->setCallBack(Lcom/dingtalk/mars/app/AppLogic$ICallBack;)V

    .line 33
    invoke-static {}, Lcom/dingtalk/bifrost/BifrostEnvUtils;->getContext()Landroid/content/Context;

    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/dingtalk/bifrost/BifrostNetworkConnReceiver;->instance(Landroid/content/Context;)Lcom/dingtalk/bifrost/BifrostNetworkConnReceiver;

    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p0}, Lcom/dingtalk/mobile/common/adapter/BifrostRigorousNetworkConnReceiver;->register()V

    .line 44
    return-void
.end method

.method public static loadLibrary()V
    .locals 2

    .line 1
    const-string v0, "gaea"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/dingtalk/mobile/common/utils/load/LibraryLoadUtils;->loadLibrary(Ljava/lang/String;Z)V

    .line 7
    return-void
.end method

.method public static setSwchmng(Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/dingtalk/bifrost/Bifrost;->swchmng:Lcom/dingtalk/mobile/common/amnetcore/AmnetSwitchManager;

    .line 5
    :cond_0
    return-void
.end method

.method public static setSwitchProvider(Lcom/dingtalk/bifrost/BifrostSwitchProvider;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/dingtalk/bifrost/Bifrost;->sSwitchProvider:Lcom/dingtalk/bifrost/BifrostSwitchProvider;

    .line 3
    return-void
.end method

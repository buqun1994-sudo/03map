.class public Lcom/amap/location/support/AmapContext;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static DEBUG:Z

.field private static volatile sContext:Ljava/lang/Object;

.field private static volatile sDbManager:Lcom/amap/location/support/db/IDbManager;

.field private static volatile sDiffGnssDataProvider:Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

.field private static volatile sHandlerThreadManager:Lcom/amap/location/support/handler/HandlerThreadManager;

.field private static volatile sKeyValueStorerManager:Lcom/amap/location/support/storage/IKeyValueStorerManager;

.field private static volatile sManuFeedback:Lcom/amap/location/support/feedback/IManuFeedback;

.field private static volatile sNativeAbility:Lcom/amap/location/support/security/INativeAbility;

.field private static volatile sNetwork:Lcom/amap/location/support/network/INetwork;

.field private static volatile sNetworkLocator:Lcom/amap/location/support/nl/INetworkLocator;

.field public static volatile sOnNavi:Z

.field private static volatile sPlatformStatus:Lcom/amap/location/support/common/IPlatformStatus;

.field private static volatile sSignalManager:Lcom/amap/location/support/signal/ISignalManager;

.field private static volatile sSignalProvider:Lcom/amap/location/support/signal/ISignalProvider;

.field private static volatile sThirdIndoorLocator:Lcom/amap/location/support/third/IThirdLocator;

.field private static volatile sThirdLocator:Lcom/amap/location/support/third/IThirdLocator;

.field private static volatile sWorkLooper:Lcom/amap/location/support/handler/AmapLooper;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sContext:Ljava/lang/Object;

    .line 3
    return-object v0
.end method

.method public static getDbManager()Lcom/amap/location/support/db/IDbManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sDbManager:Lcom/amap/location/support/db/IDbManager;

    .line 3
    return-object v0
.end method

.method public static getDiffGnssDataProvider()Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sDiffGnssDataProvider:Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 3
    return-object v0
.end method

.method public static getHandlerThreadManager()Lcom/amap/location/support/handler/HandlerThreadManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sHandlerThreadManager:Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 3
    return-object v0
.end method

.method public static getKeyValueStorerManager()Lcom/amap/location/support/storage/IKeyValueStorerManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sKeyValueStorerManager:Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 3
    return-object v0
.end method

.method public static getManuFeedback()Lcom/amap/location/support/feedback/IManuFeedback;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sManuFeedback:Lcom/amap/location/support/feedback/IManuFeedback;

    .line 3
    return-object v0
.end method

.method public static getNativeAbility()Lcom/amap/location/support/security/INativeAbility;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sNativeAbility:Lcom/amap/location/support/security/INativeAbility;

    .line 3
    return-object v0
.end method

.method public static getNetwork()Lcom/amap/location/support/network/INetwork;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sNetwork:Lcom/amap/location/support/network/INetwork;

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcom/amap/location/support/network/EmptyNetwork;

    .line 7
    invoke-direct {v0}, Lcom/amap/location/support/network/EmptyNetwork;-><init>()V

    .line 10
    sput-object v0, Lcom/amap/location/support/AmapContext;->sNetwork:Lcom/amap/location/support/network/INetwork;

    .line 12
    :cond_0
    sget-object v0, Lcom/amap/location/support/AmapContext;->sNetwork:Lcom/amap/location/support/network/INetwork;

    .line 14
    return-object v0
.end method

.method public static getNetworkLocator()Lcom/amap/location/support/nl/INetworkLocator;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sNetworkLocator:Lcom/amap/location/support/nl/INetworkLocator;

    .line 3
    return-object v0
.end method

.method public static getPlatformStatus()Lcom/amap/location/support/common/IPlatformStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sPlatformStatus:Lcom/amap/location/support/common/IPlatformStatus;

    .line 3
    return-object v0
.end method

.method public static getSignalManager()Lcom/amap/location/support/signal/ISignalManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sSignalManager:Lcom/amap/location/support/signal/ISignalManager;

    .line 3
    return-object v0
.end method

.method public static getSignalProvider()Lcom/amap/location/support/signal/ISignalProvider;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sSignalProvider:Lcom/amap/location/support/signal/ISignalProvider;

    .line 3
    return-object v0
.end method

.method public static getThirdIndoorLocator()Lcom/amap/location/support/third/IThirdLocator;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sThirdIndoorLocator:Lcom/amap/location/support/third/IThirdLocator;

    .line 3
    return-object v0
.end method

.method public static getThirdLocator()Lcom/amap/location/support/third/IThirdLocator;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sThirdLocator:Lcom/amap/location/support/third/IThirdLocator;

    .line 3
    return-object v0
.end method

.method public static getWorkLooper()Lcom/amap/location/support/handler/AmapLooper;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/location/support/AmapContext;->sWorkLooper:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    return-object v0
.end method

.method public static initContext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/AmapContext;->sContext:Ljava/lang/Object;

    .line 3
    return-void
.end method

.method public static initDB(Lcom/amap/location/support/db/IDbManager;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sDbManager:Lcom/amap/location/support/db/IDbManager;

    .line 5
    :cond_0
    return-void
.end method

.method public static initDiffGnssDataProvider(Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sDiffGnssDataProvider:Lcom/amap/location/support/rtk/diffgnss/IDiffGnssDataProvider;

    .line 5
    :cond_0
    return-void
.end method

.method public static initHandlerThreadManager(Lcom/amap/location/support/handler/HandlerThreadManager;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sHandlerThreadManager:Lcom/amap/location/support/handler/HandlerThreadManager;

    .line 5
    :cond_0
    return-void
.end method

.method public static initKeyValueStorerManager(Lcom/amap/location/support/storage/IKeyValueStorerManager;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sKeyValueStorerManager:Lcom/amap/location/support/storage/IKeyValueStorerManager;

    .line 5
    :cond_0
    return-void
.end method

.method public static initLog(Lcom/amap/location/support/log/ILog;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/log/ALLog;->init(Lcom/amap/location/support/log/ILog;)V

    .line 4
    return-void
.end method

.method public static initManuFeedback(Lcom/amap/location/support/feedback/IManuFeedback;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sManuFeedback:Lcom/amap/location/support/feedback/IManuFeedback;

    .line 5
    :cond_0
    return-void
.end method

.method public static initNetwork(Lcom/amap/location/support/network/INetwork;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sNetwork:Lcom/amap/location/support/network/INetwork;

    .line 5
    :cond_0
    return-void
.end method

.method public static initNetworkLocator(Lcom/amap/location/support/nl/INetworkLocator;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sNetworkLocator:Lcom/amap/location/support/nl/INetworkLocator;

    .line 5
    :cond_0
    return-void
.end method

.method public static initPlatformStatus(Lcom/amap/location/support/common/IPlatformStatus;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sPlatformStatus:Lcom/amap/location/support/common/IPlatformStatus;

    .line 5
    :cond_0
    return-void
.end method

.method public static initSecurity(Lcom/amap/location/support/security/INativeAbility;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sNativeAbility:Lcom/amap/location/support/security/INativeAbility;

    .line 5
    :cond_0
    return-void
.end method

.method public static initSignalManager(Lcom/amap/location/support/signal/ISignalManager;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sSignalManager:Lcom/amap/location/support/signal/ISignalManager;

    .line 5
    :cond_0
    return-void
.end method

.method public static initSignalProvider(Lcom/amap/location/support/signal/ISignalProvider;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sSignalProvider:Lcom/amap/location/support/signal/ISignalProvider;

    .line 5
    :cond_0
    return-void
.end method

.method public static initThirdIndoorLocator(Lcom/amap/location/support/third/IThirdLocator;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sThirdIndoorLocator:Lcom/amap/location/support/third/IThirdLocator;

    .line 5
    :cond_0
    return-void
.end method

.method public static initThirdLocator(Lcom/amap/location/support/third/IThirdLocator;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 3
    sput-object p0, Lcom/amap/location/support/AmapContext;->sThirdLocator:Lcom/amap/location/support/third/IThirdLocator;

    .line 5
    :cond_0
    return-void
.end method

.method public static initUptunnel(Lcom/amap/location/support/uptunnel/IUpTunnel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/uptunnel/UpTunnel;->init(Lcom/amap/location/support/uptunnel/IUpTunnel;)V

    .line 4
    return-void
.end method

.method public static initWorkLooper(Lcom/amap/location/support/handler/AmapLooper;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/location/support/AmapContext;->sWorkLooper:Lcom/amap/location/support/handler/AmapLooper;

    .line 3
    return-void
.end method

.method public static initWorkPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/amap/location/support/util/FileUtils;->setInnerStoragePath(Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/amap/location/support/util/FileUtils;->setExternalStoragePath(Ljava/lang/String;)V

    .line 7
    return-void
.end method

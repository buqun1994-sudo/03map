.class final Lcom/alibaba/android/ark/AIMSettingService$CppProxy;
.super Lcom/alibaba/android/ark/AIMSettingService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CppProxy"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final nativeRef:J


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(J)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMSettingService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    const-string p2, "nativeRef is zero"

    .line 25
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p1
.end method

.method private native AddSyncProtocolSettingNative(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSyncProtocolInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method private native SetAppKeyNative(JLjava/lang/String;)V
.end method

.method private native SetAppLocaleNative(JLjava/lang/String;)V
.end method

.method private native SetAppNameNative(JLjava/lang/String;)V
.end method

.method private native SetAppVersionNative(JLjava/lang/String;)V
.end method

.method private native SetAuthTokenCallbackNative(JLcom/alibaba/android/ark/AIMAuthTokenCallback;)V
.end method

.method private native SetCustomUserAgentNative(JLjava/lang/String;)V
.end method

.method private native SetDataPathNative(JLjava/lang/String;)V
.end method

.method private native SetDeviceIdNative(JLjava/lang/String;)V
.end method

.method private native SetDeviceLocaleNative(JLjava/lang/String;)V
.end method

.method private native SetDeviceNameNative(JLjava/lang/String;)V
.end method

.method private native SetDeviceTypeNative(JLjava/lang/String;)V
.end method

.method private native SetDisableSslVerifyNative(JZ)V
.end method

.method private native SetEnableFileTransportCacheNative(JZ)V
.end method

.method private native SetEnableIpv6Native(JZ)V
.end method

.method private native SetFileUploadConnectionTypeNative(JLcom/alibaba/android/ark/AIMConnectionType;)V
.end method

.method private native SetFileUploadServerAddressNative(JLjava/lang/String;)V
.end method

.method private native SetFirstLoginConvSizeNative(JI)V
.end method

.method private native SetGreySwitchCallbackNative(JLcom/alibaba/android/ark/AIMGreySwitchCallback;)V
.end method

.method private native SetLongLinkConnectionTypeNative(JLcom/alibaba/android/ark/AIMConnectionType;)V
.end method

.method private native SetLonglinkServerAddressNative(JLjava/lang/String;)V
.end method

.method private native SetLonglinkServerAddressesNative(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native SetMediaHostNative(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMediaHost;",
            ">;)V"
        }
    .end annotation
.end method

.method private native SetMultiConvSupportNative(JZ)V
.end method

.method private native SetOSNameNative(JLjava/lang/String;)V
.end method

.method private native SetOSVersionNative(JLjava/lang/String;)V
.end method

.method private native SetProxyInfoNative(JLcom/alibaba/android/ark/AIMProxyInfo;)V
.end method

.method private native SetRPCCustomHeaderNative(JLjava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native SetRPCTimeoutNative(JJ)V
.end method

.method private native SetSamplingRateCallbackNative(JLcom/alibaba/android/ark/AIMSettingSamplingRateCallback;)V
.end method

.method private native SetTimeZoneNative(JLjava/lang/String;)V
.end method

.method private native SetTlsVerifyHostNative(JLjava/lang/String;)V
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public AddSyncProtocolSetting(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSyncProtocolInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->AddSyncProtocolSettingNative(JLjava/util/ArrayList;)V

    .line 6
    return-void
.end method

.method public SetAppKey(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetAppKeyNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetAppLocale(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetAppLocaleNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetAppName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetAppNameNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetAppVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetAppVersionNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetAuthTokenCallback(Lcom/alibaba/android/ark/AIMAuthTokenCallback;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetAuthTokenCallbackNative(JLcom/alibaba/android/ark/AIMAuthTokenCallback;)V

    .line 6
    return-void
.end method

.method public SetCustomUserAgent(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetCustomUserAgentNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetDataPath(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetDataPathNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetDeviceId(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetDeviceIdNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetDeviceLocale(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetDeviceLocaleNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetDeviceName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetDeviceNameNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetDeviceType(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetDeviceTypeNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetDisableSslVerify(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetDisableSslVerifyNative(JZ)V

    .line 6
    return-void
.end method

.method public SetEnableFileTransportCache(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetEnableFileTransportCacheNative(JZ)V

    .line 6
    return-void
.end method

.method public SetEnableIpv6(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetEnableIpv6Native(JZ)V

    .line 6
    return-void
.end method

.method public SetFileUploadConnectionType(Lcom/alibaba/android/ark/AIMConnectionType;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetFileUploadConnectionTypeNative(JLcom/alibaba/android/ark/AIMConnectionType;)V

    .line 6
    return-void
.end method

.method public SetFileUploadServerAddress(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetFileUploadServerAddressNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetFirstLoginConvSize(I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetFirstLoginConvSizeNative(JI)V

    .line 6
    return-void
.end method

.method public SetGreySwitchCallback(Lcom/alibaba/android/ark/AIMGreySwitchCallback;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetGreySwitchCallbackNative(JLcom/alibaba/android/ark/AIMGreySwitchCallback;)V

    .line 6
    return-void
.end method

.method public SetLongLinkConnectionType(Lcom/alibaba/android/ark/AIMConnectionType;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetLongLinkConnectionTypeNative(JLcom/alibaba/android/ark/AIMConnectionType;)V

    .line 6
    return-void
.end method

.method public SetLonglinkServerAddress(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetLonglinkServerAddressNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetLonglinkServerAddresses(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetLonglinkServerAddressesNative(JLjava/util/ArrayList;)V

    .line 6
    return-void
.end method

.method public SetMediaHost(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMediaHost;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetMediaHostNative(JLjava/util/ArrayList;)V

    .line 6
    return-void
.end method

.method public SetMultiConvSupport(Z)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetMultiConvSupportNative(JZ)V

    .line 6
    return-void
.end method

.method public SetOSName(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetOSNameNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetOSVersion(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetOSVersionNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetProxyInfo(Lcom/alibaba/android/ark/AIMProxyInfo;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetProxyInfoNative(JLcom/alibaba/android/ark/AIMProxyInfo;)V

    .line 6
    return-void
.end method

.method public SetRPCCustomHeader(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetRPCCustomHeaderNative(JLjava/util/HashMap;)V

    .line 6
    return-void
.end method

.method public SetRPCTimeout(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetRPCTimeoutNative(JJ)V

    .line 6
    return-void
.end method

.method public SetSamplingRateCallback(Lcom/alibaba/android/ark/AIMSettingSamplingRateCallback;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetSamplingRateCallbackNative(JLcom/alibaba/android/ark/AIMSettingSamplingRateCallback;)V

    .line 6
    return-void
.end method

.method public SetTimeZone(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetTimeZoneNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetTlsVerifyHost(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->SetTlsVerifyHostNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->nativeDestroy(J)V

    .line 15
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMSettingService$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

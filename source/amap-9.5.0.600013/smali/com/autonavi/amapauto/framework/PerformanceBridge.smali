.class public Lcom/autonavi/amapauto/framework/PerformanceBridge;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/autonavi/amapauto/framework/OnNativePerformanceBridgeCallBack;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/autonavi/amapauto/framework/PerformanceBridge;->nativeRegisterPerformanceBridge(Lcom/autonavi/amapauto/framework/OnNativePerformanceBridgeCallBack;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static native nativeDispatchPerformanceBridge(III)Z
.end method

.method public static native nativeOnPerformanceResult(Ljava/lang/String;)Z
.end method

.method public static native nativeRegisterPerformanceBridge(Lcom/autonavi/amapauto/framework/OnNativePerformanceBridgeCallBack;)Z
.end method

.class final Lcom/alibaba/android/ark/AIMEngine$CppProxy;
.super Lcom/alibaba/android/ark/AIMEngine;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMEngine;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMEngine;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

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

.method public static native CreateAIMEngine()Lcom/alibaba/android/ark/AIMEngine;
.end method

.method private native CreateIMManagerNative(JLcom/alibaba/android/ark/AIMUserId;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMManagerCreateListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/ark/AIMUserId;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMManagerCreateListener;",
            ")V"
        }
    .end annotation
.end method

.method public static native GetAIMEngine()Lcom/alibaba/android/ark/AIMEngine;
.end method

.method private native GetIMManagerNative(JLcom/alibaba/android/ark/AIMUserId;)Lcom/alibaba/android/ark/AIMManager;
.end method

.method private native GetServerTimeClockNative(J)J
.end method

.method private native GetSettingServiceNative(J)Lcom/alibaba/android/ark/AIMSettingService;
.end method

.method private native GetUserIdsNative(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation
.end method

.method private native IsStartedNative(J)Z
.end method

.method private native OnAppDidEnterBackgroundNative(J)V
.end method

.method private native OnAppWillEnterForegroundNative(J)V
.end method

.method private native RegisterModuleNative(JLcom/alibaba/android/ark/DPSModuleInfo;)Lcom/alibaba/android/ark/AIMError;
.end method

.method public static native ReleaseAIMEngine()V
.end method

.method private native ReleaseIMManagerNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMReleaseManagerListener;)V
.end method

.method public static native ResetUserData(Ljava/lang/String;Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMResetUserDataListener;)V
.end method

.method private native SetListenerNative(JLcom/alibaba/android/ark/AIMEngineListener;)V
.end method

.method public static native SetLogHandler(Lcom/alibaba/android/ark/AIMLogLevel;Lcom/alibaba/android/ark/AIMLogHandler;)V
.end method

.method private native StartNative(JLcom/alibaba/android/ark/AIMEngineStartListener;)V
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public CreateIMManager(Lcom/alibaba/android/ark/AIMUserId;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMManagerCreateListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMUserId;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMManagerCreateListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->CreateIMManagerNative(JLcom/alibaba/android/ark/AIMUserId;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMManagerCreateListener;)V

    .line 10
    return-void
.end method

.method public GetIMManager(Lcom/alibaba/android/ark/AIMUserId;)Lcom/alibaba/android/ark/AIMManager;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->GetIMManagerNative(JLcom/alibaba/android/ark/AIMUserId;)Lcom/alibaba/android/ark/AIMManager;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public GetServerTimeClock()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->GetServerTimeClockNative(J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public GetSettingService()Lcom/alibaba/android/ark/AIMSettingService;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->GetSettingServiceNative(J)Lcom/alibaba/android/ark/AIMSettingService;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public GetUserIds()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->GetUserIdsNative(J)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public IsStarted()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->IsStartedNative(J)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public OnAppDidEnterBackground()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->OnAppDidEnterBackgroundNative(J)V

    .line 6
    return-void
.end method

.method public OnAppWillEnterForeground()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->OnAppWillEnterForegroundNative(J)V

    .line 6
    return-void
.end method

.method public RegisterModule(Lcom/alibaba/android/ark/DPSModuleInfo;)Lcom/alibaba/android/ark/AIMError;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->RegisterModuleNative(JLcom/alibaba/android/ark/DPSModuleInfo;)Lcom/alibaba/android/ark/AIMError;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public ReleaseIMManager(Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMReleaseManagerListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->ReleaseIMManagerNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMReleaseManagerListener;)V

    .line 6
    return-void
.end method

.method public SetListener(Lcom/alibaba/android/ark/AIMEngineListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->SetListenerNative(JLcom/alibaba/android/ark/AIMEngineListener;)V

    .line 6
    return-void
.end method

.method public Start(Lcom/alibaba/android/ark/AIMEngineStartListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->StartNative(JLcom/alibaba/android/ark/AIMEngineStartListener;)V

    .line 6
    return-void
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMEngine$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.class final Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;
.super Lcom/alibaba/android/ark/DPSModuleEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/DPSModuleEventHandler;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/DPSModuleEventHandler;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

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

.method private native OnAppDidEnterBackgroundNative(J)V
.end method

.method private native OnAppWillEnterForegroundNative(J)V
.end method

.method private native OnBeforeEngineStartNative(J)V
.end method

.method private native OnBeforeManagerCreateNative(JLcom/alibaba/android/ark/AIMUserId;)V
.end method

.method private native OnEngineReleasedNative(J)V
.end method

.method private native OnEngineStartedNative(J)V
.end method

.method private native OnGetAuthHandlerNative(JLcom/alibaba/android/ark/AIMUserId;)Lcom/alibaba/android/ark/DPSAuthHandler;
.end method

.method private native OnGetSyncProtocolInfoNative(J)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSyncProtocolInfo;",
            ">;"
        }
    .end annotation
.end method

.method private native OnInitModuleForUserNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/DPSModuleEventHandlerCallback;Lcom/alibaba/android/ark/DPSServiceProvider;)V
.end method

.method private native OnManagerCreateFinishedNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMError;)V
.end method

.method private native OnReleaseManagerNative(JLcom/alibaba/android/ark/AIMUserId;)V
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public OnAppDidEnterBackground()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnAppDidEnterBackgroundNative(J)V

    .line 6
    return-void
.end method

.method public OnAppWillEnterForeground()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnAppWillEnterForegroundNative(J)V

    .line 6
    return-void
.end method

.method public OnBeforeEngineStart()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnBeforeEngineStartNative(J)V

    .line 6
    return-void
.end method

.method public OnBeforeManagerCreate(Lcom/alibaba/android/ark/AIMUserId;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnBeforeManagerCreateNative(JLcom/alibaba/android/ark/AIMUserId;)V

    .line 6
    return-void
.end method

.method public OnEngineReleased()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnEngineReleasedNative(J)V

    .line 6
    return-void
.end method

.method public OnEngineStarted()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnEngineStartedNative(J)V

    .line 6
    return-void
.end method

.method public OnGetAuthHandler(Lcom/alibaba/android/ark/AIMUserId;)Lcom/alibaba/android/ark/DPSAuthHandler;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnGetAuthHandlerNative(JLcom/alibaba/android/ark/AIMUserId;)Lcom/alibaba/android/ark/DPSAuthHandler;

    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public OnGetSyncProtocolInfo()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSyncProtocolInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnGetSyncProtocolInfoNative(J)Ljava/util/ArrayList;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public OnInitModuleForUser(Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/DPSModuleEventHandlerCallback;Lcom/alibaba/android/ark/DPSServiceProvider;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnInitModuleForUserNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/DPSModuleEventHandlerCallback;Lcom/alibaba/android/ark/DPSServiceProvider;)V

    .line 10
    return-void
.end method

.method public OnManagerCreateFinished(Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMError;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnManagerCreateFinishedNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMError;)V

    .line 6
    return-void
.end method

.method public OnReleaseManager(Lcom/alibaba/android/ark/AIMUserId;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->OnReleaseManagerNative(JLcom/alibaba/android/ark/AIMUserId;)V

    .line 6
    return-void
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/DPSModuleEventHandler$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.class final Lcom/alibaba/android/ark/AIMAuthService$CppProxy;
.super Lcom/alibaba/android/ark/AIMAuthService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMAuthService;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMAuthService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

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

.method private native AddListenerNative(JLcom/alibaba/android/ark/AIMAuthListener;)Z
.end method

.method private native GetConnectionStatusNative(J)Lcom/alibaba/android/ark/AIMConnectionStatus;
.end method

.method private native GetNetTypeNative(J)Lcom/alibaba/android/ark/AIMNetType;
.end method

.method private native IsLocalLoginNative(J)Z
.end method

.method private native IsNetworkAvailableNative(J)Z
.end method

.method private native KickoutNative(JILjava/lang/String;Lcom/alibaba/android/ark/AIMKickoutListener;)V
.end method

.method private native LoginNative(J)V
.end method

.method private native LogoutNative(JLcom/alibaba/android/ark/AIMLogoutListener;)V
.end method

.method private native RemoveAllListenersNative(J)V
.end method

.method private native RemoveListenerNative(JLcom/alibaba/android/ark/AIMAuthListener;)Z
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public AddListener(Lcom/alibaba/android/ark/AIMAuthListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->AddListenerNative(JLcom/alibaba/android/ark/AIMAuthListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public GetConnectionStatus()Lcom/alibaba/android/ark/AIMConnectionStatus;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->GetConnectionStatusNative(J)Lcom/alibaba/android/ark/AIMConnectionStatus;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public GetNetType()Lcom/alibaba/android/ark/AIMNetType;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->GetNetTypeNative(J)Lcom/alibaba/android/ark/AIMNetType;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public IsLocalLogin()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->IsLocalLoginNative(J)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public IsNetworkAvailable()Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->IsNetworkAvailableNative(J)Z

    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public Kickout(ILjava/lang/String;Lcom/alibaba/android/ark/AIMKickoutListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->KickoutNative(JILjava/lang/String;Lcom/alibaba/android/ark/AIMKickoutListener;)V

    .line 10
    return-void
.end method

.method public Login()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->LoginNative(J)V

    .line 6
    return-void
.end method

.method public Logout(Lcom/alibaba/android/ark/AIMLogoutListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->LogoutNative(JLcom/alibaba/android/ark/AIMLogoutListener;)V

    .line 6
    return-void
.end method

.method public RemoveAllListeners()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->RemoveAllListenersNative(J)V

    .line 6
    return-void
.end method

.method public RemoveListener(Lcom/alibaba/android/ark/AIMAuthListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->RemoveListenerNative(JLcom/alibaba/android/ark/AIMAuthListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMAuthService$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

.class final Lcom/alibaba/android/ark/AIMUtService$CppProxy;
.super Lcom/alibaba/android/ark/AIMUtService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMUtService;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMUtService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->nativeRef:J

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

.method private native AddListenerNative(JLcom/alibaba/android/ark/AIMUtListener;)Z
.end method

.method private native RemoveAllListenersNative(J)V
.end method

.method private native RemoveListenerNative(JLcom/alibaba/android/ark/AIMUtListener;)Z
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public AddListener(Lcom/alibaba/android/ark/AIMUtListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->AddListenerNative(JLcom/alibaba/android/ark/AIMUtListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public RemoveAllListeners()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->RemoveAllListenersNative(J)V

    .line 6
    return-void
.end method

.method public RemoveListener(Lcom/alibaba/android/ark/AIMUtListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->RemoveListenerNative(JLcom/alibaba/android/ark/AIMUtListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMUtService$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

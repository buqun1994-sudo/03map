.class final Lcom/alibaba/android/ark/AIMConvService$CppProxy;
.super Lcom/alibaba/android/ark/AIMConvService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMConvService;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMConvService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

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

.method private native AddConvChangeListenerNative(JLcom/alibaba/android/ark/AIMConvChangeListener;)V
.end method

.method private native AddConvListListenerNative(JLcom/alibaba/android/ark/AIMConvListListener;)V
.end method

.method private native BulkUpdateLocalExtensionByKeysNative(JLjava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation
.end method

.method private native ClearAllConvsRedPointNative(JLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native ClearNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native ClearRedPointNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native CreateSingleConversationNative(JLcom/alibaba/android/ark/AIMConvCreateSingleConvParam;Lcom/alibaba/android/ark/AIMConvCreateSingleConvListener;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/ark/AIMConvCreateSingleConvParam;",
            "Lcom/alibaba/android/ark/AIMConvCreateSingleConvListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native GetConversationNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvGetSingleConvListener;)V
.end method

.method private native GetConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation
.end method

.method private native GetLocalConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation
.end method

.method private native GetRemoteConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation
.end method

.method private native GetSingleConversationsNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
.end method

.method private native GetSingleConversationsWithUserIdsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation
.end method

.method private native HideAllNative(JLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native HideBatchNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation
.end method

.method private native HideNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native ImportConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMConversation;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation
.end method

.method private native ListAllStatusLocalConvsNative(JIILcom/alibaba/android/ark/AIMConvGetConvListener;)V
.end method

.method private native ListLocalConversationsWithCidNative(JLjava/lang/String;ILcom/alibaba/android/ark/AIMConvGetConvListener;)V
.end method

.method private native ListLocalConversationsWithOffsetNative(JIILcom/alibaba/android/ark/AIMConvGetConvListener;)V
.end method

.method private native MuteNative(JLjava/lang/String;ZLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native ParseConvListDataNative(J[BLcom/alibaba/android/ark/AIMConvGetConvListener;)V
.end method

.method private native RemoveAllConvChangeListenerNative(J)V
.end method

.method private native RemoveAllConvListListenerNative(J)V
.end method

.method private native RemoveConvChangeListenerNative(JLcom/alibaba/android/ark/AIMConvChangeListener;)V
.end method

.method private native RemoveConvListListenerNative(JLcom/alibaba/android/ark/AIMConvListListener;)V
.end method

.method private native RemoveLocalConversationNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native SetActiveCidNative(JLjava/lang/String;)V
.end method

.method private native SetTopNative(JLjava/lang/String;ZLcom/alibaba/android/ark/AIMConvSetTopListener;)V
.end method

.method private native SetTopWithTimeStampNative(JLjava/lang/String;ZLjava/util/HashMap;Lcom/alibaba/android/ark/AIMConvSetTopListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvSetTopListener;",
            ")V"
        }
    .end annotation
.end method

.method private native UpdateDraftMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native UpdateLocalExtensionByKeysNative(JLjava/lang/String;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation
.end method

.method private native UpdateLocalExtensionNative(JLjava/lang/String;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation
.end method

.method private native UpdateTypingStatusNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMConvTypingCommand;Lcom/alibaba/android/ark/AIMConvTypingMessageContent;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public AddConvChangeListener(Lcom/alibaba/android/ark/AIMConvChangeListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->AddConvChangeListenerNative(JLcom/alibaba/android/ark/AIMConvChangeListener;)V

    .line 6
    return-void
.end method

.method public AddConvListListener(Lcom/alibaba/android/ark/AIMConvListListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->AddConvListListenerNative(JLcom/alibaba/android/ark/AIMConvListListener;)V

    .line 6
    return-void
.end method

.method public BulkUpdateLocalExtensionByKeys(Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->BulkUpdateLocalExtensionByKeysNative(JLjava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public Clear(Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ClearNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public ClearAllConvsRedPoint(Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ClearAllConvsRedPointNative(JLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public ClearRedPoint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ClearRedPointNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 10
    return-void
.end method

.method public CreateSingleConversation(Lcom/alibaba/android/ark/AIMConvCreateSingleConvParam;Lcom/alibaba/android/ark/AIMConvCreateSingleConvListener;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMConvCreateSingleConvParam;",
            "Lcom/alibaba/android/ark/AIMConvCreateSingleConvListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->CreateSingleConversationNative(JLcom/alibaba/android/ark/AIMConvCreateSingleConvParam;Lcom/alibaba/android/ark/AIMConvCreateSingleConvListener;Ljava/util/HashMap;)V

    .line 10
    return-void
.end method

.method public GetConversation(Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvGetSingleConvListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->GetConversationNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvGetSingleConvListener;)V

    .line 6
    return-void
.end method

.method public GetConversations(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->GetConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 6
    return-void
.end method

.method public GetLocalConversations(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->GetLocalConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 6
    return-void
.end method

.method public GetRemoteConversations(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->GetRemoteConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 6
    return-void
.end method

.method public GetSingleConversations(Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->GetSingleConversationsNative(JLcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 6
    return-void
.end method

.method public GetSingleConversationsWithUserIds(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvGetConvListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->GetSingleConversationsWithUserIdsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 6
    return-void
.end method

.method public Hide(Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->HideNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public HideAll(Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->HideAllNative(JLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public HideBatch(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->HideBatchNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public ImportConversations(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMConversation;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ImportConversationsNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public ListAllStatusLocalConvs(IILcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ListAllStatusLocalConvsNative(JIILcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 10
    return-void
.end method

.method public ListLocalConversationsWithCid(Ljava/lang/String;ILcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ListLocalConversationsWithCidNative(JLjava/lang/String;ILcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 10
    return-void
.end method

.method public ListLocalConversationsWithOffset(IILcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ListLocalConversationsWithOffsetNative(JIILcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 10
    return-void
.end method

.method public Mute(Ljava/lang/String;ZLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->MuteNative(JLjava/lang/String;ZLcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 10
    return-void
.end method

.method public ParseConvListData([BLcom/alibaba/android/ark/AIMConvGetConvListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->ParseConvListDataNative(J[BLcom/alibaba/android/ark/AIMConvGetConvListener;)V

    .line 6
    return-void
.end method

.method public RemoveAllConvChangeListener()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->RemoveAllConvChangeListenerNative(J)V

    .line 6
    return-void
.end method

.method public RemoveAllConvListListener()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->RemoveAllConvListListenerNative(J)V

    .line 6
    return-void
.end method

.method public RemoveConvChangeListener(Lcom/alibaba/android/ark/AIMConvChangeListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->RemoveConvChangeListenerNative(JLcom/alibaba/android/ark/AIMConvChangeListener;)V

    .line 6
    return-void
.end method

.method public RemoveConvListListener(Lcom/alibaba/android/ark/AIMConvListListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->RemoveConvListListenerNative(JLcom/alibaba/android/ark/AIMConvListListener;)V

    .line 6
    return-void
.end method

.method public RemoveLocalConversation(Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->RemoveLocalConversationNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 6
    return-void
.end method

.method public SetActiveCid(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->SetActiveCidNative(JLjava/lang/String;)V

    .line 6
    return-void
.end method

.method public SetTop(Ljava/lang/String;ZLcom/alibaba/android/ark/AIMConvSetTopListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->SetTopNative(JLjava/lang/String;ZLcom/alibaba/android/ark/AIMConvSetTopListener;)V

    .line 10
    return-void
.end method

.method public SetTopWithTimeStamp(Ljava/lang/String;ZLjava/util/HashMap;Lcom/alibaba/android/ark/AIMConvSetTopListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvSetTopListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move v4, p2

    .line 6
    move-object v5, p3

    .line 7
    move-object v6, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->SetTopWithTimeStampNative(JLjava/lang/String;ZLjava/util/HashMap;Lcom/alibaba/android/ark/AIMConvSetTopListener;)V

    .line 11
    return-void
.end method

.method public UpdateDraftMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->UpdateDraftMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 10
    return-void
.end method

.method public UpdateLocalExtension(Ljava/lang/String;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->UpdateLocalExtensionNative(JLjava/lang/String;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 10
    return-void
.end method

.method public UpdateLocalExtensionByKeys(Ljava/lang/String;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->UpdateLocalExtensionByKeysNative(JLjava/lang/String;Ljava/util/HashMap;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 10
    return-void
.end method

.method public UpdateTypingStatus(Ljava/lang/String;Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMConvTypingCommand;Lcom/alibaba/android/ark/AIMConvTypingMessageContent;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    move-object v6, p4

    .line 8
    move-object v7, p5

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->UpdateTypingStatusNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMUserId;Lcom/alibaba/android/ark/AIMConvTypingCommand;Lcom/alibaba/android/ark/AIMConvTypingMessageContent;Lcom/alibaba/android/ark/AIMConvServiceCompleteListener;)V

    .line 12
    return-void
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMConvService$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

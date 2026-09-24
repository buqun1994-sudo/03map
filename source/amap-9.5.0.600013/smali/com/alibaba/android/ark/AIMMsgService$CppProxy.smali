.class final Lcom/alibaba/android/ark/AIMMsgService$CppProxy;
.super Lcom/alibaba/android/ark/AIMMsgService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMMsgService;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMMsgService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

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

.method private native AddMsgChangeListenerNative(JLcom/alibaba/android/ark/AIMMsgChangeListener;)Z
.end method

.method private native AddMsgListenerNative(JLcom/alibaba/android/ark/AIMMsgListener;)Z
.end method

.method private native DecryptMessageNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDecryptMsgListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgKeyInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgDecryptMsgListener;",
            ")V"
        }
    .end annotation
.end method

.method private native DeleteLocalMessageNative(JLjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDeleteLocalMsgListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgDeleteLocalMsgListener;",
            ")V"
        }
    .end annotation
.end method

.method private native DeleteMessageNative(JLjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDeleteMsgListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgDeleteMsgListener;",
            ")V"
        }
    .end annotation
.end method

.method private native GenerateMsgLocalIdNative(J)J
.end method

.method private native GetLocalMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgGetLocalMsgListener;)V
.end method

.method private native GetLocalMessagesNative(JLjava/lang/String;JIZLcom/alibaba/android/ark/AIMMsgFilter;Lcom/alibaba/android/ark/AIMMsgGetLocalMsgsListener;)V
.end method

.method private native GetMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgGetMsgListener;)V
.end method

.method private native ListMessagesReadStatusNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgListMsgsReadStatus;)V
.end method

.method private native ListNextLocalMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListLocalMsgsListener;)V
.end method

.method private native ListNextMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListNextMsgsListener;)V
.end method

.method private native ListPreviousLocalMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListLocalMsgsListener;)V
.end method

.method private native ListPreviousMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListPreviousMsgsListener;)V
.end method

.method private native ParseUrlNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMMsgParseUrlListener;)V
.end method

.method private native RecallMessageExNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgRecallMsgListener;)V
.end method

.method private native RecallMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgRecallMsgListener;)V
.end method

.method private native RemoveAllMsgChangeListenerNative(J)V
.end method

.method private native RemoveAllMsgListenerNative(J)V
.end method

.method private native RemoveMsgChangeListenerNative(JLcom/alibaba/android/ark/AIMMsgChangeListener;)Z
.end method

.method private native RemoveMsgListenerNative(JLcom/alibaba/android/ark/AIMMsgListener;)Z
.end method

.method private native ResendMessageNative(JLcom/alibaba/android/ark/AIMMsgReSendMessage;Lcom/alibaba/android/ark/AIMMsgReSendMsgListener;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/ark/AIMMsgReSendMessage;",
            "Lcom/alibaba/android/ark/AIMMsgReSendMsgListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native SendMessageNative(JLcom/alibaba/android/ark/AIMMsgSendMessage;Lcom/alibaba/android/ark/AIMMsgSendMsgListener;Ljava/util/HashMap;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/alibaba/android/ark/AIMMsgSendMessage;",
            "Lcom/alibaba/android/ark/AIMMsgSendMsgListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native SendMessageTolocalNative(JLcom/alibaba/android/ark/AIMMsgSendMessage;Lcom/alibaba/android/ark/AIMMsgSendMsgToLocalListener;)V
.end method

.method private native UpdateLocalExtensionByKeyNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgLocalExtensionUpdateInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;",
            ")V"
        }
    .end annotation
.end method

.method private native UpdateLocalExtensionNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgLocalExtensionUpdateInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;",
            ")V"
        }
    .end annotation
.end method

.method private native UpdateLocalMessagesBizInfoNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalMsgsBizInfoListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateLocalMsgsBizInfoListener;",
            ")V"
        }
    .end annotation
.end method

.method private native UpdateMessageToReadNative(JLjava/lang/String;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public AddMsgChangeListener(Lcom/alibaba/android/ark/AIMMsgChangeListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->AddMsgChangeListenerNative(JLcom/alibaba/android/ark/AIMMsgChangeListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public AddMsgListener(Lcom/alibaba/android/ark/AIMMsgListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->AddMsgListenerNative(JLcom/alibaba/android/ark/AIMMsgListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public DecryptMessage(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDecryptMsgListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgKeyInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgDecryptMsgListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->DecryptMessageNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDecryptMsgListener;)V

    .line 6
    return-void
.end method

.method public DeleteLocalMessage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDeleteLocalMsgListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgDeleteLocalMsgListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->DeleteLocalMessageNative(JLjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDeleteLocalMsgListener;)V

    .line 10
    return-void
.end method

.method public DeleteMessage(Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDeleteMsgListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgDeleteMsgListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->DeleteMessageNative(JLjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgDeleteMsgListener;)V

    .line 10
    return-void
.end method

.method public GenerateMsgLocalId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->GenerateMsgLocalIdNative(J)J

    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public GetLocalMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgGetLocalMsgListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->GetLocalMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgGetLocalMsgListener;)V

    .line 10
    return-void
.end method

.method public GetLocalMessages(Ljava/lang/String;JIZLcom/alibaba/android/ark/AIMMsgFilter;Lcom/alibaba/android/ark/AIMMsgGetLocalMsgsListener;)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    iget-wide v1, v10, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 4
    move-object v0, p0

    .line 5
    move-object v3, p1

    .line 6
    move-wide v4, p2

    .line 7
    move v6, p4

    .line 8
    move/from16 v7, p5

    .line 10
    move-object/from16 v8, p6

    .line 12
    move-object/from16 v9, p7

    .line 14
    invoke-direct/range {v0 .. v9}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->GetLocalMessagesNative(JLjava/lang/String;JIZLcom/alibaba/android/ark/AIMMsgFilter;Lcom/alibaba/android/ark/AIMMsgGetLocalMsgsListener;)V

    .line 17
    return-void
.end method

.method public GetMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgGetMsgListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->GetMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgGetMsgListener;)V

    .line 10
    return-void
.end method

.method public ListMessagesReadStatus(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgListMsgsReadStatus;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ListMessagesReadStatusNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgListMsgsReadStatus;)V

    .line 10
    return-void
.end method

.method public ListNextLocalMsgs(Ljava/lang/String;JILcom/alibaba/android/ark/AIMMsgListLocalMsgsListener;)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-wide v4, p2

    .line 6
    move v6, p4

    .line 7
    move-object v7, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ListNextLocalMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListLocalMsgsListener;)V

    .line 11
    return-void
.end method

.method public ListNextMsgs(Ljava/lang/String;JILcom/alibaba/android/ark/AIMMsgListNextMsgsListener;)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-wide v4, p2

    .line 6
    move v6, p4

    .line 7
    move-object v7, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ListNextMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListNextMsgsListener;)V

    .line 11
    return-void
.end method

.method public ListPreviousLocalMsgs(Ljava/lang/String;JILcom/alibaba/android/ark/AIMMsgListLocalMsgsListener;)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-wide v4, p2

    .line 6
    move v6, p4

    .line 7
    move-object v7, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ListPreviousLocalMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListLocalMsgsListener;)V

    .line 11
    return-void
.end method

.method public ListPreviousMsgs(Ljava/lang/String;JILcom/alibaba/android/ark/AIMMsgListPreviousMsgsListener;)V
    .locals 8

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-wide v4, p2

    .line 6
    move v6, p4

    .line 7
    move-object v7, p5

    .line 8
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ListPreviousMsgsNative(JLjava/lang/String;JILcom/alibaba/android/ark/AIMMsgListPreviousMsgsListener;)V

    .line 11
    return-void
.end method

.method public ParseUrl(Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgParseUrlListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ParseUrlNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMMsgParseUrlListener;)V

    .line 6
    return-void
.end method

.method public RecallMessage(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgRecallMsgListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->RecallMessageNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgRecallMsgListener;)V

    .line 10
    return-void
.end method

.method public RecallMessageEx(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgRecallMsgListener;)V
    .locals 6

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->RecallMessageExNative(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/ark/AIMMsgRecallMsgListener;)V

    .line 10
    return-void
.end method

.method public RemoveAllMsgChangeListener()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->RemoveAllMsgChangeListenerNative(J)V

    .line 6
    return-void
.end method

.method public RemoveAllMsgListener()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->RemoveAllMsgListenerNative(J)V

    .line 6
    return-void
.end method

.method public RemoveMsgChangeListener(Lcom/alibaba/android/ark/AIMMsgChangeListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->RemoveMsgChangeListenerNative(JLcom/alibaba/android/ark/AIMMsgChangeListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public RemoveMsgListener(Lcom/alibaba/android/ark/AIMMsgListener;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->RemoveMsgListenerNative(JLcom/alibaba/android/ark/AIMMsgListener;)Z

    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public ResendMessage(Lcom/alibaba/android/ark/AIMMsgReSendMessage;Lcom/alibaba/android/ark/AIMMsgReSendMsgListener;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMMsgReSendMessage;",
            "Lcom/alibaba/android/ark/AIMMsgReSendMsgListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->ResendMessageNative(JLcom/alibaba/android/ark/AIMMsgReSendMessage;Lcom/alibaba/android/ark/AIMMsgReSendMsgListener;Ljava/util/HashMap;)V

    .line 10
    return-void
.end method

.method public SendMessage(Lcom/alibaba/android/ark/AIMMsgSendMessage;Lcom/alibaba/android/ark/AIMMsgSendMsgListener;Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMMsgSendMessage;",
            "Lcom/alibaba/android/ark/AIMMsgSendMsgListener;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->SendMessageNative(JLcom/alibaba/android/ark/AIMMsgSendMessage;Lcom/alibaba/android/ark/AIMMsgSendMsgListener;Ljava/util/HashMap;)V

    .line 10
    return-void
.end method

.method public SendMessageTolocal(Lcom/alibaba/android/ark/AIMMsgSendMessage;Lcom/alibaba/android/ark/AIMMsgSendMsgToLocalListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->SendMessageTolocalNative(JLcom/alibaba/android/ark/AIMMsgSendMessage;Lcom/alibaba/android/ark/AIMMsgSendMsgToLocalListener;)V

    .line 6
    return-void
.end method

.method public UpdateLocalExtension(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgLocalExtensionUpdateInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->UpdateLocalExtensionNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;)V

    .line 6
    return-void
.end method

.method public UpdateLocalExtensionByKey(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgLocalExtensionUpdateInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->UpdateLocalExtensionByKeyNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalExtensionListener;)V

    .line 6
    return-void
.end method

.method public UpdateLocalMessagesBizInfo(Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalMsgsBizInfoListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMMsgBizUpdateInfo;",
            ">;",
            "Lcom/alibaba/android/ark/AIMMsgUpdateLocalMsgsBizInfoListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->UpdateLocalMessagesBizInfoNative(JLjava/util/ArrayList;Lcom/alibaba/android/ark/AIMMsgUpdateLocalMsgsBizInfoListener;)V

    .line 6
    return-void
.end method

.method public UpdateMessageToRead(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->UpdateMessageToReadNative(JLjava/lang/String;Ljava/util/ArrayList;)V

    .line 6
    return-void
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMMsgService$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

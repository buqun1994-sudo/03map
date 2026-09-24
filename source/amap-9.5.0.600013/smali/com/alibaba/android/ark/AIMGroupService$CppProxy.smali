.class final Lcom/alibaba/android/ark/AIMGroupService$CppProxy;
.super Lcom/alibaba/android/ark/AIMGroupService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ark/AIMGroupService;
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
    invoke-direct {p0}, Lcom/alibaba/android/ark/AIMGroupService;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    const-wide/16 v0, 0x0

    .line 14
    cmp-long v2, p1, v0

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iput-wide p1, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

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

.method private native AddAdminsNative(JLcom/alibaba/android/ark/AIMGroupUpdateAdmins;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native AddGroupChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupChangeListener;)V
.end method

.method private native AddGroupMemberChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupMemberChangeListener;)V
.end method

.method private native AddMembersNative(JLcom/alibaba/android/ark/AIMGroupJoin;Lcom/alibaba/android/ark/AIMGroupAddMembersListener;)V
.end method

.method private native AddSilencedBlacklistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedBlackList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native AddSilencedWhitelistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedWhiteList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native CancelSilenceAllNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilenceAll;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native CreateGroupConversationNative(JLcom/alibaba/android/ark/AIMGroupCreateGroupConvParam;Lcom/alibaba/android/ark/AIMGroupCreateGroupConvListener;)V
.end method

.method private native DismissNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native GetMembersNative(JLjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMGroupGetMembersListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;",
            "Lcom/alibaba/android/ark/AIMGroupGetMembersListener;",
            ")V"
        }
    .end annotation
.end method

.method private native GetSilencedInfoNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupGetSilencedInfoListener;)V
.end method

.method private native LeaveNative(JLcom/alibaba/android/ark/AIMGroupLeave;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native ListAllAdminsNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupListAllAdminsListener;)V
.end method

.method private native ListAllMembersNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupListAllMemberListener;)V
.end method

.method private native ListLocalMembersNative(JLjava/lang/String;JJLcom/alibaba/android/ark/AIMGroupListLocalMemberListener;)V
.end method

.method private native RemoveAdminsNative(JLcom/alibaba/android/ark/AIMGroupUpdateAdmins;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native RemoveAllGroupChangeListenerNative(J)V
.end method

.method private native RemoveAllGroupMemberChangeListenerNative(J)V
.end method

.method private native RemoveGroupChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupChangeListener;)V
.end method

.method private native RemoveGroupMemberChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupMemberChangeListener;)V
.end method

.method private native RemoveMembersNative(JLcom/alibaba/android/ark/AIMGroupKick;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native RemoveSilencedBlacklistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedBlackList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native RemoveSilencedWhitelistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedWhiteList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native SetMemberPermissionNative(JLcom/alibaba/android/ark/AIMGroupSetMemberPermission;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native SetOwnerNative(JLcom/alibaba/android/ark/AIMGroupSetOwner;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native SilenceAllNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilenceAll;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native UpdateDefaultTitleNative(JLcom/alibaba/android/ark/AIMGroupUpdateTitle;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native UpdateGroupMemberNickNative(JLcom/alibaba/android/ark/AIMGroupMemberUpdateNick;Lcom/alibaba/android/ark/AIMGroupMemberNickUpdateListener;)V
.end method

.method private native UpdateIconNative(JLcom/alibaba/android/ark/AIMGroupUpdateIcon;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
.end method

.method private native nativeDestroy(J)V
.end method


# virtual methods
.method public AddAdmins(Lcom/alibaba/android/ark/AIMGroupUpdateAdmins;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->AddAdminsNative(JLcom/alibaba/android/ark/AIMGroupUpdateAdmins;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public AddGroupChangeListener(Lcom/alibaba/android/ark/AIMGroupChangeListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->AddGroupChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupChangeListener;)V

    .line 6
    return-void
.end method

.method public AddGroupMemberChangeListener(Lcom/alibaba/android/ark/AIMGroupMemberChangeListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->AddGroupMemberChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupMemberChangeListener;)V

    .line 6
    return-void
.end method

.method public AddMembers(Lcom/alibaba/android/ark/AIMGroupJoin;Lcom/alibaba/android/ark/AIMGroupAddMembersListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->AddMembersNative(JLcom/alibaba/android/ark/AIMGroupJoin;Lcom/alibaba/android/ark/AIMGroupAddMembersListener;)V

    .line 6
    return-void
.end method

.method public AddSilencedBlacklist(Lcom/alibaba/android/ark/AIMGroupUpdateSilencedBlackList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->AddSilencedBlacklistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedBlackList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public AddSilencedWhitelist(Lcom/alibaba/android/ark/AIMGroupUpdateSilencedWhiteList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->AddSilencedWhitelistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedWhiteList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public CancelSilenceAll(Lcom/alibaba/android/ark/AIMGroupUpdateSilenceAll;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->CancelSilenceAllNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilenceAll;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public CreateGroupConversation(Lcom/alibaba/android/ark/AIMGroupCreateGroupConvParam;Lcom/alibaba/android/ark/AIMGroupCreateGroupConvListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->CreateGroupConversationNative(JLcom/alibaba/android/ark/AIMGroupCreateGroupConvParam;Lcom/alibaba/android/ark/AIMGroupCreateGroupConvListener;)V

    .line 6
    return-void
.end method

.method public Dismiss(Ljava/lang/String;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->DismissNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public GetMembers(Ljava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMGroupGetMembersListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMUserId;",
            ">;",
            "Lcom/alibaba/android/ark/AIMGroupGetMembersListener;",
            ")V"
        }
    .end annotation

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-object v4, p2

    .line 6
    move-object v5, p3

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->GetMembersNative(JLjava/lang/String;Ljava/util/ArrayList;Lcom/alibaba/android/ark/AIMGroupGetMembersListener;)V

    .line 10
    return-void
.end method

.method public GetSilencedInfo(Ljava/lang/String;Lcom/alibaba/android/ark/AIMGroupGetSilencedInfoListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->GetSilencedInfoNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupGetSilencedInfoListener;)V

    .line 6
    return-void
.end method

.method public Leave(Lcom/alibaba/android/ark/AIMGroupLeave;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->LeaveNative(JLcom/alibaba/android/ark/AIMGroupLeave;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public ListAllAdmins(Ljava/lang/String;Lcom/alibaba/android/ark/AIMGroupListAllAdminsListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->ListAllAdminsNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupListAllAdminsListener;)V

    .line 6
    return-void
.end method

.method public ListAllMembers(Ljava/lang/String;Lcom/alibaba/android/ark/AIMGroupListAllMemberListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->ListAllMembersNative(JLjava/lang/String;Lcom/alibaba/android/ark/AIMGroupListAllMemberListener;)V

    .line 6
    return-void
.end method

.method public ListLocalMembers(Ljava/lang/String;JJLcom/alibaba/android/ark/AIMGroupListLocalMemberListener;)V
    .locals 9

    .line 1
    iget-wide v1, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    move-object v0, p0

    .line 4
    move-object v3, p1

    .line 5
    move-wide v4, p2

    .line 6
    move-wide v6, p4

    .line 7
    move-object v8, p6

    .line 8
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->ListLocalMembersNative(JLjava/lang/String;JJLcom/alibaba/android/ark/AIMGroupListLocalMemberListener;)V

    .line 11
    return-void
.end method

.method public RemoveAdmins(Lcom/alibaba/android/ark/AIMGroupUpdateAdmins;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveAdminsNative(JLcom/alibaba/android/ark/AIMGroupUpdateAdmins;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public RemoveAllGroupChangeListener()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveAllGroupChangeListenerNative(J)V

    .line 6
    return-void
.end method

.method public RemoveAllGroupMemberChangeListener()V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveAllGroupMemberChangeListenerNative(J)V

    .line 6
    return-void
.end method

.method public RemoveGroupChangeListener(Lcom/alibaba/android/ark/AIMGroupChangeListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveGroupChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupChangeListener;)V

    .line 6
    return-void
.end method

.method public RemoveGroupMemberChangeListener(Lcom/alibaba/android/ark/AIMGroupMemberChangeListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveGroupMemberChangeListenerNative(JLcom/alibaba/android/ark/AIMGroupMemberChangeListener;)V

    .line 6
    return-void
.end method

.method public RemoveMembers(Lcom/alibaba/android/ark/AIMGroupKick;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveMembersNative(JLcom/alibaba/android/ark/AIMGroupKick;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public RemoveSilencedBlacklist(Lcom/alibaba/android/ark/AIMGroupUpdateSilencedBlackList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveSilencedBlacklistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedBlackList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public RemoveSilencedWhitelist(Lcom/alibaba/android/ark/AIMGroupUpdateSilencedWhiteList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->RemoveSilencedWhitelistNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilencedWhiteList;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public SetMemberPermission(Lcom/alibaba/android/ark/AIMGroupSetMemberPermission;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->SetMemberPermissionNative(JLcom/alibaba/android/ark/AIMGroupSetMemberPermission;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public SetOwner(Lcom/alibaba/android/ark/AIMGroupSetOwner;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->SetOwnerNative(JLcom/alibaba/android/ark/AIMGroupSetOwner;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public SilenceAll(Lcom/alibaba/android/ark/AIMGroupUpdateSilenceAll;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->SilenceAllNative(JLcom/alibaba/android/ark/AIMGroupUpdateSilenceAll;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public UpdateDefaultTitle(Lcom/alibaba/android/ark/AIMGroupUpdateTitle;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->UpdateDefaultTitleNative(JLcom/alibaba/android/ark/AIMGroupUpdateTitle;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public UpdateGroupMemberNick(Lcom/alibaba/android/ark/AIMGroupMemberUpdateNick;Lcom/alibaba/android/ark/AIMGroupMemberNickUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->UpdateGroupMemberNickNative(JLcom/alibaba/android/ark/AIMGroupMemberUpdateNick;Lcom/alibaba/android/ark/AIMGroupMemberNickUpdateListener;)V

    .line 6
    return-void
.end method

.method public UpdateIcon(Lcom/alibaba/android/ark/AIMGroupUpdateIcon;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 3
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->UpdateIconNative(JLcom/alibaba/android/ark/AIMGroupUpdateIcon;Lcom/alibaba/android/ark/AIMGroupUpdateListener;)V

    .line 6
    return-void
.end method

.method public djinniPrivateDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->destroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-wide v0, p0, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeRef:J

    .line 12
    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->nativeDestroy(J)V

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
    invoke-virtual {p0}, Lcom/alibaba/android/ark/AIMGroupService$CppProxy;->djinniPrivateDestroy()V

    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    return-void
.end method

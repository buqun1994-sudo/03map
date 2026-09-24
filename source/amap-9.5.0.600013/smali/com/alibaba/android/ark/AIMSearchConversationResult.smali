.class public final Lcom/alibaba/android/ark/AIMSearchConversationResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4ee6a06640a31334L


# instance fields
.field public conversation:Lcom/alibaba/android/ark/AIMConversation;

.field public firstMessage:Lcom/alibaba/android/ark/AIMMessage;

.field public ranges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSearchHighlightRange;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMConversation;Lcom/alibaba/android/ark/AIMMessage;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMConversation;",
            "Lcom/alibaba/android/ark/AIMMessage;",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSearchHighlightRange;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->conversation:Lcom/alibaba/android/ark/AIMConversation;

    .line 3
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->firstMessage:Lcom/alibaba/android/ark/AIMMessage;

    .line 4
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->ranges:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getConversation()Lcom/alibaba/android/ark/AIMConversation;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->conversation:Lcom/alibaba/android/ark/AIMConversation;

    .line 3
    return-object v0
.end method

.method public getFirstMessage()Lcom/alibaba/android/ark/AIMMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->firstMessage:Lcom/alibaba/android/ark/AIMMessage;

    .line 3
    return-object v0
.end method

.method public getRanges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/android/ark/AIMSearchHighlightRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->ranges:Ljava/util/ArrayList;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMSearchConversationResult{conversation="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->conversation:Lcom/alibaba/android/ark/AIMConversation;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "firstMessage="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->firstMessage:Lcom/alibaba/android/ark/AIMMessage;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v1, "ranges="

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMSearchConversationResult;->ranges:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v1, "}"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method

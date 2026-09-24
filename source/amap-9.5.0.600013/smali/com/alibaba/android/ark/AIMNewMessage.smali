.class public final Lcom/alibaba/android/ark/AIMNewMessage;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6bb5151ba83ee7d0L


# instance fields
.field public msg:Lcom/alibaba/android/ark/AIMMessage;

.field public type:Lcom/alibaba/android/ark/AIMMsgSourceType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgSourceType;->SOURCE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgSourceType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMNewMessage;->type:Lcom/alibaba/android/ark/AIMMsgSourceType;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMMessage;Lcom/alibaba/android/ark/AIMMsgSourceType;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgSourceType;->SOURCE_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgSourceType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMNewMessage;->type:Lcom/alibaba/android/ark/AIMMsgSourceType;

    .line 3
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMNewMessage;->msg:Lcom/alibaba/android/ark/AIMMessage;

    if-eqz p2, :cond_0

    .line 4
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMNewMessage;->type:Lcom/alibaba/android/ark/AIMMsgSourceType;

    :cond_0
    return-void
.end method


# virtual methods
.method public getMsg()Lcom/alibaba/android/ark/AIMMessage;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMNewMessage;->msg:Lcom/alibaba/android/ark/AIMMessage;

    .line 3
    return-object v0
.end method

.method public getType()Lcom/alibaba/android/ark/AIMMsgSourceType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMNewMessage;->type:Lcom/alibaba/android/ark/AIMMsgSourceType;

    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    const-string v1, "AIMNewMessage{msg="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMNewMessage;->msg:Lcom/alibaba/android/ark/AIMMessage;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "type="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMNewMessage;->type:Lcom/alibaba/android/ark/AIMMsgSourceType;

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "}"

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.class public final Lcom/alibaba/android/ark/AIMMsgRecallFeature;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x73308f48115c577eL


# instance fields
.field public code:Ljava/lang/String;

.field public extension:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public operatorType:Lcom/alibaba/android/ark/AIMMsgRecallType;

.field public operatorUid:Lcom/alibaba/android/ark/AIMUserId;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgRecallType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorType:Lcom/alibaba/android/ark/AIMMsgRecallType;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMMsgRecallType;Ljava/lang/String;Lcom/alibaba/android/ark/AIMUserId;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ark/AIMMsgRecallType;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ark/AIMUserId;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgRecallType;->RECALL_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgRecallType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorType:Lcom/alibaba/android/ark/AIMMsgRecallType;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorType:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->code:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorUid:Lcom/alibaba/android/ark/AIMUserId;

    .line 6
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->extension:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->code:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getExtension()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->extension:Ljava/util/HashMap;

    .line 3
    return-object v0
.end method

.method public getOperatorType()Lcom/alibaba/android/ark/AIMMsgRecallType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorType:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 3
    return-object v0
.end method

.method public getOperatorUid()Lcom/alibaba/android/ark/AIMUserId;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorUid:Lcom/alibaba/android/ark/AIMUserId;

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
    const-string v1, "AIMMsgRecallFeature{operatorType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorType:Lcom/alibaba/android/ark/AIMMsgRecallType;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "code="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->code:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "operatorUid="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->operatorUid:Lcom/alibaba/android/ark/AIMUserId;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "extension="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgRecallFeature;->extension:Ljava/util/HashMap;

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 57
    const-string v1, "}"

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method

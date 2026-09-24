.class public final Lcom/alibaba/android/ark/AIMMsgStructElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5b2d7979be5c1fa1L


# instance fields
.field public atElement:Lcom/alibaba/android/ark/AIMMsgStructElementAt;

.field public elementType:Lcom/alibaba/android/ark/AIMMsgStructElementType;

.field public textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

.field public uidElement:Lcom/alibaba/android/ark/AIMMsgStructElementUid;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgStructElementType;->ELEMENT_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->elementType:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    return-void
.end method

.method public constructor <init>(Lcom/alibaba/android/ark/AIMMsgStructElementType;Lcom/alibaba/android/ark/AIMMsgTextContent;Lcom/alibaba/android/ark/AIMMsgStructElementUid;Lcom/alibaba/android/ark/AIMMsgStructElementAt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/alibaba/android/ark/AIMMsgStructElementType;->ELEMENT_TYPE_UNKNOWN:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    iput-object v0, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->elementType:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->elementType:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    .line 4
    :cond_0
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

    .line 5
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->uidElement:Lcom/alibaba/android/ark/AIMMsgStructElementUid;

    .line 6
    iput-object p4, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->atElement:Lcom/alibaba/android/ark/AIMMsgStructElementAt;

    return-void
.end method


# virtual methods
.method public getAtElement()Lcom/alibaba/android/ark/AIMMsgStructElementAt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->atElement:Lcom/alibaba/android/ark/AIMMsgStructElementAt;

    .line 3
    return-object v0
.end method

.method public getElementType()Lcom/alibaba/android/ark/AIMMsgStructElementType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->elementType:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    .line 3
    return-object v0
.end method

.method public getTextContent()Lcom/alibaba/android/ark/AIMMsgTextContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

    .line 3
    return-object v0
.end method

.method public getUidElement()Lcom/alibaba/android/ark/AIMMsgStructElementUid;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->uidElement:Lcom/alibaba/android/ark/AIMMsgStructElementUid;

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
    const-string v1, "AIMMsgStructElement{elementType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->elementType:Lcom/alibaba/android/ark/AIMMsgStructElementType;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "textContent="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->textContent:Lcom/alibaba/android/ark/AIMMsgTextContent;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "uidElement="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->uidElement:Lcom/alibaba/android/ark/AIMMsgStructElementUid;

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, "atElement="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-object v1, p0, Lcom/alibaba/android/ark/AIMMsgStructElement;->atElement:Lcom/alibaba/android/ark/AIMMsgStructElementAt;

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

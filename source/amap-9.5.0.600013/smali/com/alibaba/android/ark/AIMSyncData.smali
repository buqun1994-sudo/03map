.class public final Lcom/alibaba/android/ark/AIMSyncData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x47574f93103ae62cL


# instance fields
.field public binaryData:[B

.field public bizType:I

.field public data:Ljava/lang/String;

.field public isOffline:Z

.field public objectType:I

.field public serveId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->objectType:I

    .line 10
    iput v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->bizType:I

    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->isOffline:Z

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;[BILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/alibaba/android/ark/AIMSyncData;->objectType:I

    .line 3
    iput-object p2, p0, Lcom/alibaba/android/ark/AIMSyncData;->data:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/alibaba/android/ark/AIMSyncData;->binaryData:[B

    .line 5
    iput p4, p0, Lcom/alibaba/android/ark/AIMSyncData;->bizType:I

    .line 6
    iput-object p5, p0, Lcom/alibaba/android/ark/AIMSyncData;->serveId:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Lcom/alibaba/android/ark/AIMSyncData;->isOffline:Z

    return-void
.end method


# virtual methods
.method public getBinaryData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->binaryData:[B

    .line 3
    return-object v0
.end method

.method public getBizType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->bizType:I

    .line 3
    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->data:Ljava/lang/String;

    .line 3
    return-object v0
.end method

.method public getIsOffline()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->isOffline:Z

    .line 3
    return v0
.end method

.method public getObjectType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->objectType:I

    .line 3
    return v0
.end method

.method public getServeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/android/ark/AIMSyncData;->serveId:Ljava/lang/String;

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
    const-string v1, "AIMSyncData{objectType="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/alibaba/android/ark/AIMSyncData;->objectType:I

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, ","

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "data="

    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSyncData;->data:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "binaryData="

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSyncData;->binaryData:[B

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, "bizType="

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget v2, p0, Lcom/alibaba/android/ark/AIMSyncData;->bizType:I

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const-string v2, "serveId="

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    iget-object v2, p0, Lcom/alibaba/android/ark/AIMSyncData;->serveId:Ljava/lang/String;

    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    const-string v1, "isOffline="

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    iget-boolean v1, p0, Lcom/alibaba/android/ark/AIMSyncData;->isOffline:Z

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "}"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    move-result-object v0

    .line 92
    return-object v0
.end method
